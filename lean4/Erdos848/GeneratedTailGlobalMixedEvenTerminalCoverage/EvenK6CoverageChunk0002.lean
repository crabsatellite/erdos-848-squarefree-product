import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0008
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0009
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0010
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0011
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageChunk0002Prefixes : List (List Nat) :=
  evenK6CoverageGroup0008Prefixes ++
  evenK6CoverageGroup0009Prefixes ++
  evenK6CoverageGroup0010Prefixes ++
  evenK6CoverageGroup0011Prefixes

def evenK6CoverageChunk0002StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 14973, Erdos848.globalMixedKernelSupportPrimes.drop 42, [31, 23, 7, 3]⟩,
  ⟨2, 483, Erdos848.globalMixedKernelSupportPrimes.drop 9, [23, 7, 3]⟩,
  ⟨3, 21, Erdos848.globalMixedKernelSupportPrimes.drop 7, [7, 3]⟩,
  ⟨4, 3, Erdos848.globalMixedKernelSupportPrimes.drop 2, [3]⟩,
  ⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK6CoverageChunk0002NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 75579, Erdos848.globalMixedKernelSupportPrimes.drop 23, [61, 59, 7, 3]⟩,
  ⟨2, 1239, Erdos848.globalMixedKernelSupportPrimes.drop 16, [59, 7, 3]⟩,
  ⟨3, 21, Erdos848.globalMixedKernelSupportPrimes.drop 15, [7, 3]⟩,
  ⟨4, 3, Erdos848.globalMixedKernelSupportPrimes.drop 2, [3]⟩,
  ⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK6CoverageChunk0002Steps : Nat := 4374

theorem evenK6CoverageChunk0002_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0002Steps
        evenK6CoverageChunk0002StartState =
      (evenK6CoverageChunk0002Prefixes,
        evenK6CoverageChunk0002NextState) := by
  rfl

theorem evenK6CoverageChunk0002_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0002StartState =
      evenK6CoverageChunk0002Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 6)
          evenK6CoverageChunk0002NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 6)
    evenK6CoverageChunk0002Steps
    evenK6CoverageChunk0002StartState
  rw [evenK6CoverageChunk0002_checkpoint] at h
  exact h

theorem evenK6CoverageChunk0002_passes :
    evenK6CoverageChunk0002Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  simp only [evenK6CoverageChunk0002Prefixes, List.all_append]
  rw [evenK6CoverageGroup0008_passes]
  rw [evenK6CoverageGroup0009_passes]
  rw [evenK6CoverageGroup0010_passes]
  rw [evenK6CoverageGroup0011_passes]
  rfl

#print axioms evenK6CoverageChunk0002_checkpoint
#print axioms evenK6CoverageChunk0002_state_output
#print axioms evenK6CoverageChunk0002_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
