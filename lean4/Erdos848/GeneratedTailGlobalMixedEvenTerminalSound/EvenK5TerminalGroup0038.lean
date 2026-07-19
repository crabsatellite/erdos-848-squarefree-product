import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.TailGlobalMixedEvenTerminalActualSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK5TerminalGroup0038
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

theorem evenK5TerminalGroup0038_normal_lookup_eq
    {p : Nat} (hp : p ∈ [11, 19, 23, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109]) :
    normalQrMaskWords p = evenK5TerminalGroup0038NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 19) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 23) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 43) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 47) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 53) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 59) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 61) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 67) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 71) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 73) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 79) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 83) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 89) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 97) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 101) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 103) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 107) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 109) (by norm_num) (by norm_num))

theorem evenK5TerminalGroup0038_twist_lookup_eq
    {p : Nat} (hp : p ∈ [11, 19, 23, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109]) :
    twistQrMaskWords p = evenK5TerminalGroup0038TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 19) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 23) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 43) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 47) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 53) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 59) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 61) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 67) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 71) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 73) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 79) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 83) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 89) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 97) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 101) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 103) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 107) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0038TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 109) (by norm_num) (by norm_num))

theorem evenK5TerminalGroup0038Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0000.maskedPrefix = evenK5TerminalGroup0038FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0038_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [43] evenK5TerminalGroup0038CommonRows = evenK5TerminalGroup0038FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 43] = evenK5TerminalGroup0038FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 43] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [43]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
            evenK5TerminalGroup0038TwistLookup [11, 19, 23]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0038NormalLookup evenK5TerminalGroup0038TwistLookup
          [11, 19, 23] [43]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [43] evenK5TerminalGroup0038CommonRows := by
        rw [evenK5TerminalGroup0038_common_rows]
      _ = evenK5TerminalGroup0038FinalRows0000 := hcontinued
  rw [show evenK5TerminalGroup0038Row0000.maskedPrefix = [11, 19, 23, 43] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 19, 23, 43] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
        evenK5TerminalGroup0038TwistLookup [11, 19, 23, 43] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0038_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0038_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0038FinalRows0000 := hlocal

theorem evenK5TerminalGroup0038Row0000_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0000.maskedPrefix).counts = evenK5TerminalGroup0038Row0000.counts.toBitVec := by
  rw [evenK5TerminalGroup0038Row0000_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 0 emptyBitVecCounts) evenK5TerminalGroup0038_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0038Row0000_counts_fit :
    evenK5TerminalGroup0038Row0000.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0038Row0000, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0038Row0001_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0001.maskedPrefix = evenK5TerminalGroup0038FinalRows0001 := by
  have hrow := congrArg
    (fun rows => rows.getD 1 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0038_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [47] evenK5TerminalGroup0038CommonRows = evenK5TerminalGroup0038FinalRows0001 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 47] = evenK5TerminalGroup0038FinalRows0001 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 47] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [47]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
            evenK5TerminalGroup0038TwistLookup [11, 19, 23]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0038NormalLookup evenK5TerminalGroup0038TwistLookup
          [11, 19, 23] [47]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [47] evenK5TerminalGroup0038CommonRows := by
        rw [evenK5TerminalGroup0038_common_rows]
      _ = evenK5TerminalGroup0038FinalRows0001 := hcontinued
  rw [show evenK5TerminalGroup0038Row0001.maskedPrefix = [11, 19, 23, 47] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 19, 23, 47] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
        evenK5TerminalGroup0038TwistLookup [11, 19, 23, 47] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0038_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0038_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0038FinalRows0001 := hlocal

