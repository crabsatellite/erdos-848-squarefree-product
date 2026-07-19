import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0024
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0025
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0026
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageGroup0027
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageChunk0006Prefixes : List (List Nat) :=
  evenK6CoverageGroup0024Prefixes ++
  evenK6CoverageGroup0025Prefixes ++
  evenK6CoverageGroup0026Prefixes ++
  evenK6CoverageGroup0027Prefixes

def evenK6CoverageChunk0006StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 50439, Erdos848.globalMixedKernelSupportPrimes.drop 30, [43, 23, 17, 3]⟩,
  ⟨2, 1173, Erdos848.globalMixedKernelSupportPrimes.drop 12, [23, 17, 3]⟩,
  ⟨3, 51, Erdos848.globalMixedKernelSupportPrimes.drop 7, [17, 3]⟩,
  ⟨4, 3, Erdos848.globalMixedKernelSupportPrimes.drop 5, [3]⟩,
  ⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK6CoverageChunk0006NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 138417, Erdos848.globalMixedKernelSupportPrimes.drop 22, [43, 37, 29, 3]⟩,
  ⟨2, 3219, Erdos848.globalMixedKernelSupportPrimes.drop 12, [37, 29, 3]⟩,
  ⟨3, 87, Erdos848.globalMixedKernelSupportPrimes.drop 10, [29, 3]⟩,
  ⟨4, 3, Erdos848.globalMixedKernelSupportPrimes.drop 8, [3]⟩,
  ⟨5, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK6CoverageChunk0006Steps : Nat := 4612

theorem evenK6CoverageChunk0006_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0006Steps
        evenK6CoverageChunk0006StartState =
      (evenK6CoverageChunk0006Prefixes,
        evenK6CoverageChunk0006NextState) := by
  rfl

theorem evenK6CoverageChunk0006_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0006StartState =
      evenK6CoverageChunk0006Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 6)
          evenK6CoverageChunk0006NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 6)
    evenK6CoverageChunk0006Steps
    evenK6CoverageChunk0006StartState
  rw [evenK6CoverageChunk0006_checkpoint] at h
  exact h

theorem evenK6CoverageChunk0006_passes :
    evenK6CoverageChunk0006Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  simp only [evenK6CoverageChunk0006Prefixes, List.all_append]
  rw [evenK6CoverageGroup0024_passes]
  rw [evenK6CoverageGroup0025_passes]
  rw [evenK6CoverageGroup0026_passes]
  rw [evenK6CoverageGroup0027_passes]
  rfl

#print axioms evenK6CoverageChunk0006_checkpoint
#print axioms evenK6CoverageChunk0006_state_output
#print axioms evenK6CoverageChunk0006_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
