import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0004
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0005
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0006
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0007
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0001Prefixes : List (List Nat) :=
  evenK5CoverageGroup0004Prefixes ++
  evenK5CoverageGroup0005Prefixes ++
  evenK5CoverageGroup0006Prefixes ++
  evenK5CoverageGroup0007Prefixes

def evenK5CoverageChunk0001StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 1113, Erdos848.globalMixedKernelSupportPrimes.drop 91, [53, 7, 3]⟩,
  ⟨2, 21, Erdos848.globalMixedKernelSupportPrimes.drop 14, [7, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 2, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0001NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 4431, Erdos848.globalMixedKernelSupportPrimes.drop 69, [211, 7, 3]⟩,
  ⟨2, 21, Erdos848.globalMixedKernelSupportPrimes.drop 45, [7, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 2, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0001Steps : Nat := 4158

theorem evenK5CoverageChunk0001_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0001Steps
        evenK5CoverageChunk0001StartState =
      (evenK5CoverageChunk0001Prefixes,
        evenK5CoverageChunk0001NextState) := by
  rfl

theorem evenK5CoverageChunk0001_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0001StartState =
      evenK5CoverageChunk0001Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0001NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0001Steps
    evenK5CoverageChunk0001StartState
  rw [evenK5CoverageChunk0001_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0001_passes :
    evenK5CoverageChunk0001Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0001Prefixes, List.all_append]
  rw [evenK5CoverageGroup0004_passes]
  rw [evenK5CoverageGroup0005_passes]
  rw [evenK5CoverageGroup0006_passes]
  rw [evenK5CoverageGroup0007_passes]
  rfl

#print axioms evenK5CoverageChunk0001_checkpoint
#print axioms evenK5CoverageChunk0001_state_output
#print axioms evenK5CoverageChunk0001_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
