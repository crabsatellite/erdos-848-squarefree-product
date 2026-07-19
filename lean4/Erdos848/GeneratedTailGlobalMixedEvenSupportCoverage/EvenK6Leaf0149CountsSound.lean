import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0149Data
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.WordCounts
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem evenK6TerminalGroup0149_counts :
    [
      evenK6TerminalGroup0149FinalRows0000.counts
    ] =
    [
      evenK6TerminalGroup0149Row0000.counts.toBitVec
    ] := by
  simp (config := { maxSteps := 1000000 }) only
    [
      Erdos848.globalMixedBitVecCount,
      Erdos848.GlobalMixedEvenBitVecRows.counts,
      Erdos848.GlobalMixedEvenCounts.toBitVec,
      evenK6TerminalGroup0149FinalRows0000,
      evenK6TerminalGroup0149Row0000,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0000,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0001,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0004,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0011,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0016,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0026,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0058,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0106,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0226,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0227,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0310,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0410,
      Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.certifiedWordCount0526,      ]
  simp

#print axioms evenK6TerminalGroup0149_counts

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
