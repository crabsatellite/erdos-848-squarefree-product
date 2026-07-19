import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0007
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0008

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0007Prefixes : List (List Nat) :=
  evenK4CoverageChunk0007Prefixes ++
    evenK4CoverageTail0008Prefixes

theorem evenK4CoverageTail0007_eq :
    evenK4CoverageTail0007Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0007StartState := by
  unfold evenK4CoverageTail0007Prefixes
  rw [evenK4CoverageTail0008_eq]
  have hstate :
      evenK4CoverageChunk0007NextState =
        evenK4CoverageChunk0008StartState := by
    rfl
  rw [← hstate]
  exact evenK4CoverageChunk0007_state_output.symm

theorem evenK4CoverageTail0007_passes :
    evenK4CoverageTail0007Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  simp only [evenK4CoverageTail0007Prefixes,
    List.all_append]
  rw [evenK4CoverageChunk0007_passes,
    evenK4CoverageTail0008_passes]
  rfl

#print axioms evenK4CoverageTail0007_eq
#print axioms evenK4CoverageTail0007_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
