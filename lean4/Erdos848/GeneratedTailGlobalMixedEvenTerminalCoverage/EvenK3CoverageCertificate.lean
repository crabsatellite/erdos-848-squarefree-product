import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK3CoverageTail0000
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK3CertifiedPrefixes : List (List Nat) :=
  evenK3CoverageTail0000Prefixes

theorem evenK3CertifiedPrefixes_eq :
    evenK3CertifiedPrefixes =
      Erdos848.globalMixedFeasiblePrefixesKernel 3 := by
  calc
    evenK3CertifiedPrefixes =
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 3)
          evenK3CoverageChunk0000StartState :=
      evenK3CoverageTail0000_eq
    _ = Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 3)
          (Erdos848.globalMixedFeasiblePrefixMachineInitialState 3) := by
      rfl
    _ = Erdos848.globalMixedFeasiblePrefixesKernel 3 :=
      Erdos848.globalMixedFeasiblePrefixMachineInitialState_output (by norm_num)

theorem evenK3StandardPrefixes_select :
    evenK3CertifiedPrefixes.all
      (Erdos848.globalMixedEvenChoicePasses 3 evenK3Selector
        EvenK3Choice.terminal) = true := by
  exact evenK3CoverageTail0000_passes

theorem evenK3FeasiblePrefixes_select :
    (Erdos848.globalMixedFeasiblePrefixesKernel 3).all
      (Erdos848.globalMixedEvenChoicePasses 3 evenK3Selector
        EvenK3Choice.terminal) = true := by
  rw [← evenK3CertifiedPrefixes_eq]
  exact evenK3StandardPrefixes_select

#print axioms evenK3FeasiblePrefixes_select

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
