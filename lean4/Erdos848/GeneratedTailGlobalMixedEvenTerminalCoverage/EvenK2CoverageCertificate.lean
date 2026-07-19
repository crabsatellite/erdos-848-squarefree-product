import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK2CoverageTail0000
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK2CertifiedPrefixes : List (List Nat) :=
  evenK2CoverageTail0000Prefixes

theorem evenK2CertifiedPrefixes_eq :
    evenK2CertifiedPrefixes =
      Erdos848.globalMixedFeasiblePrefixesKernel 2 := by
  calc
    evenK2CertifiedPrefixes =
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 2)
          evenK2CoverageChunk0000StartState :=
      evenK2CoverageTail0000_eq
    _ = Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 2)
          (Erdos848.globalMixedFeasiblePrefixMachineInitialState 2) := by
      rfl
    _ = Erdos848.globalMixedFeasiblePrefixesKernel 2 :=
      Erdos848.globalMixedFeasiblePrefixMachineInitialState_output (by norm_num)

theorem evenK2StandardPrefixes_select :
    evenK2CertifiedPrefixes.all
      (Erdos848.globalMixedEvenChoicePasses 2 evenK2Selector
        EvenK2Choice.terminal) = true := by
  exact evenK2CoverageTail0000_passes

theorem evenK2FeasiblePrefixes_select :
    (Erdos848.globalMixedFeasiblePrefixesKernel 2).all
      (Erdos848.globalMixedEvenChoicePasses 2 evenK2Selector
        EvenK2Choice.terminal) = true := by
  rw [← evenK2CertifiedPrefixes_eq]
  exact evenK2StandardPrefixes_select

#print axioms evenK2FeasiblePrefixes_select

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
