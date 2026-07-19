import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0056
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0057
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0058
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0059
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0014Prefixes : List (List Nat) :=
  evenK4CoverageGroup0056Prefixes ++
  evenK4CoverageGroup0057Prefixes ++
  evenK4CoverageGroup0058Prefixes ++
  evenK4CoverageGroup0059Prefixes

def evenK4CoverageChunk0014StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 1679, Erdos848.globalMixedKernelSupportPrimes.drop 31, [73, 23]⟩,
  ⟨2, 23, Erdos848.globalMixedKernelSupportPrimes.drop 19, [23]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 7, []⟩]

def evenK4CoverageChunk0014NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 3161, Erdos848.globalMixedKernelSupportPrimes.drop 51, [109, 29]⟩,
  ⟨2, 29, Erdos848.globalMixedKernelSupportPrimes.drop 27, [29]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 8, []⟩]

def evenK4CoverageChunk0014Steps : Nat := 4198

theorem evenK4CoverageChunk0014_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0014Steps
        evenK4CoverageChunk0014StartState =
      (evenK4CoverageChunk0014Prefixes,
        evenK4CoverageChunk0014NextState) := by
  rfl

theorem evenK4CoverageChunk0014_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0014StartState =
      evenK4CoverageChunk0014Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0014NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0014Steps
    evenK4CoverageChunk0014StartState
  rw [evenK4CoverageChunk0014_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0014_passes :
    evenK4CoverageChunk0014Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0014Prefixes, List.all_append]
  rw [evenK4CoverageGroup0056_passes]
  rw [evenK4CoverageGroup0057_passes]
  rw [evenK4CoverageGroup0058_passes]
  rw [evenK4CoverageGroup0059_passes]
  rfl

#print axioms evenK4CoverageChunk0014_checkpoint
#print axioms evenK4CoverageChunk0014_state_output
#print axioms evenK4CoverageChunk0014_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
