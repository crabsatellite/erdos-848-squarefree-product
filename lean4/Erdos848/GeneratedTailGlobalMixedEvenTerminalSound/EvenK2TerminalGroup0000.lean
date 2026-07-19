import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.TailGlobalMixedEvenTerminalActualSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK2TerminalGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

private def emptyBitVecCounts : Erdos848.GlobalMixedEvenBitVecCounts :=
  (0, 0, 0, 0, 0, 0, 0, 0)

theorem evenK2TerminalGroup0000_normal_lookup_eq
    {p : Nat} (hp : p ∈ []) :
    normalQrMaskWords p = evenK2TerminalGroup0000NormalLookup p := by
  simp at hp

theorem evenK2TerminalGroup0000_twist_lookup_eq
    {p : Nat} (hp : p ∈ []) :
    twistQrMaskWords p = evenK2TerminalGroup0000TwistLookup p := by
  simp at hp

theorem evenK2TerminalGroup0000Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK2TerminalGroup0000Row0000.maskedPrefix = evenK2TerminalGroup0000FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK2TerminalGroup0000_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK2TerminalGroup0000NormalLookup
          evenK2TerminalGroup0000TwistLookup [] evenK2TerminalGroup0000CommonRows = evenK2TerminalGroup0000FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK2TerminalGroup0000NormalLookup
          evenK2TerminalGroup0000TwistLookup [] = evenK2TerminalGroup0000FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK2TerminalGroup0000NormalLookup
          evenK2TerminalGroup0000TwistLookup [] =
        Erdos848.globalMixedBitVecContinueRows evenK2TerminalGroup0000NormalLookup
          evenK2TerminalGroup0000TwistLookup []
          (Erdos848.globalMixedBitVecRestrictedRows evenK2TerminalGroup0000NormalLookup
            evenK2TerminalGroup0000TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK2TerminalGroup0000NormalLookup evenK2TerminalGroup0000TwistLookup
          [] []).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK2TerminalGroup0000NormalLookup
          evenK2TerminalGroup0000TwistLookup [] evenK2TerminalGroup0000CommonRows := by
        rw [evenK2TerminalGroup0000_common_rows]
      _ = evenK2TerminalGroup0000FinalRows0000 := hcontinued
  rw [show evenK2TerminalGroup0000Row0000.maskedPrefix = [] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [] =
      Erdos848.globalMixedBitVecRestrictedRows evenK2TerminalGroup0000NormalLookup
        evenK2TerminalGroup0000TwistLookup [] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        simp at hp
      · intro p hp
        simp at hp
    _ = evenK2TerminalGroup0000FinalRows0000 := hlocal

theorem evenK2TerminalGroup0000Row0000_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK2TerminalGroup0000Row0000.maskedPrefix).counts = evenK2TerminalGroup0000Row0000.counts.toBitVec := by
  rw [evenK2TerminalGroup0000Row0000_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 0 emptyBitVecCounts) evenK2TerminalGroup0000_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK2TerminalGroup0000Row0000_counts_fit :
    evenK2TerminalGroup0000Row0000.counts.FitsBitVec64 := by
  norm_num [evenK2TerminalGroup0000Row0000, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

#print axioms evenK2TerminalGroup0000Row0000_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
