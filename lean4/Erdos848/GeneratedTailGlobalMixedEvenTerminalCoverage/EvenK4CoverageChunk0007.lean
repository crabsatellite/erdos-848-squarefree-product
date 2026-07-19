import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0028
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0029
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0030
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0031
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0007Prefixes : List (List Nat) :=
  evenK4CoverageGroup0028Prefixes ++
  evenK4CoverageGroup0029Prefixes ++
  evenK4CoverageGroup0030Prefixes ++
  evenK4CoverageGroup0031Prefixes

def evenK4CoverageChunk0007StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 1057, Erdos848.globalMixedKernelSupportPrimes.drop 41, [151, 7]⟩,
  ⟨2, 7, Erdos848.globalMixedKernelSupportPrimes.drop 34, [7]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 2, []⟩]

def evenK4CoverageChunk0007NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 319, Erdos848.globalMixedKernelSupportPrimes.drop 88, [29, 11]⟩,
  ⟨2, 11, Erdos848.globalMixedKernelSupportPrimes.drop 8, [11]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 3, []⟩]

def evenK4CoverageChunk0007Steps : Nat := 4178

theorem evenK4CoverageChunk0007_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0007Steps
        evenK4CoverageChunk0007StartState =
      (evenK4CoverageChunk0007Prefixes,
        evenK4CoverageChunk0007NextState) := by
  rfl

theorem evenK4CoverageChunk0007_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0007StartState =
      evenK4CoverageChunk0007Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0007NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0007Steps
    evenK4CoverageChunk0007StartState
  rw [evenK4CoverageChunk0007_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0007_passes :
    evenK4CoverageChunk0007Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0007Prefixes, List.all_append]
  rw [evenK4CoverageGroup0028_passes]
  rw [evenK4CoverageGroup0029_passes]
  rw [evenK4CoverageGroup0030_passes]
  rw [evenK4CoverageGroup0031_passes]
  rfl

#print axioms evenK4CoverageChunk0007_checkpoint
#print axioms evenK4CoverageChunk0007_state_output
#print axioms evenK4CoverageChunk0007_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
