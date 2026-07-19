import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0060
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0061
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0062
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0063
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0015Prefixes : List (List Nat) :=
  evenK5CoverageGroup0060Prefixes ++
  evenK5CoverageGroup0061Prefixes ++
  evenK5CoverageGroup0062Prefixes ++
  evenK5CoverageGroup0063Prefixes

def evenK5CoverageChunk0015StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 6721, Erdos848.globalMixedKernelSupportPrimes.drop 28, [47, 13, 11]⟩,
  ⟨2, 143, Erdos848.globalMixedKernelSupportPrimes.drop 13, [13, 11]⟩,
  ⟨3, 11, Erdos848.globalMixedKernelSupportPrimes.drop 4, [11]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 3, []⟩]

def evenK5CoverageChunk0015NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 7337, Erdos848.globalMixedKernelSupportPrimes.drop 57, [29, 23, 11]⟩,
  ⟨2, 253, Erdos848.globalMixedKernelSupportPrimes.drop 8, [23, 11]⟩,
  ⟨3, 11, Erdos848.globalMixedKernelSupportPrimes.drop 7, [11]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 3, []⟩]

def evenK5CoverageChunk0015Steps : Nat := 4256

theorem evenK5CoverageChunk0015_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0015Steps
        evenK5CoverageChunk0015StartState =
      (evenK5CoverageChunk0015Prefixes,
        evenK5CoverageChunk0015NextState) := by
  rfl

theorem evenK5CoverageChunk0015_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0015StartState =
      evenK5CoverageChunk0015Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0015NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0015Steps
    evenK5CoverageChunk0015StartState
  rw [evenK5CoverageChunk0015_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0015_passes :
    evenK5CoverageChunk0015Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0015Prefixes, List.all_append]
  rw [evenK5CoverageGroup0060_passes]
  rw [evenK5CoverageGroup0061_passes]
  rw [evenK5CoverageGroup0062_passes]
  rw [evenK5CoverageGroup0063_passes]
  rfl

#print axioms evenK5CoverageChunk0015_checkpoint
#print axioms evenK5CoverageChunk0015_state_output
#print axioms evenK5CoverageChunk0015_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
