import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0016
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0017
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0018
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0019
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK3CoverageChunk0004Prefixes : List (List Nat) :=
  evenK3CoverageGroup0016Prefixes ++
  evenK3CoverageGroup0017Prefixes ++
  evenK3CoverageGroup0018Prefixes ++
  evenK3CoverageGroup0019Prefixes

def evenK3CoverageChunk0004StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 103, Erdos848.globalMixedKernelSupportPrimes.drop 122, [103]⟩,
  ⟨2, 1, Erdos848.globalMixedKernelSupportPrimes.drop 25, []⟩]

def evenK3CoverageChunk0004NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 179, Erdos848.globalMixedKernelSupportPrimes.drop 72, [179]⟩,
  ⟨2, 1, Erdos848.globalMixedKernelSupportPrimes.drop 39, []⟩]

def evenK3CoverageChunk0004Steps : Nat := 4124

theorem evenK3CoverageChunk0004_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0004Steps
        evenK3CoverageChunk0004StartState =
      (evenK3CoverageChunk0004Prefixes,
        evenK3CoverageChunk0004NextState) := by
  rfl

theorem evenK3CoverageChunk0004_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0004StartState =
      evenK3CoverageChunk0004Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 3)
          evenK3CoverageChunk0004NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 3)
    evenK3CoverageChunk0004Steps
    evenK3CoverageChunk0004StartState
  rw [evenK3CoverageChunk0004_checkpoint] at h
  exact h

theorem evenK3CoverageChunk0004_passes :
    evenK3CoverageChunk0004Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 3 evenK3Selector
        EvenK3Choice.terminal) = true := by
  simp only [evenK3CoverageChunk0004Prefixes, List.all_append]
  rw [evenK3CoverageGroup0016_passes]
  rw [evenK3CoverageGroup0017_passes]
  rw [evenK3CoverageGroup0018_passes]
  rw [evenK3CoverageGroup0019_passes]
  rfl

#print axioms evenK3CoverageChunk0004_checkpoint
#print axioms evenK3CoverageChunk0004_state_output
#print axioms evenK3CoverageChunk0004_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
