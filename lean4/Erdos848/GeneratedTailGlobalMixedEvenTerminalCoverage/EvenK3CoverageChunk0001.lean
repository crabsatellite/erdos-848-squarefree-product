import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0004
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0005
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0006
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageGroup0007
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK3CoverageChunk0001Prefixes : List (List Nat) :=
  evenK3CoverageGroup0004Prefixes ++
  evenK3CoverageGroup0005Prefixes ++
  evenK3CoverageGroup0006Prefixes ++
  evenK3CoverageGroup0007Prefixes

def evenK3CoverageChunk0001StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 11, Erdos848.globalMixedKernelSupportPrimes.drop 458, [11]⟩,
  ⟨2, 1, Erdos848.globalMixedKernelSupportPrimes.drop 3, []⟩]

def evenK3CoverageChunk0001NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 29, Erdos848.globalMixedKernelSupportPrimes.drop 240, [29]⟩,
  ⟨2, 1, Erdos848.globalMixedKernelSupportPrimes.drop 8, []⟩]

def evenK3CoverageChunk0001Steps : Nat := 4106

theorem evenK3CoverageChunk0001_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0001Steps
        evenK3CoverageChunk0001StartState =
      (evenK3CoverageChunk0001Prefixes,
        evenK3CoverageChunk0001NextState) := by
  rfl

theorem evenK3CoverageChunk0001_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0001StartState =
      evenK3CoverageChunk0001Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 3)
          evenK3CoverageChunk0001NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 3)
    evenK3CoverageChunk0001Steps
    evenK3CoverageChunk0001StartState
  rw [evenK3CoverageChunk0001_checkpoint] at h
  exact h

theorem evenK3CoverageChunk0001_passes :
    evenK3CoverageChunk0001Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 3 evenK3Selector
        EvenK3Choice.terminal) = true := by
  simp only [evenK3CoverageChunk0001Prefixes, List.all_append]
  rw [evenK3CoverageGroup0004_passes]
  rw [evenK3CoverageGroup0005_passes]
  rw [evenK3CoverageGroup0006_passes]
  rw [evenK3CoverageGroup0007_passes]
  rfl

#print axioms evenK3CoverageChunk0001_checkpoint
#print axioms evenK3CoverageChunk0001_state_output
#print axioms evenK3CoverageChunk0001_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
