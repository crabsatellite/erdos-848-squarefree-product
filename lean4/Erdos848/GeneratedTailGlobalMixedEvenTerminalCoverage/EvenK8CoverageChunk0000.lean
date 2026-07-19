import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK8CoverageGroup0000
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK8CoverageChunk0000Prefixes : List (List Nat) :=
  evenK8CoverageGroup0000Prefixes

def evenK8CoverageChunk0000StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨7, 1, Erdos848.globalMixedKernelSupportPrimes.drop 0, []⟩]

def evenK8CoverageChunk0000NextState :
    Erdos848.FeasiblePrefixMachineState :=
  []

def evenK8CoverageChunk0000Steps : Nat := 365

theorem evenK8CoverageChunk0000_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 8)
        evenK8CoverageChunk0000Steps
        evenK8CoverageChunk0000StartState =
      (evenK8CoverageChunk0000Prefixes,
        evenK8CoverageChunk0000NextState) := by
  rfl

theorem evenK8CoverageChunk0000_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 8)
        evenK8CoverageChunk0000StartState =
      evenK8CoverageChunk0000Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 8)
          evenK8CoverageChunk0000NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 8)
    evenK8CoverageChunk0000Steps
    evenK8CoverageChunk0000StartState
  rw [evenK8CoverageChunk0000_checkpoint] at h
  exact h

theorem evenK8CoverageChunk0000_passes :
    evenK8CoverageChunk0000Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 8 evenK8Selector
        EvenK8Choice.terminal) = true := by
  simp only [evenK8CoverageChunk0000Prefixes, List.all_append]
  rw [evenK8CoverageGroup0000_passes]

#print axioms evenK8CoverageChunk0000_checkpoint
#print axioms evenK8CoverageChunk0000_state_output
#print axioms evenK8CoverageChunk0000_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
