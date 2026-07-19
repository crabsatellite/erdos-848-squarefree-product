import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0036
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0037
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0038
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0039
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0009Prefixes : List (List Nat) :=
  evenK5CoverageGroup0036Prefixes ++
  evenK5CoverageGroup0037Prefixes ++
  evenK5CoverageGroup0038Prefixes ++
  evenK5CoverageGroup0039Prefixes

def evenK5CoverageChunk0009StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 12423, Erdos848.globalMixedKernelSupportPrimes.drop 35, [101, 41, 3]⟩,
  ⟨2, 123, Erdos848.globalMixedKernelSupportPrimes.drop 24, [41, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 11, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0009NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 16287, Erdos848.globalMixedKernelSupportPrimes.drop 26, [89, 61, 3]⟩,
  ⟨2, 183, Erdos848.globalMixedKernelSupportPrimes.drop 22, [61, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 16, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0009Steps : Nat := 4316

theorem evenK5CoverageChunk0009_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0009Steps
        evenK5CoverageChunk0009StartState =
      (evenK5CoverageChunk0009Prefixes,
        evenK5CoverageChunk0009NextState) := by
  rfl

theorem evenK5CoverageChunk0009_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0009StartState =
      evenK5CoverageChunk0009Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0009NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0009Steps
    evenK5CoverageChunk0009StartState
  rw [evenK5CoverageChunk0009_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0009_passes :
    evenK5CoverageChunk0009Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0009Prefixes, List.all_append]
  rw [evenK5CoverageGroup0036_passes]
  rw [evenK5CoverageGroup0037_passes]
  rw [evenK5CoverageGroup0038_passes]
  rw [evenK5CoverageGroup0039_passes]
  rfl

#print axioms evenK5CoverageChunk0009_checkpoint
#print axioms evenK5CoverageChunk0009_state_output
#print axioms evenK5CoverageChunk0009_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
