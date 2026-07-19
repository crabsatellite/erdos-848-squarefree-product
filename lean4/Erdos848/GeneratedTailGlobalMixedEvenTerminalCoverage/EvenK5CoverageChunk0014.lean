import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0056
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0057
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0058
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0059
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0014Prefixes : List (List Nat) :=
  evenK5CoverageGroup0056Prefixes ++
  evenK5CoverageGroup0057Prefixes ++
  evenK5CoverageGroup0058Prefixes ++
  evenK5CoverageGroup0059Prefixes

def evenK5CoverageChunk0014StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 15281, Erdos848.globalMixedKernelSupportPrimes.drop 26, [59, 37, 7]⟩,
  ⟨2, 259, Erdos848.globalMixedKernelSupportPrimes.drop 15, [37, 7]⟩,
  ⟨3, 7, Erdos848.globalMixedKernelSupportPrimes.drop 10, [7]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 2, []⟩]

def evenK5CoverageChunk0014NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 6721, Erdos848.globalMixedKernelSupportPrimes.drop 28, [47, 13, 11]⟩,
  ⟨2, 143, Erdos848.globalMixedKernelSupportPrimes.drop 13, [13, 11]⟩,
  ⟨3, 11, Erdos848.globalMixedKernelSupportPrimes.drop 4, [11]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 3, []⟩]

def evenK5CoverageChunk0014Steps : Nat := 4406

theorem evenK5CoverageChunk0014_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0014Steps
        evenK5CoverageChunk0014StartState =
      (evenK5CoverageChunk0014Prefixes,
        evenK5CoverageChunk0014NextState) := by
  rfl

theorem evenK5CoverageChunk0014_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0014StartState =
      evenK5CoverageChunk0014Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0014NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0014Steps
    evenK5CoverageChunk0014StartState
  rw [evenK5CoverageChunk0014_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0014_passes :
    evenK5CoverageChunk0014Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0014Prefixes, List.all_append]
  rw [evenK5CoverageGroup0056_passes]
  rw [evenK5CoverageGroup0057_passes]
  rw [evenK5CoverageGroup0058_passes]
  rw [evenK5CoverageGroup0059_passes]
  rfl

#print axioms evenK5CoverageChunk0014_checkpoint
#print axioms evenK5CoverageChunk0014_state_output
#print axioms evenK5CoverageChunk0014_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
