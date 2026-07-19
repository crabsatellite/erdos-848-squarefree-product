import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageChunk0020

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CoverageTail0020Prefixes : List (List Nat) :=
  evenK5CoverageChunk0020Prefixes

theorem evenK5CoverageTail0020_eq :
    evenK5CoverageTail0020Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 5)
        evenK5CoverageChunk0020StartState := by
  have h :=
    evenK5CoverageChunk0020_state_output
  simpa [evenK5CoverageChunk0020NextState,
    Erdos848.feasiblePrefixMachineStateOutput] using h.symm

theorem evenK5CoverageTail0020_passes :
    evenK5CoverageTail0020Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  exact evenK5CoverageChunk0020_passes

#print axioms evenK5CoverageTail0020_eq
#print axioms evenK5CoverageTail0020_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
