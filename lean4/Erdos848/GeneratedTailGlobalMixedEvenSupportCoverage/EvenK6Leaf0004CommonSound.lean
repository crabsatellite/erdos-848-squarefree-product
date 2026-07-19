import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0004Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK6TerminalGroup0004_common_rows :
    Erdos848.globalMixedBitVecRestrictedRows
      evenK6TerminalGroup0004NormalLookup evenK6TerminalGroup0004TwistLookup [3, 7, 11, 29] =
    evenK6TerminalGroup0004CommonRows := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecRestrictedRows,
      Erdos848.globalMixedBitVecSupportWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK6TerminalGroup0004CommonRows, evenK6TerminalGroup0004NormalLookup, evenK6TerminalGroup0004TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalCosetWords,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistCosetWords,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000,      ]

#print axioms evenK6TerminalGroup0004_common_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
