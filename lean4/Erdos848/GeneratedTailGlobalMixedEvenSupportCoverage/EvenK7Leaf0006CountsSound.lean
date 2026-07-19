import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK7Leaf0006Data
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.WordCounts
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK7TerminalGroup0006_counts :
    [
      evenK7TerminalGroup0006FinalRows0000.counts
    ] =
    [
      evenK7TerminalGroup0006Row0000.counts.toBitVec
    ] := by
  simp (config := { maxSteps := 1000000 }) only
    [
      Erdos848.globalMixedBitVecCount,
      Erdos848.GlobalMixedEvenBitVecRows.counts,
      Erdos848.GlobalMixedEvenCounts.toBitVec,
      evenK7TerminalGroup0006FinalRows0000,
      evenK7TerminalGroup0006Row0000,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0000,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0001,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0004,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0011,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0016,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0026,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0040,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0058,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0106,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0158,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0310,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0410,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0526,      ]
  simp

#print axioms evenK7TerminalGroup0006_counts

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
