import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.TailGlobalMixedEvenTerminalActualSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK5TerminalGroup0011
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0001
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0002

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

private def emptyBitVecCounts : Erdos848.GlobalMixedEvenBitVecCounts :=
  (0, 0, 0, 0, 0, 0, 0, 0)

theorem evenK5TerminalGroup0011_normal_lookup_eq
    {p : Nat} (hp : p ∈ [3, 17, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167]) :
    normalQrMaskWords p = evenK5TerminalGroup0011NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK5TerminalGroup0011NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 17) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 89) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 97) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 101) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 103) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 107) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 109) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 113) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 127) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 131) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 137) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011NormalLookup] using (normalQrMaskWords_eq_group0001 (p := 139) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 149) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 151) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 157) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 163) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 167) (by norm_num) (by norm_num))

theorem evenK5TerminalGroup0011_twist_lookup_eq
    {p : Nat} (hp : p ∈ [3, 17, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167]) :
    twistQrMaskWords p = evenK5TerminalGroup0011TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK5TerminalGroup0011TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 17) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 89) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 97) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 101) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 103) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 107) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 109) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 113) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 127) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 131) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 137) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011TwistLookup] using (twistQrMaskWords_eq_group0001 (p := 139) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 149) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 151) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 157) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 163) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0011TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 167) (by norm_num) (by norm_num))

theorem evenK5TerminalGroup0011Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0000.maskedPrefix = evenK5TerminalGroup0011FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0011_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [89] evenK5TerminalGroup0011CommonRows = evenK5TerminalGroup0011FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 89] = evenK5TerminalGroup0011FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 89] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [89]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
            evenK5TerminalGroup0011TwistLookup [3, 17]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0011NormalLookup evenK5TerminalGroup0011TwistLookup
          [3, 17] [89]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [89] evenK5TerminalGroup0011CommonRows := by
        rw [evenK5TerminalGroup0011_common_rows]
      _ = evenK5TerminalGroup0011FinalRows0000 := hcontinued
  rw [show evenK5TerminalGroup0011Row0000.maskedPrefix = [3, 17, 89] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 17, 89] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
        evenK5TerminalGroup0011TwistLookup [3, 17, 89] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0011_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0011_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0011FinalRows0000 := hlocal

theorem evenK5TerminalGroup0011Row0000_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0000.maskedPrefix).counts = evenK5TerminalGroup0011Row0000.counts.toBitVec := by
  rw [evenK5TerminalGroup0011Row0000_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 0 emptyBitVecCounts) evenK5TerminalGroup0011_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0011Row0000_counts_fit :
    evenK5TerminalGroup0011Row0000.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0011Row0000, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0011Row0001_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0001.maskedPrefix = evenK5TerminalGroup0011FinalRows0001 := by
  have hrow := congrArg
    (fun rows => rows.getD 1 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0011_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [97] evenK5TerminalGroup0011CommonRows = evenK5TerminalGroup0011FinalRows0001 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 97] = evenK5TerminalGroup0011FinalRows0001 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 97] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [97]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
            evenK5TerminalGroup0011TwistLookup [3, 17]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0011NormalLookup evenK5TerminalGroup0011TwistLookup
          [3, 17] [97]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [97] evenK5TerminalGroup0011CommonRows := by
        rw [evenK5TerminalGroup0011_common_rows]
      _ = evenK5TerminalGroup0011FinalRows0001 := hcontinued
  rw [show evenK5TerminalGroup0011Row0001.maskedPrefix = [3, 17, 97] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 17, 97] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
        evenK5TerminalGroup0011TwistLookup [3, 17, 97] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0011_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0011_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0011FinalRows0001 := hlocal

