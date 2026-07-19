import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK7CoverageGroup0004
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK7CoverageGroup0005
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK7CoverageGroup0006
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK7CoverageChunk0001Prefixes : List (List Nat) :=
  evenK7CoverageGroup0004Prefixes ++
  evenK7CoverageGroup0005Prefixes ++
  evenK7CoverageGroup0006Prefixes

def evenK7CoverageChunk0001StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 428127, Erdos848.globalMixedKernelSupportPrimes.drop 12, [37, 29, 19, 7, 3]⟩,
  ⟨2, 11571, Erdos848.globalMixedKernelSupportPrimes.drop 10, [29, 19, 7, 3]⟩,
  ⟨3, 399, Erdos848.globalMixedKernelSupportPrimes.drop 8, [19, 7, 3]⟩,
  ⟨4, 21, Erdos848.globalMixedKernelSupportPrimes.drop 6, [7, 3]⟩,
  ⟨5, 3, Erdos848.globalMixedKernelSupportPrimes.drop 2, [3]⟩,
  ⟨6, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK7CoverageChunk0001NextState :
    Erdos848.FeasiblePrefixMachineState :=
  []

def evenK7CoverageChunk0001Steps : Nat := 3264

theorem evenK7CoverageChunk0001_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 7)
        evenK7CoverageChunk0001Steps
        evenK7CoverageChunk0001StartState =
      (evenK7CoverageChunk0001Prefixes,
        evenK7CoverageChunk0001NextState) := by
  rfl

theorem evenK7CoverageChunk0001_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 7)
        evenK7CoverageChunk0001StartState =
      evenK7CoverageChunk0001Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 7)
          evenK7CoverageChunk0001NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 7)
    evenK7CoverageChunk0001Steps
    evenK7CoverageChunk0001StartState
  rw [evenK7CoverageChunk0001_checkpoint] at h
  exact h

theorem evenK7CoverageChunk0001_passes :
    evenK7CoverageChunk0001Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 7 evenK7Selector
        EvenK7Choice.terminal) = true := by
  simp only [evenK7CoverageChunk0001Prefixes, List.all_append]
  rw [evenK7CoverageGroup0004_passes]
  rw [evenK7CoverageGroup0005_passes]
  rw [evenK7CoverageGroup0006_passes]
  rfl

#print axioms evenK7CoverageChunk0001_checkpoint
#print axioms evenK7CoverageChunk0001_state_output
#print axioms evenK7CoverageChunk0001_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
