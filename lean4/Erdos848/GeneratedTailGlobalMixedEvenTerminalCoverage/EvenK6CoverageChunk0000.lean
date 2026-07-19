import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0000
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0001
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0002
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0003
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageChunk0000Prefixes : List (List Nat) :=
  evenK6CoverageGroup0000Prefixes ++
  evenK6CoverageGroup0001Prefixes ++
  evenK6CoverageGroup0002Prefixes ++
  evenK6CoverageGroup0003Prefixes

def evenK6CoverageChunk0000StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 0, []⟩]

def evenK6CoverageChunk0000NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 16107, Erdos848.globalMixedKernelSupportPrimes.drop 43, [59, 13, 7, 3]⟩,
  ⟨2, 273, Erdos848.globalMixedKernelSupportPrimes.drop 15, [13, 7, 3]⟩,
  ⟨3, 21, Erdos848.globalMixedKernelSupportPrimes.drop 4, [7, 3]⟩,
  ⟨4, 3, Erdos848.globalMixedKernelSupportPrimes.drop 2, [3]⟩,
  ⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK6CoverageChunk0000Steps : Nat := 4192

theorem evenK6CoverageChunk0000_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0000Steps
        evenK6CoverageChunk0000StartState =
      (evenK6CoverageChunk0000Prefixes,
        evenK6CoverageChunk0000NextState) := by
  rfl

theorem evenK6CoverageChunk0000_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0000StartState =
      evenK6CoverageChunk0000Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 6)
          evenK6CoverageChunk0000NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 6)
    evenK6CoverageChunk0000Steps
    evenK6CoverageChunk0000StartState
  rw [evenK6CoverageChunk0000_checkpoint] at h
  exact h

theorem evenK6CoverageChunk0000_passes :
    evenK6CoverageChunk0000Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  simp only [evenK6CoverageChunk0000Prefixes, List.all_append]
  rw [evenK6CoverageGroup0000_passes]
  rw [evenK6CoverageGroup0001_passes]
  rw [evenK6CoverageGroup0002_passes]
  rw [evenK6CoverageGroup0003_passes]
  rfl

#print axioms evenK6CoverageChunk0000_checkpoint
#print axioms evenK6CoverageChunk0000_state_output
#print axioms evenK6CoverageChunk0000_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
