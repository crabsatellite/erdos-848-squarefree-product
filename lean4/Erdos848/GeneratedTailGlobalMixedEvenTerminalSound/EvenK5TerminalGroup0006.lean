import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.TailGlobalMixedEvenTerminalActualSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK5TerminalGroup0006
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0002
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0003

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

private def emptyBitVecCounts : Erdos848.GlobalMixedEvenBitVecCounts :=
  (0, 0, 0, 0, 0, 0, 0, 0)

theorem evenK5TerminalGroup0006_normal_lookup_eq
    {p : Nat} (hp : p ∈ [3, 11, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269]) :
    normalQrMaskWords p = evenK5TerminalGroup0006NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK5TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 181) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 191) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 193) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 197) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 199) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 211) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 223) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 227) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 229) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 233) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 239) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 241) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 251) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 257) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 263) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 269) (by norm_num) (by norm_num))

theorem evenK5TerminalGroup0006_twist_lookup_eq
    {p : Nat} (hp : p ∈ [3, 11, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269]) :
    twistQrMaskWords p = evenK5TerminalGroup0006TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK5TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 181) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 191) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 193) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 197) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 199) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 211) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 223) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 227) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 229) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 233) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 239) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 241) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 251) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 257) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 263) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0006TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 269) (by norm_num) (by norm_num))

theorem evenK5TerminalGroup0006Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0000.maskedPrefix = evenK5TerminalGroup0006FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0006_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [181] evenK5TerminalGroup0006CommonRows = evenK5TerminalGroup0006FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 181] = evenK5TerminalGroup0006FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 181] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [181]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
            evenK5TerminalGroup0006TwistLookup [3, 11]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0006NormalLookup evenK5TerminalGroup0006TwistLookup
          [3, 11] [181]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [181] evenK5TerminalGroup0006CommonRows := by
        rw [evenK5TerminalGroup0006_common_rows]
      _ = evenK5TerminalGroup0006FinalRows0000 := hcontinued
  rw [show evenK5TerminalGroup0006Row0000.maskedPrefix = [3, 11, 181] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 181] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
        evenK5TerminalGroup0006TwistLookup [3, 11, 181] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0006_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0006_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0006FinalRows0000 := hlocal

theorem evenK5TerminalGroup0006Row0000_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0000.maskedPrefix).counts = evenK5TerminalGroup0006Row0000.counts.toBitVec := by
  rw [evenK5TerminalGroup0006Row0000_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 0 emptyBitVecCounts) evenK5TerminalGroup0006_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0006Row0000_counts_fit :
    evenK5TerminalGroup0006Row0000.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0006Row0000, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0006Row0001_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0001.maskedPrefix = evenK5TerminalGroup0006FinalRows0001 := by
  have hrow := congrArg
    (fun rows => rows.getD 1 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0006_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [191] evenK5TerminalGroup0006CommonRows = evenK5TerminalGroup0006FinalRows0001 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 191] = evenK5TerminalGroup0006FinalRows0001 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 191] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [191]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
            evenK5TerminalGroup0006TwistLookup [3, 11]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0006NormalLookup evenK5TerminalGroup0006TwistLookup
          [3, 11] [191]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [191] evenK5TerminalGroup0006CommonRows := by
        rw [evenK5TerminalGroup0006_common_rows]
      _ = evenK5TerminalGroup0006FinalRows0001 := hcontinued
  rw [show evenK5TerminalGroup0006Row0001.maskedPrefix = [3, 11, 191] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 191] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
        evenK5TerminalGroup0006TwistLookup [3, 11, 191] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0006_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0006_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0006FinalRows0001 := hlocal

