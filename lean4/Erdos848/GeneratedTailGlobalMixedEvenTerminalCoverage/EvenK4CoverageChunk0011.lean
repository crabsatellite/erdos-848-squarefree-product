import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0044
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0045
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0046
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0047
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0011Prefixes : List (List Nat) :=
  evenK4CoverageGroup0044Prefixes ++
  evenK4CoverageGroup0045Prefixes ++
  evenK4CoverageGroup0046Prefixes ++
  evenK4CoverageGroup0047Prefixes

def evenK4CoverageChunk0011StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 2509, Erdos848.globalMixedKernelSupportPrimes.drop 49, [193, 13]⟩,
  ⟨2, 13, Erdos848.globalMixedKernelSupportPrimes.drop 42, [13]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 4, []⟩]

def evenK4CoverageChunk0011NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 1717, Erdos848.globalMixedKernelSupportPrimes.drop 59, [101, 17]⟩,
  ⟨2, 17, Erdos848.globalMixedKernelSupportPrimes.drop 24, [17]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 5, []⟩]

def evenK4CoverageChunk0011Steps : Nat := 4170

theorem evenK4CoverageChunk0011_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0011Steps
        evenK4CoverageChunk0011StartState =
      (evenK4CoverageChunk0011Prefixes,
        evenK4CoverageChunk0011NextState) := by
  rfl

theorem evenK4CoverageChunk0011_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0011StartState =
      evenK4CoverageChunk0011Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0011NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0011Steps
    evenK4CoverageChunk0011StartState
  rw [evenK4CoverageChunk0011_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0011_passes :
    evenK4CoverageChunk0011Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0011Prefixes, List.all_append]
  rw [evenK4CoverageGroup0044_passes]
  rw [evenK4CoverageGroup0045_passes]
  rw [evenK4CoverageGroup0046_passes]
  rw [evenK4CoverageGroup0047_passes]
  rfl

#print axioms evenK4CoverageChunk0011_checkpoint
#print axioms evenK4CoverageChunk0011_state_output
#print axioms evenK4CoverageChunk0011_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