theorem evenK5TerminalGroup0038Row0001_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0001.maskedPrefix).counts = evenK5TerminalGroup0038Row0001.counts.toBitVec := by
  rw [evenK5TerminalGroup0038Row0001_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 1 emptyBitVecCounts) evenK5TerminalGroup0038_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0038Row0001_counts_fit :
    evenK5TerminalGroup0038Row0001.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0038Row0001, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0038Row0002_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0002.maskedPrefix = evenK5TerminalGroup0038FinalRows0002 := by
  have hrow := congrArg
    (fun rows => rows.getD 2 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0038_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [53] evenK5TerminalGroup0038CommonRows = evenK5TerminalGroup0038FinalRows0002 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 53] = evenK5TerminalGroup0038FinalRows0002 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 53] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [53]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
            evenK5TerminalGroup0038TwistLookup [11, 19, 23]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0038NormalLookup evenK5TerminalGroup0038TwistLookup
          [11, 19, 23] [53]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [53] evenK5TerminalGroup0038CommonRows := by
        rw [evenK5TerminalGroup0038_common_rows]
      _ = evenK5TerminalGroup0038FinalRows0002 := hcontinued
  rw [show evenK5TerminalGroup0038Row0002.maskedPrefix = [11, 19, 23, 53] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 19, 23, 53] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
        evenK5TerminalGroup0038TwistLookup [11, 19, 23, 53] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0038_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0038_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0038FinalRows0002 := hlocal

theorem evenK5TerminalGroup0038Row0002_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0002.maskedPrefix).counts = evenK5TerminalGroup0038Row0002.counts.toBitVec := by
  rw [evenK5TerminalGroup0038Row0002_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 2 emptyBitVecCounts) evenK5TerminalGroup0038_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0038Row0002_counts_fit :
    evenK5TerminalGroup0038Row0002.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0038Row0002, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0038Row0003_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0003.maskedPrefix = evenK5TerminalGroup0038FinalRows0003 := by
  have hrow := congrArg
    (fun rows => rows.getD 3 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0038_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [59] evenK5TerminalGroup0038CommonRows = evenK5TerminalGroup0038FinalRows0003 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 59] = evenK5TerminalGroup0038FinalRows0003 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 59] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [59]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
            evenK5TerminalGroup0038TwistLookup [11, 19, 23]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0038NormalLookup evenK5TerminalGroup0038TwistLookup
          [11, 19, 23] [59]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [59] evenK5TerminalGroup0038CommonRows := by
        rw [evenK5TerminalGroup0038_common_rows]
      _ = evenK5TerminalGroup0038FinalRows0003 := hcontinued
  rw [show evenK5TerminalGroup0038Row0003.maskedPrefix = [11, 19, 23, 59] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 19, 23, 59] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
        evenK5TerminalGroup0038TwistLookup [11, 19, 23, 59] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0038_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0038_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0038FinalRows0003 := hlocal

theorem evenK5TerminalGroup0038Row0003_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0003.maskedPrefix).counts = evenK5TerminalGroup0038Row0003.counts.toBitVec := by
  rw [evenK5TerminalGroup0038Row0003_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 3 emptyBitVecCounts) evenK5TerminalGroup0038_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0038Row0003_counts_fit :
    evenK5TerminalGroup0038Row0003.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0038Row0003, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0038Row0004_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0004.maskedPrefix = evenK5TerminalGroup0038FinalRows0004 := by
  have hrow := congrArg
    (fun rows => rows.getD 4 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0038_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [61] evenK5TerminalGroup0038CommonRows = evenK5TerminalGroup0038FinalRows0004 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 61] = evenK5TerminalGroup0038FinalRows0004 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 61] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [61]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
            evenK5TerminalGroup0038TwistLookup [11, 19, 23]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0038NormalLookup evenK5TerminalGroup0038TwistLookup
          [11, 19, 23] [61]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [61] evenK5TerminalGroup0038CommonRows := by
        rw [evenK5TerminalGroup0038_common_rows]
      _ = evenK5TerminalGroup0038FinalRows0004 := hcontinued
  rw [show evenK5TerminalGroup0038Row0004.maskedPrefix = [11, 19, 23, 61] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 19, 23, 61] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
        evenK5TerminalGroup0038TwistLookup [11, 19, 23, 61] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0038_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0038_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0038FinalRows0004 := hlocal

