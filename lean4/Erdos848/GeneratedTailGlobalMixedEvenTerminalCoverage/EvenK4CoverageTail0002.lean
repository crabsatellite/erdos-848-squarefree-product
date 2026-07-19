import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0002
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0003

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0002Prefixes : List (List Nat) :=
  evenK4CoverageChunk0002Prefixes ++
    evenK4CoverageTail0003Prefixes

theorem evenK4CoverageTail0002_eq :
    evenK4CoverageTail0002Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0002StartState := by
  unfold evenK4CoverageTail0002Prefixes
  rw [evenK4CoverageTail0003_eq]
  have hstate :
      evenK4CoverageChunk0002NextState =
        evenK4CoverageChunk0003StartState := by
    rfl
  rw [← hstate]
  exact evenK4CoverageChunk0002_state_output.symm

theorem evenK4CoverageTail0002_passes :
    evenK4CoverageTail0002Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageTail0002Prefixes,
    List.all_append]
  rw [evenK4CoverageChunk0002_passes,
    evenK4CoverageTail0003_passes]
  rfl

#print axioms evenK4CoverageTail0002_eq
#print axioms evenK4CoverageTail0002_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
