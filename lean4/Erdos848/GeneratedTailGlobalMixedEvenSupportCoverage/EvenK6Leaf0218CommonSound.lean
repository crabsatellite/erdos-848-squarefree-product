import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0218Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK6TerminalGroup0218_common_rows :
    Erdos848.globalMixedBitVecRestrictedRows
      evenK6TerminalGroup0218NormalLookup evenK6TerminalGroup0218TwistLookup [3, 11, 41] =
    evenK6TerminalGroup0218CommonRows := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecRestrictedRows,
      Erdos848.globalMixedBitVecSupportWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK6TerminalGroup0218CommonRows, evenK6TerminalGroup0218NormalLookup, evenK6TerminalGroup0218TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalCosetWords,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistCosetWords,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000,      ]

#print axioms evenK6TerminalGroup0218_common_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
