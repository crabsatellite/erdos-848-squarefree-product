import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0069Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK6TerminalGroup0069_rows :
    [
      (Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0069NormalLookup evenK6TerminalGroup0069TwistLookup [] evenK6TerminalGroup0069CommonRows)
    ] =
    [
      evenK6TerminalGroup0069FinalRows0000
    ] := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecContinueRows,
      Erdos848.globalMixedBitVecContinueWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK6TerminalGroup0069CommonRows,
      evenK6TerminalGroup0069FinalRows0000,
      evenK6TerminalGroup0069NormalLookup, evenK6TerminalGroup0069TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000,      ]

#print axioms evenK6TerminalGroup0069_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
