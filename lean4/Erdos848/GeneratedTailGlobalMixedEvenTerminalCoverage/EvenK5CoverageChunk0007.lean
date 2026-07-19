import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0028
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0029
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0030
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0031
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0007Prefixes : List (List Nat) :=
  evenK5CoverageGroup0028Prefixes ++
  evenK5CoverageGroup0029Prefixes ++
  evenK5CoverageGroup0030Prefixes ++
  evenK5CoverageGroup0031Prefixes

def evenK5CoverageChunk0007StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 4209, Erdos848.globalMixedKernelSupportPrimes.drop 39, [61, 23, 3]⟩,
  ⟨2, 69, Erdos848.globalMixedKernelSupportPrimes.drop 16, [23, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 7, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0007NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 3999, Erdos848.globalMixedKernelSupportPrimes.drop 62, [43, 31, 3]⟩,
  ⟨2, 93, Erdos848.globalMixedKernelSupportPrimes.drop 12, [31, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 9, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0007Steps : Nat := 4230

theorem evenK5CoverageChunk0007_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0007Steps
        evenK5CoverageChunk0007StartState =
      (evenK5CoverageChunk0007Prefixes,
        evenK5CoverageChunk0007NextState) := by
  rfl

theorem evenK5CoverageChunk0007_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0007StartState =
      evenK5CoverageChunk0007Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0007NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0007Steps
    evenK5CoverageChunk0007StartState
  rw [evenK5CoverageChunk0007_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0007_passes :
    evenK5CoverageChunk0007Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0007Prefixes, List.all_append]
  rw [evenK5CoverageGroup0028_passes]
  rw [evenK5CoverageGroup0029_passes]
  rw [evenK5CoverageGroup0030_passes]
  rw [evenK5CoverageGroup0031_passes]
  rfl

#print axioms evenK5CoverageChunk0007_checkpoint
#print axioms evenK5CoverageChunk0007_state_output
#print axioms evenK5CoverageChunk0007_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
