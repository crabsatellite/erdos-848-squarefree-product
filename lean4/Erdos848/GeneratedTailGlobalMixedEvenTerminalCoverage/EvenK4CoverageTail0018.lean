import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageChunk0018

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CoverageTail0018Prefixes : List (List Nat) :=
  evenK4CoverageChunk0018Prefixes

theorem evenK4CoverageTail0018_eq :
    evenK4CoverageTail0018Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 4)
        evenK4CoverageChunk0018StartState := by
  have h :=
    evenK4CoverageChunk0018_state_output
  simpa [evenK4CoverageChunk0018NextState,
    Erdos848.feasiblePrefixMachineStateOutput] using h.symm

theorem evenK4CoverageTail0018_passes :
    evenK4CoverageTail0018Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  exact evenK4CoverageChunk0018_passes

#print axioms evenK4CoverageTail0018_eq
#print axioms evenK4CoverageTail0018_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
