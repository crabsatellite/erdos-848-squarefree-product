import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0089Data
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK6TerminalGroup0089_rows :
    [
      (Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0089NormalLookup evenK6TerminalGroup0089TwistLookup [] evenK6TerminalGroup0089CommonRows)
    ] =
    [
      evenK6TerminalGroup0089FinalRows0000
    ] := by
  simp (config := { maxSteps := 1000000 })
    [Erdos848.globalMixedBitVecContinueRows,
      Erdos848.globalMixedBitVecContinueWords,
      Erdos848.globalMixedBitVecIntersect,
      evenK6TerminalGroup0089CommonRows,
      evenK6TerminalGroup0089FinalRows0000,
      evenK6TerminalGroup0089NormalLookup, evenK6TerminalGroup0089TwistLookup,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0000,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords0001,
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords0001,      ]

#print axioms evenK6TerminalGroup0089_rows

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
