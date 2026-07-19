import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK7Leaf0008Data
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.WordCounts
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK7TerminalGroup0008_counts :
    [
      evenK7TerminalGroup0008FinalRows0000.counts
    ] =
    [
      evenK7TerminalGroup0008Row0000.counts.toBitVec
    ] := by
  simp (config := { maxSteps := 1000000 }) only
    [
      Erdos848.globalMixedBitVecCount,
      Erdos848.GlobalMixedEvenBitVecRows.counts,
      Erdos848.GlobalMixedEvenCounts.toBitVec,
      evenK7TerminalGroup0008FinalRows0000,
      evenK7TerminalGroup0008Row0000,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0000,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0001,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0002,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0004,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0007,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0011,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0016,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0026,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0058,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0106,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0310,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0410,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0526,      ]
  simp

#print axioms evenK7TerminalGroup0008_counts

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
