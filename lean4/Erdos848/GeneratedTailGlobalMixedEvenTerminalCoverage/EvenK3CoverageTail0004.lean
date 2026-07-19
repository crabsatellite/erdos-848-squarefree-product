import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageChunk0004
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageTail0005

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK3CoverageTail0004Prefixes : List (List Nat) :=
  evenK3CoverageChunk0004Prefixes ++
    evenK3CoverageTail0005Prefixes

theorem evenK3CoverageTail0004_eq :
    evenK3CoverageTail0004Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0004StartState := by
  unfold evenK3CoverageTail0004Prefixes
  rw [evenK3CoverageTail0005_eq]
  have hstate :
      evenK3CoverageChunk0004NextState =
        evenK3CoverageChunk0005StartState := by
    rfl
  rw [← hstate]
  exact evenK3CoverageChunk0004_state_output.symm

theorem evenK3CoverageTail0004_passes :
    evenK3CoverageTail0004Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 3 evenK3Selector
        EvenK3Choice.terminal) = true := by
  simp only [evenK3CoverageTail0004Prefixes,
    List.all_append]
  rw [evenK3CoverageChunk0004_passes,
    evenK3CoverageTail0005_passes]
  rfl

#print axioms evenK3CoverageTail0004_eq
#print axioms evenK3CoverageTail0004_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
