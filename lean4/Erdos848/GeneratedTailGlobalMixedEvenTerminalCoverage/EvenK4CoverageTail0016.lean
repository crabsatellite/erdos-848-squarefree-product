import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0016
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0017

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0016Prefixes : List (List Nat) :=
  evenK4CoverageChunk0016Prefixes ++
    evenK4CoverageTail0017Prefixes

theorem evenK4CoverageTail0016_eq :
    evenK4CoverageTail0016Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0016StartState := by
  unfold evenK4CoverageTail0016Prefixes
  rw [evenK4CoverageTail0017_eq]
  have hstate :
      evenK4CoverageChunk0016NextState =
        evenK4CoverageChunk0017StartState := by
    rfl
  rw [← hstate]
  exact evenK4CoverageChunk0016_state_output.symm

theorem evenK4CoverageTail0016_passes :
    evenK4CoverageTail0016Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageTail0016Prefixes,
    List.all_append]
  rw [evenK4CoverageChunk0016_passes,
    evenK4CoverageTail0017_passes]
  rfl

#print axioms evenK4CoverageTail0016_eq
#print axioms evenK4CoverageTail0016_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
