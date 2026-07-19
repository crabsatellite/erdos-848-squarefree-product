import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0051CommonSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0051RowsSound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0001

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

theorem evenK6TerminalGroup0051_normal_lookup_eq
    {p : Nat} (hp : p ∈ [3, 7, 13, 83]) :
    normalQrMaskWords p = evenK6TerminalGroup0051NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl
  · simpa [evenK6TerminalGroup0051NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0051NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 7) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0051NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 13) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0051NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 83) (by norm_num) (by norm_num))

theorem evenK6TerminalGroup0051_twist_lookup_eq
    {p : Nat} (hp : p ∈ [3, 7, 13, 83]) :
    twistQrMaskWords p = evenK6TerminalGroup0051TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl
  · simpa [evenK6TerminalGroup0051TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0051TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 7) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0051TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 13) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0051TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 83) (by norm_num) (by norm_num))

theorem evenK6TerminalGroup0051Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK6TerminalGroup0051Row0000.maskedPrefix = evenK6TerminalGroup0051FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK6TerminalGroup0051_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0051NormalLookup
          evenK6TerminalGroup0051TwistLookup [] evenK6TerminalGroup0051CommonRows = evenK6TerminalGroup0051FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0051NormalLookup
          evenK6TerminalGroup0051TwistLookup [3, 7, 13, 83] = evenK6TerminalGroup0051FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0051NormalLookup
          evenK6TerminalGroup0051TwistLookup [3, 7, 13, 83] =
        Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0051NormalLookup
          evenK6TerminalGroup0051TwistLookup []
          (Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0051NormalLookup
            evenK6TerminalGroup0051TwistLookup [3, 7, 13, 83]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK6TerminalGroup0051NormalLookup evenK6TerminalGroup0051TwistLookup
          [3, 7, 13, 83] []).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0051NormalLookup
          evenK6TerminalGroup0051TwistLookup [] evenK6TerminalGroup0051CommonRows := by
        rw [evenK6TerminalGroup0051_common_rows]
      _ = evenK6TerminalGroup0051FinalRows0000 := hcontinued
  rw [show evenK6TerminalGroup0051Row0000.maskedPrefix = [3, 7, 13, 83] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 7, 13, 83] =
      Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0051NormalLookup
        evenK6TerminalGroup0051TwistLookup [3, 7, 13, 83] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK6TerminalGroup0051_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK6TerminalGroup0051_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK6TerminalGroup0051FinalRows0000 := hlocal

#print axioms evenK6TerminalGroup0051Row0000_global_rows

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
