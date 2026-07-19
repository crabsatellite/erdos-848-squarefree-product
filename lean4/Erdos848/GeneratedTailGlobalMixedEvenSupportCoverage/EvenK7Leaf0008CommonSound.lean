import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK7Leaf0008Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK7TerminalGroup0008_common_rows :
    Erdos848.globalMixedBitVecRestrictedRows
      evenK7TerminalGroup0008NormalLookup evenK7TerminalGroup0008TwistLookup [3, 7, 11, 43] =
    evenK7TerminalGroup0008CommonRows := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecRestrictedRows,
      Erdos848.globalMixedBitVecSupportWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK7TerminalGroup0008CommonRows, evenK7TerminalGroup0008NormalLookup, evenK7TerminalGroup0008TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalCosetWords,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistCosetWords,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000,      ]

#print axioms evenK7TerminalGroup0008_common_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
