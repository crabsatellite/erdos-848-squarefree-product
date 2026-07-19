import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageChunk0014
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageTail0015

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageTail0014Prefixes : List (List Nat) :=
  evenK5CoverageChunk0014Prefixes ++
    evenK5CoverageTail0015Prefixes

theorem evenK5CoverageTail0014_eq :
    evenK5CoverageTail0014Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0014StartState := by
  unfold evenK5CoverageTail0014Prefixes
  rw [evenK5CoverageTail0015_eq]
  have hstate :
      evenK5CoverageChunk0014NextState =
        evenK5CoverageChunk0015StartState := by
    rfl
  rw [← hstate]
  exact evenK5CoverageChunk0014_state_output.symm

theorem evenK5CoverageTail0014_passes :
    evenK5CoverageTail0014Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageTail0014Prefixes,
    List.all_append]
  rw [evenK5CoverageChunk0014_passes,
    evenK5CoverageTail0015_passes]
  rfl

#print axioms evenK5CoverageTail0014_eq
#print axioms evenK5CoverageTail0014_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
