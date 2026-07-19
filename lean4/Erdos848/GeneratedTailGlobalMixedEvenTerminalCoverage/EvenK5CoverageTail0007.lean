import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageChunk0007
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageTail0008

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageTail0007Prefixes : List (List Nat) :=
  evenK5CoverageChunk0007Prefixes ++
    evenK5CoverageTail0008Prefixes

theorem evenK5CoverageTail0007_eq :
    evenK5CoverageTail0007Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0007StartState := by
  unfold evenK5CoverageTail0007Prefixes
  rw [evenK5CoverageTail0008_eq]
  have hstate :
      evenK5CoverageChunk0007NextState =
        evenK5CoverageChunk0008StartState := by
    rfl
  rw [← hstate]
  exact evenK5CoverageChunk0007_state_output.symm

theorem evenK5CoverageTail0007_passes :
    evenK5CoverageTail0007Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageTail0007Prefixes,
    List.all_append]
  rw [evenK5CoverageChunk0007_passes,
    evenK5CoverageTail0008_passes]
  rfl

#print axioms evenK5CoverageTail0007_eq
#print axioms evenK5CoverageTail0007_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
