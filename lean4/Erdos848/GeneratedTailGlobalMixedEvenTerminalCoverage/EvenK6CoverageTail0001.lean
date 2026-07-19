import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageChunk0001
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageTail0002

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageTail0001Prefixes : List (List Nat) :=
  evenK6CoverageChunk0001Prefixes ++
    evenK6CoverageTail0002Prefixes

theorem evenK6CoverageTail0001_eq :
    evenK6CoverageTail0001Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0001StartState := by
  unfold evenK6CoverageTail0001Prefixes
  rw [evenK6CoverageTail0002_eq]
  have hstate :
      evenK6CoverageChunk0001NextState =
        evenK6CoverageChunk0002StartState := by
    rfl
  rw [← hstate]
  exact evenK6CoverageChunk0001_state_output.symm

theorem evenK6CoverageTail0001_passes :
    evenK6CoverageTail0001Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  simp only [evenK6CoverageTail0001Prefixes,
    List.all_append]
  rw [evenK6CoverageChunk0001_passes,
    evenK6CoverageTail0002_passes]
  rfl

#print axioms evenK6CoverageTail0001_eq
#print axioms evenK6CoverageTail0001_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
