import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0036
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0037
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0038
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0039
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0009Prefixes : List (List Nat) :=
  evenK4CoverageGroup0036Prefixes ++
  evenK4CoverageGroup0037Prefixes ++
  evenK4CoverageGroup0038Prefixes ++
  evenK4CoverageGroup0039Prefixes

def evenK4CoverageChunk0009StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 1243, Erdos848.globalMixedKernelSupportPrimes.drop 49, [113, 11]⟩,
  ⟨2, 11, Erdos848.globalMixedKernelSupportPrimes.drop 28, [11]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 3, []⟩]

def evenK4CoverageChunk0009NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 533, Erdos848.globalMixedKernelSupportPrimes.drop 89, [41, 13]⟩,
  ⟨2, 13, Erdos848.globalMixedKernelSupportPrimes.drop 11, [13]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 4, []⟩]

def evenK4CoverageChunk0009Steps : Nat := 4178

theorem evenK4CoverageChunk0009_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0009Steps
        evenK4CoverageChunk0009StartState =
      (evenK4CoverageChunk0009Prefixes,
        evenK4CoverageChunk0009NextState) := by
  rfl

theorem evenK4CoverageChunk0009_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0009StartState =
      evenK4CoverageChunk0009Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0009NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0009Steps
    evenK4CoverageChunk0009StartState
  rw [evenK4CoverageChunk0009_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0009_passes :
    evenK4CoverageChunk0009Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0009Prefixes, List.all_append]
  rw [evenK4CoverageGroup0036_passes]
  rw [evenK4CoverageGroup0037_passes]
  rw [evenK4CoverageGroup0038_passes]
  rw [evenK4CoverageGroup0039_passes]
  rfl

#print axioms evenK4CoverageChunk0009_checkpoint
#print axioms evenK4CoverageChunk0009_state_output
#print axioms evenK4CoverageChunk0009_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
