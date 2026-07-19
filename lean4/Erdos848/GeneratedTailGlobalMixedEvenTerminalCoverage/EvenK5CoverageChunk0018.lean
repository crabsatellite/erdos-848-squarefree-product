import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0072
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0073
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0074
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0075
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0018Prefixes : List (List Nat) :=
  evenK5CoverageGroup0072Prefixes ++
  evenK5CoverageGroup0073Prefixes ++
  evenK5CoverageGroup0074Prefixes ++
  evenK5CoverageGroup0075Prefixes

def evenK5CoverageChunk0018StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 19981, Erdos848.globalMixedKernelSupportPrimes.drop 31, [53, 29, 13]⟩,
  ⟨2, 377, Erdos848.globalMixedKernelSupportPrimes.drop 14, [29, 13]⟩,
  ⟨3, 13, Erdos848.globalMixedKernelSupportPrimes.drop 8, [13]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 4, []⟩]

def evenK5CoverageChunk0018NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 40273, Erdos848.globalMixedKernelSupportPrimes.drop 28, [103, 23, 17]⟩,
  ⟨2, 391, Erdos848.globalMixedKernelSupportPrimes.drop 25, [23, 17]⟩,
  ⟨3, 17, Erdos848.globalMixedKernelSupportPrimes.drop 7, [17]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 5, []⟩]

def evenK5CoverageChunk0018Steps : Nat := 4428

theorem evenK5CoverageChunk0018_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0018Steps
        evenK5CoverageChunk0018StartState =
      (evenK5CoverageChunk0018Prefixes,
        evenK5CoverageChunk0018NextState) := by
  rfl

theorem evenK5CoverageChunk0018_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0018StartState =
      evenK5CoverageChunk0018Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0018NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0018Steps
    evenK5CoverageChunk0018StartState
  rw [evenK5CoverageChunk0018_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0018_passes :
    evenK5CoverageChunk0018Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0018Prefixes, List.all_append]
  rw [evenK5CoverageGroup0072_passes]
  rw [evenK5CoverageGroup0073_passes]
  rw [evenK5CoverageGroup0074_passes]
  rw [evenK5CoverageGroup0075_passes]
  rfl

#print axioms evenK5CoverageChunk0018_checkpoint
#print axioms evenK5CoverageChunk0018_state_output
#print axioms evenK5CoverageChunk0018_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
