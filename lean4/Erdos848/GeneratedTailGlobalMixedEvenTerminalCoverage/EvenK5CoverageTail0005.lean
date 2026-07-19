import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageChunk0005
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageTail0006

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageTail0005Prefixes : List (List Nat) :=
  evenK5CoverageChunk0005Prefixes ++
    evenK5CoverageTail0006Prefixes

theorem evenK5CoverageTail0005_eq :
    evenK5CoverageTail0005Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0005StartState := by
  unfold evenK5CoverageTail0005Prefixes
  rw [evenK5CoverageTail0006_eq]
  have hstate :
      evenK5CoverageChunk0005NextState =
        evenK5CoverageChunk0006StartState := by
    rfl
  rw [← hstate]
  exact evenK5CoverageChunk0005_state_output.symm

theorem evenK5CoverageTail0005_passes :
    evenK5CoverageTail0005Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageTail0005Prefixes,
    List.all_append]
  rw [evenK5CoverageChunk0005_passes,
    evenK5CoverageTail0006_passes]
  rfl

#print axioms evenK5CoverageTail0005_eq
#print axioms evenK5CoverageTail0005_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
