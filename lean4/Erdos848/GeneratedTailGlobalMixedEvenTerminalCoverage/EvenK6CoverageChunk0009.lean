import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0036
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0037
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0038
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageChunk0009Prefixes : List (List Nat) :=
  evenK6CoverageGroup0036Prefixes ++
  evenK6CoverageGroup0037Prefixes ++
  evenK6CoverageGroup0038Prefixes

def evenK6CoverageChunk0009StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 154583, Erdos848.globalMixedKernelSupportPrimes.drop 18, [47, 23, 13, 11]⟩,
  ⟨2, 3289, Erdos848.globalMixedKernelSupportPrimes.drop 13, [23, 13, 11]⟩,
  ⟨3, 143, Erdos848.globalMixedKernelSupportPrimes.drop 7, [13, 11]⟩,
  ⟨4, 11, Erdos848.globalMixedKernelSupportPrimes.drop 4, [11]⟩,
  ⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 3, []⟩]

def evenK6CoverageChunk0009NextState :
    Erdos848.FeasiblePrefixMachineState :=
  []

def evenK6CoverageChunk0009Steps : Nat := 2853

theorem evenK6CoverageChunk0009_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0009Steps
        evenK6CoverageChunk0009StartState =
      (evenK6CoverageChunk0009Prefixes,
        evenK6CoverageChunk0009NextState) := by
  rfl

theorem evenK6CoverageChunk0009_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0009StartState =
      evenK6CoverageChunk0009Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 6)
          evenK6CoverageChunk0009NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 6)
    evenK6CoverageChunk0009Steps
    evenK6CoverageChunk0009StartState
  rw [evenK6CoverageChunk0009_checkpoint] at h
  exact h

theorem evenK6CoverageChunk0009_passes :
    evenK6CoverageChunk0009Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  simp only [evenK6CoverageChunk0009Prefixes, List.all_append]
  rw [evenK6CoverageGroup0036_passes]
  rw [evenK6CoverageGroup0037_passes]
  rw [evenK6CoverageGroup0038_passes]
  rfl

#print axioms evenK6CoverageChunk0009_checkpoint
#print axioms evenK6CoverageChunk0009_state_output
#print axioms evenK6CoverageChunk0009_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
