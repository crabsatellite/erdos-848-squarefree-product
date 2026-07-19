import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK8CoverageTail0000
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK8CertifiedPrefixes : List (List Nat) :=
  evenK8CoverageTail0000Prefixes

theorem evenK8CertifiedPrefixes_eq :
    evenK8CertifiedPrefixes =
      Erdos848.globalMixedFeasiblePrefixesKernel 8 := by
  calc
    evenK8CertifiedPrefixes =
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 8)
          evenK8CoverageChunk0000StartState :=
      evenK8CoverageTail0000_eq
    _ = Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 8)
          (Erdos848.globalMixedFeasiblePrefixMachineInitialState 8) := by
      rfl
    _ = Erdos848.globalMixedFeasiblePrefixesKernel 8 :=
      Erdos848.globalMixedFeasiblePrefixMachineInitialState_output (by norm_num)

theorem evenK8StandardPrefixes_select :
    evenK8CertifiedPrefixes.all
      (Erdos848.globalMixedEvenChoicePasses 8 evenK8Selector
        EvenK8Choice.terminal) = true := by
  exact evenK8CoverageTail0000_passes

theorem evenK8FeasiblePrefixes_select :
    (Erdos848.globalMixedFeasiblePrefixesKernel 8).all
      (Erdos848.globalMixedEvenChoicePasses 8 evenK8Selector
        EvenK8Choice.terminal) = true := by
  rw [← evenK8CertifiedPrefixes_eq]
  exact evenK8StandardPrefixes_select

#print axioms evenK8FeasiblePrefixes_select

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
