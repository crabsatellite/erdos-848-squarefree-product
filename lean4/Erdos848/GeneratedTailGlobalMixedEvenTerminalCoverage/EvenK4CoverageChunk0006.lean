import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0024
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0025
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0026
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0027
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0006Prefixes : List (List Nat) :=
  evenK4CoverageGroup0024Prefixes ++
  evenK4CoverageGroup0025Prefixes ++
  evenK4CoverageGroup0026Prefixes ++
  evenK4CoverageGroup0027Prefixes

def evenK4CoverageChunk0006StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 371, Erdos848.globalMixedKernelSupportPrimes.drop 26, [53, 7]⟩,
  ⟨2, 7, Erdos848.globalMixedKernelSupportPrimes.drop 14, [7]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 2, []⟩]

def evenK4CoverageChunk0006NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 1057, Erdos848.globalMixedKernelSupportPrimes.drop 41, [151, 7]⟩,
  ⟨2, 7, Erdos848.globalMixedKernelSupportPrimes.drop 34, [7]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 2, []⟩]

def evenK4CoverageChunk0006Steps : Nat := 4136

theorem evenK4CoverageChunk0006_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0006Steps
        evenK4CoverageChunk0006StartState =
      (evenK4CoverageChunk0006Prefixes,
        evenK4CoverageChunk0006NextState) := by
  rfl

theorem evenK4CoverageChunk0006_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0006StartState =
      evenK4CoverageChunk0006Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0006NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0006Steps
    evenK4CoverageChunk0006StartState
  rw [evenK4CoverageChunk0006_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0006_passes :
    evenK4CoverageChunk0006Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0006Prefixes, List.all_append]
  rw [evenK4CoverageGroup0024_passes]
  rw [evenK4CoverageGroup0025_passes]
  rw [evenK4CoverageGroup0026_passes]
  rw [evenK4CoverageGroup0027_passes]
  rfl

#print axioms evenK4CoverageChunk0006_checkpoint
#print axioms evenK4CoverageChunk0006_state_output
#print axioms evenK4CoverageChunk0006_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
