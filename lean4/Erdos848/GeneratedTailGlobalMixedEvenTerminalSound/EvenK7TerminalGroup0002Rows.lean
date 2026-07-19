import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK7Leaf0002CommonSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK7Leaf0002RowsSound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

theorem evenK7TerminalGroup0002_normal_lookup_eq
    {p : Nat} (hp : p ∈ [3, 7, 11, 19]) :
    normalQrMaskWords p = evenK7TerminalGroup0002NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl
  · simpa [evenK7TerminalGroup0002NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK7TerminalGroup0002NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 7) (by norm_num) (by norm_num))
  · simpa [evenK7TerminalGroup0002NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK7TerminalGroup0002NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 19) (by norm_num) (by norm_num))

theorem evenK7TerminalGroup0002_twist_lookup_eq
    {p : Nat} (hp : p ∈ [3, 7, 11, 19]) :
    twistQrMaskWords p = evenK7TerminalGroup0002TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl
  · simpa [evenK7TerminalGroup0002TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK7TerminalGroup0002TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 7) (by norm_num) (by norm_num))
  · simpa [evenK7TerminalGroup0002TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK7TerminalGroup0002TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 19) (by norm_num) (by norm_num))

theorem evenK7TerminalGroup0002Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK7TerminalGroup0002Row0000.maskedPrefix = evenK7TerminalGroup0002FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK7TerminalGroup0002_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK7TerminalGroup0002NormalLookup
          evenK7TerminalGroup0002TwistLookup [] evenK7TerminalGroup0002CommonRows = evenK7TerminalGroup0002FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK7TerminalGroup0002NormalLookup
          evenK7TerminalGroup0002TwistLookup [3, 7, 11, 19] = evenK7TerminalGroup0002FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK7TerminalGroup0002NormalLookup
          evenK7TerminalGroup0002TwistLookup [3, 7, 11, 19] =
        Erdos848.globalMixedBitVecContinueRows evenK7TerminalGroup0002NormalLookup
          evenK7TerminalGroup0002TwistLookup []
          (Erdos848.globalMixedBitVecRestrictedRows evenK7TerminalGroup0002NormalLookup
            evenK7TerminalGroup0002TwistLookup [3, 7, 11, 19]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK7TerminalGroup0002NormalLookup evenK7TerminalGroup0002TwistLookup
          [3, 7, 11, 19] []).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK7TerminalGroup0002NormalLookup
          evenK7TerminalGroup0002TwistLookup [] evenK7TerminalGroup0002CommonRows := by
        rw [evenK7TerminalGroup0002_common_rows]
      _ = evenK7TerminalGroup0002FinalRows0000 := hcontinued
  rw [show evenK7TerminalGroup0002Row0000.maskedPrefix = [3, 7, 11, 19] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 7, 11, 19] =
      Erdos848.globalMixedBitVecRestrictedRows evenK7TerminalGroup0002NormalLookup
        evenK7TerminalGroup0002TwistLookup [3, 7, 11, 19] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK7TerminalGroup0002_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK7TerminalGroup0002_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK7TerminalGroup0002FinalRows0000 := hlocal

#print axioms evenK7TerminalGroup0002Row0000_global_rows

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
