import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageChunk0002
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageTail0003

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK3CoverageTail0002Prefixes : List (List Nat) :=
  evenK3CoverageChunk0002Prefixes ++
    evenK3CoverageTail0003Prefixes

theorem evenK3CoverageTail0002_eq :
    evenK3CoverageTail0002Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0002StartState := by
  unfold evenK3CoverageTail0002Prefixes
  rw [evenK3CoverageTail0003_eq]
  have hstate :
      evenK3CoverageChunk0002NextState =
        evenK3CoverageChunk0003StartState := by
    rfl
  rw [← hstate]
  exact evenK3CoverageChunk0002_state_output.symm

theorem evenK3CoverageTail0002_passes :
    evenK3CoverageTail0002Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 3 evenK3Selector
        EvenK3Choice.terminal) = true := by
  simp only [evenK3CoverageTail0002Prefixes,
    List.all_append]
  rw [evenK3CoverageChunk0002_passes,
    evenK3CoverageTail0003_passes]
  rfl

#print axioms evenK3CoverageTail0002_eq
#print axioms evenK3CoverageTail0002_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
