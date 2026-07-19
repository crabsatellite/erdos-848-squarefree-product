import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageChunk0003
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageTail0004

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageTail0003Prefixes : List (List Nat) :=
  evenK5CoverageChunk0003Prefixes ++
    evenK5CoverageTail0004Prefixes

theorem evenK5CoverageTail0003_eq :
    evenK5CoverageTail0003Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0003StartState := by
  unfold evenK5CoverageTail0003Prefixes
  rw [evenK5CoverageTail0004_eq]
  have hstate :
      evenK5CoverageChunk0003NextState =
        evenK5CoverageChunk0004StartState := by
    rfl
  rw [← hstate]
  exact evenK5CoverageChunk0003_state_output.symm

theorem evenK5CoverageTail0003_passes :
    evenK5CoverageTail0003Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageTail0003Prefixes,
    List.all_append]
  rw [evenK5CoverageChunk0003_passes,
    evenK5CoverageTail0004_passes]
  rfl

#print axioms evenK5CoverageTail0003_eq
#print axioms evenK5CoverageTail0003_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
