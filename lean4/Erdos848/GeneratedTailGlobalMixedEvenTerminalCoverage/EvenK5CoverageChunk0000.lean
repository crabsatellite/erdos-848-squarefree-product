import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0000
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0001
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0002
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0003
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0000Prefixes : List (List Nat) :=
  evenK5CoverageGroup0000Prefixes ++
  evenK5CoverageGroup0001Prefixes ++
  evenK5CoverageGroup0002Prefixes ++
  evenK5CoverageGroup0003Prefixes

def evenK5CoverageChunk0000StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 0, []⟩]

def evenK5CoverageChunk0000NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 1113, Erdos848.globalMixedKernelSupportPrimes.drop 91, [53, 7, 3]⟩,
  ⟨2, 21, Erdos848.globalMixedKernelSupportPrimes.drop 14, [7, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 2, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0000Steps : Nat := 4121

theorem evenK5CoverageChunk0000_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0000Steps
        evenK5CoverageChunk0000StartState =
      (evenK5CoverageChunk0000Prefixes,
        evenK5CoverageChunk0000NextState) := by
  rfl

theorem evenK5CoverageChunk0000_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0000StartState =
      evenK5CoverageChunk0000Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0000NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0000Steps
    evenK5CoverageChunk0000StartState
  rw [evenK5CoverageChunk0000_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0000_passes :
    evenK5CoverageChunk0000Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0000Prefixes, List.all_append]
  rw [evenK5CoverageGroup0000_passes]
  rw [evenK5CoverageGroup0001_passes]
  rw [evenK5CoverageGroup0002_passes]
  rw [evenK5CoverageGroup0003_passes]
  rfl

#print axioms evenK5CoverageChunk0000_checkpoint
#print axioms evenK5CoverageChunk0000_state_output
#print axioms evenK5CoverageChunk0000_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
