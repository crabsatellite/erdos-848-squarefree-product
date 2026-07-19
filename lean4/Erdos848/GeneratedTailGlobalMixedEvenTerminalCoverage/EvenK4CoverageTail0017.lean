import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0017
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0018

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0017Prefixes : List (List Nat) :=
  evenK4CoverageChunk0017Prefixes ++
    evenK4CoverageTail0018Prefixes

theorem evenK4CoverageTail0017_eq :
    evenK4CoverageTail0017Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0017StartState := by
  unfold evenK4CoverageTail0017Prefixes
  rw [evenK4CoverageTail0018_eq]
  have hstate :
      evenK4CoverageChunk0017NextState =
        evenK4CoverageChunk0018StartState := by
    rfl
  rw [← hstate]
  exact evenK4CoverageChunk0017_state_output.symm

theorem evenK4CoverageTail0017_passes :
    evenK4CoverageTail0017Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageTail0017Prefixes,
    List.all_append]
  rw [evenK4CoverageChunk0017_passes,
    evenK4CoverageTail0018_passes]
  rfl

#print axioms evenK4CoverageTail0017_eq
#print axioms evenK4CoverageTail0017_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
