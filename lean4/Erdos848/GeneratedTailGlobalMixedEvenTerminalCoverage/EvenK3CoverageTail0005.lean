import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageChunk0005
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageTail0006

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK3CoverageTail0005Prefixes : List (List Nat) :=
  evenK3CoverageChunk0005Prefixes ++
    evenK3CoverageTail0006Prefixes

theorem evenK3CoverageTail0005_eq :
    evenK3CoverageTail0005Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0005StartState := by
  unfold evenK3CoverageTail0005Prefixes
  rw [evenK3CoverageTail0006_eq]
  have hstate :
      evenK3CoverageChunk0005NextState =
        evenK3CoverageChunk0006StartState := by
    rfl
  rw [← hstate]
  exact evenK3CoverageChunk0005_state_output.symm

theorem evenK3CoverageTail0005_passes :
    evenK3CoverageTail0005Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 3 evenK3Selector
        EvenK3Choice.terminal) = true := by
  simp only [evenK3CoverageTail0005Prefixes,
    List.all_append]
  rw [evenK3CoverageChunk0005_passes,
    evenK3CoverageTail0006_passes]
  rfl

#print axioms evenK3CoverageTail0005_eq
#print axioms evenK3CoverageTail0005_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