theorem evenK5TerminalGroup0006Row0001_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0001.maskedPrefix).counts = evenK5TerminalGroup0006Row0001.counts.toBitVec := by
  rw [evenK5TerminalGroup0006Row0001_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 1 emptyBitVecCounts) evenK5TerminalGroup0006_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0006Row0001_counts_fit :
    evenK5TerminalGroup0006Row0001.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0006Row0001, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0006Row0002_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0002.maskedPrefix = evenK5TerminalGroup0006FinalRows0002 := by
  have hrow := congrArg
    (fun rows => rows.getD 2 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0006_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [193] evenK5TerminalGroup0006CommonRows = evenK5TerminalGroup0006FinalRows0002 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 193] = evenK5TerminalGroup0006FinalRows0002 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 193] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [193]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
            evenK5TerminalGroup0006TwistLookup [3, 11]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0006NormalLookup evenK5TerminalGroup0006TwistLookup
          [3, 11] [193]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [193] evenK5TerminalGroup0006CommonRows := by
        rw [evenK5TerminalGroup0006_common_rows]
      _ = evenK5TerminalGroup0006FinalRows0002 := hcontinued
  rw [show evenK5TerminalGroup0006Row0002.maskedPrefix = [3, 11, 193] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 193] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
        evenK5TerminalGroup0006TwistLookup [3, 11, 193] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0006_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0006_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0006FinalRows0002 := hlocal

theorem evenK5TerminalGroup0006Row0002_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0002.maskedPrefix).counts = evenK5TerminalGroup0006Row0002.counts.toBitVec := by
  rw [evenK5TerminalGroup0006Row0002_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 2 emptyBitVecCounts) evenK5TerminalGroup0006_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0006Row0002_counts_fit :
    evenK5TerminalGroup0006Row0002.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0006Row0002, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0006Row0003_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0003.maskedPrefix = evenK5TerminalGroup0006FinalRows0003 := by
  have hrow := congrArg
    (fun rows => rows.getD 3 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0006_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [197] evenK5TerminalGroup0006CommonRows = evenK5TerminalGroup0006FinalRows0003 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 197] = evenK5TerminalGroup0006FinalRows0003 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 197] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [197]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
            evenK5TerminalGroup0006TwistLookup [3, 11]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0006NormalLookup evenK5TerminalGroup0006TwistLookup
          [3, 11] [197]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [197] evenK5TerminalGroup0006CommonRows := by
        rw [evenK5TerminalGroup0006_common_rows]
      _ = evenK5TerminalGroup0006FinalRows0003 := hcontinued
  rw [show evenK5TerminalGroup0006Row0003.maskedPrefix = [3, 11, 197] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 197] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
        evenK5TerminalGroup0006TwistLookup [3, 11, 197] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0006_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0006_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0006FinalRows0003 := hlocal

theorem evenK5TerminalGroup0006Row0003_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0003.maskedPrefix).counts = evenK5TerminalGroup0006Row0003.counts.toBitVec := by
  rw [evenK5TerminalGroup0006Row0003_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 3 emptyBitVecCounts) evenK5TerminalGroup0006_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0006Row0003_counts_fit :
    evenK5TerminalGroup0006Row0003.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0006Row0003, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0006Row0004_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0004.maskedPrefix = evenK5TerminalGroup0006FinalRows0004 := by
  have hrow := congrArg
    (fun rows => rows.getD 4 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0006_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [199] evenK5TerminalGroup0006CommonRows = evenK5TerminalGroup0006FinalRows0004 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 199] = evenK5TerminalGroup0006FinalRows0004 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 199] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [199]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
            evenK5TerminalGroup0006TwistLookup [3, 11]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0006NormalLookup evenK5TerminalGroup0006TwistLookup
          [3, 11] [199]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [199] evenK5TerminalGroup0006CommonRows := by
        rw [evenK5TerminalGroup0006_common_rows]
      _ = evenK5TerminalGroup0006FinalRows0004 := hcontinued
  rw [show evenK5TerminalGroup0006Row0004.maskedPrefix = [3, 11, 199] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 199] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
        evenK5TerminalGroup0006TwistLookup [3, 11, 199] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0006_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0006_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0006FinalRows0004 := hlocal

