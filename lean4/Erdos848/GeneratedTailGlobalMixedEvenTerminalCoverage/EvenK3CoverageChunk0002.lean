import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0008
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0009
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0010
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0011
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK3CoverageChunk0002Prefixes : List (List Nat) :=
  evenK3CoverageGroup0008Prefixes ++
  evenK3CoverageGroup0009Prefixes ++
  evenK3CoverageGroup0010Prefixes ++
  evenK3CoverageGroup0011Prefixes

def evenK3CoverageChunk0002StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 29, Erdos848.globalMixedKernelSupportPrimes.drop 240, [29]⟩,
  ⟨2, 1, Erdos848.globalMixedKernelSupportPrimes.drop 8, []⟩]

def evenK3CoverageChunk0002NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 59, Erdos848.globalMixedKernelSupportPrimes.drop 197, [59]⟩,
  ⟨2, 1, Erdos848.globalMixedKernelSupportPrimes.drop 15, []⟩]

def evenK3CoverageChunk0002Steps : Nat := 4110

theorem evenK3CoverageChunk0002_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0002Steps
        evenK3CoverageChunk0002StartState =
      (evenK3CoverageChunk0002Prefixes,
        evenK3CoverageChunk0002NextState) := by
  rfl

theorem evenK3CoverageChunk0002_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0002StartState =
      evenK3CoverageChunk0002Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 3)
          evenK3CoverageChunk0002NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 3)
    evenK3CoverageChunk0002Steps
    evenK3CoverageChunk0002StartState
  rw [evenK3CoverageChunk0002_checkpoint] at h
  exact h

theorem evenK3CoverageChunk0002_passes :
    evenK3CoverageChunk0002Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 3 evenK3Selector
        EvenK3Choice.terminal) = true := by
  simp only [evenK3CoverageChunk0002Prefixes, List.all_append]
  rw [evenK3CoverageGroup0008_passes]
  rw [evenK3CoverageGroup0009_passes]
  rw [evenK3CoverageGroup0010_passes]
  rw [evenK3CoverageGroup0011_passes]
  rfl

#print axioms evenK3CoverageChunk0002_checkpoint
#print axioms evenK3CoverageChunk0002_state_output
#print axioms evenK3CoverageChunk0002_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
