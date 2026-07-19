import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0024
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0025
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0026
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK3CoverageChunk0006Prefixes : List (List Nat) :=
  evenK3CoverageGroup0024Prefixes ++
  evenK3CoverageGroup0025Prefixes ++
  evenK3CoverageGroup0026Prefixes

def evenK3CoverageChunk0006StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 293, Erdos848.globalMixedKernelSupportPrimes.drop 129, [293]⟩,
  ⟨2, 1, Erdos848.globalMixedKernelSupportPrimes.drop 60, []⟩]

def evenK3CoverageChunk0006NextState :
    Erdos848.FeasiblePrefixMachineState :=
  []

def evenK3CoverageChunk0006Steps : Nat := 2652

theorem evenK3CoverageChunk0006_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0006Steps
        evenK3CoverageChunk0006StartState =
      (evenK3CoverageChunk0006Prefixes,
        evenK3CoverageChunk0006NextState) := by
  rfl

theorem evenK3CoverageChunk0006_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0006StartState =
      evenK3CoverageChunk0006Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 3)
          evenK3CoverageChunk0006NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 3)
    evenK3CoverageChunk0006Steps
    evenK3CoverageChunk0006StartState
  rw [evenK3CoverageChunk0006_checkpoint] at h
  exact h

theorem evenK3CoverageChunk0006_passes :
    evenK3CoverageChunk0006Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 3 evenK3Selector
        EvenK3Choice.terminal) = true := by
  simp only [evenK3CoverageChunk0006Prefixes, List.all_append]
  rw [evenK3CoverageGroup0024_passes]
  rw [evenK3CoverageGroup0025_passes]
  rw [evenK3CoverageGroup0026_passes]
  rfl

#print axioms evenK3CoverageChunk0006_checkpoint
#print axioms evenK3CoverageChunk0006_state_output
#print axioms evenK3CoverageChunk0006_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
