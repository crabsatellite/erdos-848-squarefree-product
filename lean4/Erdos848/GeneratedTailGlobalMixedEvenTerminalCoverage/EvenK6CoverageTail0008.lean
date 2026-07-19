import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageChunk0008
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageTail0009

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageTail0008Prefixes : List (List Nat) :=
  evenK6CoverageChunk0008Prefixes ++
    evenK6CoverageTail0009Prefixes

theorem evenK6CoverageTail0008_eq :
    evenK6CoverageTail0008Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0008StartState := by
  unfold evenK6CoverageTail0008Prefixes
  rw [evenK6CoverageTail0009_eq]
  have hstate :
      evenK6CoverageChunk0008NextState =
        evenK6CoverageChunk0009StartState := by
    rfl
  rw [← hstate]
  exact evenK6CoverageChunk0008_state_output.symm

theorem evenK6CoverageTail0008_passes :
    evenK6CoverageTail0008Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  simp only [evenK6CoverageTail0008Prefixes,
    List.all_append]
  rw [evenK6CoverageChunk0008_passes,
    evenK6CoverageTail0009_passes]
  rfl

#print axioms evenK6CoverageTail0008_eq
#print axioms evenK6CoverageTail0008_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
