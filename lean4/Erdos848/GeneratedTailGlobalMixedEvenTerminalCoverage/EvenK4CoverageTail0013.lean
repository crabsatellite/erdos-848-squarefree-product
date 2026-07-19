import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0013
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0014

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0013Prefixes : List (List Nat) :=
  evenK4CoverageChunk0013Prefixes ++
    evenK4CoverageTail0014Prefixes

theorem evenK4CoverageTail0013_eq :
    evenK4CoverageTail0013Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0013StartState := by
  unfold evenK4CoverageTail0013Prefixes
  rw [evenK4CoverageTail0014_eq]
  have hstate :
      evenK4CoverageChunk0013NextState =
        evenK4CoverageChunk0014StartState := by
    rfl
  rw [← hstate]
  exact evenK4CoverageChunk0013_state_output.symm

theorem evenK4CoverageTail0013_passes :
    evenK4CoverageTail0013Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageTail0013Prefixes,
    List.all_append]
  rw [evenK4CoverageChunk0013_passes,
    evenK4CoverageTail0014_passes]
  rfl

#print axioms evenK4CoverageTail0013_eq
#print axioms evenK4CoverageTail0013_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
