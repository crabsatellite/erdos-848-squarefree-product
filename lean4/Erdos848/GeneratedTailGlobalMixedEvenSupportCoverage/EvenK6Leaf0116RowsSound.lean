import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0116Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK6TerminalGroup0116_rows :
    [
      (Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0116NormalLookup evenK6TerminalGroup0116TwistLookup [] evenK6TerminalGroup0116CommonRows)
    ] =
    [
      evenK6TerminalGroup0116FinalRows0000
    ] := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecContinueRows,
      Erdos848.globalMixedBitVecContinueWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK6TerminalGroup0116CommonRows,
      evenK6TerminalGroup0116FinalRows0000,
      evenK6TerminalGroup0116NormalLookup, evenK6TerminalGroup0116TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000,      ]

#print axioms evenK6TerminalGroup0116_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
