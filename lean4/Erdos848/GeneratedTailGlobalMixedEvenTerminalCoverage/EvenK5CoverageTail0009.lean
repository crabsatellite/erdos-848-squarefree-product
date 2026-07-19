import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageChunk0009
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageTail0010

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageTail0009Prefixes : List (List Nat) :=
  evenK5CoverageChunk0009Prefixes ++
    evenK5CoverageTail0010Prefixes

theorem evenK5CoverageTail0009_eq :
    evenK5CoverageTail0009Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0009StartState := by
  unfold evenK5CoverageTail0009Prefixes
  rw [evenK5CoverageTail0010_eq]
  have hstate :
      evenK5CoverageChunk0009NextState =
        evenK5CoverageChunk0010StartState := by
    rfl
  rw [← hstate]
  exact evenK5CoverageChunk0009_state_output.symm

theorem evenK5CoverageTail0009_passes :
    evenK5CoverageTail0009Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageTail0009Prefixes,
    List.all_append]
  rw [evenK5CoverageChunk0009_passes,
    evenK5CoverageTail0010_passes]
  rfl

#print axioms evenK5CoverageTail0009_eq
#print axioms evenK5CoverageTail0009_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
