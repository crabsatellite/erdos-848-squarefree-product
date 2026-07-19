import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0064
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0065
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0066
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageGroup0067
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageChunk0016Prefixes : List (List Nat) :=
  evenK4CoverageGroup0064Prefixes ++
  evenK4CoverageGroup0065Prefixes ++
  evenK4CoverageGroup0066Prefixes ++
  evenK4CoverageGroup0067Prefixes

def evenK4CoverageChunk0016StartState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 2257, Erdos848.globalMixedKernelSupportPrimes.drop 64, [61, 37]⟩,
  ⟨2, 37, Erdos848.globalMixedKernelSupportPrimes.drop 16, [37]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 10, []⟩]

def evenK4CoverageChunk0016NextState :
    Erdos848.FeasiblePrefixMachineState :=
  [⟨1, 3569, Erdos848.globalMixedKernelSupportPrimes.drop 56, [83, 43]⟩,
  ⟨2, 43, Erdos848.globalMixedKernelSupportPrimes.drop 21, [43]⟩,
  ⟨3, 1, Erdos848.globalMixedKernelSupportPrimes.drop 12, []⟩]

def evenK4CoverageChunk0016Steps : Nat := 4234

theorem evenK4CoverageChunk0016_checkpoint :
    Erdos848.feasiblePrefixMachineRunSteps
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0016Steps
        evenK4CoverageChunk0016StartState =
      (evenK4CoverageChunk0016Prefixes,
        evenK4CoverageChunk0016NextState) := by
  rfl

theorem evenK4CoverageChunk0016_state_output :
    Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0016StartState =
      evenK4CoverageChunk0016Prefixes ++
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0016NextState := by
  have h := Erdos848.feasiblePrefixMachineRunSteps_output
    (Erdos848.globalMixedSupportProductThreshold 4)
    evenK4CoverageChunk0016Steps
    evenK4CoverageChunk0016StartState
  rw [evenK4CoverageChunk0016_checkpoint] at h
  exact h

theorem evenK4CoverageChunk0016_passes :
    evenK4CoverageChunk0016Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageChunk0016Prefixes, List.all_append]
  rw [evenK4CoverageGroup0064_passes]
  rw [evenK4CoverageGroup0065_passes]
  rw [evenK4CoverageGroup0066_passes]
  rw [evenK4CoverageGroup0067_passes]
  rfl

#print axioms evenK4CoverageChunk0016_checkpoint
#print axioms evenK4CoverageChunk0016_state_output
#print axioms evenK4CoverageChunk0016_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
