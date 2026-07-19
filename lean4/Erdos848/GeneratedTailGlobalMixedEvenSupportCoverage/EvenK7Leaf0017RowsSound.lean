import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK7Leaf0017Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK7TerminalGroup0017_rows :
    [
      (Erdos848.globalMixedBitVecContinueRows evenK7TerminalGroup0017NormalLookup evenK7TerminalGroup0017TwistLookup [] evenK7TerminalGroup0017CommonRows)
    ] =
    [
      evenK7TerminalGroup0017FinalRows0000
    ] := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecContinueRows,
      Erdos848.globalMixedBitVecContinueWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK7TerminalGroup0017CommonRows,
      evenK7TerminalGroup0017FinalRows0000,
      evenK7TerminalGroup0017NormalLookup, evenK7TerminalGroup0017TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000,      ]

#print axioms evenK7TerminalGroup0017_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
