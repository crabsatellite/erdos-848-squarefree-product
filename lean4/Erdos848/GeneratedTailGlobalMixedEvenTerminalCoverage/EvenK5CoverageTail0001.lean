import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageChunk0001
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageTail0002

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageTail0001Prefixes : List (List Nat) :=
  evenK5CoverageChunk0001Prefixes ++
    evenK5CoverageTail0002Prefixes

theorem evenK5CoverageTail0001_eq :
    evenK5CoverageTail0001Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0001StartState := by
  unfold evenK5CoverageTail0001Prefixes
  rw [evenK5CoverageTail0002_eq]
  have hstate :
      evenK5CoverageChunk0001NextState =
        evenK5CoverageChunk0002StartState := by
    rfl
  rw [← hstate]
  exact evenK5CoverageChunk0001_state_output.symm

theorem evenK5CoverageTail0001_passes :
    evenK5CoverageTail0001Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageTail0001Prefixes,
    List.all_append]
  rw [evenK5CoverageChunk0001_passes,
    evenK5CoverageTail0002_passes]
  rfl

#print axioms evenK5CoverageTail0001_eq
#print axioms evenK5CoverageTail0001_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