theorem evenK5TerminalGroup0011Row0001_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0001.maskedPrefix).counts = evenK5TerminalGroup0011Row0001.counts.toBitVec := by
  rw [evenK5TerminalGroup0011Row0001_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 1 emptyBitVecCounts) evenK5TerminalGroup0011_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0011Row0001_counts_fit :
    evenK5TerminalGroup0011Row0001.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0011Row0001, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0011Row0002_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0002.maskedPrefix = evenK5TerminalGroup0011FinalRows0002 := by
  have hrow := congrArg
    (fun rows => rows.getD 2 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0011_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [101] evenK5TerminalGroup0011CommonRows = evenK5TerminalGroup0011FinalRows0002 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 101] = evenK5TerminalGroup0011FinalRows0002 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 101] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [101]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
            evenK5TerminalGroup0011TwistLookup [3, 17]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0011NormalLookup evenK5TerminalGroup0011TwistLookup
          [3, 17] [101]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [101] evenK5TerminalGroup0011CommonRows := by
        rw [evenK5TerminalGroup0011_common_rows]
      _ = evenK5TerminalGroup0011FinalRows0002 := hcontinued
  rw [show evenK5TerminalGroup0011Row0002.maskedPrefix = [3, 17, 101] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 17, 101] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
        evenK5TerminalGroup0011TwistLookup [3, 17, 101] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0011_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0011_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0011FinalRows0002 := hlocal

theorem evenK5TerminalGroup0011Row0002_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0002.maskedPrefix).counts = evenK5TerminalGroup0011Row0002.counts.toBitVec := by
  rw [evenK5TerminalGroup0011Row0002_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 2 emptyBitVecCounts) evenK5TerminalGroup0011_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0011Row0002_counts_fit :
    evenK5TerminalGroup0011Row0002.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0011Row0002, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0011Row0003_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0003.maskedPrefix = evenK5TerminalGroup0011FinalRows0003 := by
  have hrow := congrArg
    (fun rows => rows.getD 3 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0011_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [103] evenK5TerminalGroup0011CommonRows = evenK5TerminalGroup0011FinalRows0003 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 103] = evenK5TerminalGroup0011FinalRows0003 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 103] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [103]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
            evenK5TerminalGroup0011TwistLookup [3, 17]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0011NormalLookup evenK5TerminalGroup0011TwistLookup
          [3, 17] [103]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [103] evenK5TerminalGroup0011CommonRows := by
        rw [evenK5TerminalGroup0011_common_rows]
      _ = evenK5TerminalGroup0011FinalRows0003 := hcontinued
  rw [show evenK5TerminalGroup0011Row0003.maskedPrefix = [3, 17, 103] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 17, 103] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
        evenK5TerminalGroup0011TwistLookup [3, 17, 103] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0011_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0011_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0011FinalRows0003 := hlocal

theorem evenK5TerminalGroup0011Row0003_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0003.maskedPrefix).counts = evenK5TerminalGroup0011Row0003.counts.toBitVec := by
  rw [evenK5TerminalGroup0011Row0003_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 3 emptyBitVecCounts) evenK5TerminalGroup0011_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0011Row0003_counts_fit :
    evenK5TerminalGroup0011Row0003.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0011Row0003, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0011Row0004_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0004.maskedPrefix = evenK5TerminalGroup0011FinalRows0004 := by
  have hrow := congrArg
    (fun rows => rows.getD 4 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0011_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [107] evenK5TerminalGroup0011CommonRows = evenK5TerminalGroup0011FinalRows0004 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 107] = evenK5TerminalGroup0011FinalRows0004 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 107] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [107]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
            evenK5TerminalGroup0011TwistLookup [3, 17]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0011NormalLookup evenK5TerminalGroup0011TwistLookup
          [3, 17] [107]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [107] evenK5TerminalGroup0011CommonRows := by
        rw [evenK5TerminalGroup0011_common_rows]
      _ = evenK5TerminalGroup0011FinalRows0004 := hcontinued
  rw [show evenK5TerminalGroup0011Row0004.maskedPrefix = [3, 17, 107] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 17, 107] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
        evenK5TerminalGroup0011TwistLookup [3, 17, 107] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0011_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0011_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0011FinalRows0004 := hlocal

