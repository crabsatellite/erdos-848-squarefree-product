import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.TailGlobalMixedEvenTerminalActualSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK4TerminalGroup0020
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0001

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

private def emptyBitVecCounts : Erdos848.GlobalMixedEvenBitVecCounts :=
  (0, 0, 0, 0, 0, 0, 0, 0)

theorem evenK4TerminalGroup0020_normal_lookup_eq
    {p : Nat} (hp : p ∈ [19, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103]) :
    normalQrMaskWords p = evenK4TerminalGroup0020NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK4TerminalGroup0020NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 19) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 37) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 41) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 43) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 47) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 53) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 59) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 61) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 67) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 71) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 73) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 79) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 83) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 89) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 97) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 101) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 103) (by norm_num) (by norm_num))

theorem evenK4TerminalGroup0020_twist_lookup_eq
    {p : Nat} (hp : p ∈ [19, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103]) :
    twistQrMaskWords p = evenK4TerminalGroup0020TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK4TerminalGroup0020TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 19) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 37) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 41) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 43) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 47) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 53) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 59) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 61) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 67) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 71) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 73) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 79) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 83) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 89) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 97) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 101) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0020TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 103) (by norm_num) (by norm_num))

theorem evenK4TerminalGroup0020Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0000.maskedPrefix = evenK4TerminalGroup0020FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0020_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [37] evenK4TerminalGroup0020CommonRows = evenK4TerminalGroup0020FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 37] = evenK4TerminalGroup0020FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 37] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [37]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
            evenK4TerminalGroup0020TwistLookup [19]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0020NormalLookup evenK4TerminalGroup0020TwistLookup
          [19] [37]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [37] evenK4TerminalGroup0020CommonRows := by
        rw [evenK4TerminalGroup0020_common_rows]
      _ = evenK4TerminalGroup0020FinalRows0000 := hcontinued
  rw [show evenK4TerminalGroup0020Row0000.maskedPrefix = [19, 37] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [19, 37] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
        evenK4TerminalGroup0020TwistLookup [19, 37] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0020_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0020_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0020FinalRows0000 := hlocal

theorem evenK4TerminalGroup0020Row0000_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0000.maskedPrefix).counts = evenK4TerminalGroup0020Row0000.counts.toBitVec := by
  rw [evenK4TerminalGroup0020Row0000_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 0 emptyBitVecCounts) evenK4TerminalGroup0020_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0020Row0000_counts_fit :
    evenK4TerminalGroup0020Row0000.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0020Row0000, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0020Row0001_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0001.maskedPrefix = evenK4TerminalGroup0020FinalRows0001 := by
  have hrow := congrArg
    (fun rows => rows.getD 1 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0020_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [41] evenK4TerminalGroup0020CommonRows = evenK4TerminalGroup0020FinalRows0001 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 41] = evenK4TerminalGroup0020FinalRows0001 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 41] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [41]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
            evenK4TerminalGroup0020TwistLookup [19]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0020NormalLookup evenK4TerminalGroup0020TwistLookup
          [19] [41]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [41] evenK4TerminalGroup0020CommonRows := by
        rw [evenK4TerminalGroup0020_common_rows]
      _ = evenK4TerminalGroup0020FinalRows0001 := hcontinued
  rw [show evenK4TerminalGroup0020Row0001.maskedPrefix = [19, 41] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [19, 41] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
        evenK4TerminalGroup0020TwistLookup [19, 41] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0020_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0020_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0020FinalRows0001 := hlocal

theorem evenK4TerminalGroup0020Row0001_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0001.maskedPrefix).counts = evenK4TerminalGroup0020Row0001.counts.toBitVec := by
  rw [evenK4TerminalGroup0020Row0001_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 1 emptyBitVecCounts) evenK4TerminalGroup0020_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0020Row0001_counts_fit :
    evenK4TerminalGroup0020Row0001.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0020Row0001, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0020Row0002_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0002.maskedPrefix = evenK4TerminalGroup0020FinalRows0002 := by
  have hrow := congrArg
    (fun rows => rows.getD 2 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0020_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [43] evenK4TerminalGroup0020CommonRows = evenK4TerminalGroup0020FinalRows0002 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 43] = evenK4TerminalGroup0020FinalRows0002 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 43] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [43]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
            evenK4TerminalGroup0020TwistLookup [19]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0020NormalLookup evenK4TerminalGroup0020TwistLookup
          [19] [43]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [43] evenK4TerminalGroup0020CommonRows := by
        rw [evenK4TerminalGroup0020_common_rows]
      _ = evenK4TerminalGroup0020FinalRows0002 := hcontinued
  rw [show evenK4TerminalGroup0020Row0002.maskedPrefix = [19, 43] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [19, 43] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
        evenK4TerminalGroup0020TwistLookup [19, 43] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0020_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0020_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0020FinalRows0002 := hlocal

theorem evenK4TerminalGroup0020Row0002_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0002.maskedPrefix).counts = evenK4TerminalGroup0020Row0002.counts.toBitVec := by
  rw [evenK4TerminalGroup0020Row0002_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 2 emptyBitVecCounts) evenK4TerminalGroup0020_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0020Row0002_counts_fit :
    evenK4TerminalGroup0020Row0002.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0020Row0002, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0020Row0003_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0003.maskedPrefix = evenK4TerminalGroup0020FinalRows0003 := by
  have hrow := congrArg
    (fun rows => rows.getD 3 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0020_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [47] evenK4TerminalGroup0020CommonRows = evenK4TerminalGroup0020FinalRows0003 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 47] = evenK4TerminalGroup0020FinalRows0003 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 47] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [47]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
            evenK4TerminalGroup0020TwistLookup [19]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0020NormalLookup evenK4TerminalGroup0020TwistLookup
          [19] [47]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [47] evenK4TerminalGroup0020CommonRows := by
        rw [evenK4TerminalGroup0020_common_rows]
      _ = evenK4TerminalGroup0020FinalRows0003 := hcontinued
  rw [show evenK4TerminalGroup0020Row0003.maskedPrefix = [19, 47] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [19, 47] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
        evenK4TerminalGroup0020TwistLookup [19, 47] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0020_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0020_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0020FinalRows0003 := hlocal

theorem evenK4TerminalGroup0020Row0003_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0003.maskedPrefix).counts = evenK4TerminalGroup0020Row0003.counts.toBitVec := by
  rw [evenK4TerminalGroup0020Row0003_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 3 emptyBitVecCounts) evenK4TerminalGroup0020_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0020Row0003_counts_fit :
    evenK4TerminalGroup0020Row0003.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0020Row0003, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0020Row0004_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0004.maskedPrefix = evenK4TerminalGroup0020FinalRows0004 := by
  have hrow := congrArg
    (fun rows => rows.getD 4 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0020_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [53] evenK4TerminalGroup0020CommonRows = evenK4TerminalGroup0020FinalRows0004 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 53] = evenK4TerminalGroup0020FinalRows0004 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 53] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [53]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
            evenK4TerminalGroup0020TwistLookup [19]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0020NormalLookup evenK4TerminalGroup0020TwistLookup
          [19] [53]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [53] evenK4TerminalGroup0020CommonRows := by
        rw [evenK4TerminalGroup0020_common_rows]
      _ = evenK4TerminalGroup0020FinalRows0004 := hcontinued
  rw [show evenK4TerminalGroup0020Row0004.maskedPrefix = [19, 53] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [19, 53] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
        evenK4TerminalGroup0020TwistLookup [19, 53] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0020_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0020_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0020FinalRows0004 := hlocal

theorem evenK4TerminalGroup0020Row0004_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0004.maskedPrefix).counts = evenK4TerminalGroup0020Row0004.counts.toBitVec := by
  rw [evenK4TerminalGroup0020Row0004_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 4 emptyBitVecCounts) evenK4TerminalGroup0020_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0020Row0004_counts_fit :
    evenK4TerminalGroup0020Row0004.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0020Row0004, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0020Row0005_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0005.maskedPrefix = evenK4TerminalGroup0020FinalRows0005 := by
  have hrow := congrArg
    (fun rows => rows.getD 5 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0020_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [59] evenK4TerminalGroup0020CommonRows = evenK4TerminalGroup0020FinalRows0005 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 59] = evenK4TerminalGroup0020FinalRows0005 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 59] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [59]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
            evenK4TerminalGroup0020TwistLookup [19]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0020NormalLookup evenK4TerminalGroup0020TwistLookup
          [19] [59]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [59] evenK4TerminalGroup0020CommonRows := by
        rw [evenK4TerminalGroup0020_common_rows]
      _ = evenK4TerminalGroup0020FinalRows0005 := hcontinued
  rw [show evenK4TerminalGroup0020Row0005.maskedPrefix = [19, 59] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [19, 59] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
        evenK4TerminalGroup0020TwistLookup [19, 59] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0020_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0020_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0020FinalRows0005 := hlocal

theorem evenK4TerminalGroup0020Row0005_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0005.maskedPrefix).counts = evenK4TerminalGroup0020Row0005.counts.toBitVec := by
  rw [evenK4TerminalGroup0020Row0005_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 5 emptyBitVecCounts) evenK4TerminalGroup0020_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0020Row0005_counts_fit :
    evenK4TerminalGroup0020Row0005.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0020Row0005, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0020Row0006_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0006.maskedPrefix = evenK4TerminalGroup0020FinalRows0006 := by
  have hrow := congrArg
    (fun rows => rows.getD 6 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0020_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [61] evenK4TerminalGroup0020CommonRows = evenK4TerminalGroup0020FinalRows0006 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 61] = evenK4TerminalGroup0020FinalRows0006 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 61] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [61]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
            evenK4TerminalGroup0020TwistLookup [19]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0020NormalLookup evenK4TerminalGroup0020TwistLookup
          [19] [61]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [61] evenK4TerminalGroup0020CommonRows := by
        rw [evenK4TerminalGroup0020_common_rows]
      _ = evenK4TerminalGroup0020FinalRows0006 := hcontinued
  rw [show evenK4TerminalGroup0020Row0006.maskedPrefix = [19, 61] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [19, 61] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
        evenK4TerminalGroup0020TwistLookup [19, 61] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0020_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0020_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0020FinalRows0006 := hlocal

theorem evenK4TerminalGroup0020Row0006_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0006.maskedPrefix).counts = evenK4TerminalGroup0020Row0006.counts.toBitVec := by
  rw [evenK4TerminalGroup0020Row0006_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 6 emptyBitVecCounts) evenK4TerminalGroup0020_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0020Row0006_counts_fit :
    evenK4TerminalGroup0020Row0006.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0020Row0006, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0020Row0007_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0007.maskedPrefix = evenK4TerminalGroup0020FinalRows0007 := by
  have hrow := congrArg
    (fun rows => rows.getD 7 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0020_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [67] evenK4TerminalGroup0020CommonRows = evenK4TerminalGroup0020FinalRows0007 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 67] = evenK4TerminalGroup0020FinalRows0007 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 67] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [67]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
            evenK4TerminalGroup0020TwistLookup [19]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0020NormalLookup evenK4TerminalGroup0020TwistLookup
          [19] [67]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [67] evenK4TerminalGroup0020CommonRows := by
        rw [evenK4TerminalGroup0020_common_rows]
      _ = evenK4TerminalGroup0020FinalRows0007 := hcontinued
  rw [show evenK4TerminalGroup0020Row0007.maskedPrefix = [19, 67] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [19, 67] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
        evenK4TerminalGroup0020TwistLookup [19, 67] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0020_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0020_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0020FinalRows0007 := hlocal

theorem evenK4TerminalGroup0020Row0007_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0007.maskedPrefix).counts = evenK4TerminalGroup0020Row0007.counts.toBitVec := by
  rw [evenK4TerminalGroup0020Row0007_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 7 emptyBitVecCounts) evenK4TerminalGroup0020_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0020Row0007_counts_fit :
    evenK4TerminalGroup0020Row0007.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0020Row0007, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0020Row0008_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0008.maskedPrefix = evenK4TerminalGroup0020FinalRows0008 := by
  have hrow := congrArg
    (fun rows => rows.getD 8 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0020_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [71] evenK4TerminalGroup0020CommonRows = evenK4TerminalGroup0020FinalRows0008 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 71] = evenK4TerminalGroup0020FinalRows0008 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 71] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [71]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
            evenK4TerminalGroup0020TwistLookup [19]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0020NormalLookup evenK4TerminalGroup0020TwistLookup
          [19] [71]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [71] evenK4TerminalGroup0020CommonRows := by
        rw [evenK4TerminalGroup0020_common_rows]
      _ = evenK4TerminalGroup0020FinalRows0008 := hcontinued
  rw [show evenK4TerminalGroup0020Row0008.maskedPrefix = [19, 71] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [19, 71] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
        evenK4TerminalGroup0020TwistLookup [19, 71] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0020_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0020_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0020FinalRows0008 := hlocal

theorem evenK4TerminalGroup0020Row0008_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0008.maskedPrefix).counts = evenK4TerminalGroup0020Row0008.counts.toBitVec := by
  rw [evenK4TerminalGroup0020Row0008_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 8 emptyBitVecCounts) evenK4TerminalGroup0020_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0020Row0008_counts_fit :
    evenK4TerminalGroup0020Row0008.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0020Row0008, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0020Row0009_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0009.maskedPrefix = evenK4TerminalGroup0020FinalRows0009 := by
  have hrow := congrArg
    (fun rows => rows.getD 9 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0020_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [73] evenK4TerminalGroup0020CommonRows = evenK4TerminalGroup0020FinalRows0009 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 73] = evenK4TerminalGroup0020FinalRows0009 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 73] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [73]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
            evenK4TerminalGroup0020TwistLookup [19]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0020NormalLookup evenK4TerminalGroup0020TwistLookup
          [19] [73]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [73] evenK4TerminalGroup0020CommonRows := by
        rw [evenK4TerminalGroup0020_common_rows]
      _ = evenK4TerminalGroup0020FinalRows0009 := hcontinued
  rw [show evenK4TerminalGroup0020Row0009.maskedPrefix = [19, 73] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [19, 73] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
        evenK4TerminalGroup0020TwistLookup [19, 73] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0020_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0020_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0020FinalRows0009 := hlocal

theorem evenK4TerminalGroup0020Row0009_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0009.maskedPrefix).counts = evenK4TerminalGroup0020Row0009.counts.toBitVec := by
  rw [evenK4TerminalGroup0020Row0009_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 9 emptyBitVecCounts) evenK4TerminalGroup0020_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0020Row0009_counts_fit :
    evenK4TerminalGroup0020Row0009.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0020Row0009, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0020Row0010_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0010.maskedPrefix = evenK4TerminalGroup0020FinalRows0010 := by
  have hrow := congrArg
    (fun rows => rows.getD 10 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0020_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [79] evenK4TerminalGroup0020CommonRows = evenK4TerminalGroup0020FinalRows0010 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 79] = evenK4TerminalGroup0020FinalRows0010 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 79] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [79]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
            evenK4TerminalGroup0020TwistLookup [19]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0020NormalLookup evenK4TerminalGroup0020TwistLookup
          [19] [79]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [79] evenK4TerminalGroup0020CommonRows := by
        rw [evenK4TerminalGroup0020_common_rows]
      _ = evenK4TerminalGroup0020FinalRows0010 := hcontinued
  rw [show evenK4TerminalGroup0020Row0010.maskedPrefix = [19, 79] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [19, 79] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
        evenK4TerminalGroup0020TwistLookup [19, 79] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0020_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0020_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0020FinalRows0010 := hlocal

theorem evenK4TerminalGroup0020Row0010_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0010.maskedPrefix).counts = evenK4TerminalGroup0020Row0010.counts.toBitVec := by
  rw [evenK4TerminalGroup0020Row0010_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 10 emptyBitVecCounts) evenK4TerminalGroup0020_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0020Row0010_counts_fit :
    evenK4TerminalGroup0020Row0010.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0020Row0010, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0020Row0011_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0011.maskedPrefix = evenK4TerminalGroup0020FinalRows0011 := by
  have hrow := congrArg
    (fun rows => rows.getD 11 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0020_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [83] evenK4TerminalGroup0020CommonRows = evenK4TerminalGroup0020FinalRows0011 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 83] = evenK4TerminalGroup0020FinalRows0011 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 83] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [83]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
            evenK4TerminalGroup0020TwistLookup [19]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0020NormalLookup evenK4TerminalGroup0020TwistLookup
          [19] [83]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [83] evenK4TerminalGroup0020CommonRows := by
        rw [evenK4TerminalGroup0020_common_rows]
      _ = evenK4TerminalGroup0020FinalRows0011 := hcontinued
  rw [show evenK4TerminalGroup0020Row0011.maskedPrefix = [19, 83] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [19, 83] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
        evenK4TerminalGroup0020TwistLookup [19, 83] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0020_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0020_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0020FinalRows0011 := hlocal

theorem evenK4TerminalGroup0020Row0011_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0011.maskedPrefix).counts = evenK4TerminalGroup0020Row0011.counts.toBitVec := by
  rw [evenK4TerminalGroup0020Row0011_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 11 emptyBitVecCounts) evenK4TerminalGroup0020_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0020Row0011_counts_fit :
    evenK4TerminalGroup0020Row0011.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0020Row0011, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0020Row0012_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0012.maskedPrefix = evenK4TerminalGroup0020FinalRows0012 := by
  have hrow := congrArg
    (fun rows => rows.getD 12 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0020_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [89] evenK4TerminalGroup0020CommonRows = evenK4TerminalGroup0020FinalRows0012 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 89] = evenK4TerminalGroup0020FinalRows0012 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 89] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [89]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
            evenK4TerminalGroup0020TwistLookup [19]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0020NormalLookup evenK4TerminalGroup0020TwistLookup
          [19] [89]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [89] evenK4TerminalGroup0020CommonRows := by
        rw [evenK4TerminalGroup0020_common_rows]
      _ = evenK4TerminalGroup0020FinalRows0012 := hcontinued
  rw [show evenK4TerminalGroup0020Row0012.maskedPrefix = [19, 89] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [19, 89] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
        evenK4TerminalGroup0020TwistLookup [19, 89] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0020_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0020_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0020FinalRows0012 := hlocal

theorem evenK4TerminalGroup0020Row0012_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0012.maskedPrefix).counts = evenK4TerminalGroup0020Row0012.counts.toBitVec := by
  rw [evenK4TerminalGroup0020Row0012_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 12 emptyBitVecCounts) evenK4TerminalGroup0020_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0020Row0012_counts_fit :
    evenK4TerminalGroup0020Row0012.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0020Row0012, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0020Row0013_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0013.maskedPrefix = evenK4TerminalGroup0020FinalRows0013 := by
  have hrow := congrArg
    (fun rows => rows.getD 13 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0020_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [97] evenK4TerminalGroup0020CommonRows = evenK4TerminalGroup0020FinalRows0013 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 97] = evenK4TerminalGroup0020FinalRows0013 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 97] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [97]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
            evenK4TerminalGroup0020TwistLookup [19]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0020NormalLookup evenK4TerminalGroup0020TwistLookup
          [19] [97]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [97] evenK4TerminalGroup0020CommonRows := by
        rw [evenK4TerminalGroup0020_common_rows]
      _ = evenK4TerminalGroup0020FinalRows0013 := hcontinued
  rw [show evenK4TerminalGroup0020Row0013.maskedPrefix = [19, 97] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [19, 97] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
        evenK4TerminalGroup0020TwistLookup [19, 97] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0020_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0020_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0020FinalRows0013 := hlocal

theorem evenK4TerminalGroup0020Row0013_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0013.maskedPrefix).counts = evenK4TerminalGroup0020Row0013.counts.toBitVec := by
  rw [evenK4TerminalGroup0020Row0013_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 13 emptyBitVecCounts) evenK4TerminalGroup0020_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0020Row0013_counts_fit :
    evenK4TerminalGroup0020Row0013.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0020Row0013, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0020Row0014_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0014.maskedPrefix = evenK4TerminalGroup0020FinalRows0014 := by
  have hrow := congrArg
    (fun rows => rows.getD 14 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0020_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [101] evenK4TerminalGroup0020CommonRows = evenK4TerminalGroup0020FinalRows0014 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 101] = evenK4TerminalGroup0020FinalRows0014 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 101] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [101]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
            evenK4TerminalGroup0020TwistLookup [19]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0020NormalLookup evenK4TerminalGroup0020TwistLookup
          [19] [101]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [101] evenK4TerminalGroup0020CommonRows := by
        rw [evenK4TerminalGroup0020_common_rows]
      _ = evenK4TerminalGroup0020FinalRows0014 := hcontinued
  rw [show evenK4TerminalGroup0020Row0014.maskedPrefix = [19, 101] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [19, 101] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
        evenK4TerminalGroup0020TwistLookup [19, 101] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0020_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0020_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0020FinalRows0014 := hlocal

theorem evenK4TerminalGroup0020Row0014_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0014.maskedPrefix).counts = evenK4TerminalGroup0020Row0014.counts.toBitVec := by
  rw [evenK4TerminalGroup0020Row0014_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 14 emptyBitVecCounts) evenK4TerminalGroup0020_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0020Row0014_counts_fit :
    evenK4TerminalGroup0020Row0014.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0020Row0014, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0020Row0015_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0015.maskedPrefix = evenK4TerminalGroup0020FinalRows0015 := by
  have hrow := congrArg
    (fun rows => rows.getD 15 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0020_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [103] evenK4TerminalGroup0020CommonRows = evenK4TerminalGroup0020FinalRows0015 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 103] = evenK4TerminalGroup0020FinalRows0015 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [19, 103] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [103]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
            evenK4TerminalGroup0020TwistLookup [19]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0020NormalLookup evenK4TerminalGroup0020TwistLookup
          [19] [103]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0020NormalLookup
          evenK4TerminalGroup0020TwistLookup [103] evenK4TerminalGroup0020CommonRows := by
        rw [evenK4TerminalGroup0020_common_rows]
      _ = evenK4TerminalGroup0020FinalRows0015 := hcontinued
  rw [show evenK4TerminalGroup0020Row0015.maskedPrefix = [19, 103] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [19, 103] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0020NormalLookup
        evenK4TerminalGroup0020TwistLookup [19, 103] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0020_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0020_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0020FinalRows0015 := hlocal

theorem evenK4TerminalGroup0020Row0015_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0020Row0015.maskedPrefix).counts = evenK4TerminalGroup0020Row0015.counts.toBitVec := by
  rw [evenK4TerminalGroup0020Row0015_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 15 emptyBitVecCounts) evenK4TerminalGroup0020_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0020Row0015_counts_fit :
    evenK4TerminalGroup0020Row0015.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0020Row0015, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

#print axioms evenK4TerminalGroup0020Row0015_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
