import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0020
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0021
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0022
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0023
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK3CoverageChunk0005Prefixes : List (List Nat) :=
  evenK3CoverageGroup0020Prefixes ++
  evenK3CoverageGroup0021Prefixes ++
  evenK3CoverageGroup0022Prefixes ++
  evenK3CoverageGroup0023Prefixes

def evenK3CoverageChunk0005StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 179, Erdos848.globalMixedKernelSupportPrimes.drop 72, [179]⟩,
  ⟨2, 1, Erdos848.globalMixedKernelSupportPrimes.drop 39, []⟩]

def evenK3CoverageChunk0005NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 293, Erdos848.globalMixedKernelSupportPrimes.drop 129, [293]⟩,
  ⟨2, 1, Erdos848.globalMixedKernelSupportPrimes.drop 60, []⟩]

def evenK3CoverageChunk0005Steps : Nat := 4138

theorem evenK3CoverageChunk0005_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0005Steps
        evenK3CoverageChunk0005StartState =
      (evenK3CoverageChunk0005Prefixes,
        evenK3CoverageChunk0005NextState) := by
  rfl

theorem evenK3CoverageChunk0005_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0005StartState =
      evenK3CoverageChunk0005Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 3)
          evenK3CoverageChunk0005NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 3)
    evenK3CoverageChunk0005Steps
    evenK3CoverageChunk0005StartState
  rw [evenK3CoverageChunk0005_checkpoint] at h
  exact h

theorem evenK3CoverageChunk0005_passes :
    evenK3CoverageChunk0005Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 3 evenK3Selector
        EvenK3Choice.terminal) = true := by
  simp only [evenK3CoverageChunk0005Prefixes, List.all_append]
  rw [evenK3CoverageGroup0020_passes]
  rw [evenK3CoverageGroup0021_passes]
  rw [evenK3CoverageGroup0022_passes]
  rw [evenK3CoverageGroup0023_passes]
  rfl

#print axioms evenK3CoverageChunk0005_checkpoint
#print axioms evenK3CoverageChunk0005_state_output
#print axioms evenK3CoverageChunk0005_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
