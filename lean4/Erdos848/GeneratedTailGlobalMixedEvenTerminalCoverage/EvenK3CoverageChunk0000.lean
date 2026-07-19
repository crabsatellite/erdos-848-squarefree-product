import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0000
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0001
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0002
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0003
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK3CoverageChunk0000Prefixes : List (List Nat) :=
  evenK3CoverageGroup0000Prefixes ++
  evenK3CoverageGroup0001Prefixes ++
  evenK3CoverageGroup0002Prefixes ++
  evenK3CoverageGroup0003Prefixes

def evenK3CoverageChunk0000StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨2, 1, Erdos848.globalMixedKernelSupportPrimes.drop 0, []⟩]

def evenK3CoverageChunk0000NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 11, Erdos848.globalMixedKernelSupportPrimes.drop 458, [11]⟩,
  ⟨2, 1, Erdos848.globalMixedKernelSupportPrimes.drop 3, []⟩]

def evenK3CoverageChunk0000Steps : Nat := 4101

theorem evenK3CoverageChunk0000_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0000Steps
        evenK3CoverageChunk0000StartState =
      (evenK3CoverageChunk0000Prefixes,
        evenK3CoverageChunk0000NextState) := by
  rfl

theorem evenK3CoverageChunk0000_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0000StartState =
      evenK3CoverageChunk0000Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 3)
          evenK3CoverageChunk0000NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 3)
    evenK3CoverageChunk0000Steps
    evenK3CoverageChunk0000StartState
  rw [evenK3CoverageChunk0000_checkpoint] at h
  exact h

theorem evenK3CoverageChunk0000_passes :
    evenK3CoverageChunk0000Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 3 evenK3Selector
        EvenK3Choice.terminal) = true := by
  simp only [evenK3CoverageChunk0000Prefixes, List.all_append]
  rw [evenK3CoverageGroup0000_passes]
  rw [evenK3CoverageGroup0001_passes]
  rw [evenK3CoverageGroup0002_passes]
  rw [evenK3CoverageGroup0003_passes]
  rfl

#print axioms evenK3CoverageChunk0000_checkpoint
#print axioms evenK3CoverageChunk0000_state_output
#print axioms evenK3CoverageChunk0000_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
