import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0003
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0004

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0003Prefixes : List (List Nat) :=
  evenK4CoverageChunk0003Prefixes ++
    evenK4CoverageTail0004Prefixes

theorem evenK4CoverageTail0003_eq :
    evenK4CoverageTail0003Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0003StartState := by
  unfold evenK4CoverageTail0003Prefixes
  rw [evenK4CoverageTail0004_eq]
  have hstate :
      evenK4CoverageChunk0003NextState =
        evenK4CoverageChunk0004StartState := by
    rfl
  rw [← hstate]
  exact evenK4CoverageChunk0003_state_output.symm

theorem evenK4CoverageTail0003_passes :
    evenK4CoverageTail0003Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageTail0003Prefixes,
    List.all_append]
  rw [evenK4CoverageChunk0003_passes,
    evenK4CoverageTail0004_passes]
  rfl

#print axioms evenK4CoverageTail0003_eq
#print axioms evenK4CoverageTail0003_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
