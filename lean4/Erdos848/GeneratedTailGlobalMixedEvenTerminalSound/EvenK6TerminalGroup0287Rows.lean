import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0287CommonSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0287RowsSound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

theorem evenK6TerminalGroup0287_normal_lookup_eq
    {p : Nat} (hp : p ∈ [11, 13, 31]) :
    normalQrMaskWords p = evenK6TerminalGroup0287NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl
  · simpa [evenK6TerminalGroup0287NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0287NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 13) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0287NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 31) (by norm_num) (by norm_num))

theorem evenK6TerminalGroup0287_twist_lookup_eq
    {p : Nat} (hp : p ∈ [11, 13, 31]) :
    twistQrMaskWords p = evenK6TerminalGroup0287TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl
  · simpa [evenK6TerminalGroup0287TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0287TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 13) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0287TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 31) (by norm_num) (by norm_num))

theorem evenK6TerminalGroup0287Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK6TerminalGroup0287Row0000.maskedPrefix = evenK6TerminalGroup0287FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK6TerminalGroup0287_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0287NormalLookup
          evenK6TerminalGroup0287TwistLookup [] evenK6TerminalGroup0287CommonRows = evenK6TerminalGroup0287FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0287NormalLookup
          evenK6TerminalGroup0287TwistLookup [11, 13, 31] = evenK6TerminalGroup0287FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0287NormalLookup
          evenK6TerminalGroup0287TwistLookup [11, 13, 31] =
        Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0287NormalLookup
          evenK6TerminalGroup0287TwistLookup []
          (Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0287NormalLookup
            evenK6TerminalGroup0287TwistLookup [11, 13, 31]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK6TerminalGroup0287NormalLookup evenK6TerminalGroup0287TwistLookup
          [11, 13, 31] []).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0287NormalLookup
          evenK6TerminalGroup0287TwistLookup [] evenK6TerminalGroup0287CommonRows := by
        rw [evenK6TerminalGroup0287_common_rows]
      _ = evenK6TerminalGroup0287FinalRows0000 := hcontinued
  rw [show evenK6TerminalGroup0287Row0000.maskedPrefix = [11, 13, 31] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 13, 31] =
      Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0287NormalLookup
        evenK6TerminalGroup0287TwistLookup [11, 13, 31] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK6TerminalGroup0287_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK6TerminalGroup0287_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK6TerminalGroup0287FinalRows0000 := hlocal

#print axioms evenK6TerminalGroup0287Row0000_global_rows

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
