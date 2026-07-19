import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK8Leaf0000Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK8TerminalGroup0000_rows :
    [
      (Erdos848.globalMixedBitVecContinueRows evenK8TerminalGroup0000NormalLookup evenK8TerminalGroup0000TwistLookup [] evenK8TerminalGroup0000CommonRows)
    ] =
    [
      evenK8TerminalGroup0000FinalRows0000
    ] := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecContinueRows,
      Erdos848.globalMixedBitVecContinueWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK8TerminalGroup0000CommonRows,
      evenK8TerminalGroup0000FinalRows0000,
      evenK8TerminalGroup0000NormalLookup, evenK8TerminalGroup0000TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000,      ]

#print axioms evenK8TerminalGroup0000_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
