import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK7Leaf0009Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK7TerminalGroup0009_common_rows :
    Erdos848.globalMixedBitVecRestrictedRows
      evenK7TerminalGroup0009NormalLookup evenK7TerminalGroup0009TwistLookup [3, 7, 11, 47] =
    evenK7TerminalGroup0009CommonRows := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecRestrictedRows,
      Erdos848.globalMixedBitVecSupportWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK7TerminalGroup0009CommonRows, evenK7TerminalGroup0009NormalLookup, evenK7TerminalGroup0009TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalCosetWords,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistCosetWords,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000,      ]

#print axioms evenK7TerminalGroup0009_common_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
