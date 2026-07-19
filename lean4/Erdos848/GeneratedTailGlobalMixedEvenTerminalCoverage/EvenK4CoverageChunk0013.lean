import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0052
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0053
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0054
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0055
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0013Prefixes : List (List Nat) :=
  evenK4CoverageGroup0052Prefixes ++
  evenK4CoverageGroup0053Prefixes ++
  evenK4CoverageGroup0054Prefixes ++
  evenK4CoverageGroup0055Prefixes

def evenK4CoverageChunk0013StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 1387, Erdos848.globalMixedKernelSupportPrimes.drop 41, [73, 19]⟩,
  ⟨2, 19, Erdos848.globalMixedKernelSupportPrimes.drop 19, [19]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 6, []⟩]

def evenK4CoverageChunk0013NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 1679, Erdos848.globalMixedKernelSupportPrimes.drop 31, [73, 23]⟩,
  ⟨2, 23, Erdos848.globalMixedKernelSupportPrimes.drop 19, [23]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 7, []⟩]

def evenK4CoverageChunk0013Steps : Nat := 4188

theorem evenK4CoverageChunk0013_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0013Steps
        evenK4CoverageChunk0013StartState =
      (evenK4CoverageChunk0013Prefixes,
        evenK4CoverageChunk0013NextState) := by
  rfl

theorem evenK4CoverageChunk0013_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0013StartState =
      evenK4CoverageChunk0013Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0013NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0013Steps
    evenK4CoverageChunk0013StartState
  rw [evenK4CoverageChunk0013_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0013_passes :
    evenK4CoverageChunk0013Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0013Prefixes, List.all_append]
  rw [evenK4CoverageGroup0052_passes]
  rw [evenK4CoverageGroup0053_passes]
  rw [evenK4CoverageGroup0054_passes]
  rw [evenK4CoverageGroup0055_passes]
  rfl

#print axioms evenK4CoverageChunk0013_checkpoint
#print axioms evenK4CoverageChunk0013_state_output
#print axioms evenK4CoverageChunk0013_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
