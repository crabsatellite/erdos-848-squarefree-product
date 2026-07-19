import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0005
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0006

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0005Prefixes : List (List Nat) :=
  evenK4CoverageChunk0005Prefixes ++
    evenK4CoverageTail0006Prefixes

theorem evenK4CoverageTail0005_eq :
    evenK4CoverageTail0005Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0005StartState := by
  unfold evenK4CoverageTail0005Prefixes
  rw [evenK4CoverageTail0006_eq]
  have hstate :
      evenK4CoverageChunk0005NextState =
        evenK4CoverageChunk0006StartState := by
    rfl
  rw [← hstate]
  exact evenK4CoverageChunk0005_state_output.symm

theorem evenK4CoverageTail0005_passes :
    evenK4CoverageTail0005Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageTail0005Prefixes,
    List.all_append]
  rw [evenK4CoverageChunk0005_passes,
    evenK4CoverageTail0006_passes]
  rfl

#print axioms evenK4CoverageTail0005_eq
#print axioms evenK4CoverageTail0005_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
