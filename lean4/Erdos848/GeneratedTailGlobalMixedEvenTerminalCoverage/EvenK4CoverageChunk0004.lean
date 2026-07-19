import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0016
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0017
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0018
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0019
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0004Prefixes : List (List Nat) :=
  evenK4CoverageGroup0016Prefixes ++
  evenK4CoverageGroup0017Prefixes ++
  evenK4CoverageGroup0018Prefixes ++
  evenK4CoverageGroup0019Prefixes

def evenK4CoverageChunk0004StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 597, Erdos848.globalMixedKernelSupportPrimes.drop 110, [199, 3]⟩,
  ⟨2, 3, Erdos848.globalMixedKernelSupportPrimes.drop 44, [3]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK4CoverageChunk0004NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 91, Erdos848.globalMixedKernelSupportPrimes.drop 18, [13, 7]⟩,
  ⟨2, 7, Erdos848.globalMixedKernelSupportPrimes.drop 4, [7]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 2, []⟩]

def evenK4CoverageChunk0004Steps : Nat := 4192

theorem evenK4CoverageChunk0004_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0004Steps
        evenK4CoverageChunk0004StartState =
      (evenK4CoverageChunk0004Prefixes,
        evenK4CoverageChunk0004NextState) := by
  rfl

theorem evenK4CoverageChunk0004_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0004StartState =
      evenK4CoverageChunk0004Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0004NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0004Steps
    evenK4CoverageChunk0004StartState
  rw [evenK4CoverageChunk0004_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0004_passes :
    evenK4CoverageChunk0004Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0004Prefixes, List.all_append]
  rw [evenK4CoverageGroup0016_passes]
  rw [evenK4CoverageGroup0017_passes]
  rw [evenK4CoverageGroup0018_passes]
  rw [evenK4CoverageGroup0019_passes]
  rfl

#print axioms evenK4CoverageChunk0004_checkpoint
#print axioms evenK4CoverageChunk0004_state_output
#print axioms evenK4CoverageChunk0004_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
