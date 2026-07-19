import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK8Leaf0001CommonSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK8Leaf0001RowsSound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

theorem evenK8TerminalGroup0001_normal_lookup_eq
    {p : Nat} (hp : p ∈ [3, 11]) :
    normalQrMaskWords p = evenK8TerminalGroup0001NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl
  · simpa [evenK8TerminalGroup0001NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK8TerminalGroup0001NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))

theorem evenK8TerminalGroup0001_twist_lookup_eq
    {p : Nat} (hp : p ∈ [3, 11]) :
    twistQrMaskWords p = evenK8TerminalGroup0001TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl
  · simpa [evenK8TerminalGroup0001TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK8TerminalGroup0001TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))

theorem evenK8TerminalGroup0001Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK8TerminalGroup0001Row0000.maskedPrefix = evenK8TerminalGroup0001FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK8TerminalGroup0001_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK8TerminalGroup0001NormalLookup
          evenK8TerminalGroup0001TwistLookup [] evenK8TerminalGroup0001CommonRows = evenK8TerminalGroup0001FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK8TerminalGroup0001NormalLookup
          evenK8TerminalGroup0001TwistLookup [3, 11] = evenK8TerminalGroup0001FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK8TerminalGroup0001NormalLookup
          evenK8TerminalGroup0001TwistLookup [3, 11] =
        Erdos848.globalMixedBitVecContinueRows evenK8TerminalGroup0001NormalLookup
          evenK8TerminalGroup0001TwistLookup []
          (Erdos848.globalMixedBitVecRestrictedRows evenK8TerminalGroup0001NormalLookup
            evenK8TerminalGroup0001TwistLookup [3, 11]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK8TerminalGroup0001NormalLookup evenK8TerminalGroup0001TwistLookup
          [3, 11] []).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK8TerminalGroup0001NormalLookup
          evenK8TerminalGroup0001TwistLookup [] evenK8TerminalGroup0001CommonRows := by
        rw [evenK8TerminalGroup0001_common_rows]
      _ = evenK8TerminalGroup0001FinalRows0000 := hcontinued
  rw [show evenK8TerminalGroup0001Row0000.maskedPrefix = [3, 11] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11] =
      Erdos848.globalMixedBitVecRestrictedRows evenK8TerminalGroup0001NormalLookup
        evenK8TerminalGroup0001TwistLookup [3, 11] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK8TerminalGroup0001_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK8TerminalGroup0001_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK8TerminalGroup0001FinalRows0000 := hlocal

#print axioms evenK8TerminalGroup0001Row0000_global_rows

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
