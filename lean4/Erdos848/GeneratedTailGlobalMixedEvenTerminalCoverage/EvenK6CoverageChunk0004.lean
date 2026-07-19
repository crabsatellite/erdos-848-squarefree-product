import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0016
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0017
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0018
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0019
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageChunk0004Prefixes : List (List Nat) :=
  evenK6CoverageGroup0016Prefixes ++
  evenK6CoverageGroup0017Prefixes ++
  evenK6CoverageGroup0018Prefixes ++
  evenK6CoverageGroup0019Prefixes

def evenK6CoverageChunk0004StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 63327, Erdos848.globalMixedKernelSupportPrimes.drop 26, [101, 19, 11, 3]⟩,
  ⟨2, 627, Erdos848.globalMixedKernelSupportPrimes.drop 24, [19, 11, 3]⟩,
  ⟨3, 33, Erdos848.globalMixedKernelSupportPrimes.drop 6, [11, 3]⟩,
  ⟨4, 3, Erdos848.globalMixedKernelSupportPrimes.drop 3, [3]⟩,
  ⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK6CoverageChunk0004NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 21489, Erdos848.globalMixedKernelSupportPrimes.drop 23, [29, 19, 13, 3]⟩,
  ⟨2, 741, Erdos848.globalMixedKernelSupportPrimes.drop 8, [19, 13, 3]⟩,
  ⟨3, 39, Erdos848.globalMixedKernelSupportPrimes.drop 6, [13, 3]⟩,
  ⟨4, 3, Erdos848.globalMixedKernelSupportPrimes.drop 4, [3]⟩,
  ⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK6CoverageChunk0004Steps : Nat := 4416

theorem evenK6CoverageChunk0004_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0004Steps
        evenK6CoverageChunk0004StartState =
      (evenK6CoverageChunk0004Prefixes,
        evenK6CoverageChunk0004NextState) := by
  rfl

theorem evenK6CoverageChunk0004_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0004StartState =
      evenK6CoverageChunk0004Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 6)
          evenK6CoverageChunk0004NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 6)
    evenK6CoverageChunk0004Steps
    evenK6CoverageChunk0004StartState
  rw [evenK6CoverageChunk0004_checkpoint] at h
  exact h

theorem evenK6CoverageChunk0004_passes :
    evenK6CoverageChunk0004Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  simp only [evenK6CoverageChunk0004Prefixes, List.all_append]
  rw [evenK6CoverageGroup0016_passes]
  rw [evenK6CoverageGroup0017_passes]
  rw [evenK6CoverageGroup0018_passes]
  rw [evenK6CoverageGroup0019_passes]
  rfl

#print axioms evenK6CoverageChunk0004_checkpoint
#print axioms evenK6CoverageChunk0004_state_output
#print axioms evenK6CoverageChunk0004_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