theorem evenK5TerminalGroup0006Row0004_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0004.maskedPrefix).counts = evenK5TerminalGroup0006Row0004.counts.toBitVec := by
  rw [evenK5TerminalGroup0006Row0004_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 4 emptyBitVecCounts) evenK5TerminalGroup0006_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0006Row0004_counts_fit :
    evenK5TerminalGroup0006Row0004.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0006Row0004, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0006Row0005_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0005.maskedPrefix = evenK5TerminalGroup0006FinalRows0005 := by
  have hrow := congrArg
    (fun rows => rows.getD 5 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0006_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [211] evenK5TerminalGroup0006CommonRows = evenK5TerminalGroup0006FinalRows0005 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 211] = evenK5TerminalGroup0006FinalRows0005 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 211] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [211]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
            evenK5TerminalGroup0006TwistLookup [3, 11]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0006NormalLookup evenK5TerminalGroup0006TwistLookup
          [3, 11] [211]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [211] evenK5TerminalGroup0006CommonRows := by
        rw [evenK5TerminalGroup0006_common_rows]
      _ = evenK5TerminalGroup0006FinalRows0005 := hcontinued
  rw [show evenK5TerminalGroup0006Row0005.maskedPrefix = [3, 11, 211] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 211] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
        evenK5TerminalGroup0006TwistLookup [3, 11, 211] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0006_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0006_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0006FinalRows0005 := hlocal

theorem evenK5TerminalGroup0006Row0005_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0005.maskedPrefix).counts = evenK5TerminalGroup0006Row0005.counts.toBitVec := by
  rw [evenK5TerminalGroup0006Row0005_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 5 emptyBitVecCounts) evenK5TerminalGroup0006_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0006Row0005_counts_fit :
    evenK5TerminalGroup0006Row0005.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0006Row0005, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0006Row0006_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0006.maskedPrefix = evenK5TerminalGroup0006FinalRows0006 := by
  have hrow := congrArg
    (fun rows => rows.getD 6 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0006_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [223] evenK5TerminalGroup0006CommonRows = evenK5TerminalGroup0006FinalRows0006 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 223] = evenK5TerminalGroup0006FinalRows0006 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 223] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [223]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
            evenK5TerminalGroup0006TwistLookup [3, 11]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0006NormalLookup evenK5TerminalGroup0006TwistLookup
          [3, 11] [223]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [223] evenK5TerminalGroup0006CommonRows := by
        rw [evenK5TerminalGroup0006_common_rows]
      _ = evenK5TerminalGroup0006FinalRows0006 := hcontinued
  rw [show evenK5TerminalGroup0006Row0006.maskedPrefix = [3, 11, 223] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 223] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
        evenK5TerminalGroup0006TwistLookup [3, 11, 223] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0006_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0006_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0006FinalRows0006 := hlocal

theorem evenK5TerminalGroup0006Row0006_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0006.maskedPrefix).counts = evenK5TerminalGroup0006Row0006.counts.toBitVec := by
  rw [evenK5TerminalGroup0006Row0006_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 6 emptyBitVecCounts) evenK5TerminalGroup0006_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0006Row0006_counts_fit :
    evenK5TerminalGroup0006Row0006.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0006Row0006, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0006Row0007_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0007.maskedPrefix = evenK5TerminalGroup0006FinalRows0007 := by
  have hrow := congrArg
    (fun rows => rows.getD 7 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0006_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [227] evenK5TerminalGroup0006CommonRows = evenK5TerminalGroup0006FinalRows0007 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 227] = evenK5TerminalGroup0006FinalRows0007 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 227] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [227]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
            evenK5TerminalGroup0006TwistLookup [3, 11]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0006NormalLookup evenK5TerminalGroup0006TwistLookup
          [3, 11] [227]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [227] evenK5TerminalGroup0006CommonRows := by
        rw [evenK5TerminalGroup0006_common_rows]
      _ = evenK5TerminalGroup0006FinalRows0007 := hcontinued
  rw [show evenK5TerminalGroup0006Row0007.maskedPrefix = [3, 11, 227] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 227] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
        evenK5TerminalGroup0006TwistLookup [3, 11, 227] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0006_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0006_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0006FinalRows0007 := hlocal

