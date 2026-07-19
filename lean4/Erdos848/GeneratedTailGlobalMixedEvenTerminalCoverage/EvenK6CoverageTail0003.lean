import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageChunk0003
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageTail0004

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageTail0003Prefixes : List (List Nat) :=
  evenK6CoverageChunk0003Prefixes ++
    evenK6CoverageTail0004Prefixes

theorem evenK6CoverageTail0003_eq :
    evenK6CoverageTail0003Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0003StartState := by
  unfold evenK6CoverageTail0003Prefixes
  rw [evenK6CoverageTail0004_eq]
  have hstate :
      evenK6CoverageChunk0003NextState =
        evenK6CoverageChunk0004StartState := by
    rfl
  rw [← hstate]
  exact evenK6CoverageChunk0003_state_output.symm

theorem evenK6CoverageTail0003_passes :
    evenK6CoverageTail0003Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  simp only [evenK6CoverageTail0003Prefixes,
    List.all_append]
  rw [evenK6CoverageChunk0003_passes,
    evenK6CoverageTail0004_passes]
  rfl

#print axioms evenK6CoverageTail0003_eq
#print axioms evenK6CoverageTail0003_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
