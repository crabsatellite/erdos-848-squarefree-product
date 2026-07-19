import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0272Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK6TerminalGroup0272_rows :
    [
      (Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0272NormalLookup evenK6TerminalGroup0272TwistLookup [] evenK6TerminalGroup0272CommonRows)
    ] =
    [
      evenK6TerminalGroup0272FinalRows0000
    ] := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecContinueRows,
      Erdos848.globalMixedBitVecContinueWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK6TerminalGroup0272CommonRows,
      evenK6TerminalGroup0272FinalRows0000,
      evenK6TerminalGroup0272NormalLookup, evenK6TerminalGroup0272TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000,      ]

#print axioms evenK6TerminalGroup0272_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
