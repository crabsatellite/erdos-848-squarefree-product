import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK4CoverageTail0000
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK4CertifiedPrefixes : List (List Nat) :=
  evenK4CoverageTail0000Prefixes

theorem evenK4CertifiedPrefixes_eq :
    evenK4CertifiedPrefixes =
      Erdos848.globalMixedFeasiblePrefixesKernel 4 := by
  calc
    evenK4CertifiedPrefixes =
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          evenK4CoverageChunk0000StartState :=
      evenK4CoverageTail0000_eq
    _ = Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 4)
          (Erdos848.globalMixedFeasiblePrefixMachineInitialState 4) := by
      rfl
    _ = Erdos848.globalMixedFeasiblePrefixesKernel 4 :=
      Erdos848.globalMixedFeasiblePrefixMachineInitialState_output (by norm_num)

theorem evenK4StandardPrefixes_select :
    evenK4CertifiedPrefixes.all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  exact evenK4CoverageTail0000_passes

theorem evenK4FeasiblePrefixes_select :
    (Erdos848.globalMixedFeasiblePrefixesKernel 4).all
      (Erdos848.globalMixedEvenChoicePasses 4 evenK4Selector
        EvenK4Choice.terminal) = true := by
  rw [← evenK4CertifiedPrefixes_eq]
  exact evenK4StandardPrefixes_select

#print axioms evenK4FeasiblePrefixes_select

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
