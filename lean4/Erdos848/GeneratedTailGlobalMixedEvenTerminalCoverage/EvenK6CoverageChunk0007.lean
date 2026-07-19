import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0028
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0029
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0030
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0031
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageChunk0007Prefixes : List (List Nat) :=
  evenK6CoverageGroup0028Prefixes ++
  evenK6CoverageGroup0029Prefixes ++
  evenK6CoverageGroup0030Prefixes ++
  evenK6CoverageGroup0031Prefixes

def evenK6CoverageChunk0007StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 138417, Erdos848.globalMixedKernelSupportPrimes.drop 22, [43, 37, 29, 3]⟩,
  ⟨2, 3219, Erdos848.globalMixedKernelSupportPrimes.drop 12, [37, 29, 3]⟩,
  ⟨3, 87, Erdos848.globalMixedKernelSupportPrimes.drop 10, [29, 3]⟩,
  ⟨4, 3, Erdos848.globalMixedKernelSupportPrimes.drop 8, [3]⟩,
  ⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK6CoverageChunk0007NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 94367, Erdos848.globalMixedKernelSupportPrimes.drop 19, [61, 17, 13, 7]⟩,
  ⟨2, 1547, Erdos848.globalMixedKernelSupportPrimes.drop 16, [17, 13, 7]⟩,
  ⟨3, 91, Erdos848.globalMixedKernelSupportPrimes.drop 5, [13, 7]⟩,
  ⟨4, 7, Erdos848.globalMixedKernelSupportPrimes.drop 4, [7]⟩,
  ⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 2, []⟩]

def evenK6CoverageChunk0007Steps : Nat := 4542

theorem evenK6CoverageChunk0007_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0007Steps
        evenK6CoverageChunk0007StartState =
      (evenK6CoverageChunk0007Prefixes,
        evenK6CoverageChunk0007NextState) := by
  rfl

theorem evenK6CoverageChunk0007_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0007StartState =
      evenK6CoverageChunk0007Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 6)
          evenK6CoverageChunk0007NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 6)
    evenK6CoverageChunk0007Steps
    evenK6CoverageChunk0007StartState
  rw [evenK6CoverageChunk0007_checkpoint] at h
  exact h

theorem evenK6CoverageChunk0007_passes :
    evenK6CoverageChunk0007Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  simp only [evenK6CoverageChunk0007Prefixes, List.all_append]
  rw [evenK6CoverageGroup0028_passes]
  rw [evenK6CoverageGroup0029_passes]
  rw [evenK6CoverageGroup0030_passes]
  rw [evenK6CoverageGroup0031_passes]
  rfl

#print axioms evenK6CoverageChunk0007_checkpoint
#print axioms evenK6CoverageChunk0007_state_output
#print axioms evenK6CoverageChunk0007_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
