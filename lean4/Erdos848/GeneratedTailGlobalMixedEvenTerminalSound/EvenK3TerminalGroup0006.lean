import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.TailGlobalMixedEvenTerminalActualSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK3TerminalGroup0006
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0006

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

private def emptyBitVecCounts : Erdos848.GlobalMixedEvenBitVecCounts :=
  (0, 0, 0, 0, 0, 0, 0, 0)

theorem evenK3TerminalGroup0006_normal_lookup_eq
    {p : Nat} (hp : p ∈ [523, 541]) :
    normalQrMaskWords p = evenK3TerminalGroup0006NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl
  · simpa [evenK3TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0006 (p := 523) (by norm_num) (by norm_num))
  · simpa [evenK3TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0006 (p := 541) (by norm_num) (by norm_num))

theorem evenK3TerminalGroup0006_twist_lookup_eq
    {p : Nat} (hp : p ∈ [523, 541]) :
    twistQrMaskWords p = evenK3TerminalGroup0006TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl
  · simpa [evenK3TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0006 (p := 523) (by norm_num) (by norm_num))
  · simpa [evenK3TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0006 (p := 541) (by norm_num) (by norm_num))

theorem evenK3TerminalGroup0006Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK3TerminalGroup0006Row0000.maskedPrefix = evenK3TerminalGroup0006FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK3TerminalGroup0006_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK3TerminalGroup0006NormalLookup
          evenK3TerminalGroup0006TwistLookup [523] evenK3TerminalGroup0006CommonRows = evenK3TerminalGroup0006FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK3TerminalGroup0006NormalLookup
          evenK3TerminalGroup0006TwistLookup [523] = evenK3TerminalGroup0006FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK3TerminalGroup0006NormalLookup
          evenK3TerminalGroup0006TwistLookup [523] =
        Erdos848.globalMixedBitVecContinueRows evenK3TerminalGroup0006NormalLookup
          evenK3TerminalGroup0006TwistLookup [523]
          (Erdos848.globalMixedBitVecRestrictedRows evenK3TerminalGroup0006NormalLookup
            evenK3TerminalGroup0006TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK3TerminalGroup0006NormalLookup evenK3TerminalGroup0006TwistLookup
          [] [523]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK3TerminalGroup0006NormalLookup
          evenK3TerminalGroup0006TwistLookup [523] evenK3TerminalGroup0006CommonRows := by
        rw [evenK3TerminalGroup0006_common_rows]
      _ = evenK3TerminalGroup0006FinalRows0000 := hcontinued
  rw [show evenK3TerminalGroup0006Row0000.maskedPrefix = [523] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [523] =
      Erdos848.globalMixedBitVecRestrictedRows evenK3TerminalGroup0006NormalLookup
        evenK3TerminalGroup0006TwistLookup [523] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK3TerminalGroup0006_normal_lookup_eq
        simp at hp
        rcases hp with rfl
        all_goals simp
      · intro p hp
        apply evenK3TerminalGroup0006_twist_lookup_eq
        simp at hp
        rcases hp with rfl
        all_goals simp
    _ = evenK3TerminalGroup0006FinalRows0000 := hlocal

theorem evenK3TerminalGroup0006Row0000_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK3TerminalGroup0006Row0000.maskedPrefix).counts = evenK3TerminalGroup0006Row0000.counts.toBitVec := by
  rw [evenK3TerminalGroup0006Row0000_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 0 emptyBitVecCounts) evenK3TerminalGroup0006_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK3TerminalGroup0006Row0000_counts_fit :
    evenK3TerminalGroup0006Row0000.counts.FitsBitVec64 := by
  norm_num [evenK3TerminalGroup0006Row0000, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK3TerminalGroup0006Row0001_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK3TerminalGroup0006Row0001.maskedPrefix = evenK3TerminalGroup0006FinalRows0001 := by
  have hrow := congrArg
    (fun rows => rows.getD 1 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK3TerminalGroup0006_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK3TerminalGroup0006NormalLookup
          evenK3TerminalGroup0006TwistLookup [541] evenK3TerminalGroup0006CommonRows = evenK3TerminalGroup0006FinalRows0001 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK3TerminalGroup0006NormalLookup
          evenK3TerminalGroup0006TwistLookup [541] = evenK3TerminalGroup0006FinalRows0001 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK3TerminalGroup0006NormalLookup
          evenK3TerminalGroup0006TwistLookup [541] =
        Erdos848.globalMixedBitVecContinueRows evenK3TerminalGroup0006NormalLookup
          evenK3TerminalGroup0006TwistLookup [541]
          (Erdos848.globalMixedBitVecRestrictedRows evenK3TerminalGroup0006NormalLookup
            evenK3TerminalGroup0006TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK3TerminalGroup0006NormalLookup evenK3TerminalGroup0006TwistLookup
          [] [541]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK3TerminalGroup0006NormalLookup
          evenK3TerminalGroup0006TwistLookup [541] evenK3TerminalGroup0006CommonRows := by
        rw [evenK3TerminalGroup0006_common_rows]
      _ = evenK3TerminalGroup0006FinalRows0001 := hcontinued
  rw [show evenK3TerminalGroup0006Row0001.maskedPrefix = [541] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [541] =
      Erdos848.globalMixedBitVecRestrictedRows evenK3TerminalGroup0006NormalLookup
        evenK3TerminalGroup0006TwistLookup [541] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK3TerminalGroup0006_normal_lookup_eq
        simp at hp
        rcases hp with rfl
        all_goals simp
      · intro p hp
        apply evenK3TerminalGroup0006_twist_lookup_eq
        simp at hp
        rcases hp with rfl
        all_goals simp
    _ = evenK3TerminalGroup0006FinalRows0001 := hlocal

theorem evenK3TerminalGroup0006Row0001_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK3TerminalGroup0006Row0001.maskedPrefix).counts = evenK3TerminalGroup0006Row0001.counts.toBitVec := by
  rw [evenK3TerminalGroup0006Row0001_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 1 emptyBitVecCounts) evenK3TerminalGroup0006_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK3TerminalGroup0006Row0001_counts_fit :
    evenK3TerminalGroup0006Row0001.counts.FitsBitVec64 := by
  norm_num [evenK3TerminalGroup0006Row0001, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

#print axioms evenK3TerminalGroup0006Row0001_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