theorem evenK5TerminalGroup0038Row0004_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0004.maskedPrefix).counts = evenK5TerminalGroup0038Row0004.counts.toBitVec := by
  rw [evenK5TerminalGroup0038Row0004_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 4 emptyBitVecCounts) evenK5TerminalGroup0038_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0038Row0004_counts_fit :
    evenK5TerminalGroup0038Row0004.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0038Row0004, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0038Row0005_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0005.maskedPrefix = evenK5TerminalGroup0038FinalRows0005 := by
  have hrow := congrArg
    (fun rows => rows.getD 5 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0038_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [67] evenK5TerminalGroup0038CommonRows = evenK5TerminalGroup0038FinalRows0005 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 67] = evenK5TerminalGroup0038FinalRows0005 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 67] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [67]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
            evenK5TerminalGroup0038TwistLookup [11, 19, 23]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0038NormalLookup evenK5TerminalGroup0038TwistLookup
          [11, 19, 23] [67]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [67] evenK5TerminalGroup0038CommonRows := by
        rw [evenK5TerminalGroup0038_common_rows]
      _ = evenK5TerminalGroup0038FinalRows0005 := hcontinued
  rw [show evenK5TerminalGroup0038Row0005.maskedPrefix = [11, 19, 23, 67] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 19, 23, 67] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
        evenK5TerminalGroup0038TwistLookup [11, 19, 23, 67] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0038_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0038_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0038FinalRows0005 := hlocal

theorem evenK5TerminalGroup0038Row0005_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0005.maskedPrefix).counts = evenK5TerminalGroup0038Row0005.counts.toBitVec := by
  rw [evenK5TerminalGroup0038Row0005_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 5 emptyBitVecCounts) evenK5TerminalGroup0038_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0038Row0005_counts_fit :
    evenK5TerminalGroup0038Row0005.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0038Row0005, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0038Row0006_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0006.maskedPrefix = evenK5TerminalGroup0038FinalRows0006 := by
  have hrow := congrArg
    (fun rows => rows.getD 6 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0038_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [71] evenK5TerminalGroup0038CommonRows = evenK5TerminalGroup0038FinalRows0006 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 71] = evenK5TerminalGroup0038FinalRows0006 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 71] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [71]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
            evenK5TerminalGroup0038TwistLookup [11, 19, 23]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0038NormalLookup evenK5TerminalGroup0038TwistLookup
          [11, 19, 23] [71]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [71] evenK5TerminalGroup0038CommonRows := by
        rw [evenK5TerminalGroup0038_common_rows]
      _ = evenK5TerminalGroup0038FinalRows0006 := hcontinued
  rw [show evenK5TerminalGroup0038Row0006.maskedPrefix = [11, 19, 23, 71] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 19, 23, 71] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
        evenK5TerminalGroup0038TwistLookup [11, 19, 23, 71] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0038_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0038_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0038FinalRows0006 := hlocal

theorem evenK5TerminalGroup0038Row0006_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0006.maskedPrefix).counts = evenK5TerminalGroup0038Row0006.counts.toBitVec := by
  rw [evenK5TerminalGroup0038Row0006_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 6 emptyBitVecCounts) evenK5TerminalGroup0038_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0038Row0006_counts_fit :
    evenK5TerminalGroup0038Row0006.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0038Row0006, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0038Row0007_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0007.maskedPrefix = evenK5TerminalGroup0038FinalRows0007 := by
  have hrow := congrArg
    (fun rows => rows.getD 7 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0038_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [73] evenK5TerminalGroup0038CommonRows = evenK5TerminalGroup0038FinalRows0007 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 73] = evenK5TerminalGroup0038FinalRows0007 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 73] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [73]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
            evenK5TerminalGroup0038TwistLookup [11, 19, 23]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0038NormalLookup evenK5TerminalGroup0038TwistLookup
          [11, 19, 23] [73]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [73] evenK5TerminalGroup0038CommonRows := by
        rw [evenK5TerminalGroup0038_common_rows]
      _ = evenK5TerminalGroup0038FinalRows0007 := hcontinued
  rw [show evenK5TerminalGroup0038Row0007.maskedPrefix = [11, 19, 23, 73] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 19, 23, 73] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
        evenK5TerminalGroup0038TwistLookup [11, 19, 23, 73] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0038_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0038_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0038FinalRows0007 := hlocal

