import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK7Leaf0017Data
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.WordCounts
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK7TerminalGroup0017_counts :
    [
      evenK7TerminalGroup0017FinalRows0000.counts
    ] =
    [
      evenK7TerminalGroup0017Row0000.counts.toBitVec
    ] := by
  simp (config := { maxSteps := 1000000 }) only
    [
      Erdos848.globalMixedBitVecCount,
      Erdos848.GlobalMixedEvenBitVecRows.counts,
      Erdos848.GlobalMixedEvenCounts.toBitVec,
      evenK7TerminalGroup0017FinalRows0000,
      evenK7TerminalGroup0017Row0000,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0000,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0001,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0002,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0004,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0007,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0011,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0016,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0026,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0040,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0058,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0080,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0106,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0158,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0168,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0226,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0227,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0310,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0312,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0410,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0526,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0527,      ]
  simp

#print axioms evenK7TerminalGroup0017_counts

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
