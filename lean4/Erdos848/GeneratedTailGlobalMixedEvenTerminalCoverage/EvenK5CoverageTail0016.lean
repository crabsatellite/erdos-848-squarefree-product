import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageChunk0016
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageTail0017

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageTail0016Prefixes : List (List Nat) :=
  evenK5CoverageChunk0016Prefixes ++
    evenK5CoverageTail0017Prefixes

theorem evenK5CoverageTail0016_eq :
    evenK5CoverageTail0016Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0016StartState := by
  unfold evenK5CoverageTail0016Prefixes
  rw [evenK5CoverageTail0017_eq]
  have hstate :
      evenK5CoverageChunk0016NextState =
        evenK5CoverageChunk0017StartState := by
    rfl
  rw [← hstate]
  exact evenK5CoverageChunk0016_state_output.symm

theorem evenK5CoverageTail0016_passes :
    evenK5CoverageTail0016Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageTail0016Prefixes,
    List.all_append]
  rw [evenK5CoverageChunk0016_passes,
    evenK5CoverageTail0017_passes]
  rfl

#print axioms evenK5CoverageTail0016_eq
#print axioms evenK5CoverageTail0016_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
