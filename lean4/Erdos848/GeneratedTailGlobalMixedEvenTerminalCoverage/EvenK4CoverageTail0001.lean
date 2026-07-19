import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0001
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0002

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0001Prefixes : List (List Nat) :=
  evenK4CoverageChunk0001Prefixes ++
    evenK4CoverageTail0002Prefixes

theorem evenK4CoverageTail0001_eq :
    evenK4CoverageTail0001Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0001StartState := by
  unfold evenK4CoverageTail0001Prefixes
  rw [evenK4CoverageTail0002_eq]
  have hstate :
      evenK4CoverageChunk0001NextState =
        evenK4CoverageChunk0002StartState := by
    rfl
  rw [← hstate]
  exact evenK4CoverageChunk0001_state_output.symm

theorem evenK4CoverageTail0001_passes :
    evenK4CoverageTail0001Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageTail0001Prefixes,
    List.all_append]
  rw [evenK4CoverageChunk0001_passes,
    evenK4CoverageTail0002_passes]
  rfl

#print axioms evenK4CoverageTail0001_eq
#print axioms evenK4CoverageTail0001_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
