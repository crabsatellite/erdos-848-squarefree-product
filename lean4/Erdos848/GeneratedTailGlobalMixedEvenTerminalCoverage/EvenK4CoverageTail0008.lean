import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0008
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0009

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0008Prefixes : List (List Nat) :=
  evenK4CoverageChunk0008Prefixes ++
    evenK4CoverageTail0009Prefixes

theorem evenK4CoverageTail0008_eq :
    evenK4CoverageTail0008Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0008StartState := by
  unfold evenK4CoverageTail0008Prefixes
  rw [evenK4CoverageTail0009_eq]
  have hstate :
      evenK4CoverageChunk0008NextState =
        evenK4CoverageChunk0009StartState := by
    rfl
  rw [← hstate]
  exact evenK4CoverageChunk0008_state_output.symm

theorem evenK4CoverageTail0008_passes :
    evenK4CoverageTail0008Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageTail0008Prefixes,
    List.all_append]
  rw [evenK4CoverageChunk0008_passes,
    evenK4CoverageTail0009_passes]
  rfl

#print axioms evenK4CoverageTail0008_eq
#print axioms evenK4CoverageTail0008_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
