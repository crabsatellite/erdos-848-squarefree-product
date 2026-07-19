import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0110CommonSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK6Leaf0110RowsSound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

theorem evenK6TerminalGroup0110_normal_lookup_eq
    {p : Nat} (hp : p ∈ [3, 11, 13, 17, 19]) :
    normalQrMaskWords p = evenK6TerminalGroup0110NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl
  · simpa [evenK6TerminalGroup0110NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0110NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0110NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 13) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0110NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 17) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0110NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 19) (by norm_num) (by norm_num))

theorem evenK6TerminalGroup0110_twist_lookup_eq
    {p : Nat} (hp : p ∈ [3, 11, 13, 17, 19]) :
    twistQrMaskWords p = evenK6TerminalGroup0110TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl
  · simpa [evenK6TerminalGroup0110TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0110TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0110TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 13) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0110TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 17) (by norm_num) (by norm_num))
  · simpa [evenK6TerminalGroup0110TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 19) (by norm_num) (by norm_num))

theorem evenK6TerminalGroup0110Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK6TerminalGroup0110Row0000.maskedPrefix = evenK6TerminalGroup0110FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK6TerminalGroup0110_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0110NormalLookup
          evenK6TerminalGroup0110TwistLookup [] evenK6TerminalGroup0110CommonRows = evenK6TerminalGroup0110FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0110NormalLookup
          evenK6TerminalGroup0110TwistLookup [3, 11, 13, 17, 19] = evenK6TerminalGroup0110FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0110NormalLookup
          evenK6TerminalGroup0110TwistLookup [3, 11, 13, 17, 19] =
        Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0110NormalLookup
          evenK6TerminalGroup0110TwistLookup []
          (Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0110NormalLookup
            evenK6TerminalGroup0110TwistLookup [3, 11, 13, 17, 19]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK6TerminalGroup0110NormalLookup evenK6TerminalGroup0110TwistLookup
          [3, 11, 13, 17, 19] []).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK6TerminalGroup0110NormalLookup
          evenK6TerminalGroup0110TwistLookup [] evenK6TerminalGroup0110CommonRows := by
        rw [evenK6TerminalGroup0110_common_rows]
      _ = evenK6TerminalGroup0110FinalRows0000 := hcontinued
  rw [show evenK6TerminalGroup0110Row0000.maskedPrefix = [3, 11, 13, 17, 19] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 13, 17, 19] =
      Erdos848.globalMixedBitVecRestrictedRows evenK6TerminalGroup0110NormalLookup
        evenK6TerminalGroup0110TwistLookup [3, 11, 13, 17, 19] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK6TerminalGroup0110_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK6TerminalGroup0110_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK6TerminalGroup0110FinalRows0000 := hlocal

#print axioms evenK6TerminalGroup0110Row0000_global_rows

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
