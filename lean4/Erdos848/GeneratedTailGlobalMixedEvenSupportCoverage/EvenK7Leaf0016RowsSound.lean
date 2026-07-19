import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK7Leaf0016Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK7TerminalGroup0016_rows :
    [
      (Erdos848.globalMixedBitVecContinueRows evenK7TerminalGroup0016NormalLookup evenK7TerminalGroup0016TwistLookup [] evenK7TerminalGroup0016CommonRows)
    ] =
    [
      evenK7TerminalGroup0016FinalRows0000
    ] := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecContinueRows,
      Erdos848.globalMixedBitVecContinueWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK7TerminalGroup0016CommonRows,
      evenK7TerminalGroup0016FinalRows0000,
      evenK7TerminalGroup0016NormalLookup, evenK7TerminalGroup0016TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000,      ]

#print axioms evenK7TerminalGroup0016_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
