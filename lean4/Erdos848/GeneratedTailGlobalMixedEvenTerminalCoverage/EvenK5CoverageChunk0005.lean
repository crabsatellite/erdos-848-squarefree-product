import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0020
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0021
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0022
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0023
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0005Prefixes : List (List Nat) :=
  evenK5CoverageGroup0020Prefixes ++
  evenK5CoverageGroup0021Prefixes ++
  evenK5CoverageGroup0022Prefixes ++
  evenK5CoverageGroup0023Prefixes

def evenK5CoverageChunk0005StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 1479, Erdos848.globalMixedKernelSupportPrimes.drop 36, [29, 17, 3]⟩,
  ⟨2, 51, Erdos848.globalMixedKernelSupportPrimes.drop 8, [17, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 5, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0005NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 2109, Erdos848.globalMixedKernelSupportPrimes.drop 19, [37, 19, 3]⟩,
  ⟨2, 57, Erdos848.globalMixedKernelSupportPrimes.drop 10, [19, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 6, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0005Steps : Nat := 4186

theorem evenK5CoverageChunk0005_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0005Steps
        evenK5CoverageChunk0005StartState =
      (evenK5CoverageChunk0005Prefixes,
        evenK5CoverageChunk0005NextState) := by
  rfl

theorem evenK5CoverageChunk0005_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0005StartState =
      evenK5CoverageChunk0005Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0005NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0005Steps
    evenK5CoverageChunk0005StartState
  rw [evenK5CoverageChunk0005_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0005_passes :
    evenK5CoverageChunk0005Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0005Prefixes, List.all_append]
  rw [evenK5CoverageGroup0020_passes]
  rw [evenK5CoverageGroup0021_passes]
  rw [evenK5CoverageGroup0022_passes]
  rw [evenK5CoverageGroup0023_passes]
  rfl

#print axioms evenK5CoverageChunk0005_checkpoint
#print axioms evenK5CoverageChunk0005_state_output
#print axioms evenK5CoverageChunk0005_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