theorem evenK5TerminalGroup0006Row0007_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0007.maskedPrefix).counts = evenK5TerminalGroup0006Row0007.counts.toBitVec := by
  rw [evenK5TerminalGroup0006Row0007_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 7 emptyBitVecCounts) evenK5TerminalGroup0006_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0006Row0007_counts_fit :
    evenK5TerminalGroup0006Row0007.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0006Row0007, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0006Row0008_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0008.maskedPrefix = evenK5TerminalGroup0006FinalRows0008 := by
  have hrow := congrArg
    (fun rows => rows.getD 8 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0006_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [229] evenK5TerminalGroup0006CommonRows = evenK5TerminalGroup0006FinalRows0008 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 229] = evenK5TerminalGroup0006FinalRows0008 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 229] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [229]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
            evenK5TerminalGroup0006TwistLookup [3, 11]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0006NormalLookup evenK5TerminalGroup0006TwistLookup
          [3, 11] [229]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [229] evenK5TerminalGroup0006CommonRows := by
        rw [evenK5TerminalGroup0006_common_rows]
      _ = evenK5TerminalGroup0006FinalRows0008 := hcontinued
  rw [show evenK5TerminalGroup0006Row0008.maskedPrefix = [3, 11, 229] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 229] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
        evenK5TerminalGroup0006TwistLookup [3, 11, 229] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0006_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0006_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0006FinalRows0008 := hlocal

theorem evenK5TerminalGroup0006Row0008_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0008.maskedPrefix).counts = evenK5TerminalGroup0006Row0008.counts.toBitVec := by
  rw [evenK5TerminalGroup0006Row0008_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 8 emptyBitVecCounts) evenK5TerminalGroup0006_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0006Row0008_counts_fit :
    evenK5TerminalGroup0006Row0008.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0006Row0008, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0006Row0009_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0009.maskedPrefix = evenK5TerminalGroup0006FinalRows0009 := by
  have hrow := congrArg
    (fun rows => rows.getD 9 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0006_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [233] evenK5TerminalGroup0006CommonRows = evenK5TerminalGroup0006FinalRows0009 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 233] = evenK5TerminalGroup0006FinalRows0009 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 233] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [233]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
            evenK5TerminalGroup0006TwistLookup [3, 11]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0006NormalLookup evenK5TerminalGroup0006TwistLookup
          [3, 11] [233]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [233] evenK5TerminalGroup0006CommonRows := by
        rw [evenK5TerminalGroup0006_common_rows]
      _ = evenK5TerminalGroup0006FinalRows0009 := hcontinued
  rw [show evenK5TerminalGroup0006Row0009.maskedPrefix = [3, 11, 233] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 233] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
        evenK5TerminalGroup0006TwistLookup [3, 11, 233] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0006_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0006_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0006FinalRows0009 := hlocal

theorem evenK5TerminalGroup0006Row0009_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0009.maskedPrefix).counts = evenK5TerminalGroup0006Row0009.counts.toBitVec := by
  rw [evenK5TerminalGroup0006Row0009_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 9 emptyBitVecCounts) evenK5TerminalGroup0006_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0006Row0009_counts_fit :
    evenK5TerminalGroup0006Row0009.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0006Row0009, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0006Row0010_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0010.maskedPrefix = evenK5TerminalGroup0006FinalRows0010 := by
  have hrow := congrArg
    (fun rows => rows.getD 10 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0006_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [239] evenK5TerminalGroup0006CommonRows = evenK5TerminalGroup0006FinalRows0010 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 239] = evenK5TerminalGroup0006FinalRows0010 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 239] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [239]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
            evenK5TerminalGroup0006TwistLookup [3, 11]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0006NormalLookup evenK5TerminalGroup0006TwistLookup
          [3, 11] [239]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [239] evenK5TerminalGroup0006CommonRows := by
        rw [evenK5TerminalGroup0006_common_rows]
      _ = evenK5TerminalGroup0006FinalRows0010 := hcontinued
  rw [show evenK5TerminalGroup0006Row0010.maskedPrefix = [3, 11, 239] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 239] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
        evenK5TerminalGroup0006TwistLookup [3, 11, 239] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0006_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0006_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0006FinalRows0010 := hlocal