theorem evenK5TerminalGroup0038Row0007_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0007.maskedPrefix).counts = evenK5TerminalGroup0038Row0007.counts.toBitVec := by
  rw [evenK5TerminalGroup0038Row0007_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 7 emptyBitVecCounts) evenK5TerminalGroup0038_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0038Row0007_counts_fit :
    evenK5TerminalGroup0038Row0007.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0038Row0007, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0038Row0008_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0008.maskedPrefix = evenK5TerminalGroup0038FinalRows0008 := by
  have hrow := congrArg
    (fun rows => rows.getD 8 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0038_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [79] evenK5TerminalGroup0038CommonRows = evenK5TerminalGroup0038FinalRows0008 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 79] = evenK5TerminalGroup0038FinalRows0008 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 79] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [79]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
            evenK5TerminalGroup0038TwistLookup [11, 19, 23]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0038NormalLookup evenK5TerminalGroup0038TwistLookup
          [11, 19, 23] [79]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [79] evenK5TerminalGroup0038CommonRows := by
        rw [evenK5TerminalGroup0038_common_rows]
      _ = evenK5TerminalGroup0038FinalRows0008 := hcontinued
  rw [show evenK5TerminalGroup0038Row0008.maskedPrefix = [11, 19, 23, 79] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 19, 23, 79] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
        evenK5TerminalGroup0038TwistLookup [11, 19, 23, 79] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0038_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0038_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0038FinalRows0008 := hlocal

theorem evenK5TerminalGroup0038Row0008_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0008.maskedPrefix).counts = evenK5TerminalGroup0038Row0008.counts.toBitVec := by
  rw [evenK5TerminalGroup0038Row0008_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 8 emptyBitVecCounts) evenK5TerminalGroup0038_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0038Row0008_counts_fit :
    evenK5TerminalGroup0038Row0008.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0038Row0008, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0038Row0009_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0009.maskedPrefix = evenK5TerminalGroup0038FinalRows0009 := by
  have hrow := congrArg
    (fun rows => rows.getD 9 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0038_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [83] evenK5TerminalGroup0038CommonRows = evenK5TerminalGroup0038FinalRows0009 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 83] = evenK5TerminalGroup0038FinalRows0009 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 83] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [83]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
            evenK5TerminalGroup0038TwistLookup [11, 19, 23]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0038NormalLookup evenK5TerminalGroup0038TwistLookup
          [11, 19, 23] [83]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [83] evenK5TerminalGroup0038CommonRows := by
        rw [evenK5TerminalGroup0038_common_rows]
      _ = evenK5TerminalGroup0038FinalRows0009 := hcontinued
  rw [show evenK5TerminalGroup0038Row0009.maskedPrefix = [11, 19, 23, 83] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 19, 23, 83] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
        evenK5TerminalGroup0038TwistLookup [11, 19, 23, 83] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0038_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0038_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0038FinalRows0009 := hlocal

theorem evenK5TerminalGroup0038Row0009_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0009.maskedPrefix).counts = evenK5TerminalGroup0038Row0009.counts.toBitVec := by
  rw [evenK5TerminalGroup0038Row0009_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 9 emptyBitVecCounts) evenK5TerminalGroup0038_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0038Row0009_counts_fit :
    evenK5TerminalGroup0038Row0009.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0038Row0009, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0038Row0010_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0010.maskedPrefix = evenK5TerminalGroup0038FinalRows0010 := by
  have hrow := congrArg
    (fun rows => rows.getD 10 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0038_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [89] evenK5TerminalGroup0038CommonRows = evenK5TerminalGroup0038FinalRows0010 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 89] = evenK5TerminalGroup0038FinalRows0010 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 89] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [89]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
            evenK5TerminalGroup0038TwistLookup [11, 19, 23]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0038NormalLookup evenK5TerminalGroup0038TwistLookup
          [11, 19, 23] [89]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [89] evenK5TerminalGroup0038CommonRows := by
        rw [evenK5TerminalGroup0038_common_rows]
      _ = evenK5TerminalGroup0038FinalRows0010 := hcontinued
  rw [show evenK5TerminalGroup0038Row0010.maskedPrefix = [11, 19, 23, 89] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 19, 23, 89] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
        evenK5TerminalGroup0038TwistLookup [11, 19, 23, 89] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0038_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0038_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0038FinalRows0010 := hlocal

