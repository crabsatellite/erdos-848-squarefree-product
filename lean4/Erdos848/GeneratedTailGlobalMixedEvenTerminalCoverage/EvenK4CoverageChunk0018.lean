import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0072
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0073
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0074
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0075
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0018Prefixes : List (List Nat) :=
  evenK4CoverageGroup0072Prefixes ++
  evenK4CoverageGroup0073Prefixes ++
  evenK4CoverageGroup0074Prefixes ++
  evenK4CoverageGroup0075Prefixes

def evenK4CoverageChunk0018StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 7729, Erdos848.globalMixedKernelSupportPrimes.drop 34, [131, 59]⟩,
  ⟨2, 59, Erdos848.globalMixedKernelSupportPrimes.drop 30, [59]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 15, []⟩]

def evenK4CoverageChunk0018NextState :
    Erdos848.FeasiblePrefixMachineState :=
  []

def evenK4CoverageChunk0018Steps : Nat := 4351

theorem evenK4CoverageChunk0018_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0018Steps
        evenK4CoverageChunk0018StartState =
      (evenK4CoverageChunk0018Prefixes,
        evenK4CoverageChunk0018NextState) := by
  rfl

theorem evenK4CoverageChunk0018_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0018StartState =
      evenK4CoverageChunk0018Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0018NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0018Steps
    evenK4CoverageChunk0018StartState
  rw [evenK4CoverageChunk0018_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0018_passes :
    evenK4CoverageChunk0018Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0018Prefixes, List.all_append]
  rw [evenK4CoverageGroup0072_passes]
  rw [evenK4CoverageGroup0073_passes]
  rw [evenK4CoverageGroup0074_passes]
  rw [evenK4CoverageGroup0075_passes]
  rfl

#print axioms evenK4CoverageChunk0018_checkpoint
#print axioms evenK4CoverageChunk0018_state_output
#print axioms evenK4CoverageChunk0018_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
