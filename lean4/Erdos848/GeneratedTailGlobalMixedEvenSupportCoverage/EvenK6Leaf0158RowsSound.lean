import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0158Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK6TerminalGroup0158_rows :
    [
      (Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0158NormalLookup evenK6TerminalGroup0158TwistLookup [] evenK6TerminalGroup0158CommonRows)
    ] =
    [
      evenK6TerminalGroup0158FinalRows0000
    ] := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecContinueRows,
      Erdos848.globalMixedBitVecContinueWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK6TerminalGroup0158CommonRows,
      evenK6TerminalGroup0158FinalRows0000,
      evenK6TerminalGroup0158NormalLookup, evenK6TerminalGroup0158TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0003,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0003,      ]

#print axioms evenK6TerminalGroup0158_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
