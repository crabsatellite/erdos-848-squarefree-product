import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0060
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0061
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0062
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0063
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0015Prefixes : List (List Nat) :=
  evenK4CoverageGroup0060Prefixes ++
  evenK4CoverageGroup0061Prefixes ++
  evenK4CoverageGroup0062Prefixes ++
  evenK4CoverageGroup0063Prefixes

def evenK4CoverageChunk0015StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 3161, Erdos848.globalMixedKernelSupportPrimes.drop 51, [109, 29]⟩,
  ⟨2, 29, Erdos848.globalMixedKernelSupportPrimes.drop 27, [29]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 8, []⟩]

def evenK4CoverageChunk0015NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 2257, Erdos848.globalMixedKernelSupportPrimes.drop 64, [61, 37]⟩,
  ⟨2, 37, Erdos848.globalMixedKernelSupportPrimes.drop 16, [37]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 10, []⟩]

def evenK4CoverageChunk0015Steps : Nat := 4220

theorem evenK4CoverageChunk0015_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0015Steps
        evenK4CoverageChunk0015StartState =
      (evenK4CoverageChunk0015Prefixes,
        evenK4CoverageChunk0015NextState) := by
  rfl

theorem evenK4CoverageChunk0015_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0015StartState =
      evenK4CoverageChunk0015Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0015NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0015Steps
    evenK4CoverageChunk0015StartState
  rw [evenK4CoverageChunk0015_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0015_passes :
    evenK4CoverageChunk0015Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0015Prefixes, List.all_append]
  rw [evenK4CoverageGroup0060_passes]
  rw [evenK4CoverageGroup0061_passes]
  rw [evenK4CoverageGroup0062_passes]
  rw [evenK4CoverageGroup0063_passes]
  rfl

#print axioms evenK4CoverageChunk0015_checkpoint
#print axioms evenK4CoverageChunk0015_state_output
#print axioms evenK4CoverageChunk0015_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
