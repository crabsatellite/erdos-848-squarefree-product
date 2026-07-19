import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageChunk0005
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageTail0006

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageTail0005Prefixes : List (List Nat) :=
  evenK6CoverageChunk0005Prefixes ++
    evenK6CoverageTail0006Prefixes

theorem evenK6CoverageTail0005_eq :
    evenK6CoverageTail0005Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0005StartState := by
  unfold evenK6CoverageTail0005Prefixes
  rw [evenK6CoverageTail0006_eq]
  have hstate :
      evenK6CoverageChunk0005NextState =
        evenK6CoverageChunk0006StartState := by
    rfl
  rw [← hstate]
  exact evenK6CoverageChunk0005_state_output.symm

theorem evenK6CoverageTail0005_passes :
    evenK6CoverageTail0005Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  simp only [evenK6CoverageTail0005Prefixes,
    List.all_append]
  rw [evenK6CoverageChunk0005_passes,
    evenK6CoverageTail0006_passes]
  rfl

#print axioms evenK6CoverageTail0005_eq
#print axioms evenK6CoverageTail0005_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
