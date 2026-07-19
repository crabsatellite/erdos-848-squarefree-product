import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageChunk0000
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageTail0001

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageTail0000Prefixes : List (List Nat) :=
  evenK6CoverageChunk0000Prefixes ++
    evenK6CoverageTail0001Prefixes

theorem evenK6CoverageTail0000_eq :
    evenK6CoverageTail0000Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0000StartState := by
  unfold evenK6CoverageTail0000Prefixes
  rw [evenK6CoverageTail0001_eq]
  have hstate :
      evenK6CoverageChunk0000NextState =
        evenK6CoverageChunk0001StartState := by
    rfl
  rw [← hstate]
  exact evenK6CoverageChunk0000_state_output.symm

theorem evenK6CoverageTail0000_passes :
    evenK6CoverageTail0000Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  simp only [evenK6CoverageTail0000Prefixes,
    List.all_append]
  rw [evenK6CoverageChunk0000_passes,
    evenK6CoverageTail0001_passes]
  rfl

#print axioms evenK6CoverageTail0000_eq
#print axioms evenK6CoverageTail0000_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
