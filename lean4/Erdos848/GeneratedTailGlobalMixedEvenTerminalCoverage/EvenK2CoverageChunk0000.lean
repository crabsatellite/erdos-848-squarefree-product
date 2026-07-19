import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK2CoverageGroup0000
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK2CoverageGroup0001
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK2CoverageGroup0002
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK2CoverageChunk0000Prefixes : List (List Nat) :=
  evenK2CoverageGroup0000Prefixes ++
  evenK2CoverageGroup0001Prefixes ++
  evenK2CoverageGroup0002Prefixes

def evenK2CoverageChunk0000StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 1, Erdos848.globalMixedKernelSupportPrimes.drop 0, []⟩]

def evenK2CoverageChunk0000NextState :
    Erdos848.FeasiblePrefixMachineState :=
  []

def evenK2CoverageChunk0000Steps : Nat := 2269

theorem evenK2CoverageChunk0000_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 2)
        evenK2CoverageChunk0000Steps
        evenK2CoverageChunk0000StartState =
      (evenK2CoverageChunk0000Prefixes,
        evenK2CoverageChunk0000NextState) := by
  rfl

theorem evenK2CoverageChunk0000_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 2)
        evenK2CoverageChunk0000StartState =
      evenK2CoverageChunk0000Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 2)
          evenK2CoverageChunk0000NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 2)
    evenK2CoverageChunk0000Steps
    evenK2CoverageChunk0000StartState
  rw [evenK2CoverageChunk0000_checkpoint] at h
  exact h

theorem evenK2CoverageChunk0000_passes :
    evenK2CoverageChunk0000Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 2 evenK2Selector
        EvenK2Choice.terminal) = true := by
  simp only [evenK2CoverageChunk0000Prefixes, List.all_append]
  rw [evenK2CoverageGroup0000_passes]
  rw [evenK2CoverageGroup0001_passes]
  rw [evenK2CoverageGroup0002_passes]
  rfl

#print axioms evenK2CoverageChunk0000_checkpoint
#print axioms evenK2CoverageChunk0000_state_output
#print axioms evenK2CoverageChunk0000_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
