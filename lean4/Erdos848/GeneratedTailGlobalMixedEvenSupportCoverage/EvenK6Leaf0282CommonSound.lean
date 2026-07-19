import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0282Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK6TerminalGroup0282_common_rows :
    Erdos848.globalMixedBitVecRestrictedRows
      evenK6TerminalGroup0282NormalLookup evenK6TerminalGroup0282TwistLookup [7, 37] =
    evenK6TerminalGroup0282CommonRows := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecRestrictedRows,
      Erdos848.globalMixedBitVecSupportWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK6TerminalGroup0282CommonRows, evenK6TerminalGroup0282NormalLookup, evenK6TerminalGroup0282TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalCosetWords,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistCosetWords,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.normalValuationWords,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.twistValuationWords,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000,      ]

#print axioms evenK6TerminalGroup0282_common_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
