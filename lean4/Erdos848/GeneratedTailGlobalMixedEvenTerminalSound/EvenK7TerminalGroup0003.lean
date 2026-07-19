import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK7TerminalGroup0003Rows
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK7Leaf0003CountsSound
import Erdos848.TailGlobalMixedEvenTerminalActualSound
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

private def emptyBitVecCounts : Erdos848.GlobalMixedEvenBitVecCounts :=
  (0, 0, 0, 0, 0, 0, 0, 0)

theorem evenK7TerminalGroup0003Row0000_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK7TerminalGroup0003Row0000.maskedPrefix).counts = evenK7TerminalGroup0003Row0000.counts.toBitVec := by
  rw [evenK7TerminalGroup0003Row0000_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 0 emptyBitVecCounts) evenK7TerminalGroup0003_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK7TerminalGroup0003Row0000_counts_fit :
    evenK7TerminalGroup0003Row0000.counts.FitsBitVec64 := by
  norm_num [evenK7TerminalGroup0003Row0000, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

#print axioms evenK7TerminalGroup0003Row0000_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
