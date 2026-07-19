import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0000
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0001
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0002
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0003
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0000Prefixes : List (List Nat) :=
  evenK4CoverageGroup0000Prefixes ++
  evenK4CoverageGroup0001Prefixes ++
  evenK4CoverageGroup0002Prefixes ++
  evenK4CoverageGroup0003Prefixes

def evenK4CoverageChunk0000StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 0, []⟩]

def evenK4CoverageChunk0000NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 57, Erdos848.globalMixedKernelSupportPrimes.drop 278, [19, 3]⟩,
  ⟨2, 3, Erdos848.globalMixedKernelSupportPrimes.drop 6, [3]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK4CoverageChunk0000Steps : Nat := 4106

theorem evenK4CoverageChunk0000_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0000Steps
        evenK4CoverageChunk0000StartState =
      (evenK4CoverageChunk0000Prefixes,
        evenK4CoverageChunk0000NextState) := by
  rfl

theorem evenK4CoverageChunk0000_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0000StartState =
      evenK4CoverageChunk0000Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0000NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0000Steps
    evenK4CoverageChunk0000StartState
  rw [evenK4CoverageChunk0000_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0000_passes :
    evenK4CoverageChunk0000Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0000Prefixes, List.all_append]
  rw [evenK4CoverageGroup0000_passes]
  rw [evenK4CoverageGroup0001_passes]
  rw [evenK4CoverageGroup0002_passes]
  rw [evenK4CoverageGroup0003_passes]
  rfl

#print axioms evenK4CoverageChunk0000_checkpoint
#print axioms evenK4CoverageChunk0000_state_output
#print axioms evenK4CoverageChunk0000_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
