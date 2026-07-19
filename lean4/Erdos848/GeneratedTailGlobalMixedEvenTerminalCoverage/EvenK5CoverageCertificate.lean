import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK5CoverageTail0000
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK5CertifiedPrefixes : List (List Nat) :=
  evenK5CoverageTail0000Prefixes

theorem evenK5CertifiedPrefixes_eq :
    evenK5CertifiedPrefixes =
      Erdos848.globalMixedFeasiblePrefixesKernel 5 := by
  calc
    evenK5CertifiedPrefixes =
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          evenK5CoverageChunk0000StartState :=
      evenK5CoverageTail0000_eq
    _ = Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 5)
          (Erdos848.globalMixedFeasiblePrefixMachineInitialState 5) := by
      rfl
    _ = Erdos848.globalMixedFeasiblePrefixesKernel 5 :=
      Erdos848.globalMixedFeasiblePrefixMachineInitialState_output (by norm_num)

theorem evenK5StandardPrefixes_select :
    evenK5CertifiedPrefixes.all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  exact evenK5CoverageTail0000_passes

theorem evenK5FeasiblePrefixes_select :
    (Erdos848.globalMixedFeasiblePrefixesKernel 5).all
      (Erdos848.globalMixedEvenChoicePasses 5 evenK5Selector
        EvenK5Choice.terminal) = true := by
  rw [← evenK5CertifiedPrefixes_eq]
  exact evenK5StandardPrefixes_select

#print axioms evenK5FeasiblePrefixes_select

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
