import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageChunk0017
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageTail0018

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageTail0017Prefixes : List (List Nat) :=
  evenK5CoverageChunk0017Prefixes ++
    evenK5CoverageTail0018Prefixes

theorem evenK5CoverageTail0017_eq :
    evenK5CoverageTail0017Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0017StartState := by
  unfold evenK5CoverageTail0017Prefixes
  rw [evenK5CoverageTail0018_eq]
  have hstate :
      evenK5CoverageChunk0017NextState =
        evenK5CoverageChunk0018StartState := by
    rfl
  rw [← hstate]
  exact evenK5CoverageChunk0017_state_output.symm

theorem evenK5CoverageTail0017_passes :
    evenK5CoverageTail0017Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageTail0017Prefixes,
    List.all_append]
  rw [evenK5CoverageChunk0017_passes,
    evenK5CoverageTail0018_passes]
  rfl

#print axioms evenK5CoverageTail0017_eq
#print axioms evenK5CoverageTail0017_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