theorem evenK5TerminalGroup0011Row0004_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0004.maskedPrefix).counts = evenK5TerminalGroup0011Row0004.counts.toBitVec := by
  rw [evenK5TerminalGroup0011Row0004_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 4 emptyBitVecCounts) evenK5TerminalGroup0011_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0011Row0004_counts_fit :
    evenK5TerminalGroup0011Row0004.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0011Row0004, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0011Row0005_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0005.maskedPrefix = evenK5TerminalGroup0011FinalRows0005 := by
  have hrow := congrArg
    (fun rows => rows.getD 5 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0011_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [109] evenK5TerminalGroup0011CommonRows = evenK5TerminalGroup0011FinalRows0005 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 109] = evenK5TerminalGroup0011FinalRows0005 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 109] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [109]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
            evenK5TerminalGroup0011TwistLookup [3, 17]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0011NormalLookup evenK5TerminalGroup0011TwistLookup
          [3, 17] [109]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [109] evenK5TerminalGroup0011CommonRows := by
        rw [evenK5TerminalGroup0011_common_rows]
      _ = evenK5TerminalGroup0011FinalRows0005 := hcontinued
  rw [show evenK5TerminalGroup0011Row0005.maskedPrefix = [3, 17, 109] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 17, 109] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
        evenK5TerminalGroup0011TwistLookup [3, 17, 109] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0011_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0011_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0011FinalRows0005 := hlocal

theorem evenK5TerminalGroup0011Row0005_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0005.maskedPrefix).counts = evenK5TerminalGroup0011Row0005.counts.toBitVec := by
  rw [evenK5TerminalGroup0011Row0005_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 5 emptyBitVecCounts) evenK5TerminalGroup0011_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0011Row0005_counts_fit :
    evenK5TerminalGroup0011Row0005.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0011Row0005, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0011Row0006_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0006.maskedPrefix = evenK5TerminalGroup0011FinalRows0006 := by
  have hrow := congrArg
    (fun rows => rows.getD 6 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0011_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [113] evenK5TerminalGroup0011CommonRows = evenK5TerminalGroup0011FinalRows0006 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 113] = evenK5TerminalGroup0011FinalRows0006 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 113] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [113]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
            evenK5TerminalGroup0011TwistLookup [3, 17]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0011NormalLookup evenK5TerminalGroup0011TwistLookup
          [3, 17] [113]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [113] evenK5TerminalGroup0011CommonRows := by
        rw [evenK5TerminalGroup0011_common_rows]
      _ = evenK5TerminalGroup0011FinalRows0006 := hcontinued
  rw [show evenK5TerminalGroup0011Row0006.maskedPrefix = [3, 17, 113] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 17, 113] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
        evenK5TerminalGroup0011TwistLookup [3, 17, 113] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0011_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0011_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0011FinalRows0006 := hlocal

theorem evenK5TerminalGroup0011Row0006_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0006.maskedPrefix).counts = evenK5TerminalGroup0011Row0006.counts.toBitVec := by
  rw [evenK5TerminalGroup0011Row0006_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 6 emptyBitVecCounts) evenK5TerminalGroup0011_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0011Row0006_counts_fit :
    evenK5TerminalGroup0011Row0006.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0011Row0006, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0011Row0007_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0007.maskedPrefix = evenK5TerminalGroup0011FinalRows0007 := by
  have hrow := congrArg
    (fun rows => rows.getD 7 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0011_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [127] evenK5TerminalGroup0011CommonRows = evenK5TerminalGroup0011FinalRows0007 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 127] = evenK5TerminalGroup0011FinalRows0007 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 127] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [127]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
            evenK5TerminalGroup0011TwistLookup [3, 17]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0011NormalLookup evenK5TerminalGroup0011TwistLookup
          [3, 17] [127]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [127] evenK5TerminalGroup0011CommonRows := by
        rw [evenK5TerminalGroup0011_common_rows]
      _ = evenK5TerminalGroup0011FinalRows0007 := hcontinued
  rw [show evenK5TerminalGroup0011Row0007.maskedPrefix = [3, 17, 127] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 17, 127] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
        evenK5TerminalGroup0011TwistLookup [3, 17, 127] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0011_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0011_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0011FinalRows0007 := hlocal

