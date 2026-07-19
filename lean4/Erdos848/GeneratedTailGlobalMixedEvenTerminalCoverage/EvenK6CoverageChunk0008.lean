import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0032
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0033
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0034
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0035
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageChunk0008Prefixes : List (List Nat) :=
  evenK6CoverageGroup0032Prefixes ++
  evenK6CoverageGroup0033Prefixes ++
  evenK6CoverageGroup0034Prefixes ++
  evenK6CoverageGroup0035Prefixes

def evenK6CoverageChunk0008StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 94367, Erdos848.globalMixedKernelSupportPrimes.drop 19, [61, 17, 13, 7]⟩,
  ⟨2, 1547, Erdos848.globalMixedKernelSupportPrimes.drop 16, [17, 13, 7]⟩,
  ⟨3, 91, Erdos848.globalMixedKernelSupportPrimes.drop 5, [13, 7]⟩,
  ⟨4, 7, Erdos848.globalMixedKernelSupportPrimes.drop 4, [7]⟩,
  ⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 2, []⟩]

def evenK6CoverageChunk0008NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 154583, Erdos848.globalMixedKernelSupportPrimes.drop 18, [47, 23, 13, 11]⟩,
  ⟨2, 3289, Erdos848.globalMixedKernelSupportPrimes.drop 13, [23, 13, 11]⟩,
  ⟨3, 143, Erdos848.globalMixedKernelSupportPrimes.drop 7, [13, 11]⟩,
  ⟨4, 11, Erdos848.globalMixedKernelSupportPrimes.drop 4, [11]⟩,
  ⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 3, []⟩]

def evenK6CoverageChunk0008Steps : Nat := 4674

theorem evenK6CoverageChunk0008_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0008Steps
        evenK6CoverageChunk0008StartState =
      (evenK6CoverageChunk0008Prefixes,
        evenK6CoverageChunk0008NextState) := by
  rfl

theorem evenK6CoverageChunk0008_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0008StartState =
      evenK6CoverageChunk0008Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 6)
          evenK6CoverageChunk0008NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 6)
    evenK6CoverageChunk0008Steps
    evenK6CoverageChunk0008StartState
  rw [evenK6CoverageChunk0008_checkpoint] at h
  exact h

theorem evenK6CoverageChunk0008_passes :
    evenK6CoverageChunk0008Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  simp only [evenK6CoverageChunk0008Prefixes, List.all_append]
  rw [evenK6CoverageGroup0032_passes]
  rw [evenK6CoverageGroup0033_passes]
  rw [evenK6CoverageGroup0034_passes]
  rw [evenK6CoverageGroup0035_passes]
  rfl

#print axioms evenK6CoverageChunk0008_checkpoint
#print axioms evenK6CoverageChunk0008_state_output
#print axioms evenK6CoverageChunk0008_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
