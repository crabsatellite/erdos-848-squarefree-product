import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageChunk0015
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageTail0016

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageTail0015Prefixes : List (List Nat) :=
  evenK5CoverageChunk0015Prefixes ++
    evenK5CoverageTail0016Prefixes

theorem evenK5CoverageTail0015_eq :
    evenK5CoverageTail0015Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0015StartState := by
  unfold evenK5CoverageTail0015Prefixes
  rw [evenK5CoverageTail0016_eq]
  have hstate :
      evenK5CoverageChunk0015NextState =
        evenK5CoverageChunk0016StartState := by
    rfl
  rw [← hstate]
  exact evenK5CoverageChunk0015_state_output.symm

theorem evenK5CoverageTail0015_passes :
    evenK5CoverageTail0015Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageTail0015Prefixes,
    List.all_append]
  rw [evenK5CoverageChunk0015_passes,
    evenK5CoverageTail0016_passes]
  rfl

#print axioms evenK5CoverageTail0015_eq
#print axioms evenK5CoverageTail0015_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
