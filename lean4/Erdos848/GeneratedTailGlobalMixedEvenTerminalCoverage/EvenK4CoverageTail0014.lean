import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0014
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0015

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0014Prefixes : List (List Nat) :=
  evenK4CoverageChunk0014Prefixes ++
    evenK4CoverageTail0015Prefixes

theorem evenK4CoverageTail0014_eq :
    evenK4CoverageTail0014Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0014StartState := by
  unfold evenK4CoverageTail0014Prefixes
  rw [evenK4CoverageTail0015_eq]
  have hstate :
      evenK4CoverageChunk0014NextState =
        evenK4CoverageChunk0015StartState := by
    rfl
  rw [← hstate]
  exact evenK4CoverageChunk0014_state_output.symm

theorem evenK4CoverageTail0014_passes :
    evenK4CoverageTail0014Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageTail0014Prefixes,
    List.all_append]
  rw [evenK4CoverageChunk0014_passes,
    evenK4CoverageTail0015_passes]
  rfl

#print axioms evenK4CoverageTail0014_eq
#print axioms evenK4CoverageTail0014_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
