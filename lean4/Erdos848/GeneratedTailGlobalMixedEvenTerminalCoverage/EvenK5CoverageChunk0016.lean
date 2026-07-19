import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0064
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0065
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0066
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0067
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0016Prefixes : List (List Nat) :=
  evenK5CoverageGroup0064Prefixes ++
  evenK5CoverageGroup0065Prefixes ++
  evenK5CoverageGroup0066Prefixes ++
  evenK5CoverageGroup0067Prefixes

def evenK5CoverageChunk0016StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 7337, Erdos848.globalMixedKernelSupportPrimes.drop 57, [29, 23, 11]⟩,
  ⟨2, 253, Erdos848.globalMixedKernelSupportPrimes.drop 8, [23, 11]⟩,
  ⟨3, 11, Erdos848.globalMixedKernelSupportPrimes.drop 7, [11]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 3, []⟩]

def evenK5CoverageChunk0016NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 57761, Erdos848.globalMixedKernelSupportPrimes.drop 24, [89, 59, 11]⟩,
  ⟨2, 649, Erdos848.globalMixedKernelSupportPrimes.drop 22, [59, 11]⟩,
  ⟨3, 11, Erdos848.globalMixedKernelSupportPrimes.drop 15, [11]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 3, []⟩]

def evenK5CoverageChunk0016Steps : Nat := 4384

theorem evenK5CoverageChunk0016_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0016Steps
        evenK5CoverageChunk0016StartState =
      (evenK5CoverageChunk0016Prefixes,
        evenK5CoverageChunk0016NextState) := by
  rfl

theorem evenK5CoverageChunk0016_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0016StartState =
      evenK5CoverageChunk0016Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0016NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0016Steps
    evenK5CoverageChunk0016StartState
  rw [evenK5CoverageChunk0016_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0016_passes :
    evenK5CoverageChunk0016Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0016Prefixes, List.all_append]
  rw [evenK5CoverageGroup0064_passes]
  rw [evenK5CoverageGroup0065_passes]
  rw [evenK5CoverageGroup0066_passes]
  rw [evenK5CoverageGroup0067_passes]
  rfl

#print axioms evenK5CoverageChunk0016_checkpoint
#print axioms evenK5CoverageChunk0016_state_output
#print axioms evenK5CoverageChunk0016_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
