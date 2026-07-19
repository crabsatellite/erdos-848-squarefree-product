import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageChunk0009

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CoverageTail0009Prefixes : List (List Nat) :=
  evenK6CoverageChunk0009Prefixes

theorem evenK6CoverageTail0009_eq :
    evenK6CoverageTail0009Prefixes =
      Erdos848.feasiblePrefixMachineStateOutput
        (Erdos848.globalMixedSupportProductThreshold 6)
        evenK6CoverageChunk0009StartState := by
  have h :=
    evenK6CoverageChunk0009_state_output
  simpa [evenK6CoverageChunk0009NextState,
    Erdos848.feasiblePrefixMachineStateOutput] using h.symm

theorem evenK6CoverageTail0009_passes :
    evenK6CoverageTail0009Prefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  exact evenK6CoverageChunk0009_passes

#print axioms evenK6CoverageTail0009_eq
#print axioms evenK6CoverageTail0009_passes

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
