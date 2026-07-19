import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.TailGlobalMixedEvenTerminalActualSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK5TerminalGroup0052
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

private def emptyBitVecCounts : Erdos848.GlobalMixedEvenBitVecCounts :=
  (0, 0, 0, 0, 0, 0, 0, 0)

theorem evenK5TerminalGroup0052_normal_lookup_eq
    {p : Nat} (hp : p ∈ [29, 31, 37, 41, 43, 47, 59, 61]) :
    normalQrMaskWords p = evenK5TerminalGroup0052NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK5TerminalGroup0052NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 29) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0052NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 31) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0052NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 37) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0052NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 41) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0052NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 43) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0052NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 47) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0052NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 59) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0052NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 61) (by norm_num) (by norm_num))

theorem evenK5TerminalGroup0052_twist_lookup_eq
    {p : Nat} (hp : p ∈ [29, 31, 37, 41, 43, 47, 59, 61]) :
    twistQrMaskWords p = evenK5TerminalGroup0052TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK5TerminalGroup0052TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 29) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0052TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 31) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0052TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 37) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0052TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 41) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0052TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 43) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0052TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 47) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0052TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 59) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0052TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 61) (by norm_num) (by norm_num))

theorem evenK5TerminalGroup0052Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0052Row0000.maskedPrefix = evenK5TerminalGroup0052FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0052_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [29, 59] evenK5TerminalGroup0052CommonRows = evenK5TerminalGroup0052FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [29, 59] = evenK5TerminalGroup0052FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [29, 59] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [29, 59]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
            evenK5TerminalGroup0052TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0052NormalLookup evenK5TerminalGroup0052TwistLookup
          [] [29, 59]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [29, 59] evenK5TerminalGroup0052CommonRows := by
        rw [evenK5TerminalGroup0052_common_rows]
      _ = evenK5TerminalGroup0052FinalRows0000 := hcontinued
  rw [show evenK5TerminalGroup0052Row0000.maskedPrefix = [29, 59] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [29, 59] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
        evenK5TerminalGroup0052TwistLookup [29, 59] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0052_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0052_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0052FinalRows0000 := hlocal

theorem evenK5TerminalGroup0052Row0000_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0052Row0000.maskedPrefix).counts = evenK5TerminalGroup0052Row0000.counts.toBitVec := by
  rw [evenK5TerminalGroup0052Row0000_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 0 emptyBitVecCounts) evenK5TerminalGroup0052_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0052Row0000_counts_fit :
    evenK5TerminalGroup0052Row0000.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0052Row0000, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0052Row0001_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0052Row0001.maskedPrefix = evenK5TerminalGroup0052FinalRows0001 := by
  have hrow := congrArg
    (fun rows => rows.getD 1 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0052_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [29, 61] evenK5TerminalGroup0052CommonRows = evenK5TerminalGroup0052FinalRows0001 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [29, 61] = evenK5TerminalGroup0052FinalRows0001 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [29, 61] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [29, 61]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
            evenK5TerminalGroup0052TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0052NormalLookup evenK5TerminalGroup0052TwistLookup
          [] [29, 61]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [29, 61] evenK5TerminalGroup0052CommonRows := by
        rw [evenK5TerminalGroup0052_common_rows]
      _ = evenK5TerminalGroup0052FinalRows0001 := hcontinued
  rw [show evenK5TerminalGroup0052Row0001.maskedPrefix = [29, 61] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [29, 61] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
        evenK5TerminalGroup0052TwistLookup [29, 61] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0052_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0052_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0052FinalRows0001 := hlocal

theorem evenK5TerminalGroup0052Row0001_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0052Row0001.maskedPrefix).counts = evenK5TerminalGroup0052Row0001.counts.toBitVec := by
  rw [evenK5TerminalGroup0052Row0001_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 1 emptyBitVecCounts) evenK5TerminalGroup0052_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0052Row0001_counts_fit :
    evenK5TerminalGroup0052Row0001.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0052Row0001, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0052Row0002_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0052Row0002.maskedPrefix = evenK5TerminalGroup0052FinalRows0002 := by
  have hrow := congrArg
    (fun rows => rows.getD 2 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0052_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [31] evenK5TerminalGroup0052CommonRows = evenK5TerminalGroup0052FinalRows0002 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [31] = evenK5TerminalGroup0052FinalRows0002 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [31] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [31]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
            evenK5TerminalGroup0052TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0052NormalLookup evenK5TerminalGroup0052TwistLookup
          [] [31]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [31] evenK5TerminalGroup0052CommonRows := by
        rw [evenK5TerminalGroup0052_common_rows]
      _ = evenK5TerminalGroup0052FinalRows0002 := hcontinued
  rw [show evenK5TerminalGroup0052Row0002.maskedPrefix = [31] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [31] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
        evenK5TerminalGroup0052TwistLookup [31] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0052_normal_lookup_eq
        simp at hp
        rcases hp with rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0052_twist_lookup_eq
        simp at hp
        rcases hp with rfl
        all_goals simp
    _ = evenK5TerminalGroup0052FinalRows0002 := hlocal

theorem evenK5TerminalGroup0052Row0002_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0052Row0002.maskedPrefix).counts = evenK5TerminalGroup0052Row0002.counts.toBitVec := by
  rw [evenK5TerminalGroup0052Row0002_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 2 emptyBitVecCounts) evenK5TerminalGroup0052_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0052Row0002_counts_fit :
    evenK5TerminalGroup0052Row0002.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0052Row0002, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0052Row0003_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0052Row0003.maskedPrefix = evenK5TerminalGroup0052FinalRows0003 := by
  have hrow := congrArg
    (fun rows => rows.getD 3 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0052_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [37] evenK5TerminalGroup0052CommonRows = evenK5TerminalGroup0052FinalRows0003 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [37] = evenK5TerminalGroup0052FinalRows0003 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [37] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [37]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
            evenK5TerminalGroup0052TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0052NormalLookup evenK5TerminalGroup0052TwistLookup
          [] [37]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [37] evenK5TerminalGroup0052CommonRows := by
        rw [evenK5TerminalGroup0052_common_rows]
      _ = evenK5TerminalGroup0052FinalRows0003 := hcontinued
  rw [show evenK5TerminalGroup0052Row0003.maskedPrefix = [37] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [37] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
        evenK5TerminalGroup0052TwistLookup [37] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0052_normal_lookup_eq
        simp at hp
        rcases hp with rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0052_twist_lookup_eq
        simp at hp
        rcases hp with rfl
        all_goals simp
    _ = evenK5TerminalGroup0052FinalRows0003 := hlocal

theorem evenK5TerminalGroup0052Row0003_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0052Row0003.maskedPrefix).counts = evenK5TerminalGroup0052Row0003.counts.toBitVec := by
  rw [evenK5TerminalGroup0052Row0003_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 3 emptyBitVecCounts) evenK5TerminalGroup0052_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0052Row0003_counts_fit :
    evenK5TerminalGroup0052Row0003.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0052Row0003, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0052Row0004_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0052Row0004.maskedPrefix = evenK5TerminalGroup0052FinalRows0004 := by
  have hrow := congrArg
    (fun rows => rows.getD 4 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0052_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [41] evenK5TerminalGroup0052CommonRows = evenK5TerminalGroup0052FinalRows0004 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [41] = evenK5TerminalGroup0052FinalRows0004 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [41] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [41]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
            evenK5TerminalGroup0052TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0052NormalLookup evenK5TerminalGroup0052TwistLookup
          [] [41]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [41] evenK5TerminalGroup0052CommonRows := by
        rw [evenK5TerminalGroup0052_common_rows]
      _ = evenK5TerminalGroup0052FinalRows0004 := hcontinued
  rw [show evenK5TerminalGroup0052Row0004.maskedPrefix = [41] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [41] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
        evenK5TerminalGroup0052TwistLookup [41] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0052_normal_lookup_eq
        simp at hp
        rcases hp with rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0052_twist_lookup_eq
        simp at hp
        rcases hp with rfl
        all_goals simp
    _ = evenK5TerminalGroup0052FinalRows0004 := hlocal

theorem evenK5TerminalGroup0052Row0004_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0052Row0004.maskedPrefix).counts = evenK5TerminalGroup0052Row0004.counts.toBitVec := by
  rw [evenK5TerminalGroup0052Row0004_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 4 emptyBitVecCounts) evenK5TerminalGroup0052_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0052Row0004_counts_fit :
    evenK5TerminalGroup0052Row0004.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0052Row0004, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0052Row0005_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0052Row0005.maskedPrefix = evenK5TerminalGroup0052FinalRows0005 := by
  have hrow := congrArg
    (fun rows => rows.getD 5 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0052_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [43] evenK5TerminalGroup0052CommonRows = evenK5TerminalGroup0052FinalRows0005 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [43] = evenK5TerminalGroup0052FinalRows0005 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [43] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [43]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
            evenK5TerminalGroup0052TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0052NormalLookup evenK5TerminalGroup0052TwistLookup
          [] [43]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [43] evenK5TerminalGroup0052CommonRows := by
        rw [evenK5TerminalGroup0052_common_rows]
      _ = evenK5TerminalGroup0052FinalRows0005 := hcontinued
  rw [show evenK5TerminalGroup0052Row0005.maskedPrefix = [43] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [43] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
        evenK5TerminalGroup0052TwistLookup [43] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0052_normal_lookup_eq
        simp at hp
        rcases hp with rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0052_twist_lookup_eq
        simp at hp
        rcases hp with rfl
        all_goals simp
    _ = evenK5TerminalGroup0052FinalRows0005 := hlocal

theorem evenK5TerminalGroup0052Row0005_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0052Row0005.maskedPrefix).counts = evenK5TerminalGroup0052Row0005.counts.toBitVec := by
  rw [evenK5TerminalGroup0052Row0005_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 5 emptyBitVecCounts) evenK5TerminalGroup0052_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0052Row0005_counts_fit :
    evenK5TerminalGroup0052Row0005.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0052Row0005, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0052Row0006_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0052Row0006.maskedPrefix = evenK5TerminalGroup0052FinalRows0006 := by
  have hrow := congrArg
    (fun rows => rows.getD 6 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0052_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [47] evenK5TerminalGroup0052CommonRows = evenK5TerminalGroup0052FinalRows0006 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [47] = evenK5TerminalGroup0052FinalRows0006 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [47] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [47]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
            evenK5TerminalGroup0052TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0052NormalLookup evenK5TerminalGroup0052TwistLookup
          [] [47]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0052NormalLookup
          evenK5TerminalGroup0052TwistLookup [47] evenK5TerminalGroup0052CommonRows := by
        rw [evenK5TerminalGroup0052_common_rows]
      _ = evenK5TerminalGroup0052FinalRows0006 := hcontinued
  rw [show evenK5TerminalGroup0052Row0006.maskedPrefix = [47] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [47] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0052NormalLookup
        evenK5TerminalGroup0052TwistLookup [47] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0052_normal_lookup_eq
        simp at hp
        rcases hp with rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0052_twist_lookup_eq
        simp at hp
        rcases hp with rfl
        all_goals simp
    _ = evenK5TerminalGroup0052FinalRows0006 := hlocal

theorem evenK5TerminalGroup0052Row0006_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0052Row0006.maskedPrefix).counts = evenK5TerminalGroup0052Row0006.counts.toBitVec := by
  rw [evenK5TerminalGroup0052Row0006_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 6 emptyBitVecCounts) evenK5TerminalGroup0052_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0052Row0006_counts_fit :
    evenK5TerminalGroup0052Row0006.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0052Row0006, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

#print axioms evenK5TerminalGroup0052Row0006_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
