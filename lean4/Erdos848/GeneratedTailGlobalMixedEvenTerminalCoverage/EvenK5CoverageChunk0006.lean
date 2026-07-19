import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0024
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0025
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0026
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0027
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0006Prefixes : List (List Nat) :=
  evenK5CoverageGroup0024Prefixes ++
  evenK5CoverageGroup0025Prefixes ++
  evenK5CoverageGroup0026Prefixes ++
  evenK5CoverageGroup0027Prefixes

def evenK5CoverageChunk0006StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 2109, Erdos848.globalMixedKernelSupportPrimes.drop 19, [37, 19, 3]⟩,
  ⟨2, 57, Erdos848.globalMixedKernelSupportPrimes.drop 10, [19, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 6, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0006NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 4209, Erdos848.globalMixedKernelSupportPrimes.drop 39, [61, 23, 3]⟩,
  ⟨2, 69, Erdos848.globalMixedKernelSupportPrimes.drop 16, [23, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 7, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0006Steps : Nat := 4188

theorem evenK5CoverageChunk0006_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0006Steps
        evenK5CoverageChunk0006StartState =
      (evenK5CoverageChunk0006Prefixes,
        evenK5CoverageChunk0006NextState) := by
  rfl

theorem evenK5CoverageChunk0006_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0006StartState =
      evenK5CoverageChunk0006Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0006NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0006Steps
    evenK5CoverageChunk0006StartState
  rw [evenK5CoverageChunk0006_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0006_passes :
    evenK5CoverageChunk0006Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0006Prefixes, List.all_append]
  rw [evenK5CoverageGroup0024_passes]
  rw [evenK5CoverageGroup0025_passes]
  rw [evenK5CoverageGroup0026_passes]
  rw [evenK5CoverageGroup0027_passes]
  rfl

#print axioms evenK5CoverageChunk0006_checkpoint
#print axioms evenK5CoverageChunk0006_state_output
#print axioms evenK5CoverageChunk0006_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
