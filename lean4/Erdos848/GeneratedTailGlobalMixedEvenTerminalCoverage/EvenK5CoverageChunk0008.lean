import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0032
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0033
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0034
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0035
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0008Prefixes : List (List Nat) :=
  evenK5CoverageGroup0032Prefixes ++
  evenK5CoverageGroup0033Prefixes ++
  evenK5CoverageGroup0034Prefixes ++
  evenK5CoverageGroup0035Prefixes

def evenK5CoverageChunk0008StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 3999, Erdos848.globalMixedKernelSupportPrimes.drop 62, [43, 31, 3]⟩,
  ⟨2, 93, Erdos848.globalMixedKernelSupportPrimes.drop 12, [31, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 9, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0008NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 12423, Erdos848.globalMixedKernelSupportPrimes.drop 35, [101, 41, 3]⟩,
  ⟨2, 123, Erdos848.globalMixedKernelSupportPrimes.drop 24, [41, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 11, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0008Steps : Nat := 4238

theorem evenK5CoverageChunk0008_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0008Steps
        evenK5CoverageChunk0008StartState =
      (evenK5CoverageChunk0008Prefixes,
        evenK5CoverageChunk0008NextState) := by
  rfl

theorem evenK5CoverageChunk0008_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0008StartState =
      evenK5CoverageChunk0008Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0008NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0008Steps
    evenK5CoverageChunk0008StartState
  rw [evenK5CoverageChunk0008_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0008_passes :
    evenK5CoverageChunk0008Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0008Prefixes, List.all_append]
  rw [evenK5CoverageGroup0032_passes]
  rw [evenK5CoverageGroup0033_passes]
  rw [evenK5CoverageGroup0034_passes]
  rw [evenK5CoverageGroup0035_passes]
  rfl

#print axioms evenK5CoverageChunk0008_checkpoint
#print axioms evenK5CoverageChunk0008_state_output
#print axioms evenK5CoverageChunk0008_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
