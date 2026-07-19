import Erdos848.GeneratedTailGlobalMixedEvenTerminalSound.EvenK6TerminalGroup0132Rows
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0132CountsSound
import Erdos848.TailGlobalMixedEvenTerminalActualSound
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

private def emptyBitVecCounts : Erdos848.GlobalMixedEvenBitVecCounts :=
  (0, 0, 0, 0, 0, 0, 0, 0)

theorem evenK6TerminalGroup0132Row0000_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK6TerminalGroup0132Row0000.maskedPrefix).counts = evenK6TerminalGroup0132Row0000.counts.toBitVec := by
  rw [evenK6TerminalGroup0132Row0000_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 0 emptyBitVecCounts) evenK6TerminalGroup0132_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK6TerminalGroup0132Row0000_counts_fit :
    evenK6TerminalGroup0132Row0000.counts.FitsBitVec64 := by
  norm_num [evenK6TerminalGroup0132Row0000, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

#print axioms evenK6TerminalGroup0132Row0000_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
