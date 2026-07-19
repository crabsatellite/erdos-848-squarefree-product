import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0052
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0053
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0054
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0055
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0013Prefixes : List (List Nat) :=
  evenK5CoverageGroup0052Prefixes ++
  evenK5CoverageGroup0053Prefixes ++
  evenK5CoverageGroup0054Prefixes ++
  evenK5CoverageGroup0055Prefixes

def evenK5CoverageChunk0013StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 14497, Erdos848.globalMixedKernelSupportPrimes.drop 36, [109, 19, 7]⟩,
  ⟨2, 133, Erdos848.globalMixedKernelSupportPrimes.drop 27, [19, 7]⟩,
  ⟨3, 7, Erdos848.globalMixedKernelSupportPrimes.drop 6, [7]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 2, []⟩]

def evenK5CoverageChunk0013NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 15281, Erdos848.globalMixedKernelSupportPrimes.drop 26, [59, 37, 7]⟩,
  ⟨2, 259, Erdos848.globalMixedKernelSupportPrimes.drop 15, [37, 7]⟩,
  ⟨3, 7, Erdos848.globalMixedKernelSupportPrimes.drop 10, [7]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 2, []⟩]

def evenK5CoverageChunk0013Steps : Nat := 4278

theorem evenK5CoverageChunk0013_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0013Steps
        evenK5CoverageChunk0013StartState =
      (evenK5CoverageChunk0013Prefixes,
        evenK5CoverageChunk0013NextState) := by
  rfl

theorem evenK5CoverageChunk0013_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0013StartState =
      evenK5CoverageChunk0013Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0013NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0013Steps
    evenK5CoverageChunk0013StartState
  rw [evenK5CoverageChunk0013_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0013_passes :
    evenK5CoverageChunk0013Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0013Prefixes, List.all_append]
  rw [evenK5CoverageGroup0052_passes]
  rw [evenK5CoverageGroup0053_passes]
  rw [evenK5CoverageGroup0054_passes]
  rw [evenK5CoverageGroup0055_passes]
  rfl

#print axioms evenK5CoverageChunk0013_checkpoint
#print axioms evenK5CoverageChunk0013_state_output
#print axioms evenK5CoverageChunk0013_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