theorem evenK5TerminalGroup0011Row0007_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0007.maskedPrefix).counts = evenK5TerminalGroup0011Row0007.counts.toBitVec := by
  rw [evenK5TerminalGroup0011Row0007_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 7 emptyBitVecCounts) evenK5TerminalGroup0011_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0011Row0007_counts_fit :
    evenK5TerminalGroup0011Row0007.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0011Row0007, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0011Row0008_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0008.maskedPrefix = evenK5TerminalGroup0011FinalRows0008 := by
  have hrow := congrArg
    (fun rows => rows.getD 8 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0011_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [131] evenK5TerminalGroup0011CommonRows = evenK5TerminalGroup0011FinalRows0008 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 131] = evenK5TerminalGroup0011FinalRows0008 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 131] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [131]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
            evenK5TerminalGroup0011TwistLookup [3, 17]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0011NormalLookup evenK5TerminalGroup0011TwistLookup
          [3, 17] [131]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [131] evenK5TerminalGroup0011CommonRows := by
        rw [evenK5TerminalGroup0011_common_rows]
      _ = evenK5TerminalGroup0011FinalRows0008 := hcontinued
  rw [show evenK5TerminalGroup0011Row0008.maskedPrefix = [3, 17, 131] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 17, 131] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
        evenK5TerminalGroup0011TwistLookup [3, 17, 131] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0011_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0011_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0011FinalRows0008 := hlocal

theorem evenK5TerminalGroup0011Row0008_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0008.maskedPrefix).counts = evenK5TerminalGroup0011Row0008.counts.toBitVec := by
  rw [evenK5TerminalGroup0011Row0008_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 8 emptyBitVecCounts) evenK5TerminalGroup0011_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0011Row0008_counts_fit :
    evenK5TerminalGroup0011Row0008.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0011Row0008, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0011Row0009_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0009.maskedPrefix = evenK5TerminalGroup0011FinalRows0009 := by
  have hrow := congrArg
    (fun rows => rows.getD 9 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0011_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [137] evenK5TerminalGroup0011CommonRows = evenK5TerminalGroup0011FinalRows0009 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 137] = evenK5TerminalGroup0011FinalRows0009 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 137] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [137]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
            evenK5TerminalGroup0011TwistLookup [3, 17]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0011NormalLookup evenK5TerminalGroup0011TwistLookup
          [3, 17] [137]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [137] evenK5TerminalGroup0011CommonRows := by
        rw [evenK5TerminalGroup0011_common_rows]
      _ = evenK5TerminalGroup0011FinalRows0009 := hcontinued
  rw [show evenK5TerminalGroup0011Row0009.maskedPrefix = [3, 17, 137] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 17, 137] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
        evenK5TerminalGroup0011TwistLookup [3, 17, 137] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0011_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0011_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0011FinalRows0009 := hlocal

theorem evenK5TerminalGroup0011Row0009_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0009.maskedPrefix).counts = evenK5TerminalGroup0011Row0009.counts.toBitVec := by
  rw [evenK5TerminalGroup0011Row0009_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 9 emptyBitVecCounts) evenK5TerminalGroup0011_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0011Row0009_counts_fit :
    evenK5TerminalGroup0011Row0009.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0011Row0009, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0011Row0010_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0010.maskedPrefix = evenK5TerminalGroup0011FinalRows0010 := by
  have hrow := congrArg
    (fun rows => rows.getD 10 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0011_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [139] evenK5TerminalGroup0011CommonRows = evenK5TerminalGroup0011FinalRows0010 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 139] = evenK5TerminalGroup0011FinalRows0010 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 139] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [139]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
            evenK5TerminalGroup0011TwistLookup [3, 17]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0011NormalLookup evenK5TerminalGroup0011TwistLookup
          [3, 17] [139]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [139] evenK5TerminalGroup0011CommonRows := by
        rw [evenK5TerminalGroup0011_common_rows]
      _ = evenK5TerminalGroup0011FinalRows0010 := hcontinued
  rw [show evenK5TerminalGroup0011Row0010.maskedPrefix = [3, 17, 139] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 17, 139] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
        evenK5TerminalGroup0011TwistLookup [3, 17, 139] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0011_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0011_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0011FinalRows0010 := hlocal

