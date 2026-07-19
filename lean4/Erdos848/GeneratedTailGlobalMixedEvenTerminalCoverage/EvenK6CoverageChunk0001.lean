import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0004
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0005
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0006
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0007
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageChunk0001Prefixes : List (List Nat) :=
  evenK6CoverageGroup0004Prefixes ++
  evenK6CoverageGroup0005Prefixes ++
  evenK6CoverageGroup0006Prefixes ++
  evenK6CoverageGroup0007Prefixes

def evenK6CoverageChunk0001StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 16107, Erdos848.globalMixedKernelSupportPrimes.drop 43, [59, 13, 7, 3]⟩,
  ⟨2, 273, Erdos848.globalMixedKernelSupportPrimes.drop 15, [13, 7, 3]⟩,
  ⟨3, 21, Erdos848.globalMixedKernelSupportPrimes.drop 4, [7, 3]⟩,
  ⟨4, 3, Erdos848.globalMixedKernelSupportPrimes.drop 2, [3]⟩,
  ⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK6CoverageChunk0001NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 14973, Erdos848.globalMixedKernelSupportPrimes.drop 42, [31, 23, 7, 3]⟩,
  ⟨2, 483, Erdos848.globalMixedKernelSupportPrimes.drop 9, [23, 7, 3]⟩,
  ⟨3, 21, Erdos848.globalMixedKernelSupportPrimes.drop 7, [7, 3]⟩,
  ⟨4, 3, Erdos848.globalMixedKernelSupportPrimes.drop 2, [3]⟩,
  ⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK6CoverageChunk0001Steps : Nat := 4256

theorem evenK6CoverageChunk0001_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0001Steps
        evenK6CoverageChunk0001StartState =
      (evenK6CoverageChunk0001Prefixes,
        evenK6CoverageChunk0001NextState) := by
  rfl

theorem evenK6CoverageChunk0001_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0001StartState =
      evenK6CoverageChunk0001Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 6)
          evenK6CoverageChunk0001NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 6)
    evenK6CoverageChunk0001Steps
    evenK6CoverageChunk0001StartState
  rw [evenK6CoverageChunk0001_checkpoint] at h
  exact h

theorem evenK6CoverageChunk0001_passes :
    evenK6CoverageChunk0001Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  simp only [evenK6CoverageChunk0001Prefixes, List.all_append]
  rw [evenK6CoverageGroup0004_passes]
  rw [evenK6CoverageGroup0005_passes]
  rw [evenK6CoverageGroup0006_passes]
  rw [evenK6CoverageGroup0007_passes]
  rfl

#print axioms evenK6CoverageChunk0001_checkpoint
#print axioms evenK6CoverageChunk0001_state_output
#print axioms evenK6CoverageChunk0001_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
