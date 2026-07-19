import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0068
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0069
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0070
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0071
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0017Prefixes : List (List Nat) :=
  evenK4CoverageGroup0068Prefixes ++
  evenK4CoverageGroup0069Prefixes ++
  evenK4CoverageGroup0070Prefixes ++
  evenK4CoverageGroup0071Prefixes

def evenK4CoverageChunk0017StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 3569, Erdos848.globalMixedKernelSupportPrimes.drop 56, [83, 43]⟩,
  ⟨2, 43, Erdos848.globalMixedKernelSupportPrimes.drop 21, [43]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 12, []⟩]

def evenK4CoverageChunk0017NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 7729, Erdos848.globalMixedKernelSupportPrimes.drop 34, [131, 59]⟩,
  ⟨2, 59, Erdos848.globalMixedKernelSupportPrimes.drop 30, [59]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 15, []⟩]

def evenK4CoverageChunk0017Steps : Nat := 4278

theorem evenK4CoverageChunk0017_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0017Steps
        evenK4CoverageChunk0017StartState =
      (evenK4CoverageChunk0017Prefixes,
        evenK4CoverageChunk0017NextState) := by
  rfl

theorem evenK4CoverageChunk0017_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0017StartState =
      evenK4CoverageChunk0017Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0017NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0017Steps
    evenK4CoverageChunk0017StartState
  rw [evenK4CoverageChunk0017_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0017_passes :
    evenK4CoverageChunk0017Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0017Prefixes, List.all_append]
  rw [evenK4CoverageGroup0068_passes]
  rw [evenK4CoverageGroup0069_passes]
  rw [evenK4CoverageGroup0070_passes]
  rw [evenK4CoverageGroup0071_passes]
  rfl

#print axioms evenK4CoverageChunk0017_checkpoint
#print axioms evenK4CoverageChunk0017_state_output
#print axioms evenK4CoverageChunk0017_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
