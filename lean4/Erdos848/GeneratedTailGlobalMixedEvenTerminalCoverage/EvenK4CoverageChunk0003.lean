import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0012
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0013
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0014
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0015
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0003Prefixes : List (List Nat) :=
  evenK4CoverageGroup0012Prefixes ++
  evenK4CoverageGroup0013Prefixes ++
  evenK4CoverageGroup0014Prefixes ++
  evenK4CoverageGroup0015Prefixes

def evenK4CoverageChunk0003StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 321, Erdos848.globalMixedKernelSupportPrimes.drop 61, [107, 3]⟩,
  ⟨2, 3, Erdos848.globalMixedKernelSupportPrimes.drop 26, [3]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK4CoverageChunk0003NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 597, Erdos848.globalMixedKernelSupportPrimes.drop 110, [199, 3]⟩,
  ⟨2, 3, Erdos848.globalMixedKernelSupportPrimes.drop 44, [3]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK4CoverageChunk0003Steps : Nat := 4132

theorem evenK4CoverageChunk0003_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0003Steps
        evenK4CoverageChunk0003StartState =
      (evenK4CoverageChunk0003Prefixes,
        evenK4CoverageChunk0003NextState) := by
  rfl

theorem evenK4CoverageChunk0003_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0003StartState =
      evenK4CoverageChunk0003Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0003NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0003Steps
    evenK4CoverageChunk0003StartState
  rw [evenK4CoverageChunk0003_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0003_passes :
    evenK4CoverageChunk0003Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0003Prefixes, List.all_append]
  rw [evenK4CoverageGroup0012_passes]
  rw [evenK4CoverageGroup0013_passes]
  rw [evenK4CoverageGroup0014_passes]
  rw [evenK4CoverageGroup0015_passes]
  rfl

#print axioms evenK4CoverageChunk0003_checkpoint
#print axioms evenK4CoverageChunk0003_state_output
#print axioms evenK4CoverageChunk0003_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
