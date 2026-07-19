import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0008
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0009
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0010
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0011
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0002Prefixes : List (List Nat) :=
  evenK4CoverageGroup0008Prefixes ++
  evenK4CoverageGroup0009Prefixes ++
  evenK4CoverageGroup0010Prefixes ++
  evenK4CoverageGroup0011Prefixes

def evenK4CoverageChunk0002StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 159, Erdos848.globalMixedKernelSupportPrimes.drop 127, [53, 3]⟩,
  ⟨2, 3, Erdos848.globalMixedKernelSupportPrimes.drop 14, [3]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK4CoverageChunk0002NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 321, Erdos848.globalMixedKernelSupportPrimes.drop 61, [107, 3]⟩,
  ⟨2, 3, Erdos848.globalMixedKernelSupportPrimes.drop 26, [3]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK4CoverageChunk0002Steps : Nat := 4120

theorem evenK4CoverageChunk0002_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0002Steps
        evenK4CoverageChunk0002StartState =
      (evenK4CoverageChunk0002Prefixes,
        evenK4CoverageChunk0002NextState) := by
  rfl

theorem evenK4CoverageChunk0002_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0002StartState =
      evenK4CoverageChunk0002Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0002NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0002Steps
    evenK4CoverageChunk0002StartState
  rw [evenK4CoverageChunk0002_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0002_passes :
    evenK4CoverageChunk0002Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0002Prefixes, List.all_append]
  rw [evenK4CoverageGroup0008_passes]
  rw [evenK4CoverageGroup0009_passes]
  rw [evenK4CoverageGroup0010_passes]
  rw [evenK4CoverageGroup0011_passes]
  rfl

#print axioms evenK4CoverageChunk0002_checkpoint
#print axioms evenK4CoverageChunk0002_state_output
#print axioms evenK4CoverageChunk0002_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
