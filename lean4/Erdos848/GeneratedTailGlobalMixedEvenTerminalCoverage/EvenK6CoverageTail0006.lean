import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageChunk0006
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageTail0007

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageTail0006Prefixes : List (List Nat) :=
  evenK6CoverageChunk0006Prefixes ++
    evenK6CoverageTail0007Prefixes

theorem evenK6CoverageTail0006_eq :
    evenK6CoverageTail0006Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0006StartState := by
  unfold evenK6CoverageTail0006Prefixes
  rw [evenK6CoverageTail0007_eq]
  have hstate :
      evenK6CoverageChunk0006NextState =
        evenK6CoverageChunk0007StartState := by
    rfl
  rw [← hstate]
  exact evenK6CoverageChunk0006_state_output.symm

theorem evenK6CoverageTail0006_passes :
    evenK6CoverageTail0006Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  simp only [evenK6CoverageTail0006Prefixes,
    List.all_append]
  rw [evenK6CoverageChunk0006_passes,
    evenK6CoverageTail0007_passes]
  rfl

#print axioms evenK6CoverageTail0006_eq
#print axioms evenK6CoverageTail0006_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
