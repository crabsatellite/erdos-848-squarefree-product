import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK7Leaf0011Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK7TerminalGroup0011_common_rows :
    Erdos848.globalMixedBitVecRestrictedRows
      evenK7TerminalGroup0011NormalLookup evenK7TerminalGroup0011TwistLookup [3, 7, 17] =
    evenK7TerminalGroup0011CommonRows := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecRestrictedRows,
      Erdos848.globalMixedBitVecSupportWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK7TerminalGroup0011CommonRows, evenK7TerminalGroup0011NormalLookup, evenK7TerminalGroup0011TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalCosetWords,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistCosetWords,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000,      ]

#print axioms evenK7TerminalGroup0011_common_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
