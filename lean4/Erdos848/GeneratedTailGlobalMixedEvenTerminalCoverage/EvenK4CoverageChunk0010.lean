import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0040
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0041
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0042
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0043
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0010Prefixes : List (List Nat) :=
  evenK4CoverageGroup0040Prefixes ++
  evenK4CoverageGroup0041Prefixes ++
  evenK4CoverageGroup0042Prefixes ++
  evenK4CoverageGroup0043Prefixes

def evenK4CoverageChunk0010StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 533, Erdos848.globalMixedKernelSupportPrimes.drop 89, [41, 13]⟩,
  ⟨2, 13, Erdos848.globalMixedKernelSupportPrimes.drop 11, [13]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 4, []⟩]

def evenK4CoverageChunk0010NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 2509, Erdos848.globalMixedKernelSupportPrimes.drop 49, [193, 13]⟩,
  ⟨2, 13, Erdos848.globalMixedKernelSupportPrimes.drop 42, [13]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 4, []⟩]

def evenK4CoverageChunk0010Steps : Nat := 4158

theorem evenK4CoverageChunk0010_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0010Steps
        evenK4CoverageChunk0010StartState =
      (evenK4CoverageChunk0010Prefixes,
        evenK4CoverageChunk0010NextState) := by
  rfl

theorem evenK4CoverageChunk0010_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0010StartState =
      evenK4CoverageChunk0010Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0010NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0010Steps
    evenK4CoverageChunk0010StartState
  rw [evenK4CoverageChunk0010_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0010_passes :
    evenK4CoverageChunk0010Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0010Prefixes, List.all_append]
  rw [evenK4CoverageGroup0040_passes]
  rw [evenK4CoverageGroup0041_passes]
  rw [evenK4CoverageGroup0042_passes]
  rw [evenK4CoverageGroup0043_passes]
  rfl

#print axioms evenK4CoverageChunk0010_checkpoint
#print axioms evenK4CoverageChunk0010_state_output
#print axioms evenK4CoverageChunk0010_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
