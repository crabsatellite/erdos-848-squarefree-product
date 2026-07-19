import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0009
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0010

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0009Prefixes : List (List Nat) :=
  evenK4CoverageChunk0009Prefixes ++
    evenK4CoverageTail0010Prefixes

theorem evenK4CoverageTail0009_eq :
    evenK4CoverageTail0009Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0009StartState := by
  unfold evenK4CoverageTail0009Prefixes
  rw [evenK4CoverageTail0010_eq]
  have hstate :
      evenK4CoverageChunk0009NextState =
        evenK4CoverageChunk0010StartState := by
    rfl
  rw [← hstate]
  exact evenK4CoverageChunk0009_state_output.symm

theorem evenK4CoverageTail0009_passes :
    evenK4CoverageTail0009Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageTail0009Prefixes,
    List.all_append]
  rw [evenK4CoverageChunk0009_passes,
    evenK4CoverageTail0010_passes]
  rfl

#print axioms evenK4CoverageTail0009_eq
#print axioms evenK4CoverageTail0009_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
