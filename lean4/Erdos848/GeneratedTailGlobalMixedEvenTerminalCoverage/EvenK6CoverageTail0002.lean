import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageChunk0002
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageTail0003

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageTail0002Prefixes : List (List Nat) :=
  evenK6CoverageChunk0002Prefixes ++
    evenK6CoverageTail0003Prefixes

theorem evenK6CoverageTail0002_eq :
    evenK6CoverageTail0002Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0002StartState := by
  unfold evenK6CoverageTail0002Prefixes
  rw [evenK6CoverageTail0003_eq]
  have hstate :
      evenK6CoverageChunk0002NextState =
        evenK6CoverageChunk0003StartState := by
    rfl
  rw [← hstate]
  exact evenK6CoverageChunk0002_state_output.symm

theorem evenK6CoverageTail0002_passes :
    evenK6CoverageTail0002Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  simp only [evenK6CoverageTail0002Prefixes,
    List.all_append]
  rw [evenK6CoverageChunk0002_passes,
    evenK6CoverageTail0003_passes]
  rfl

#print axioms evenK6CoverageTail0002_eq
#print axioms evenK6CoverageTail0002_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
