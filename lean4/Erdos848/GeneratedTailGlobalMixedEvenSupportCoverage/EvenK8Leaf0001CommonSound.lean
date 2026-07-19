import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK8Leaf0001Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK8TerminalGroup0001_common_rows :
    Erdos848.globalMixedBitVecRestrictedRows
      evenK8TerminalGroup0001NormalLookup evenK8TerminalGroup0001TwistLookup [3, 11] =
    evenK8TerminalGroup0001CommonRows := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecRestrictedRows,
      Erdos848.globalMixedBitVecSupportWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK8TerminalGroup0001CommonRows, evenK8TerminalGroup0001NormalLookup, evenK8TerminalGroup0001TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalCosetWords,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistCosetWords,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000,      ]

#print axioms evenK8TerminalGroup0001_common_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
