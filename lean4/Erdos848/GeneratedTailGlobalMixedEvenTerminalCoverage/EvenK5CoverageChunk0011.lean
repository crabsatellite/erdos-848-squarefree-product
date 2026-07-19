import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0044
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0045
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0046
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0047
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0011Prefixes : List (List Nat) :=
  evenK5CoverageGroup0044Prefixes ++
  evenK5CoverageGroup0045Prefixes ++
  evenK5CoverageGroup0046Prefixes ++
  evenK5CoverageGroup0047Prefixes

def evenK5CoverageChunk0011StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 4697, Erdos848.globalMixedKernelSupportPrimes.drop 70, [61, 11, 7]⟩,
  ⟨2, 77, Erdos848.globalMixedKernelSupportPrimes.drop 16, [11, 7]⟩,
  ⟨3, 7, Erdos848.globalMixedKernelSupportPrimes.drop 3, [7]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 2, []⟩]

def evenK5CoverageChunk0011NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 12649, Erdos848.globalMixedKernelSupportPrimes.drop 44, [139, 13, 7]⟩,
  ⟨2, 91, Erdos848.globalMixedKernelSupportPrimes.drop 32, [13, 7]⟩,
  ⟨3, 7, Erdos848.globalMixedKernelSupportPrimes.drop 4, [7]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 2, []⟩]

def evenK5CoverageChunk0011Steps : Nat := 4208

theorem evenK5CoverageChunk0011_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0011Steps
        evenK5CoverageChunk0011StartState =
      (evenK5CoverageChunk0011Prefixes,
        evenK5CoverageChunk0011NextState) := by
  rfl

theorem evenK5CoverageChunk0011_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0011StartState =
      evenK5CoverageChunk0011Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0011NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0011Steps
    evenK5CoverageChunk0011StartState
  rw [evenK5CoverageChunk0011_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0011_passes :
    evenK5CoverageChunk0011Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0011Prefixes, List.all_append]
  rw [evenK5CoverageGroup0044_passes]
  rw [evenK5CoverageGroup0045_passes]
  rw [evenK5CoverageGroup0046_passes]
  rw [evenK5CoverageGroup0047_passes]
  rfl

#print axioms evenK5CoverageChunk0011_checkpoint
#print axioms evenK5CoverageChunk0011_state_output
#print axioms evenK5CoverageChunk0011_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
