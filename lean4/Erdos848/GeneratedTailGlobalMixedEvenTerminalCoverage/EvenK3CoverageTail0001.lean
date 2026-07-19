import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageChunk0001
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageTail0002

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK3CoverageTail0001Prefixes : List (List Nat) :=
  evenK3CoverageChunk0001Prefixes ++
    evenK3CoverageTail0002Prefixes

theorem evenK3CoverageTail0001_eq :
    evenK3CoverageTail0001Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0001StartState := by
  unfold evenK3CoverageTail0001Prefixes
  rw [evenK3CoverageTail0002_eq]
  have hstate :
      evenK3CoverageChunk0001NextState =
        evenK3CoverageChunk0002StartState := by
    rfl
  rw [← hstate]
  exact evenK3CoverageChunk0001_state_output.symm

theorem evenK3CoverageTail0001_passes :
    evenK3CoverageTail0001Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 3 evenK3Selector
        EvenK3Choice.terminal) = true := by
  simp only [evenK3CoverageTail0001Prefixes,
    List.all_append]
  rw [evenK3CoverageChunk0001_passes,
    evenK3CoverageTail0002_passes]
  rfl

#print axioms evenK3CoverageTail0001_eq
#print axioms evenK3CoverageTail0001_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
