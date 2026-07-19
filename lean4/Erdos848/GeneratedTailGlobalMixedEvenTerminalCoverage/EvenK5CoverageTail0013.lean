import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageChunk0013
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageTail0014

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageTail0013Prefixes : List (List Nat) :=
  evenK5CoverageChunk0013Prefixes ++
    evenK5CoverageTail0014Prefixes

theorem evenK5CoverageTail0013_eq :
    evenK5CoverageTail0013Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0013StartState := by
  unfold evenK5CoverageTail0013Prefixes
  rw [evenK5CoverageTail0014_eq]
  have hstate :
      evenK5CoverageChunk0013NextState =
        evenK5CoverageChunk0014StartState := by
    rfl
  rw [← hstate]
  exact evenK5CoverageChunk0013_state_output.symm

theorem evenK5CoverageTail0013_passes :
    evenK5CoverageTail0013Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageTail0013Prefixes,
    List.all_append]
  rw [evenK5CoverageChunk0013_passes,
    evenK5CoverageTail0014_passes]
  rfl

#print axioms evenK5CoverageTail0013_eq
#print axioms evenK5CoverageTail0013_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
