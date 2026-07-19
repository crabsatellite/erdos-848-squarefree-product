import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0283CommonSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0283RowsSound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

theorem evenK6TerminalGroup0283_normal_lookup_eq
    {p : Nat} (hp : p ∈ [11, 13, 17]) :
    normalQrMaskWords p = evenK6TerminalGroup0283NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl
  · simpa [evenK6TerminalGroup0283NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0283NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 13) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0283NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 17) (by norm_num) (by norm_num))

theorem evenK6TerminalGroup0283_twist_lookup_eq
    {p : Nat} (hp : p ∈ [11, 13, 17]) :
    twistQrMaskWords p = evenK6TerminalGroup0283TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl
  · simpa [evenK6TerminalGroup0283TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0283TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 13) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0283TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 17) (by norm_num) (by norm_num))

theorem evenK6TerminalGroup0283Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK6TerminalGroup0283Row0000.maskedPrefix = evenK6TerminalGroup0283FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK6TerminalGroup0283_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0283NormalLookup
          evenK6TerminalGroup0283TwistLookup [] evenK6TerminalGroup0283CommonRows = evenK6TerminalGroup0283FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0283NormalLookup
          evenK6TerminalGroup0283TwistLookup [11, 13, 17] = evenK6TerminalGroup0283FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0283NormalLookup
          evenK6TerminalGroup0283TwistLookup [11, 13, 17] =
        Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0283NormalLookup
          evenK6TerminalGroup0283TwistLookup []
          (Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0283NormalLookup
            evenK6TerminalGroup0283TwistLookup [11, 13, 17]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK6TerminalGroup0283NormalLookup evenK6TerminalGroup0283TwistLookup
          [11, 13, 17] []).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0283NormalLookup
          evenK6TerminalGroup0283TwistLookup [] evenK6TerminalGroup0283CommonRows := by
        rw [evenK6TerminalGroup0283_common_rows]
      _ = evenK6TerminalGroup0283FinalRows0000 := hcontinued
  rw [show evenK6TerminalGroup0283Row0000.maskedPrefix = [11, 13, 17] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 13, 17] =
      Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0283NormalLookup
        evenK6TerminalGroup0283TwistLookup [11, 13, 17] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK6TerminalGroup0283_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK6TerminalGroup0283_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK6TerminalGroup0283FinalRows0000 := hlocal

#print axioms evenK6TerminalGroup0283Row0000_global_rows

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
