import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0004
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0005

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0004Prefixes : List (List Nat) :=
  evenK4CoverageChunk0004Prefixes ++
    evenK4CoverageTail0005Prefixes

theorem evenK4CoverageTail0004_eq :
    evenK4CoverageTail0004Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0004StartState := by
  unfold evenK4CoverageTail0004Prefixes
  rw [evenK4CoverageTail0005_eq]
  have hstate :
      evenK4CoverageChunk0004NextState =
        evenK4CoverageChunk0005StartState := by
    rfl
  rw [← hstate]
  exact evenK4CoverageChunk0004_state_output.symm

theorem evenK4CoverageTail0004_passes :
    evenK4CoverageTail0004Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageTail0004Prefixes,
    List.all_append]
  rw [evenK4CoverageChunk0004_passes,
    evenK4CoverageTail0005_passes]
  rfl

#print axioms evenK4CoverageTail0004_eq
#print axioms evenK4CoverageTail0004_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
