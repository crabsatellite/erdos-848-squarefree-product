import Erdos848.TailGlobalMixedFeasiblePrefixes

namespace Erdos848

/-!
# Resumable kernel checker for feasible support-prefix enumeration

`feasibleSupportPrefixes` is convenient mathematically, but reducing a late
`List.drop` restarts the whole depth-first enumeration.  The explicit machine
below exposes the same recursion as a small stack.  Generated certificates can
therefore check bounded runs and hand the resulting stack to the next module.
The kernel never has to retain all 119,159 prefixes at once.
-/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

structure FeasiblePrefixMachineFrame where
  need : Nat
  product : Nat
  candidates : List Nat
  prefixRev : List Nat
  deriving DecidableEq

abbrev FeasiblePrefixMachineState := List FeasiblePrefixMachineFrame

inductive FeasiblePrefixMachineStepResult where
  | done
  | skip (next : FeasiblePrefixMachineState)
  | emit (row : List Nat) (next : FeasiblePrefixMachineState)
  deriving DecidableEq

def feasiblePrefixMachineStep (bound : Nat) :
    FeasiblePrefixMachineState -> FeasiblePrefixMachineStepResult
  | [] => .done
  | frame :: stack =>
      match frame.need, frame.candidates with
      | 0, p :: primes =>
          if frame.product * p <= bound then
            .emit frame.prefixRev.reverse stack
          else .skip stack
      | 0, [] => .skip stack
      | need + 1, p :: primes =>
          let least := frame.product * ((p :: primes).take (need + 2)).prod
          if bound < least then .skip stack
          else
            .skip (
              { need := need
                product := frame.product * p
                candidates := primes
                prefixRev := p :: frame.prefixRev } ::
              { need := need + 1
                product := frame.product
                candidates := primes
                prefixRev := frame.prefixRev } :: stack)
      | _ + 1, [] => .skip stack

def feasiblePrefixMachineFrameOutput
    (bound : Nat) (frame : FeasiblePrefixMachineFrame) : List (List Nat) :=
  (feasibleSupportPrefixes bound frame.need frame.product frame.candidates).map
    fun suffix => frame.prefixRev.reverse ++ suffix

def feasiblePrefixMachineStateOutput
    (bound : Nat) (state : FeasiblePrefixMachineState) : List (List Nat) :=
  state.flatMap (feasiblePrefixMachineFrameOutput bound)

theorem feasiblePrefixMachineStep_output
    (bound : Nat) (state : FeasiblePrefixMachineState) :
    match feasiblePrefixMachineStep bound state with
    | .done => feasiblePrefixMachineStateOutput bound state = []
    | .skip next =>
        feasiblePrefixMachineStateOutput bound state =
          feasiblePrefixMachineStateOutput bound next
    | .emit row next =>
        feasiblePrefixMachineStateOutput bound state =
          row :: feasiblePrefixMachineStateOutput bound next := by
  cases state with
  | nil => rfl
  | cons frame stack =>
      rcases frame with ⟨need, product, candidates, prefixRev⟩
      cases need with
      | zero =>
          cases candidates with
          | nil => rfl
          | cons p primes =>
              by_cases hbound : product * p <= bound
              · simp [feasiblePrefixMachineStep, hbound,
                  feasiblePrefixMachineStateOutput,
                  feasiblePrefixMachineFrameOutput,
                  feasibleSupportPrefixes]
              · simp [feasiblePrefixMachineStep, hbound,
                  feasiblePrefixMachineStateOutput,
                  feasiblePrefixMachineFrameOutput,
                  feasibleSupportPrefixes]
      | succ need =>
          cases candidates with
          | nil => rfl
          | cons p primes =>
              by_cases hprune :
                  bound < product * (p * (primes.take (need + 1)).prod)
              · simp [feasiblePrefixMachineStep, hprune,
                  feasiblePrefixMachineStateOutput,
                  feasiblePrefixMachineFrameOutput,
                  feasibleSupportPrefixes]
              · simp [feasiblePrefixMachineStep, hprune,
                  feasiblePrefixMachineStateOutput,
                  feasiblePrefixMachineFrameOutput,
                  feasibleSupportPrefixes, List.map_append, List.map_map,
                  Function.comp_def, List.reverse_cons, List.append_assoc]

def feasiblePrefixMachineRunSteps (bound : Nat) :
    Nat -> FeasiblePrefixMachineState ->
      List (List Nat) × FeasiblePrefixMachineState
  | 0, state => ([], state)
  | fuel + 1, state =>
      match feasiblePrefixMachineStep bound state with
      | .done => ([], [])
      | .skip next => feasiblePrefixMachineRunSteps bound fuel next
      | .emit row next =>
          let result := feasiblePrefixMachineRunSteps bound fuel next
          (row :: result.1, result.2)

theorem feasiblePrefixMachineRunSteps_output
    (bound fuel : Nat) (state : FeasiblePrefixMachineState) :
    let result := feasiblePrefixMachineRunSteps bound fuel state
    feasiblePrefixMachineStateOutput bound state =
      result.1 ++ feasiblePrefixMachineStateOutput bound result.2 := by
  induction fuel generalizing state with
  | zero => rfl
  | succ fuel ih =>
      cases hstep : feasiblePrefixMachineStep bound state with
      | done =>
          have hout := feasiblePrefixMachineStep_output bound state
          simp only [hstep] at hout
          simpa [feasiblePrefixMachineRunSteps, hstep] using hout
      | skip next =>
          have hout := feasiblePrefixMachineStep_output bound state
          simp only [hstep] at hout
          simpa [feasiblePrefixMachineRunSteps, hstep, hout] using ih next
      | emit row next =>
          have hout := feasiblePrefixMachineStep_output bound state
          simp only [hstep] at hout
          rw [hout]
          simpa [feasiblePrefixMachineRunSteps, hstep] using
            congrArg (fun rows => row :: rows) (ih next)

def globalMixedFeasiblePrefixMachineInitialState
    (k : Nat) : FeasiblePrefixMachineState :=
  [{ need := k - 1
     product := 1
     candidates := globalMixedKernelSupportPrimes
     prefixRev := [] }]

theorem globalMixedFeasiblePrefixMachineInitialState_output
    {k : Nat} (hk : k ≠ 0) :
    feasiblePrefixMachineStateOutput
        (globalMixedSupportProductThreshold k)
        (globalMixedFeasiblePrefixMachineInitialState k) =
      globalMixedFeasiblePrefixesKernel k := by
  simp [globalMixedFeasiblePrefixMachineInitialState,
    feasiblePrefixMachineStateOutput, feasiblePrefixMachineFrameOutput,
    globalMixedFeasiblePrefixesKernel, hk]

#print axioms feasiblePrefixMachineStep_output
#print axioms feasiblePrefixMachineRunSteps_output
#print axioms globalMixedFeasiblePrefixMachineInitialState_output

end Erdos848
