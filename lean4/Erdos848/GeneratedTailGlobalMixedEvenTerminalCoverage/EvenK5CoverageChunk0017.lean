import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0068
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0069
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0070
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageGroup0071
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageChunk0017Prefixes : List (List Nat) :=
  evenK5CoverageGroup0068Prefixes ++
  evenK5CoverageGroup0069Prefixes ++
  evenK5CoverageGroup0070Prefixes ++
  evenK5CoverageGroup0071Prefixes

def evenK5CoverageChunk0017StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 57761, Erdos848.globalMixedKernelSupportPrimes.drop 24, [89, 59, 11]⟩,
  ⟨2, 649, Erdos848.globalMixedKernelSupportPrimes.drop 22, [59, 11]⟩,
  ⟨3, 11, Erdos848.globalMixedKernelSupportPrimes.drop 15, [11]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 3, []⟩]

def evenK5CoverageChunk0017NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 19981, Erdos848.globalMixedKernelSupportPrimes.drop 31, [53, 29, 13]⟩,
  ⟨2, 377, Erdos848.globalMixedKernelSupportPrimes.drop 14, [29, 13]⟩,
  ⟨3, 13, Erdos848.globalMixedKernelSupportPrimes.drop 8, [13]⟩,
  ⟨4, 1, Erdos848.globalMixedKernelSupportPrimes.drop 4, []⟩]

def evenK5CoverageChunk0017Steps : Nat := 4306

theorem evenK5CoverageChunk0017_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0017Steps
        evenK5CoverageChunk0017StartState =
      (evenK5CoverageChunk0017Prefixes,
        evenK5CoverageChunk0017NextState) := by
  rfl

theorem evenK5CoverageChunk0017_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0017StartState =
      evenK5CoverageChunk0017Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0017NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 5)
    evenK5CoverageChunk0017Steps
    evenK5CoverageChunk0017StartState
  rw [evenK5CoverageChunk0017_checkpoint] at h
  exact h

theorem evenK5CoverageChunk0017_passes :
    evenK5CoverageChunk0017Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageChunk0017Prefixes, List.all_append]
  rw [evenK5CoverageGroup0068_passes]
  rw [evenK5CoverageGroup0069_passes]
  rw [evenK5CoverageGroup0070_passes]
  rw [evenK5CoverageGroup0071_passes]
  rfl

#print axioms evenK5CoverageChunk0017_checkpoint
#print axioms evenK5CoverageChunk0017_state_output
#print axioms evenK5CoverageChunk0017_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
