import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK2CoverageChunk0000

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK2CoverageTail0000Prefixes : List (List Nat) :=
  evenK2CoverageChunk0000Prefixes

theorem evenK2CoverageTail0000_eq :
    evenK2CoverageTail0000Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 2)
        evenK2CoverageChunk0000StartState := by
  have h :=
    evenK2CoverageChunk0000_state_output
  simpa [evenK2CoverageChunk0000NextState,
    Erdos848.feasiblePrefixMachineStateOutput] using h.symm

theorem evenK2CoverageTail0000_passes :
    evenK2CoverageTail0000Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 2 evenK2Selector
        EvenK2Choice.terminal) = true := by
  exact evenK2CoverageChunk0000_passes

#print axioms evenK2CoverageTail0000_eq
#print axioms evenK2CoverageTail0000_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
