import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0020
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0021
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0022
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0023
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageChunk0005Prefixes : List (List Nat) :=
  evenK6CoverageGroup0020Prefixes ++
  evenK6CoverageGroup0021Prefixes ++
  evenK6CoverageGroup0022Prefixes ++
  evenK6CoverageGroup0023Prefixes

def evenK6CoverageChunk0005StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 21489, Erdos848.globalMixedKernelSupportPrimes.drop 23, [29, 19, 13, 3]⟩,
  ⟨2, 741, Erdos848.globalMixedKernelSupportPrimes.drop 8, [19, 13, 3]⟩,
  ⟨3, 39, Erdos848.globalMixedKernelSupportPrimes.drop 6, [13, 3]⟩,
  ⟨4, 3, Erdos848.globalMixedKernelSupportPrimes.drop 4, [3]⟩,
  ⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK6CoverageChunk0005NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 50439, Erdos848.globalMixedKernelSupportPrimes.drop 30, [43, 23, 17, 3]⟩,
  ⟨2, 1173, Erdos848.globalMixedKernelSupportPrimes.drop 12, [23, 17, 3]⟩,
  ⟨3, 51, Erdos848.globalMixedKernelSupportPrimes.drop 7, [17, 3]⟩,
  ⟨4, 3, Erdos848.globalMixedKernelSupportPrimes.drop 5, [3]⟩,
  ⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK6CoverageChunk0005Steps : Nat := 4424

theorem evenK6CoverageChunk0005_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0005Steps
        evenK6CoverageChunk0005StartState =
      (evenK6CoverageChunk0005Prefixes,
        evenK6CoverageChunk0005NextState) := by
  rfl

theorem evenK6CoverageChunk0005_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0005StartState =
      evenK6CoverageChunk0005Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 6)
          evenK6CoverageChunk0005NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 6)
    evenK6CoverageChunk0005Steps
    evenK6CoverageChunk0005StartState
  rw [evenK6CoverageChunk0005_checkpoint] at h
  exact h

theorem evenK6CoverageChunk0005_passes :
    evenK6CoverageChunk0005Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  simp only [evenK6CoverageChunk0005Prefixes, List.all_append]
  rw [evenK6CoverageGroup0020_passes]
  rw [evenK6CoverageGroup0021_passes]
  rw [evenK6CoverageGroup0022_passes]
  rw [evenK6CoverageGroup0023_passes]
  rfl

#print axioms evenK6CoverageChunk0005_checkpoint
#print axioms evenK6CoverageChunk0005_state_output
#print axioms evenK6CoverageChunk0005_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