theorem evenK5TerminalGroup0038Row0010_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0010.maskedPrefix).counts = evenK5TerminalGroup0038Row0010.counts.toBitVec := by
  rw [evenK5TerminalGroup0038Row0010_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 10 emptyBitVecCounts) evenK5TerminalGroup0038_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0038Row0010_counts_fit :
    evenK5TerminalGroup0038Row0010.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0038Row0010, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0038Row0011_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0011.maskedPrefix = evenK5TerminalGroup0038FinalRows0011 := by
  have hrow := congrArg
    (fun rows => rows.getD 11 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0038_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [97] evenK5TerminalGroup0038CommonRows = evenK5TerminalGroup0038FinalRows0011 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 97] = evenK5TerminalGroup0038FinalRows0011 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 97] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [97]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
            evenK5TerminalGroup0038TwistLookup [11, 19, 23]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0038NormalLookup evenK5TerminalGroup0038TwistLookup
          [11, 19, 23] [97]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [97] evenK5TerminalGroup0038CommonRows := by
        rw [evenK5TerminalGroup0038_common_rows]
      _ = evenK5TerminalGroup0038FinalRows0011 := hcontinued
  rw [show evenK5TerminalGroup0038Row0011.maskedPrefix = [11, 19, 23, 97] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 19, 23, 97] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
        evenK5TerminalGroup0038TwistLookup [11, 19, 23, 97] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0038_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0038_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0038FinalRows0011 := hlocal

theorem evenK5TerminalGroup0038Row0011_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0011.maskedPrefix).counts = evenK5TerminalGroup0038Row0011.counts.toBitVec := by
  rw [evenK5TerminalGroup0038Row0011_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 11 emptyBitVecCounts) evenK5TerminalGroup0038_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0038Row0011_counts_fit :
    evenK5TerminalGroup0038Row0011.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0038Row0011, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0038Row0012_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0012.maskedPrefix = evenK5TerminalGroup0038FinalRows0012 := by
  have hrow := congrArg
    (fun rows => rows.getD 12 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0038_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [101] evenK5TerminalGroup0038CommonRows = evenK5TerminalGroup0038FinalRows0012 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 101] = evenK5TerminalGroup0038FinalRows0012 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 101] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [101]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
            evenK5TerminalGroup0038TwistLookup [11, 19, 23]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0038NormalLookup evenK5TerminalGroup0038TwistLookup
          [11, 19, 23] [101]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [101] evenK5TerminalGroup0038CommonRows := by
        rw [evenK5TerminalGroup0038_common_rows]
      _ = evenK5TerminalGroup0038FinalRows0012 := hcontinued
  rw [show evenK5TerminalGroup0038Row0012.maskedPrefix = [11, 19, 23, 101] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 19, 23, 101] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
        evenK5TerminalGroup0038TwistLookup [11, 19, 23, 101] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0038_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0038_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0038FinalRows0012 := hlocal

theorem evenK5TerminalGroup0038Row0012_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0012.maskedPrefix).counts = evenK5TerminalGroup0038Row0012.counts.toBitVec := by
  rw [evenK5TerminalGroup0038Row0012_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 12 emptyBitVecCounts) evenK5TerminalGroup0038_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0038Row0012_counts_fit :
    evenK5TerminalGroup0038Row0012.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0038Row0012, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0038Row0013_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0013.maskedPrefix = evenK5TerminalGroup0038FinalRows0013 := by
  have hrow := congrArg
    (fun rows => rows.getD 13 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0038_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [103] evenK5TerminalGroup0038CommonRows = evenK5TerminalGroup0038FinalRows0013 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 103] = evenK5TerminalGroup0038FinalRows0013 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 103] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [103]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
            evenK5TerminalGroup0038TwistLookup [11, 19, 23]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0038NormalLookup evenK5TerminalGroup0038TwistLookup
          [11, 19, 23] [103]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [103] evenK5TerminalGroup0038CommonRows := by
        rw [evenK5TerminalGroup0038_common_rows]
      _ = evenK5TerminalGroup0038FinalRows0013 := hcontinued
  rw [show evenK5TerminalGroup0038Row0013.maskedPrefix = [11, 19, 23, 103] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 19, 23, 103] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
        evenK5TerminalGroup0038TwistLookup [11, 19, 23, 103] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0038_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0038_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0038FinalRows0013 := hlocal

