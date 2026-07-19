import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0012
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0013
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0014
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0015
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0003Prefixes : List (List Nat) :=
  evenK5CoverageGroup0012Prefixes ++
  evenK5CoverageGroup0013Prefixes ++
  evenK5CoverageGroup0014Prefixes ++
  evenK5CoverageGroup0015Prefixes

def evenK5CoverageChunk0003StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 2343, Erdos848.globalMixedKernelSupportPrimes.drop 83, [71, 11, 3]⟩,
  ⟨2, 33, Erdos848.globalMixedKernelSupportPrimes.drop 18, [11, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 3, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0003NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 1443, Erdos848.globalMixedKernelSupportPrimes.drop 115, [37, 13, 3]⟩,
  ⟨2, 39, Erdos848.globalMixedKernelSupportPrimes.drop 10, [13, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 4, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0003Steps : Nat := 4184

theorem evenK5CoverageChunk0003_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0003Steps
        evenK5CoverageChunk0003StartState =
      (evenK5CoverageChunk0003Prefixes,
        evenK5CoverageChunk0003NextState) := by
  rfl

theorem evenK5CoverageChunk0003_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0003StartState =
      evenK5CoverageChunk0003Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0003NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0003Steps
    evenK5CoverageChunk0003StartState
  rw [evenK5CoverageChunk0003_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0003_passes :
    evenK5CoverageChunk0003Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0003Prefixes, List.all_append]
  rw [evenK5CoverageGroup0012_passes]
  rw [evenK5CoverageGroup0013_passes]
  rw [evenK5CoverageGroup0014_passes]
  rw [evenK5CoverageGroup0015_passes]
  rfl

#print axioms evenK5CoverageChunk0003_checkpoint
#print axioms evenK5CoverageChunk0003_state_output
#print axioms evenK5CoverageChunk0003_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
