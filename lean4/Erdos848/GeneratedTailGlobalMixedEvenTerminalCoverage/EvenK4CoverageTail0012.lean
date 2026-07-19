import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0012
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0013

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0012Prefixes : List (List Nat) :=
  evenK4CoverageChunk0012Prefixes ++
    evenK4CoverageTail0013Prefixes

theorem evenK4CoverageTail0012_eq :
    evenK4CoverageTail0012Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0012StartState := by
  unfold evenK4CoverageTail0012Prefixes
  rw [evenK4CoverageTail0013_eq]
  have hstate :
      evenK4CoverageChunk0012NextState =
        evenK4CoverageChunk0013StartState := by
    rfl
  rw [← hstate]
  exact evenK4CoverageChunk0012_state_output.symm

theorem evenK4CoverageTail0012_passes :
    evenK4CoverageTail0012Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageTail0012Prefixes,
    List.all_append]
  rw [evenK4CoverageChunk0012_passes,
    evenK4CoverageTail0013_passes]
  rfl

#print axioms evenK4CoverageTail0012_eq
#print axioms evenK4CoverageTail0012_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
