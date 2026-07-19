import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0016
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0017
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0018
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0019
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0004Prefixes : List (List Nat) :=
  evenK5CoverageGroup0016Prefixes ++
  evenK5CoverageGroup0017Prefixes ++
  evenK5CoverageGroup0018Prefixes ++
  evenK5CoverageGroup0019Prefixes

def evenK5CoverageChunk0004StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 1443, Erdos848.globalMixedKernelSupportPrimes.drop 115, [37, 13, 3]⟩,
  ⟨2, 39, Erdos848.globalMixedKernelSupportPrimes.drop 10, [13, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 4, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0004NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 1479, Erdos848.globalMixedKernelSupportPrimes.drop 36, [29, 17, 3]⟩,
  ⟨2, 51, Erdos848.globalMixedKernelSupportPrimes.drop 8, [17, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 5, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0004Steps : Nat := 4188

theorem evenK5CoverageChunk0004_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0004Steps
        evenK5CoverageChunk0004StartState =
      (evenK5CoverageChunk0004Prefixes,
        evenK5CoverageChunk0004NextState) := by
  rfl

theorem evenK5CoverageChunk0004_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0004StartState =
      evenK5CoverageChunk0004Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0004NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0004Steps
    evenK5CoverageChunk0004StartState
  rw [evenK5CoverageChunk0004_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0004_passes :
    evenK5CoverageChunk0004Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0004Prefixes, List.all_append]
  rw [evenK5CoverageGroup0016_passes]
  rw [evenK5CoverageGroup0017_passes]
  rw [evenK5CoverageGroup0018_passes]
  rw [evenK5CoverageGroup0019_passes]
  rfl

#print axioms evenK5CoverageChunk0004_checkpoint
#print axioms evenK5CoverageChunk0004_state_output
#print axioms evenK5CoverageChunk0004_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
