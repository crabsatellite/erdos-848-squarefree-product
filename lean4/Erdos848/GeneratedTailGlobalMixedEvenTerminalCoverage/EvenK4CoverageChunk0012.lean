import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0048
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0049
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0050
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0051
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0012Prefixes : List (List Nat) :=
  evenK4CoverageGroup0048Prefixes ++
  evenK4CoverageGroup0049Prefixes ++
  evenK4CoverageGroup0050Prefixes ++
  evenK4CoverageGroup0051Prefixes

def evenK4CoverageChunk0012StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 1717, Erdos848.globalMixedKernelSupportPrimes.drop 59, [101, 17]⟩,
  ⟨2, 17, Erdos848.globalMixedKernelSupportPrimes.drop 24, [17]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 5, []⟩]

def evenK4CoverageChunk0012NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 1387, Erdos848.globalMixedKernelSupportPrimes.drop 41, [73, 19]⟩,
  ⟨2, 19, Erdos848.globalMixedKernelSupportPrimes.drop 19, [19]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 6, []⟩]

def evenK4CoverageChunk0012Steps : Nat := 4184

theorem evenK4CoverageChunk0012_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0012Steps
        evenK4CoverageChunk0012StartState =
      (evenK4CoverageChunk0012Prefixes,
        evenK4CoverageChunk0012NextState) := by
  rfl

theorem evenK4CoverageChunk0012_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0012StartState =
      evenK4CoverageChunk0012Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0012NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0012Steps
    evenK4CoverageChunk0012StartState
  rw [evenK4CoverageChunk0012_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0012_passes :
    evenK4CoverageChunk0012Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0012Prefixes, List.all_append]
  rw [evenK4CoverageGroup0048_passes]
  rw [evenK4CoverageGroup0049_passes]
  rw [evenK4CoverageGroup0050_passes]
  rw [evenK4CoverageGroup0051_passes]
  rfl

#print axioms evenK4CoverageChunk0012_checkpoint
#print axioms evenK4CoverageChunk0012_state_output
#print axioms evenK4CoverageChunk0012_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
