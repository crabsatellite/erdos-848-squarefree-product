import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK8CoverageChunk0000

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK8CoverageTail0000Prefixes : List (List Nat) :=
  evenK8CoverageChunk0000Prefixes

theorem evenK8CoverageTail0000_eq :
    evenK8CoverageTail0000Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 8)
        evenK8CoverageChunk0000StartState := by
  have h :=
    evenK8CoverageChunk0000_state_output
  simpa [evenK8CoverageChunk0000NextState,
    Erdos848.feasiblePrefixMachineStateOutput] using h.symm

theorem evenK8CoverageTail0000_passes :
    evenK8CoverageTail0000Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 8 evenK8Selector
        EvenK8Choice.terminal) = true := by
  exact evenK8CoverageChunk0000_passes

#print axioms evenK8CoverageTail0000_eq
#print axioms evenK8CoverageTail0000_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