theorem evenK5TerminalGroup0011Row0010_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0010.maskedPrefix).counts = evenK5TerminalGroup0011Row0010.counts.toBitVec := by
  rw [evenK5TerminalGroup0011Row0010_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 10 emptyBitVecCounts) evenK5TerminalGroup0011_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0011Row0010_counts_fit :
    evenK5TerminalGroup0011Row0010.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0011Row0010, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0011Row0011_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0011.maskedPrefix = evenK5TerminalGroup0011FinalRows0011 := by
  have hrow := congrArg
    (fun rows => rows.getD 11 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0011_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [149] evenK5TerminalGroup0011CommonRows = evenK5TerminalGroup0011FinalRows0011 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 149] = evenK5TerminalGroup0011FinalRows0011 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 149] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [149]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
            evenK5TerminalGroup0011TwistLookup [3, 17]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0011NormalLookup evenK5TerminalGroup0011TwistLookup
          [3, 17] [149]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [149] evenK5TerminalGroup0011CommonRows := by
        rw [evenK5TerminalGroup0011_common_rows]
      _ = evenK5TerminalGroup0011FinalRows0011 := hcontinued
  rw [show evenK5TerminalGroup0011Row0011.maskedPrefix = [3, 17, 149] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 17, 149] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
        evenK5TerminalGroup0011TwistLookup [3, 17, 149] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0011_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0011_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0011FinalRows0011 := hlocal

theorem evenK5TerminalGroup0011Row0011_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0011.maskedPrefix).counts = evenK5TerminalGroup0011Row0011.counts.toBitVec := by
  rw [evenK5TerminalGroup0011Row0011_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 11 emptyBitVecCounts) evenK5TerminalGroup0011_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0011Row0011_counts_fit :
    evenK5TerminalGroup0011Row0011.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0011Row0011, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0011Row0012_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0012.maskedPrefix = evenK5TerminalGroup0011FinalRows0012 := by
  have hrow := congrArg
    (fun rows => rows.getD 12 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0011_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [151] evenK5TerminalGroup0011CommonRows = evenK5TerminalGroup0011FinalRows0012 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 151] = evenK5TerminalGroup0011FinalRows0012 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 151] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [151]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
            evenK5TerminalGroup0011TwistLookup [3, 17]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0011NormalLookup evenK5TerminalGroup0011TwistLookup
          [3, 17] [151]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [151] evenK5TerminalGroup0011CommonRows := by
        rw [evenK5TerminalGroup0011_common_rows]
      _ = evenK5TerminalGroup0011FinalRows0012 := hcontinued
  rw [show evenK5TerminalGroup0011Row0012.maskedPrefix = [3, 17, 151] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 17, 151] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
        evenK5TerminalGroup0011TwistLookup [3, 17, 151] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0011_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0011_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0011FinalRows0012 := hlocal

theorem evenK5TerminalGroup0011Row0012_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0012.maskedPrefix).counts = evenK5TerminalGroup0011Row0012.counts.toBitVec := by
  rw [evenK5TerminalGroup0011Row0012_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 12 emptyBitVecCounts) evenK5TerminalGroup0011_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0011Row0012_counts_fit :
    evenK5TerminalGroup0011Row0012.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0011Row0012, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0011Row0013_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0013.maskedPrefix = evenK5TerminalGroup0011FinalRows0013 := by
  have hrow := congrArg
    (fun rows => rows.getD 13 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0011_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [157] evenK5TerminalGroup0011CommonRows = evenK5TerminalGroup0011FinalRows0013 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 157] = evenK5TerminalGroup0011FinalRows0013 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 157] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [157]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
            evenK5TerminalGroup0011TwistLookup [3, 17]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0011NormalLookup evenK5TerminalGroup0011TwistLookup
          [3, 17] [157]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [157] evenK5TerminalGroup0011CommonRows := by
        rw [evenK5TerminalGroup0011_common_rows]
      _ = evenK5TerminalGroup0011FinalRows0013 := hcontinued
  rw [show evenK5TerminalGroup0011Row0013.maskedPrefix = [3, 17, 157] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 17, 157] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
        evenK5TerminalGroup0011TwistLookup [3, 17, 157] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0011_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0011_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0011FinalRows0013 := hlocal

