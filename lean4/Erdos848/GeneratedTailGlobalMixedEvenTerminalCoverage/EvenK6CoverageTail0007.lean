import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageChunk0007
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageTail0008

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageTail0007Prefixes : List (List Nat) :=
  evenK6CoverageChunk0007Prefixes ++
    evenK6CoverageTail0008Prefixes

theorem evenK6CoverageTail0007_eq :
    evenK6CoverageTail0007Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0007StartState := by
  unfold evenK6CoverageTail0007Prefixes
  rw [evenK6CoverageTail0008_eq]
  have hstate :
      evenK6CoverageChunk0007NextState =
        evenK6CoverageChunk0008StartState := by
    rfl
  rw [← hstate]
  exact evenK6CoverageChunk0007_state_output.symm

theorem evenK6CoverageTail0007_passes :
    evenK6CoverageTail0007Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  simp only [evenK6CoverageTail0007Prefixes,
    List.all_append]
  rw [evenK6CoverageChunk0007_passes,
    evenK6CoverageTail0008_passes]
  rfl

#print axioms evenK6CoverageTail0007_eq
#print axioms evenK6CoverageTail0007_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
