import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0008
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0009
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0010
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0011
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0002Prefixes : List (List Nat) :=
  evenK5CoverageGroup0008Prefixes ++
  evenK5CoverageGroup0009Prefixes ++
  evenK5CoverageGroup0010Prefixes ++
  evenK5CoverageGroup0011Prefixes

def evenK5CoverageChunk0002StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 4431, Erdos848.globalMixedKernelSupportPrimes.drop 69, [211, 7, 3]⟩,
  ⟨2, 21, Erdos848.globalMixedKernelSupportPrimes.drop 45, [7, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 2, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0002NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 2343, Erdos848.globalMixedKernelSupportPrimes.drop 83, [71, 11, 3]⟩,
  ⟨2, 33, Erdos848.globalMixedKernelSupportPrimes.drop 18, [11, 3]⟩,
  ⟨3, 3, Erdos848.globalMixedKernelSupportPrimes.drop 3, [3]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK5CoverageChunk0002Steps : Nat := 4162

theorem evenK5CoverageChunk0002_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0002Steps
        evenK5CoverageChunk0002StartState =
      (evenK5CoverageChunk0002Prefixes,
        evenK5CoverageChunk0002NextState) := by
  rfl

theorem evenK5CoverageChunk0002_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0002StartState =
      evenK5CoverageChunk0002Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0002NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0002Steps
    evenK5CoverageChunk0002StartState
  rw [evenK5CoverageChunk0002_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0002_passes :
    evenK5CoverageChunk0002Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0002Prefixes, List.all_append]
  rw [evenK5CoverageGroup0008_passes]
  rw [evenK5CoverageGroup0009_passes]
  rw [evenK5CoverageGroup0010_passes]
  rw [evenK5CoverageGroup0011_passes]
  rfl

#print axioms evenK5CoverageChunk0002_checkpoint
#print axioms evenK5CoverageChunk0002_state_output
#print axioms evenK5CoverageChunk0002_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
