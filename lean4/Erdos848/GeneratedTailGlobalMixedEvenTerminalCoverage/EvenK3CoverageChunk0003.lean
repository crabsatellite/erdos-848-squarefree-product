import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0012
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0013
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0014
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0015
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK3CoverageChunk0003Prefixes : List (List Nat) :=
  evenK3CoverageGroup0012Prefixes ++
  evenK3CoverageGroup0013Prefixes ++
  evenK3CoverageGroup0014Prefixes ++
  evenK3CoverageGroup0015Prefixes

def evenK3CoverageChunk0003StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 59, Erdos848.globalMixedKernelSupportPrimes.drop 197, [59]⟩,
  ⟨2, 1, Erdos848.globalMixedKernelSupportPrimes.drop 15, []⟩]

def evenK3CoverageChunk0003NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 103, Erdos848.globalMixedKernelSupportPrimes.drop 122, [103]⟩,
  ⟨2, 1, Erdos848.globalMixedKernelSupportPrimes.drop 25, []⟩]

def evenK3CoverageChunk0003Steps : Nat := 4116

theorem evenK3CoverageChunk0003_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0003Steps
        evenK3CoverageChunk0003StartState =
      (evenK3CoverageChunk0003Prefixes,
        evenK3CoverageChunk0003NextState) := by
  rfl

theorem evenK3CoverageChunk0003_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0003StartState =
      evenK3CoverageChunk0003Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 3)
          evenK3CoverageChunk0003NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 3)
    evenK3CoverageChunk0003Steps
    evenK3CoverageChunk0003StartState
  rw [evenK3CoverageChunk0003_checkpoint] at h
  exact h

theorem evenK3CoverageChunk0003_passes :
    evenK3CoverageChunk0003Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 3 evenK3Selector
        EvenK3Choice.terminal) = true := by
  simp only [evenK3CoverageChunk0003Prefixes, List.all_append]
  rw [evenK3CoverageGroup0012_passes]
  rw [evenK3CoverageGroup0013_passes]
  rw [evenK3CoverageGroup0014_passes]
  rw [evenK3CoverageGroup0015_passes]
  rfl

#print axioms evenK3CoverageChunk0003_checkpoint
#print axioms evenK3CoverageChunk0003_state_output
#print axioms evenK3CoverageChunk0003_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
