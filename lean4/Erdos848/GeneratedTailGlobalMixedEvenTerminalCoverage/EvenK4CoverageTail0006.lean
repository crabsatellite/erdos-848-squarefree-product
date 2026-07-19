import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0006
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0007

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0006Prefixes : List (List Nat) :=
  evenK4CoverageChunk0006Prefixes ++
    evenK4CoverageTail0007Prefixes

theorem evenK4CoverageTail0006_eq :
    evenK4CoverageTail0006Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0006StartState := by
  unfold evenK4CoverageTail0006Prefixes
  rw [evenK4CoverageTail0007_eq]
  have hstate :
      evenK4CoverageChunk0006NextState =
        evenK4CoverageChunk0007StartState := by
    rfl
  rw [← hstate]
  exact evenK4CoverageChunk0006_state_output.symm

theorem evenK4CoverageTail0006_passes :
    evenK4CoverageTail0006Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageTail0006Prefixes,
    List.all_append]
  rw [evenK4CoverageChunk0006_passes,
    evenK4CoverageTail0007_passes]
  rfl

#print axioms evenK4CoverageTail0006_eq
#print axioms evenK4CoverageTail0006_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
