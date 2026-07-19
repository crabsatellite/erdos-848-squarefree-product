import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0004
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0005
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0006
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0007
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0001Prefixes : List (List Nat) :=
  evenK4CoverageGroup0004Prefixes ++
  evenK4CoverageGroup0005Prefixes ++
  evenK4CoverageGroup0006Prefixes ++
  evenK4CoverageGroup0007Prefixes

def evenK4CoverageChunk0001StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 57, Erdos848.globalMixedKernelSupportPrimes.drop 278, [19, 3]⟩,
  ⟨2, 3, Erdos848.globalMixedKernelSupportPrimes.drop 6, [3]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK4CoverageChunk0001NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 159, Erdos848.globalMixedKernelSupportPrimes.drop 127, [53, 3]⟩,
  ⟨2, 3, Erdos848.globalMixedKernelSupportPrimes.drop 14, [3]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 1, []⟩]

def evenK4CoverageChunk0001Steps : Nat := 4112

theorem evenK4CoverageChunk0001_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0001Steps
        evenK4CoverageChunk0001StartState =
      (evenK4CoverageChunk0001Prefixes,
        evenK4CoverageChunk0001NextState) := by
  rfl

theorem evenK4CoverageChunk0001_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0001StartState =
      evenK4CoverageChunk0001Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0001NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0001Steps
    evenK4CoverageChunk0001StartState
  rw [evenK4CoverageChunk0001_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0001_passes :
    evenK4CoverageChunk0001Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0001Prefixes, List.all_append]
  rw [evenK4CoverageGroup0004_passes]
  rw [evenK4CoverageGroup0005_passes]
  rw [evenK4CoverageGroup0006_passes]
  rw [evenK4CoverageGroup0007_passes]
  rfl

#print axioms evenK4CoverageChunk0001_checkpoint
#print axioms evenK4CoverageChunk0001_state_output
#print axioms evenK4CoverageChunk0001_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
