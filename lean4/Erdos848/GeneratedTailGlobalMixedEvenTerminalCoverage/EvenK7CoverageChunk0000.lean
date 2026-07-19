import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK7CoverageGroup0000
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK7CoverageGroup0001
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK7CoverageGroup0002
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK7CoverageGroup0003
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK7CoverageChunk0000Prefixes : List (List Nat) :=
  evenK7CoverageGroup0000Prefixes ++
  evenK7CoverageGroup0001Prefixes ++
  evenK7CoverageGroup0002Prefixes ++
  evenK7CoverageGroup0003Prefixes

def evenK7CoverageChunk0000StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨6, 1, Erdos848.globalMixedKernelSupportPrimes.drop 0, []⟩]

def evenK7CoverageChunk0000NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 428127, Erdos848.globalMixedKernelSupportPrimes.drop 12, [37, 29, 19, 7, 3]⟩,
  ⟨2, 11571, Erdos848.globalMixedKernelSupportPrimes.drop 10, [29, 19, 7, 3]⟩,
  ⟨3, 399, Erdos848.globalMixedKernelSupportPrimes.drop 8, [19, 7, 3]⟩,
  ⟨4, 21, Erdos848.globalMixedKernelSupportPrimes.drop 6, [7, 3]⟩,
  ⟨5, 3, Erdos848.globalMixedKernelSupportPrimes.drop 2, [3]⟩,
  ⟨6, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK7CoverageChunk0000Steps : Nat := 4571

theorem evenK7CoverageChunk0000_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 7)
        evenK7CoverageChunk0000Steps
        evenK7CoverageChunk0000StartState =
      (evenK7CoverageChunk0000Prefixes,
        evenK7CoverageChunk0000NextState) := by
  rfl

theorem evenK7CoverageChunk0000_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 7)
        evenK7CoverageChunk0000StartState =
      evenK7CoverageChunk0000Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 7)
          evenK7CoverageChunk0000NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 7)
    evenK7CoverageChunk0000Steps
    evenK7CoverageChunk0000StartState
  rw [evenK7CoverageChunk0000_checkpoint] at h
  exact h

theorem evenK7CoverageChunk0000_passes :
    evenK7CoverageChunk0000Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 7 evenK7Selector
        EvenK7Choice.terminal) = true := by
  simp only [evenK7CoverageChunk0000Prefixes, List.all_append]
  rw [evenK7CoverageGroup0000_passes]
  rw [evenK7CoverageGroup0001_passes]
  rw [evenK7CoverageGroup0002_passes]
  rw [evenK7CoverageGroup0003_passes]
  rfl

#print axioms evenK7CoverageChunk0000_checkpoint
#print axioms evenK7CoverageChunk0000_state_output
#print axioms evenK7CoverageChunk0000_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
