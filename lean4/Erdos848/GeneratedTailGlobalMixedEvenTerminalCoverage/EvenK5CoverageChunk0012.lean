import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0048
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0049
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0050
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0051
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0012Prefixes : List (List Nat) :=
  evenK5CoverageGroup0048Prefixes ++
  evenK5CoverageGroup0049Prefixes ++
  evenK5CoverageGroup0050Prefixes ++
  evenK5CoverageGroup0051Prefixes

def evenK5CoverageChunk0012StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 12649, Erdos848.globalMixedKernelSupportPrimes.drop 44, [139, 13, 7]⟩,
  ⟨2, 91, Erdos848.globalMixedKernelSupportPrimes.drop 32, [13, 7]⟩,
  ⟨3, 7, Erdos848.globalMixedKernelSupportPrimes.drop 4, [7]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 2, []⟩]

def evenK5CoverageChunk0012NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 14497, Erdos848.globalMixedKernelSupportPrimes.drop 36, [109, 19, 7]⟩,
  ⟨2, 133, Erdos848.globalMixedKernelSupportPrimes.drop 27, [19, 7]⟩,
  ⟨3, 7, Erdos848.globalMixedKernelSupportPrimes.drop 6, [7]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 2, []⟩]

def evenK5CoverageChunk0012Steps : Nat := 4226

theorem evenK5CoverageChunk0012_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0012Steps
        evenK5CoverageChunk0012StartState =
      (evenK5CoverageChunk0012Prefixes,
        evenK5CoverageChunk0012NextState) := by
  rfl

theorem evenK5CoverageChunk0012_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0012StartState =
      evenK5CoverageChunk0012Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0012NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0012Steps
    evenK5CoverageChunk0012StartState
  rw [evenK5CoverageChunk0012_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0012_passes :
    evenK5CoverageChunk0012Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0012Prefixes, List.all_append]
  rw [evenK5CoverageGroup0048_passes]
  rw [evenK5CoverageGroup0049_passes]
  rw [evenK5CoverageGroup0050_passes]
  rw [evenK5CoverageGroup0051_passes]
  rfl

#print axioms evenK5CoverageChunk0012_checkpoint
#print axioms evenK5CoverageChunk0012_state_output
#print axioms evenK5CoverageChunk0012_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
