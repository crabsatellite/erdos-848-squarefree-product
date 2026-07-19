import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageChunk0010
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageTail0011

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageTail0010Prefixes : List (List Nat) :=
  evenK5CoverageChunk0010Prefixes ++
    evenK5CoverageTail0011Prefixes

theorem evenK5CoverageTail0010_eq :
    evenK5CoverageTail0010Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0010StartState := by
  unfold evenK5CoverageTail0010Prefixes
  rw [evenK5CoverageTail0011_eq]
  have hstate :
      evenK5CoverageChunk0010NextState =
        evenK5CoverageChunk0011StartState := by
    rfl
  rw [← hstate]
  exact evenK5CoverageChunk0010_state_output.symm

theorem evenK5CoverageTail0010_passes :
    evenK5CoverageTail0010Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageTail0010Prefixes,
    List.all_append]
  rw [evenK5CoverageChunk0010_passes,
    evenK5CoverageTail0011_passes]
  rfl

#print axioms evenK5CoverageTail0010_eq
#print axioms evenK5CoverageTail0010_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
