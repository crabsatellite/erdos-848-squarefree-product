import Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage.EvenK6CoverageTail0000
import Erdos848.TailGlobalMixedFeasiblePrefixMachine

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def evenK6CertifiedPrefixes : List (List Nat) :=
  evenK6CoverageTail0000Prefixes

theorem evenK6CertifiedPrefixes_eq :
    evenK6CertifiedPrefixes =
      Erdos848.globalMixedFeasiblePrefixesKernel 6 := by
  calc
    evenK6CertifiedPrefixes =
        Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 6)
          evenK6CoverageChunk0000StartState :=
      evenK6CoverageTail0000_eq
    _ = Erdos848.feasiblePrefixMachineStateOutput
          (Erdos848.globalMixedSupportProductThreshold 6)
          (Erdos848.globalMixedFeasiblePrefixMachineInitialState 6) := by
      rfl
    _ = Erdos848.globalMixedFeasiblePrefixesKernel 6 :=
      Erdos848.globalMixedFeasiblePrefixMachineInitialState_output (by norm_num)

theorem evenK6StandardPrefixes_select :
    evenK6CertifiedPrefixes.all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  exact evenK6CoverageTail0000_passes

theorem evenK6FeasiblePrefixes_select :
    (Erdos848.globalMixedFeasiblePrefixesKernel 6).all
      (Erdos848.globalMixedEvenChoicePasses 6 evenK6Selector
        EvenK6Choice.terminal) = true := by
  rw [← evenK6CertifiedPrefixes_eq]
  exact evenK6StandardPrefixes_select

#print axioms evenK6FeasiblePrefixes_select

end Erdos848.GeneratedTailGlobalMixedEvenTerminalCoverage
