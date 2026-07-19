import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0020
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0021
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0022
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0023
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0005Prefixes : List (List Nat) :=
  evenK4CoverageGroup0020Prefixes ++
  evenK4CoverageGroup0021Prefixes ++
  evenK4CoverageGroup0022Prefixes ++
  evenK4CoverageGroup0023Prefixes

def evenK4CoverageChunk0005StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 91, Erdos848.globalMixedKernelSupportPrimes.drop 18, [13, 7]⟩,
  ⟨2, 7, Erdos848.globalMixedKernelSupportPrimes.drop 4, [7]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 2, []⟩]

def evenK4CoverageChunk0005NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 371, Erdos848.globalMixedKernelSupportPrimes.drop 26, [53, 7]⟩,
  ⟨2, 7, Erdos848.globalMixedKernelSupportPrimes.drop 14, [7]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 2, []⟩]

def evenK4CoverageChunk0005Steps : Nat := 4116

theorem evenK4CoverageChunk0005_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0005Steps
        evenK4CoverageChunk0005StartState =
      (evenK4CoverageChunk0005Prefixes,
        evenK4CoverageChunk0005NextState) := by
  rfl

theorem evenK4CoverageChunk0005_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0005StartState =
      evenK4CoverageChunk0005Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0005NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0005Steps
    evenK4CoverageChunk0005StartState
  rw [evenK4CoverageChunk0005_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0005_passes :
    evenK4CoverageChunk0005Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0005Prefixes, List.all_append]
  rw [evenK4CoverageGroup0020_passes]
  rw [evenK4CoverageGroup0021_passes]
  rw [evenK4CoverageGroup0022_passes]
  rw [evenK4CoverageGroup0023_passes]
  rfl

#print axioms evenK4CoverageChunk0005_checkpoint
#print axioms evenK4CoverageChunk0005_state_output
#print axioms evenK4CoverageChunk0005_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
