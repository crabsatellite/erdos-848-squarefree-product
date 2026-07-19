import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageChunk0011
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageTail0012

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageTail0011Prefixes : List (List Nat) :=
  evenK5CoverageChunk0011Prefixes ++
    evenK5CoverageTail0012Prefixes

theorem evenK5CoverageTail0011_eq :
    evenK5CoverageTail0011Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0011StartState := by
  unfold evenK5CoverageTail0011Prefixes
  rw [evenK5CoverageTail0012_eq]
  have hstate :
      evenK5CoverageChunk0011NextState =
        evenK5CoverageChunk0012StartState := by
    rfl
  rw [← hstate]
  exact evenK5CoverageChunk0011_state_output.symm

theorem evenK5CoverageTail0011_passes :
    evenK5CoverageTail0011Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageTail0011Prefixes,
    List.all_append]
  rw [evenK5CoverageChunk0011_passes,
    evenK5CoverageTail0012_passes]
  rfl

#print axioms evenK5CoverageTail0011_eq
#print axioms evenK5CoverageTail0011_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
