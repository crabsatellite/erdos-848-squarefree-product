import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK7CoverageTail0000
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK7CertifiedPrefixes : List (List Nat) :=
  evenK7CoverageTail0000Prefixes

theorem evenK7CertifiedPrefixes_eq :
    evenK7CertifiedPrefixes =
      Erdos848.globalMixedFeasiblePrefixesKernel 7 := by
  calc
    evenK7CertifiedPrefixes =
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 7)
          evenK7CoverageChunk0000StartState :=
      evenK7CoverageTail0000_eq
    _ = Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 7)
          (Erdos848.globalMixedFeasiblePrefixMachineInitialState 7) := by
      rfl
    _ = Erdos848.globalMixedFeasiblePrefixesKernel 7 :=
      Erdos848.globalMixedFeasiblePrefixMachineInitialState_output (by norm_num)

theorem evenK7StandardPrefixes_select :
    evenK7CertifiedPrefixes.all
      (Erdos848.globalMixedEvenChoicePasses 7 evenK7Selector
        EvenK7Choice.terminal) = true := by
  exact evenK7CoverageTail0000_passes

theorem evenK7FeasiblePrefixes_select :
    (Erdos848.globalMixedFeasiblePrefixesKernel 7).all
      (Erdos848.globalMixedEvenChoicePasses 7 evenK7Selector
        EvenK7Choice.terminal) = true := by
  rw [← evenK7CertifiedPrefixes_eq]
  exact evenK7StandardPrefixes_select

#print axioms evenK7FeasiblePrefixes_select

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
