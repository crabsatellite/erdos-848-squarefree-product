import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0032
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0033
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0034
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0035
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0008Prefixes : List (List Nat) :=
  evenK4CoverageGroup0032Prefixes ++
  evenK4CoverageGroup0033Prefixes ++
  evenK4CoverageGroup0034Prefixes ++
  evenK4CoverageGroup0035Prefixes

def evenK4CoverageChunk0008StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 319, Erdos848.globalMixedKernelSupportPrimes.drop 88, [29, 11]⟩,
  ⟨2, 11, Erdos848.globalMixedKernelSupportPrimes.drop 8, [11]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 3, []⟩]

def evenK4CoverageChunk0008NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 1243, Erdos848.globalMixedKernelSupportPrimes.drop 49, [113, 11]⟩,
  ⟨2, 11, Erdos848.globalMixedKernelSupportPrimes.drop 28, [11]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 3, []⟩]

def evenK4CoverageChunk0008Steps : Nat := 4136

theorem evenK4CoverageChunk0008_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0008Steps
        evenK4CoverageChunk0008StartState =
      (evenK4CoverageChunk0008Prefixes,
        evenK4CoverageChunk0008NextState) := by
  rfl

theorem evenK4CoverageChunk0008_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0008StartState =
      evenK4CoverageChunk0008Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0008NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0008Steps
    evenK4CoverageChunk0008StartState
  rw [evenK4CoverageChunk0008_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0008_passes :
    evenK4CoverageChunk0008Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0008Prefixes, List.all_append]
  rw [evenK4CoverageGroup0032_passes]
  rw [evenK4CoverageGroup0033_passes]
  rw [evenK4CoverageGroup0034_passes]
  rw [evenK4CoverageGroup0035_passes]
  rfl

#print axioms evenK4CoverageChunk0008_checkpoint
#print axioms evenK4CoverageChunk0008_state_output
#print axioms evenK4CoverageChunk0008_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
