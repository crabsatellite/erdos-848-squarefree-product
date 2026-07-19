import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK7Leaf0005Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK7TerminalGroup0005_rows :
    [
      (Erdos848.globalMixedBitVecContinueRows evenK7TerminalGroup0005NormalLookup evenK7TerminalGroup0005TwistLookup [] evenK7TerminalGroup0005CommonRows)
    ] =
    [
      evenK7TerminalGroup0005FinalRows0000
    ] := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecContinueRows,
      Erdos848.globalMixedBitVecContinueWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK7TerminalGroup0005CommonRows,
      evenK7TerminalGroup0005FinalRows0000,
      evenK7TerminalGroup0005NormalLookup, evenK7TerminalGroup0005TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000,      ]

#print axioms evenK7TerminalGroup0005_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
