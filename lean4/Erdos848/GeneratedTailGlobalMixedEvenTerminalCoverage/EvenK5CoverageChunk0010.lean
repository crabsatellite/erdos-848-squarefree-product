import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0040
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0041
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0042
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0043
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0010Prefixes : List (List Nat) :=
  evenK5CoverageGroup0040Prefixes ++
  evenK5CoverageGroup0041Prefixes ++
  evenK5CoverageGroup0042Prefixes ++
  evenK5CoverageGroup0043Prefixes

def evenK5CoverageChunk0010StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 16287, Erdos848.globalMixedKernelSupportPrimes.drop 26, [89, 61, 3]⟩,
  ⟨2, 183, Erdos848.globalMixedKernelSupportPrimes.drop 22, [61, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 16, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0010NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 4697, Erdos848.globalMixedKernelSupportPrimes.drop 70, [61, 11, 7]⟩,
  ⟨2, 77, Erdos848.globalMixedKernelSupportPrimes.drop 16, [11, 7]⟩,
  ⟨3, 7, Erdos848.globalMixedKernelSupportPrimes.drop 3, [7]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 2, []⟩]

def evenK5CoverageChunk0010Steps : Nat := 4338

theorem evenK5CoverageChunk0010_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0010Steps
        evenK5CoverageChunk0010StartState =
      (evenK5CoverageChunk0010Prefixes,
        evenK5CoverageChunk0010NextState) := by
  rfl

theorem evenK5CoverageChunk0010_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0010StartState =
      evenK5CoverageChunk0010Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0010NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0010Steps
    evenK5CoverageChunk0010StartState
  rw [evenK5CoverageChunk0010_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0010_passes :
    evenK5CoverageChunk0010Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0010Prefixes, List.all_append]
  rw [evenK5CoverageGroup0040_passes]
  rw [evenK5CoverageGroup0041_passes]
  rw [evenK5CoverageGroup0042_passes]
  rw [evenK5CoverageGroup0043_passes]
  rfl

#print axioms evenK5CoverageChunk0010_checkpoint
#print axioms evenK5CoverageChunk0010_state_output
#print axioms evenK5CoverageChunk0010_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
