import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0010
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0011

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0010Prefixes : List (List Nat) :=
  evenK4CoverageChunk0010Prefixes ++
    evenK4CoverageTail0011Prefixes

theorem evenK4CoverageTail0010_eq :
    evenK4CoverageTail0010Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0010StartState := by
  unfold evenK4CoverageTail0010Prefixes
  rw [evenK4CoverageTail0011_eq]
  have hstate :
      evenK4CoverageChunk0010NextState =
        evenK4CoverageChunk0011StartState := by
    rfl
  rw [← hstate]
  exact evenK4CoverageChunk0010_state_output.symm

theorem evenK4CoverageTail0010_passes :
    evenK4CoverageTail0010Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageTail0010Prefixes,
    List.all_append]
  rw [evenK4CoverageChunk0010_passes,
    evenK4CoverageTail0011_passes]
  rfl

#print axioms evenK4CoverageTail0010_eq
#print axioms evenK4CoverageTail0010_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
