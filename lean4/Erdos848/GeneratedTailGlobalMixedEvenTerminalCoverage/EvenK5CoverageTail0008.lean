import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageChunk0008
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageTail0009

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageTail0008Prefixes : List (List Nat) :=
  evenK5CoverageChunk0008Prefixes ++
    evenK5CoverageTail0009Prefixes

theorem evenK5CoverageTail0008_eq :
    evenK5CoverageTail0008Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0008StartState := by
  unfold evenK5CoverageTail0008Prefixes
  rw [evenK5CoverageTail0009_eq]
  have hstate :
      evenK5CoverageChunk0008NextState =
        evenK5CoverageChunk0009StartState := by
    rfl
  rw [← hstate]
  exact evenK5CoverageChunk0008_state_output.symm

theorem evenK5CoverageTail0008_passes :
    evenK5CoverageTail0008Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageTail0008Prefixes,
    List.all_append]
  rw [evenK5CoverageChunk0008_passes,
    evenK5CoverageTail0009_passes]
  rfl

#print axioms evenK5CoverageTail0008_eq
#print axioms evenK5CoverageTail0008_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
