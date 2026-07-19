import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0011
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0012

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0011Prefixes : List (List Nat) :=
  evenK4CoverageChunk0011Prefixes ++
    evenK4CoverageTail0012Prefixes

theorem evenK4CoverageTail0011_eq :
    evenK4CoverageTail0011Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0011StartState := by
  unfold evenK4CoverageTail0011Prefixes
  rw [evenK4CoverageTail0012_eq]
  have hstate :
      evenK4CoverageChunk0011NextState =
        evenK4CoverageChunk0012StartState := by
    rfl
  rw [← hstate]
  exact evenK4CoverageChunk0011_state_output.symm

theorem evenK4CoverageTail0011_passes :
    evenK4CoverageTail0011Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageTail0011Prefixes,
    List.all_append]
  rw [evenK4CoverageChunk0011_passes,
    evenK4CoverageTail0012_passes]
  rfl

#print axioms evenK4CoverageTail0011_eq
#print axioms evenK4CoverageTail0011_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
