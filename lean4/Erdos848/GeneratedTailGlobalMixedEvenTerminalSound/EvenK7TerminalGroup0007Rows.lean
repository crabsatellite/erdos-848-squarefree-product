import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK7Leaf0007CommonSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK7Leaf0007RowsSound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

theorem evenK7TerminalGroup0007_normal_lookup_eq
    {p : Nat} (hp : p ∈ [3, 7, 11, 41]) :
    normalQrMaskWords p = evenK7TerminalGroup0007NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl
  · simpa [evenK7TerminalGroup0007NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK7TerminalGroup0007NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 7) (by norm_num) (by norm_num))
  · simpa [evenK7TerminalGroup0007NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK7TerminalGroup0007NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 41) (by norm_num) (by norm_num))

theorem evenK7TerminalGroup0007_twist_lookup_eq
    {p : Nat} (hp : p ∈ [3, 7, 11, 41]) :
    twistQrMaskWords p = evenK7TerminalGroup0007TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl
  · simpa [evenK7TerminalGroup0007TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK7TerminalGroup0007TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 7) (by norm_num) (by norm_num))
  · simpa [evenK7TerminalGroup0007TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK7TerminalGroup0007TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 41) (by norm_num) (by norm_num))

theorem evenK7TerminalGroup0007Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK7TerminalGroup0007Row0000.maskedPrefix = evenK7TerminalGroup0007FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK7TerminalGroup0007_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK7TerminalGroup0007NormalLookup
          evenK7TerminalGroup0007TwistLookup [] evenK7TerminalGroup0007CommonRows = evenK7TerminalGroup0007FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK7TerminalGroup0007NormalLookup
          evenK7TerminalGroup0007TwistLookup [3, 7, 11, 41] = evenK7TerminalGroup0007FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK7TerminalGroup0007NormalLookup
          evenK7TerminalGroup0007TwistLookup [3, 7, 11, 41] =
        Erdos848.globalMixedBitVecContinueRows evenK7TerminalGroup0007NormalLookup
          evenK7TerminalGroup0007TwistLookup []
          (Erdos848.globalMixedBitVecRestrictedRows evenK7TerminalGroup0007NormalLookup
            evenK7TerminalGroup0007TwistLookup [3, 7, 11, 41]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK7TerminalGroup0007NormalLookup evenK7TerminalGroup0007TwistLookup
          [3, 7, 11, 41] []).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK7TerminalGroup0007NormalLookup
          evenK7TerminalGroup0007TwistLookup [] evenK7TerminalGroup0007CommonRows := by
        rw [evenK7TerminalGroup0007_common_rows]
      _ = evenK7TerminalGroup0007FinalRows0000 := hcontinued
  rw [show evenK7TerminalGroup0007Row0000.maskedPrefix = [3, 7, 11, 41] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 7, 11, 41] =
      Erdos848.globalMixedBitVecRestrictedRows evenK7TerminalGroup0007NormalLookup
        evenK7TerminalGroup0007TwistLookup [3, 7, 11, 41] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK7TerminalGroup0007_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK7TerminalGroup0007_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK7TerminalGroup0007FinalRows0000 := hlocal

#print axioms evenK7TerminalGroup0007Row0000_global_rows

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
