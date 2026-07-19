import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageChunk0012
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageTail0013

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageTail0012Prefixes : List (List Nat) :=
  evenK5CoverageChunk0012Prefixes ++
    evenK5CoverageTail0013Prefixes

theorem evenK5CoverageTail0012_eq :
    evenK5CoverageTail0012Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0012StartState := by
  unfold evenK5CoverageTail0012Prefixes
  rw [evenK5CoverageTail0013_eq]
  have hstate :
      evenK5CoverageChunk0012NextState =
        evenK5CoverageChunk0013StartState := by
    rfl
  rw [← hstate]
  exact evenK5CoverageChunk0012_state_output.symm

theorem evenK5CoverageTail0012_passes :
    evenK5CoverageTail0012Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageTail0012Prefixes,
    List.all_append]
  rw [evenK5CoverageChunk0012_passes,
    evenK5CoverageTail0013_passes]
  rfl

#print axioms evenK5CoverageTail0012_eq
#print axioms evenK5CoverageTail0012_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
