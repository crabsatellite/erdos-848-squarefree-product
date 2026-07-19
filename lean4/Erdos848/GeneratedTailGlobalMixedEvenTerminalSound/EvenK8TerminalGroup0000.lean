import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK8TerminalGroup0000Rows
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK8Leaf0000CountsSound
import Erdos848.TailGlobalMixedEvenTerminalActualSound
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

private def emptyBitVecCounts : Erdos848.GlobalMixedEvenBitVecCounts :=
  (0, 0, 0, 0, 0, 0, 0, 0)

theorem evenK8TerminalGroup0000Row0000_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK8TerminalGroup0000Row0000.maskedPrefix).counts = evenK8TerminalGroup0000Row0000.counts.toBitVec := by
  rw [evenK8TerminalGroup0000Row0000_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 0 emptyBitVecCounts) evenK8TerminalGroup0000_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK8TerminalGroup0000Row0000_counts_fit :
    evenK8TerminalGroup0000Row0000.counts.FitsBitVec64 := by
  norm_num [evenK8TerminalGroup0000Row0000, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

#print axioms evenK8TerminalGroup0000Row0000_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