theorem evenK5TerminalGroup0038Row0013_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0013.maskedPrefix).counts = evenK5TerminalGroup0038Row0013.counts.toBitVec := by
  rw [evenK5TerminalGroup0038Row0013_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 13 emptyBitVecCounts) evenK5TerminalGroup0038_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0038Row0013_counts_fit :
    evenK5TerminalGroup0038Row0013.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0038Row0013, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0038Row0014_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0014.maskedPrefix = evenK5TerminalGroup0038FinalRows0014 := by
  have hrow := congrArg
    (fun rows => rows.getD 14 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0038_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [107] evenK5TerminalGroup0038CommonRows = evenK5TerminalGroup0038FinalRows0014 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 107] = evenK5TerminalGroup0038FinalRows0014 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 107] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [107]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
            evenK5TerminalGroup0038TwistLookup [11, 19, 23]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0038NormalLookup evenK5TerminalGroup0038TwistLookup
          [11, 19, 23] [107]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [107] evenK5TerminalGroup0038CommonRows := by
        rw [evenK5TerminalGroup0038_common_rows]
      _ = evenK5TerminalGroup0038FinalRows0014 := hcontinued
  rw [show evenK5TerminalGroup0038Row0014.maskedPrefix = [11, 19, 23, 107] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 19, 23, 107] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
        evenK5TerminalGroup0038TwistLookup [11, 19, 23, 107] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0038_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0038_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0038FinalRows0014 := hlocal

theorem evenK5TerminalGroup0038Row0014_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0014.maskedPrefix).counts = evenK5TerminalGroup0038Row0014.counts.toBitVec := by
  rw [evenK5TerminalGroup0038Row0014_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 14 emptyBitVecCounts) evenK5TerminalGroup0038_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0038Row0014_counts_fit :
    evenK5TerminalGroup0038Row0014.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0038Row0014, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0038Row0015_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0015.maskedPrefix = evenK5TerminalGroup0038FinalRows0015 := by
  have hrow := congrArg
    (fun rows => rows.getD 15 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0038_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [109] evenK5TerminalGroup0038CommonRows = evenK5TerminalGroup0038FinalRows0015 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 109] = evenK5TerminalGroup0038FinalRows0015 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [11, 19, 23, 109] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [109]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
            evenK5TerminalGroup0038TwistLookup [11, 19, 23]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0038NormalLookup evenK5TerminalGroup0038TwistLookup
          [11, 19, 23] [109]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0038NormalLookup
          evenK5TerminalGroup0038TwistLookup [109] evenK5TerminalGroup0038CommonRows := by
        rw [evenK5TerminalGroup0038_common_rows]
      _ = evenK5TerminalGroup0038FinalRows0015 := hcontinued
  rw [show evenK5TerminalGroup0038Row0015.maskedPrefix = [11, 19, 23, 109] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 19, 23, 109] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0038NormalLookup
        evenK5TerminalGroup0038TwistLookup [11, 19, 23, 109] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0038_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0038_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0038FinalRows0015 := hlocal

theorem evenK5TerminalGroup0038Row0015_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0038Row0015.maskedPrefix).counts = evenK5TerminalGroup0038Row0015.counts.toBitVec := by
  rw [evenK5TerminalGroup0038Row0015_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 15 emptyBitVecCounts) evenK5TerminalGroup0038_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0038Row0015_counts_fit :
    evenK5TerminalGroup0038Row0015.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0038Row0015, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

#print axioms evenK5TerminalGroup0038Row0015_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
