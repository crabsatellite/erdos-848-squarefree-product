import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0179Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK6TerminalGroup0179_rows :
    [
      (Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0179NormalLookup evenK6TerminalGroup0179TwistLookup [] evenK6TerminalGroup0179CommonRows)
    ] =
    [
      evenK6TerminalGroup0179FinalRows0000
    ] := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecContinueRows,
      Erdos848.globalMixedBitVecContinueWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK6TerminalGroup0179CommonRows,
      evenK6TerminalGroup0179FinalRows0000,
      evenK6TerminalGroup0179NormalLookup, evenK6TerminalGroup0179TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0004,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0004,      ]

#print axioms evenK6TerminalGroup0179_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
