import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK7CoverageChunk0000
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK7CoverageTail0001

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK7CoverageTail0000Prefixes : List (List Nat) :=
  evenK7CoverageChunk0000Prefixes ++
    evenK7CoverageTail0001Prefixes

theorem evenK7CoverageTail0000_eq :
    evenK7CoverageTail0000Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 7)
        evenK7CoverageChunk0000StartState := by
  unfold evenK7CoverageTail0000Prefixes
  rw [evenK7CoverageTail0001_eq]
  have hstate :
      evenK7CoverageChunk0000NextState =
        evenK7CoverageChunk0001StartState := by
    rfl
  rw [← hstate]
  exact evenK7CoverageChunk0000_state_output.symm

theorem evenK7CoverageTail0000_passes :
    evenK7CoverageTail0000Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 7 evenK7Selector
        EvenK7Choice.terminal) = true := by
  simp only [evenK7CoverageTail0000Prefixes,
    List.all_append]
  rw [evenK7CoverageChunk0000_passes,
    evenK7CoverageTail0001_passes]
  rfl

#print axioms evenK7CoverageTail0000_eq
#print axioms evenK7CoverageTail0000_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