theorem evenK5TerminalGroup0006Row0010_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0010.maskedPrefix).counts = evenK5TerminalGroup0006Row0010.counts.toBitVec := by
  rw [evenK5TerminalGroup0006Row0010_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 10 emptyBitVecCounts) evenK5TerminalGroup0006_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0006Row0010_counts_fit :
    evenK5TerminalGroup0006Row0010.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0006Row0010, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0006Row0011_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0011.maskedPrefix = evenK5TerminalGroup0006FinalRows0011 := by
  have hrow := congrArg
    (fun rows => rows.getD 11 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0006_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [241] evenK5TerminalGroup0006CommonRows = evenK5TerminalGroup0006FinalRows0011 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 241] = evenK5TerminalGroup0006FinalRows0011 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 241] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [241]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
            evenK5TerminalGroup0006TwistLookup [3, 11]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0006NormalLookup evenK5TerminalGroup0006TwistLookup
          [3, 11] [241]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [241] evenK5TerminalGroup0006CommonRows := by
        rw [evenK5TerminalGroup0006_common_rows]
      _ = evenK5TerminalGroup0006FinalRows0011 := hcontinued
  rw [show evenK5TerminalGroup0006Row0011.maskedPrefix = [3, 11, 241] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 241] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
        evenK5TerminalGroup0006TwistLookup [3, 11, 241] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0006_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0006_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0006FinalRows0011 := hlocal

theorem evenK5TerminalGroup0006Row0011_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0011.maskedPrefix).counts = evenK5TerminalGroup0006Row0011.counts.toBitVec := by
  rw [evenK5TerminalGroup0006Row0011_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 11 emptyBitVecCounts) evenK5TerminalGroup0006_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0006Row0011_counts_fit :
    evenK5TerminalGroup0006Row0011.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0006Row0011, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0006Row0012_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0012.maskedPrefix = evenK5TerminalGroup0006FinalRows0012 := by
  have hrow := congrArg
    (fun rows => rows.getD 12 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0006_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [251] evenK5TerminalGroup0006CommonRows = evenK5TerminalGroup0006FinalRows0012 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 251] = evenK5TerminalGroup0006FinalRows0012 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 251] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [251]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
            evenK5TerminalGroup0006TwistLookup [3, 11]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0006NormalLookup evenK5TerminalGroup0006TwistLookup
          [3, 11] [251]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [251] evenK5TerminalGroup0006CommonRows := by
        rw [evenK5TerminalGroup0006_common_rows]
      _ = evenK5TerminalGroup0006FinalRows0012 := hcontinued
  rw [show evenK5TerminalGroup0006Row0012.maskedPrefix = [3, 11, 251] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 251] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
        evenK5TerminalGroup0006TwistLookup [3, 11, 251] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0006_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0006_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0006FinalRows0012 := hlocal

theorem evenK5TerminalGroup0006Row0012_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0012.maskedPrefix).counts = evenK5TerminalGroup0006Row0012.counts.toBitVec := by
  rw [evenK5TerminalGroup0006Row0012_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 12 emptyBitVecCounts) evenK5TerminalGroup0006_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0006Row0012_counts_fit :
    evenK5TerminalGroup0006Row0012.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0006Row0012, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0006Row0013_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0013.maskedPrefix = evenK5TerminalGroup0006FinalRows0013 := by
  have hrow := congrArg
    (fun rows => rows.getD 13 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0006_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [257] evenK5TerminalGroup0006CommonRows = evenK5TerminalGroup0006FinalRows0013 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 257] = evenK5TerminalGroup0006FinalRows0013 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 257] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [257]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
            evenK5TerminalGroup0006TwistLookup [3, 11]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0006NormalLookup evenK5TerminalGroup0006TwistLookup
          [3, 11] [257]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [257] evenK5TerminalGroup0006CommonRows := by
        rw [evenK5TerminalGroup0006_common_rows]
      _ = evenK5TerminalGroup0006FinalRows0013 := hcontinued
  rw [show evenK5TerminalGroup0006Row0013.maskedPrefix = [3, 11, 257] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 257] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
        evenK5TerminalGroup0006TwistLookup [3, 11, 257] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0006_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0006_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0006FinalRows0013 := hlocal

