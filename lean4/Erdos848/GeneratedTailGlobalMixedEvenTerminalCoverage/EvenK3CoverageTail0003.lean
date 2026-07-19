import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageChunk0003
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageTail0004

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK3CoverageTail0003Prefixes : List (List Nat) :=
  evenK3CoverageChunk0003Prefixes ++
    evenK3CoverageTail0004Prefixes

theorem evenK3CoverageTail0003_eq :
    evenK3CoverageTail0003Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0003StartState := by
  unfold evenK3CoverageTail0003Prefixes
  rw [evenK3CoverageTail0004_eq]
  have hstate :
      evenK3CoverageChunk0003NextState =
        evenK3CoverageChunk0004StartState := by
    rfl
  rw [← hstate]
  exact evenK3CoverageChunk0003_state_output.symm

theorem evenK3CoverageTail0003_passes :
    evenK3CoverageTail0003Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 3 evenK3Selector
        EvenK3Choice.terminal) = true := by
  simp only [evenK3CoverageTail0003Prefixes,
    List.all_append]
  rw [evenK3CoverageChunk0003_passes,
    evenK3CoverageTail0004_passes]
  rfl

#print axioms evenK3CoverageTail0003_eq
#print axioms evenK3CoverageTail0003_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
