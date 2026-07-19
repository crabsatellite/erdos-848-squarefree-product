import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0226CommonSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0226RowsSound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

theorem evenK6TerminalGroup0226_normal_lookup_eq
    {p : Nat} (hp : p ∈ [3, 13, 17]) :
    normalQrMaskWords p = evenK6TerminalGroup0226NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl
  · simpa [evenK6TerminalGroup0226NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0226NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 13) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0226NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 17) (by norm_num) (by norm_num))

theorem evenK6TerminalGroup0226_twist_lookup_eq
    {p : Nat} (hp : p ∈ [3, 13, 17]) :
    twistQrMaskWords p = evenK6TerminalGroup0226TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl
  · simpa [evenK6TerminalGroup0226TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0226TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 13) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0226TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 17) (by norm_num) (by norm_num))

theorem evenK6TerminalGroup0226Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK6TerminalGroup0226Row0000.maskedPrefix = evenK6TerminalGroup0226FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK6TerminalGroup0226_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0226NormalLookup
          evenK6TerminalGroup0226TwistLookup [] evenK6TerminalGroup0226CommonRows = evenK6TerminalGroup0226FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0226NormalLookup
          evenK6TerminalGroup0226TwistLookup [3, 13, 17] = evenK6TerminalGroup0226FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0226NormalLookup
          evenK6TerminalGroup0226TwistLookup [3, 13, 17] =
        Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0226NormalLookup
          evenK6TerminalGroup0226TwistLookup []
          (Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0226NormalLookup
            evenK6TerminalGroup0226TwistLookup [3, 13, 17]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK6TerminalGroup0226NormalLookup evenK6TerminalGroup0226TwistLookup
          [3, 13, 17] []).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0226NormalLookup
          evenK6TerminalGroup0226TwistLookup [] evenK6TerminalGroup0226CommonRows := by
        rw [evenK6TerminalGroup0226_common_rows]
      _ = evenK6TerminalGroup0226FinalRows0000 := hcontinued
  rw [show evenK6TerminalGroup0226Row0000.maskedPrefix = [3, 13, 17] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 13, 17] =
      Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0226NormalLookup
        evenK6TerminalGroup0226TwistLookup [3, 13, 17] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK6TerminalGroup0226_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK6TerminalGroup0226_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK6TerminalGroup0226FinalRows0000 := hlocal

#print axioms evenK6TerminalGroup0226Row0000_global_rows

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
