import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK7CoverageChunk0001

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK7CoverageTail0001Prefixes : List (List Nat) :=
  evenK7CoverageChunk0001Prefixes

theorem evenK7CoverageTail0001_eq :
    evenK7CoverageTail0001Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 7)
        evenK7CoverageChunk0001StartState := by
  have h :=
    evenK7CoverageChunk0001_state_output
  simpa [evenK7CoverageChunk0001NextState,
    Erdos848.feasiblePrefixMachineStateOutput] using h.symm

theorem evenK7CoverageTail0001_passes :
    evenK7CoverageTail0001Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 7 evenK7Selector
        EvenK7Choice.terminal) = true := by
  exact evenK7CoverageChunk0001_passes

#print axioms evenK7CoverageTail0001_eq
#print axioms evenK7CoverageTail0001_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
