import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageChunk0000
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageTail0001

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK3CoverageTail0000Prefixes : List (List Nat) :=
  evenK3CoverageChunk0000Prefixes ++
    evenK3CoverageTail0001Prefixes

theorem evenK3CoverageTail0000_eq :
    evenK3CoverageTail0000Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0000StartState := by
  unfold evenK3CoverageTail0000Prefixes
  rw [evenK3CoverageTail0001_eq]
  have hstate :
      evenK3CoverageChunk0000NextState =
        evenK3CoverageChunk0001StartState := by
    rfl
  rw [← hstate]
  exact evenK3CoverageChunk0000_state_output.symm

theorem evenK3CoverageTail0000_passes :
    evenK3CoverageTail0000Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 3 evenK3Selector
        EvenK3Choice.terminal) = true := by
  simp only [evenK3CoverageTail0000Prefixes,
    List.all_append]
  rw [evenK3CoverageChunk0000_passes,
    evenK3CoverageTail0001_passes]
  rfl

#print axioms evenK3CoverageTail0000_eq
#print axioms evenK3CoverageTail0000_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
