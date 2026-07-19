import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0015
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0016

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0015Prefixes : List (List Nat) :=
  evenK4CoverageChunk0015Prefixes ++
    evenK4CoverageTail0016Prefixes

theorem evenK4CoverageTail0015_eq :
    evenK4CoverageTail0015Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0015StartState := by
  unfold evenK4CoverageTail0015Prefixes
  rw [evenK4CoverageTail0016_eq]
  have hstate :
      evenK4CoverageChunk0015NextState =
        evenK4CoverageChunk0016StartState := by
    rfl
  rw [← hstate]
  exact evenK4CoverageChunk0015_state_output.symm

theorem evenK4CoverageTail0015_passes :
    evenK4CoverageTail0015Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageTail0015Prefixes,
    List.all_append]
  rw [evenK4CoverageChunk0015_passes,
    evenK4CoverageTail0016_passes]
  rfl

#print axioms evenK4CoverageTail0015_eq
#print axioms evenK4CoverageTail0015_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
