import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageChunk0006

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK3CoverageTail0006Prefixes : List (List Nat) :=
  evenK3CoverageChunk0006Prefixes

theorem evenK3CoverageTail0006_eq :
    evenK3CoverageTail0006Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 3)
        evenK3CoverageChunk0006StartState := by
  have h :=
    evenK3CoverageChunk0006_state_output
  simpa [evenK3CoverageChunk0006NextState,
    Erdos848.feasiblePrefixMachineStateOutput] using h.symm

theorem evenK3CoverageTail0006_passes :
    evenK3CoverageTail0006Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 3 evenK3Selector
        EvenK3Choice.terminal) = true := by
  exact evenK3CoverageChunk0006_passes

#print axioms evenK3CoverageTail0006_eq
#print axioms evenK3CoverageTail0006_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