theorem evenK5TerminalGroup0006Row0013_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0013.maskedPrefix).counts = evenK5TerminalGroup0006Row0013.counts.toBitVec := by
  rw [evenK5TerminalGroup0006Row0013_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 13 emptyBitVecCounts) evenK5TerminalGroup0006_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0006Row0013_counts_fit :
    evenK5TerminalGroup0006Row0013.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0006Row0013, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0006Row0014_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0014.maskedPrefix = evenK5TerminalGroup0006FinalRows0014 := by
  have hrow := congrArg
    (fun rows => rows.getD 14 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0006_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [263] evenK5TerminalGroup0006CommonRows = evenK5TerminalGroup0006FinalRows0014 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 263] = evenK5TerminalGroup0006FinalRows0014 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 263] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [263]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
            evenK5TerminalGroup0006TwistLookup [3, 11]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0006NormalLookup evenK5TerminalGroup0006TwistLookup
          [3, 11] [263]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [263] evenK5TerminalGroup0006CommonRows := by
        rw [evenK5TerminalGroup0006_common_rows]
      _ = evenK5TerminalGroup0006FinalRows0014 := hcontinued
  rw [show evenK5TerminalGroup0006Row0014.maskedPrefix = [3, 11, 263] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 263] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
        evenK5TerminalGroup0006TwistLookup [3, 11, 263] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0006_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0006_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0006FinalRows0014 := hlocal

theorem evenK5TerminalGroup0006Row0014_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0014.maskedPrefix).counts = evenK5TerminalGroup0006Row0014.counts.toBitVec := by
  rw [evenK5TerminalGroup0006Row0014_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 14 emptyBitVecCounts) evenK5TerminalGroup0006_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0006Row0014_counts_fit :
    evenK5TerminalGroup0006Row0014.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0006Row0014, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0006Row0015_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0015.maskedPrefix = evenK5TerminalGroup0006FinalRows0015 := by
  have hrow := congrArg
    (fun rows => rows.getD 15 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0006_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [269] evenK5TerminalGroup0006CommonRows = evenK5TerminalGroup0006FinalRows0015 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 269] = evenK5TerminalGroup0006FinalRows0015 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [3, 11, 269] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [269]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
            evenK5TerminalGroup0006TwistLookup [3, 11]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0006NormalLookup evenK5TerminalGroup0006TwistLookup
          [3, 11] [269]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0006NormalLookup
          evenK5TerminalGroup0006TwistLookup [269] evenK5TerminalGroup0006CommonRows := by
        rw [evenK5TerminalGroup0006_common_rows]
      _ = evenK5TerminalGroup0006FinalRows0015 := hcontinued
  rw [show evenK5TerminalGroup0006Row0015.maskedPrefix = [3, 11, 269] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 269] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0006NormalLookup
        evenK5TerminalGroup0006TwistLookup [3, 11, 269] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0006_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0006_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0006FinalRows0015 := hlocal

theorem evenK5TerminalGroup0006Row0015_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0006Row0015.maskedPrefix).counts = evenK5TerminalGroup0006Row0015.counts.toBitVec := by
  rw [evenK5TerminalGroup0006Row0015_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 15 emptyBitVecCounts) evenK5TerminalGroup0006_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0006Row0015_counts_fit :
    evenK5TerminalGroup0006Row0015.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0006Row0015, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

#print axioms evenK5TerminalGroup0006Row0015_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
