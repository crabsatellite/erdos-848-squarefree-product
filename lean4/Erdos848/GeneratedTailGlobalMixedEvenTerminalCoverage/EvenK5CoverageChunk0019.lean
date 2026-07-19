import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0076
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0077
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0078
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0079
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0019Prefixes : List (List Nat) :=
  evenK5CoverageGroup0076Prefixes ++
  evenK5CoverageGroup0077Prefixes ++
  evenK5CoverageGroup0078Prefixes ++
  evenK5CoverageGroup0079Prefixes

def evenK5CoverageChunk0019StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 40273, Erdos848.globalMixedKernelSupportPrimes.drop 28, [103, 23, 17]⟩,
  ⟨2, 391, Erdos848.globalMixedKernelSupportPrimes.drop 25, [23, 17]⟩,
  ⟨3, 17, Erdos848.globalMixedKernelSupportPrimes.drop 7, [17]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 5, []⟩]

def evenK5CoverageChunk0019NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 38399, Erdos848.globalMixedKernelSupportPrimes.drop 17, [47, 43, 19]⟩,
  ⟨2, 817, Erdos848.globalMixedKernelSupportPrimes.drop 13, [43, 19]⟩,
  ⟨3, 19, Erdos848.globalMixedKernelSupportPrimes.drop 12, [19]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 6, []⟩]

def evenK5CoverageChunk0019Steps : Nat := 4476

theorem evenK5CoverageChunk0019_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0019Steps
        evenK5CoverageChunk0019StartState =
      (evenK5CoverageChunk0019Prefixes,
        evenK5CoverageChunk0019NextState) := by
  rfl

theorem evenK5CoverageChunk0019_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0019StartState =
      evenK5CoverageChunk0019Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0019NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0019Steps
    evenK5CoverageChunk0019StartState
  rw [evenK5CoverageChunk0019_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0019_passes :
    evenK5CoverageChunk0019Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0019Prefixes, List.all_append]
  rw [evenK5CoverageGroup0076_passes]
  rw [evenK5CoverageGroup0077_passes]
  rw [evenK5CoverageGroup0078_passes]
  rw [evenK5CoverageGroup0079_passes]
  rfl

#print axioms evenK5CoverageChunk0019_checkpoint
#print axioms evenK5CoverageChunk0019_state_output
#print axioms evenK5CoverageChunk0019_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
