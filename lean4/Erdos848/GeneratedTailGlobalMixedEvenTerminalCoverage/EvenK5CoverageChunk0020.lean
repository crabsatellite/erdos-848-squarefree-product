import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0080
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0081
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0082
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0083
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0020Prefixes : List (List Nat) :=
  evenK5CoverageGroup0080Prefixes ++
  evenK5CoverageGroup0081Prefixes ++
  evenK5CoverageGroup0082Prefixes ++
  evenK5CoverageGroup0083Prefixes

def evenK5CoverageChunk0020StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 38399, Erdos848.globalMixedKernelSupportPrimes.drop 17, [47, 43, 19]⟩,
  ⟨2, 817, Erdos848.globalMixedKernelSupportPrimes.drop 13, [43, 19]⟩,
  ⟨3, 19, Erdos848.globalMixedKernelSupportPrimes.drop 12, [19]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 6, []⟩]

def evenK5CoverageChunk0020NextState :
    Erdos848.FeasiblePrefixMachineState :=
  []

def evenK5CoverageChunk0020Steps : Nat := 3812

theorem evenK5CoverageChunk0020_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0020Steps
        evenK5CoverageChunk0020StartState =
      (evenK5CoverageChunk0020Prefixes,
        evenK5CoverageChunk0020NextState) := by
  rfl

theorem evenK5CoverageChunk0020_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0020StartState =
      evenK5CoverageChunk0020Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0020NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0020Steps
    evenK5CoverageChunk0020StartState
  rw [evenK5CoverageChunk0020_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0020_passes :
    evenK5CoverageChunk0020Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0020Prefixes, List.all_append]
  rw [evenK5CoverageGroup0080_passes]
  rw [evenK5CoverageGroup0081_passes]
  rw [evenK5CoverageGroup0082_passes]
  rw [evenK5CoverageGroup0083_passes]
  rfl

#print axioms evenK5CoverageChunk0020_checkpoint
#print axioms evenK5CoverageChunk0020_state_output
#print axioms evenK5CoverageChunk0020_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
