import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageChunk0006
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageTail0007

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageTail0006Prefixes : List (List Nat) :=
  evenK5CoverageChunk0006Prefixes ++
    evenK5CoverageTail0007Prefixes

theorem evenK5CoverageTail0006_eq :
    evenK5CoverageTail0006Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0006StartState := by
  unfold evenK5CoverageTail0006Prefixes
  rw [evenK5CoverageTail0007_eq]
  have hstate :
      evenK5CoverageChunk0006NextState =
        evenK5CoverageChunk0007StartState := by
    rfl
  rw [← hstate]
  exact evenK5CoverageChunk0006_state_output.symm

theorem evenK5CoverageTail0006_passes :
    evenK5CoverageTail0006Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageTail0006Prefixes,
    List.all_append]
  rw [evenK5CoverageChunk0006_passes,
    evenK5CoverageTail0007_passes]
  rfl

#print axioms evenK5CoverageTail0006_eq
#print axioms evenK5CoverageTail0006_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
