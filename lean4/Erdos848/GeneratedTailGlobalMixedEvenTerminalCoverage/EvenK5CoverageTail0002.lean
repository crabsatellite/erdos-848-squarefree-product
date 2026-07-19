import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageChunk0002
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageTail0003

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageTail0002Prefixes : List (List Nat) :=
  evenK5CoverageChunk0002Prefixes ++
    evenK5CoverageTail0003Prefixes

theorem evenK5CoverageTail0002_eq :
    evenK5CoverageTail0002Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0002StartState := by
  unfold evenK5CoverageTail0002Prefixes
  rw [evenK5CoverageTail0003_eq]
  have hstate :
      evenK5CoverageChunk0002NextState =
        evenK5CoverageChunk0003StartState := by
    rfl
  rw [← hstate]
  exact evenK5CoverageChunk0002_state_output.symm

theorem evenK5CoverageTail0002_passes :
    evenK5CoverageTail0002Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageTail0002Prefixes,
    List.all_append]
  rw [evenK5CoverageChunk0002_passes,
    evenK5CoverageTail0003_passes]
  rfl

#print axioms evenK5CoverageTail0002_eq
#print axioms evenK5CoverageTail0002_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