theorem evenK5TerminalGroup0011Row0013_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0013.maskedPrefix).counts = evenK5TerminalGroup0011Row0013.counts.toBitVec := by
  rw [evenK5TerminalGroup0011Row0013_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 13 emptyBitVecCounts) evenK5TerminalGroup0011_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0011Row0013_counts_fit :
    evenK5TerminalGroup0011Row0013.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0011Row0013, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0011Row0014_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0014.maskedPrefix = evenK5TerminalGroup0011FinalRows0014 := by
  have hrow := congrArg
    (fun rows => rows.getD 14 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0011_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [163] evenK5TerminalGroup0011CommonRows = evenK5TerminalGroup0011FinalRows0014 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 163] = evenK5TerminalGroup0011FinalRows0014 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 163] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [163]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
            evenK5TerminalGroup0011TwistLookup [3, 17]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0011NormalLookup evenK5TerminalGroup0011TwistLookup
          [3, 17] [163]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [163] evenK5TerminalGroup0011CommonRows := by
        rw [evenK5TerminalGroup0011_common_rows]
      _ = evenK5TerminalGroup0011FinalRows0014 := hcontinued
  rw [show evenK5TerminalGroup0011Row0014.maskedPrefix = [3, 17, 163] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 17, 163] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
        evenK5TerminalGroup0011TwistLookup [3, 17, 163] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0011_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0011_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0011FinalRows0014 := hlocal

theorem evenK5TerminalGroup0011Row0014_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0014.maskedPrefix).counts = evenK5TerminalGroup0011Row0014.counts.toBitVec := by
  rw [evenK5TerminalGroup0011Row0014_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 14 emptyBitVecCounts) evenK5TerminalGroup0011_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0011Row0014_counts_fit :
    evenK5TerminalGroup0011Row0014.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0011Row0014, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0011Row0015_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0015.maskedPrefix = evenK5TerminalGroup0011FinalRows0015 := by
  have hrow := congrArg
    (fun rows => rows.getD 15 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0011_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [167] evenK5TerminalGroup0011CommonRows = evenK5TerminalGroup0011FinalRows0015 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 167] = evenK5TerminalGroup0011FinalRows0015 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [3, 17, 167] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [167]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
            evenK5TerminalGroup0011TwistLookup [3, 17]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0011NormalLookup evenK5TerminalGroup0011TwistLookup
          [3, 17] [167]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0011NormalLookup
          evenK5TerminalGroup0011TwistLookup [167] evenK5TerminalGroup0011CommonRows := by
        rw [evenK5TerminalGroup0011_common_rows]
      _ = evenK5TerminalGroup0011FinalRows0015 := hcontinued
  rw [show evenK5TerminalGroup0011Row0015.maskedPrefix = [3, 17, 167] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 17, 167] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0011NormalLookup
        evenK5TerminalGroup0011TwistLookup [3, 17, 167] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0011_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0011_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0011FinalRows0015 := hlocal

theorem evenK5TerminalGroup0011Row0015_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0011Row0015.maskedPrefix).counts = evenK5TerminalGroup0011Row0015.counts.toBitVec := by
  rw [evenK5TerminalGroup0011Row0015_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 15 emptyBitVecCounts) evenK5TerminalGroup0011_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0011Row0015_counts_fit :
    evenK5TerminalGroup0011Row0015.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0011Row0015, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

#print axioms evenK5TerminalGroup0011Row0015_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
