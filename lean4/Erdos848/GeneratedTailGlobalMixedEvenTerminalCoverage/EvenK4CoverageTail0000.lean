import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0000
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0001

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0000Prefixes : List (List Nat) :=
  evenK4CoverageChunk0000Prefixes ++
    evenK4CoverageTail0001Prefixes

theorem evenK4CoverageTail0000_eq :
    evenK4CoverageTail0000Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0000StartState := by
  unfold evenK4CoverageTail0000Prefixes
  rw [evenK4CoverageTail0001_eq]
  have hstate :
      evenK4CoverageChunk0000NextState =
        evenK4CoverageChunk0001StartState := by
    rfl
  rw [← hstate]
  exact evenK4CoverageChunk0000_state_output.symm

theorem evenK4CoverageTail0000_passes :
    evenK4CoverageTail0000Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageTail0000Prefixes,
    List.all_append]
  rw [evenK4CoverageChunk0000_passes,
    evenK4CoverageTail0001_passes]
  rfl

#print axioms evenK4CoverageTail0000_eq
#print axioms evenK4CoverageTail0000_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
