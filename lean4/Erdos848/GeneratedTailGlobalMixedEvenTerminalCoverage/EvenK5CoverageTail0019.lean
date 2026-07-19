import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageChunk0019
import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageTail0020

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageTail0019Prefixes : List (List Nat) :=
  evenK5CoverageChunk0019Prefixes ++
    evenK5CoverageTail0020Prefixes

theorem evenK5CoverageTail0019_eq :
    evenK5CoverageTail0019Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0019StartState := by
  unfold evenK5CoverageTail0019Prefixes
  rw [evenK5CoverageTail0020_eq]
  have hstate :
      evenK5CoverageChunk0019NextState =
        evenK5CoverageChunk0020StartState := by
    rfl
  rw [← hstate]
  exact evenK5CoverageChunk0019_state_output.symm

theorem evenK5CoverageTail0019_passes :
    evenK5CoverageTail0019Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  simp only [evenK5CoverageTail0019Prefixes,
    List.all_append]
  rw [evenK5CoverageChunk0019_passes,
    evenK5CoverageTail0020_passes]
  rfl

#print axioms evenK5CoverageTail0019_eq
#print axioms evenK5CoverageTail0019_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
