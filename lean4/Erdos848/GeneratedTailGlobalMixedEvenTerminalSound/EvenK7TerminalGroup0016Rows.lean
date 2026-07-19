import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK7Leaf0016CommonSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK7Leaf0016RowsSound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

theorem evenK7TerminalGroup0016_normal_lookup_eq
    {p : Nat} (hp : p ∈ [3, 11, 13]) :
    normalQrMaskWords p = evenK7TerminalGroup0016NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl
  · simpa [evenK7TerminalGroup0016NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK7TerminalGroup0016NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK7TerminalGroup0016NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 13) (by norm_num) (by norm_num))

theorem evenK7TerminalGroup0016_twist_lookup_eq
    {p : Nat} (hp : p ∈ [3, 11, 13]) :
    twistQrMaskWords p = evenK7TerminalGroup0016TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl
  · simpa [evenK7TerminalGroup0016TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK7TerminalGroup0016TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK7TerminalGroup0016TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 13) (by norm_num) (by norm_num))

theorem evenK7TerminalGroup0016Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK7TerminalGroup0016Row0000.maskedPrefix = evenK7TerminalGroup0016FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK7TerminalGroup0016_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK7TerminalGroup0016NormalLookup
          evenK7TerminalGroup0016TwistLookup [] evenK7TerminalGroup0016CommonRows = evenK7TerminalGroup0016FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK7TerminalGroup0016NormalLookup
          evenK7TerminalGroup0016TwistLookup [3, 11, 13] = evenK7TerminalGroup0016FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK7TerminalGroup0016NormalLookup
          evenK7TerminalGroup0016TwistLookup [3, 11, 13] =
        Erdos848.globalMixedBitVecContinueRows evenK7TerminalGroup0016NormalLookup
          evenK7TerminalGroup0016TwistLookup []
          (Erdos848.globalMixedBitVecRestrictedRows evenK7TerminalGroup0016NormalLookup
            evenK7TerminalGroup0016TwistLookup [3, 11, 13]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK7TerminalGroup0016NormalLookup evenK7TerminalGroup0016TwistLookup
          [3, 11, 13] []).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK7TerminalGroup0016NormalLookup
          evenK7TerminalGroup0016TwistLookup [] evenK7TerminalGroup0016CommonRows := by
        rw [evenK7TerminalGroup0016_common_rows]
      _ = evenK7TerminalGroup0016FinalRows0000 := hcontinued
  rw [show evenK7TerminalGroup0016Row0000.maskedPrefix = [3, 11, 13] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 13] =
      Erdos848.globalMixedBitVecRestrictedRows evenK7TerminalGroup0016NormalLookup
        evenK7TerminalGroup0016TwistLookup [3, 11, 13] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK7TerminalGroup0016_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK7TerminalGroup0016_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK7TerminalGroup0016FinalRows0000 := hlocal

#print axioms evenK7TerminalGroup0016Row0000_global_rows

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
