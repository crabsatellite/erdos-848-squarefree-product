import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0012
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0013
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0014
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0015
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageChunk0003Prefixes : List (List Nat) :=
  evenK6CoverageGroup0012Prefixes ++
  evenK6CoverageGroup0013Prefixes ++
  evenK6CoverageGroup0014Prefixes ++
  evenK6CoverageGroup0015Prefixes

def evenK6CoverageChunk0003StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 75579, Erdos848.globalMixedKernelSupportPrimes.drop 23, [61, 59, 7, 3]⟩,
  ⟨2, 1239, Erdos848.globalMixedKernelSupportPrimes.drop 16, [59, 7, 3]⟩,
  ⟨3, 21, Erdos848.globalMixedKernelSupportPrimes.drop 15, [7, 3]⟩,
  ⟨4, 3, Erdos848.globalMixedKernelSupportPrimes.drop 2, [3]⟩,
  ⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK6CoverageChunk0003NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 63327, Erdos848.globalMixedKernelSupportPrimes.drop 26, [101, 19, 11, 3]⟩,
  ⟨2, 627, Erdos848.globalMixedKernelSupportPrimes.drop 24, [19, 11, 3]⟩,
  ⟨3, 33, Erdos848.globalMixedKernelSupportPrimes.drop 6, [11, 3]⟩,
  ⟨4, 3, Erdos848.globalMixedKernelSupportPrimes.drop 3, [3]⟩,
  ⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK6CoverageChunk0003Steps : Nat := 4308

theorem evenK6CoverageChunk0003_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0003Steps
        evenK6CoverageChunk0003StartState =
      (evenK6CoverageChunk0003Prefixes,
        evenK6CoverageChunk0003NextState) := by
  rfl

theorem evenK6CoverageChunk0003_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0003StartState =
      evenK6CoverageChunk0003Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 6)
          evenK6CoverageChunk0003NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 6)
    evenK6CoverageChunk0003Steps
    evenK6CoverageChunk0003StartState
  rw [evenK6CoverageChunk0003_checkpoint] at h
  exact h

theorem evenK6CoverageChunk0003_passes :
    evenK6CoverageChunk0003Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  simp only [evenK6CoverageChunk0003Prefixes, List.all_append]
  rw [evenK6CoverageGroup0012_passes]
  rw [evenK6CoverageGroup0013_passes]
  rw [evenK6CoverageGroup0014_passes]
  rw [evenK6CoverageGroup0015_passes]
  rfl

#print axioms evenK6CoverageChunk0003_checkpoint
#print axioms evenK6CoverageChunk0003_state_output
#print axioms evenK6CoverageChunk0003_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
