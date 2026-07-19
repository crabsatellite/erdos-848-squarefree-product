import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.TailGlobalMixedEvenTerminalActualSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK4TerminalGroup0005
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0005

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

private def emptyBitVecCounts : Erdos848.GlobalMixedEvenBitVecCounts :=
  (0, 0, 0, 0, 0, 0, 0, 0)

theorem evenK4TerminalGroup0005_normal_lookup_eq
    {p : Nat} (hp : p ∈ [3, 7, 11, 13, 17, 19, 23, 29, 31, 37, 433, 439, 443, 449, 457, 461, 463, 467]) :
    normalQrMaskWords p = evenK4TerminalGroup0005NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK4TerminalGroup0005NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 7) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 13) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 17) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 19) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 23) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 29) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 31) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 37) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005NormalLookup] using (normalQrMaskWords_eq_group0005 (p := 433) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005NormalLookup] using (normalQrMaskWords_eq_group0005 (p := 439) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005NormalLookup] using (normalQrMaskWords_eq_group0005 (p := 443) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005NormalLookup] using (normalQrMaskWords_eq_group0005 (p := 449) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005NormalLookup] using (normalQrMaskWords_eq_group0005 (p := 457) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005NormalLookup] using (normalQrMaskWords_eq_group0005 (p := 461) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005NormalLookup] using (normalQrMaskWords_eq_group0005 (p := 463) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005NormalLookup] using (normalQrMaskWords_eq_group0005 (p := 467) (by norm_num) (by norm_num))

theorem evenK4TerminalGroup0005_twist_lookup_eq
    {p : Nat} (hp : p ∈ [3, 7, 11, 13, 17, 19, 23, 29, 31, 37, 433, 439, 443, 449, 457, 461, 463, 467]) :
    twistQrMaskWords p = evenK4TerminalGroup0005TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK4TerminalGroup0005TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 7) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 13) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 17) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 19) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 23) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 29) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 31) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 37) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005TwistLookup] using (twistQrMaskWords_eq_group0005 (p := 433) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005TwistLookup] using (twistQrMaskWords_eq_group0005 (p := 439) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005TwistLookup] using (twistQrMaskWords_eq_group0005 (p := 443) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005TwistLookup] using (twistQrMaskWords_eq_group0005 (p := 449) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005TwistLookup] using (twistQrMaskWords_eq_group0005 (p := 457) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005TwistLookup] using (twistQrMaskWords_eq_group0005 (p := 461) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005TwistLookup] using (twistQrMaskWords_eq_group0005 (p := 463) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0005TwistLookup] using (twistQrMaskWords_eq_group0005 (p := 467) (by norm_num) (by norm_num))

theorem evenK4TerminalGroup0005Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0000.maskedPrefix = evenK4TerminalGroup0005FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0005_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 433] evenK4TerminalGroup0005CommonRows = evenK4TerminalGroup0005FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 433] = evenK4TerminalGroup0005FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 433] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 433]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
            evenK4TerminalGroup0005TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0005NormalLookup evenK4TerminalGroup0005TwistLookup
          [] [3, 433]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 433] evenK4TerminalGroup0005CommonRows := by
        rw [evenK4TerminalGroup0005_common_rows]
      _ = evenK4TerminalGroup0005FinalRows0000 := hcontinued
  rw [show evenK4TerminalGroup0005Row0000.maskedPrefix = [3, 433] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 433] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
        evenK4TerminalGroup0005TwistLookup [3, 433] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0005_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0005_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0005FinalRows0000 := hlocal

theorem evenK4TerminalGroup0005Row0000_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0000.maskedPrefix).counts = evenK4TerminalGroup0005Row0000.counts.toBitVec := by
  rw [evenK4TerminalGroup0005Row0000_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 0 emptyBitVecCounts) evenK4TerminalGroup0005_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0005Row0000_counts_fit :
    evenK4TerminalGroup0005Row0000.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0005Row0000, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0005Row0001_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0001.maskedPrefix = evenK4TerminalGroup0005FinalRows0001 := by
  have hrow := congrArg
    (fun rows => rows.getD 1 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0005_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 439] evenK4TerminalGroup0005CommonRows = evenK4TerminalGroup0005FinalRows0001 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 439] = evenK4TerminalGroup0005FinalRows0001 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 439] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 439]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
            evenK4TerminalGroup0005TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0005NormalLookup evenK4TerminalGroup0005TwistLookup
          [] [3, 439]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 439] evenK4TerminalGroup0005CommonRows := by
        rw [evenK4TerminalGroup0005_common_rows]
      _ = evenK4TerminalGroup0005FinalRows0001 := hcontinued
  rw [show evenK4TerminalGroup0005Row0001.maskedPrefix = [3, 439] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 439] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
        evenK4TerminalGroup0005TwistLookup [3, 439] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0005_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0005_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0005FinalRows0001 := hlocal

theorem evenK4TerminalGroup0005Row0001_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0001.maskedPrefix).counts = evenK4TerminalGroup0005Row0001.counts.toBitVec := by
  rw [evenK4TerminalGroup0005Row0001_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 1 emptyBitVecCounts) evenK4TerminalGroup0005_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0005Row0001_counts_fit :
    evenK4TerminalGroup0005Row0001.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0005Row0001, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0005Row0002_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0002.maskedPrefix = evenK4TerminalGroup0005FinalRows0002 := by
  have hrow := congrArg
    (fun rows => rows.getD 2 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0005_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 443] evenK4TerminalGroup0005CommonRows = evenK4TerminalGroup0005FinalRows0002 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 443] = evenK4TerminalGroup0005FinalRows0002 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 443] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 443]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
            evenK4TerminalGroup0005TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0005NormalLookup evenK4TerminalGroup0005TwistLookup
          [] [3, 443]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 443] evenK4TerminalGroup0005CommonRows := by
        rw [evenK4TerminalGroup0005_common_rows]
      _ = evenK4TerminalGroup0005FinalRows0002 := hcontinued
  rw [show evenK4TerminalGroup0005Row0002.maskedPrefix = [3, 443] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 443] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
        evenK4TerminalGroup0005TwistLookup [3, 443] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0005_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0005_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0005FinalRows0002 := hlocal

theorem evenK4TerminalGroup0005Row0002_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0002.maskedPrefix).counts = evenK4TerminalGroup0005Row0002.counts.toBitVec := by
  rw [evenK4TerminalGroup0005Row0002_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 2 emptyBitVecCounts) evenK4TerminalGroup0005_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0005Row0002_counts_fit :
    evenK4TerminalGroup0005Row0002.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0005Row0002, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0005Row0003_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0003.maskedPrefix = evenK4TerminalGroup0005FinalRows0003 := by
  have hrow := congrArg
    (fun rows => rows.getD 3 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0005_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 449] evenK4TerminalGroup0005CommonRows = evenK4TerminalGroup0005FinalRows0003 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 449] = evenK4TerminalGroup0005FinalRows0003 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 449] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 449]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
            evenK4TerminalGroup0005TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0005NormalLookup evenK4TerminalGroup0005TwistLookup
          [] [3, 449]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 449] evenK4TerminalGroup0005CommonRows := by
        rw [evenK4TerminalGroup0005_common_rows]
      _ = evenK4TerminalGroup0005FinalRows0003 := hcontinued
  rw [show evenK4TerminalGroup0005Row0003.maskedPrefix = [3, 449] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 449] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
        evenK4TerminalGroup0005TwistLookup [3, 449] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0005_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0005_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0005FinalRows0003 := hlocal

theorem evenK4TerminalGroup0005Row0003_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0003.maskedPrefix).counts = evenK4TerminalGroup0005Row0003.counts.toBitVec := by
  rw [evenK4TerminalGroup0005Row0003_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 3 emptyBitVecCounts) evenK4TerminalGroup0005_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0005Row0003_counts_fit :
    evenK4TerminalGroup0005Row0003.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0005Row0003, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0005Row0004_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0004.maskedPrefix = evenK4TerminalGroup0005FinalRows0004 := by
  have hrow := congrArg
    (fun rows => rows.getD 4 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0005_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 457] evenK4TerminalGroup0005CommonRows = evenK4TerminalGroup0005FinalRows0004 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 457] = evenK4TerminalGroup0005FinalRows0004 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 457] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 457]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
            evenK4TerminalGroup0005TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0005NormalLookup evenK4TerminalGroup0005TwistLookup
          [] [3, 457]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 457] evenK4TerminalGroup0005CommonRows := by
        rw [evenK4TerminalGroup0005_common_rows]
      _ = evenK4TerminalGroup0005FinalRows0004 := hcontinued
  rw [show evenK4TerminalGroup0005Row0004.maskedPrefix = [3, 457] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 457] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
        evenK4TerminalGroup0005TwistLookup [3, 457] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0005_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0005_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0005FinalRows0004 := hlocal

theorem evenK4TerminalGroup0005Row0004_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0004.maskedPrefix).counts = evenK4TerminalGroup0005Row0004.counts.toBitVec := by
  rw [evenK4TerminalGroup0005Row0004_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 4 emptyBitVecCounts) evenK4TerminalGroup0005_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0005Row0004_counts_fit :
    evenK4TerminalGroup0005Row0004.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0005Row0004, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0005Row0005_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0005.maskedPrefix = evenK4TerminalGroup0005FinalRows0005 := by
  have hrow := congrArg
    (fun rows => rows.getD 5 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0005_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 461] evenK4TerminalGroup0005CommonRows = evenK4TerminalGroup0005FinalRows0005 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 461] = evenK4TerminalGroup0005FinalRows0005 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 461] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 461]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
            evenK4TerminalGroup0005TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0005NormalLookup evenK4TerminalGroup0005TwistLookup
          [] [3, 461]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 461] evenK4TerminalGroup0005CommonRows := by
        rw [evenK4TerminalGroup0005_common_rows]
      _ = evenK4TerminalGroup0005FinalRows0005 := hcontinued
  rw [show evenK4TerminalGroup0005Row0005.maskedPrefix = [3, 461] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 461] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
        evenK4TerminalGroup0005TwistLookup [3, 461] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0005_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0005_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0005FinalRows0005 := hlocal

theorem evenK4TerminalGroup0005Row0005_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0005.maskedPrefix).counts = evenK4TerminalGroup0005Row0005.counts.toBitVec := by
  rw [evenK4TerminalGroup0005Row0005_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 5 emptyBitVecCounts) evenK4TerminalGroup0005_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0005Row0005_counts_fit :
    evenK4TerminalGroup0005Row0005.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0005Row0005, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0005Row0006_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0006.maskedPrefix = evenK4TerminalGroup0005FinalRows0006 := by
  have hrow := congrArg
    (fun rows => rows.getD 6 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0005_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 463] evenK4TerminalGroup0005CommonRows = evenK4TerminalGroup0005FinalRows0006 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 463] = evenK4TerminalGroup0005FinalRows0006 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 463] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 463]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
            evenK4TerminalGroup0005TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0005NormalLookup evenK4TerminalGroup0005TwistLookup
          [] [3, 463]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 463] evenK4TerminalGroup0005CommonRows := by
        rw [evenK4TerminalGroup0005_common_rows]
      _ = evenK4TerminalGroup0005FinalRows0006 := hcontinued
  rw [show evenK4TerminalGroup0005Row0006.maskedPrefix = [3, 463] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 463] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
        evenK4TerminalGroup0005TwistLookup [3, 463] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0005_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0005_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0005FinalRows0006 := hlocal

theorem evenK4TerminalGroup0005Row0006_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0006.maskedPrefix).counts = evenK4TerminalGroup0005Row0006.counts.toBitVec := by
  rw [evenK4TerminalGroup0005Row0006_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 6 emptyBitVecCounts) evenK4TerminalGroup0005_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0005Row0006_counts_fit :
    evenK4TerminalGroup0005Row0006.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0005Row0006, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0005Row0007_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0007.maskedPrefix = evenK4TerminalGroup0005FinalRows0007 := by
  have hrow := congrArg
    (fun rows => rows.getD 7 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0005_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 467] evenK4TerminalGroup0005CommonRows = evenK4TerminalGroup0005FinalRows0007 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 467] = evenK4TerminalGroup0005FinalRows0007 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 467] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 467]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
            evenK4TerminalGroup0005TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0005NormalLookup evenK4TerminalGroup0005TwistLookup
          [] [3, 467]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [3, 467] evenK4TerminalGroup0005CommonRows := by
        rw [evenK4TerminalGroup0005_common_rows]
      _ = evenK4TerminalGroup0005FinalRows0007 := hcontinued
  rw [show evenK4TerminalGroup0005Row0007.maskedPrefix = [3, 467] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 467] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
        evenK4TerminalGroup0005TwistLookup [3, 467] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0005_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0005_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0005FinalRows0007 := hlocal

theorem evenK4TerminalGroup0005Row0007_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0007.maskedPrefix).counts = evenK4TerminalGroup0005Row0007.counts.toBitVec := by
  rw [evenK4TerminalGroup0005Row0007_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 7 emptyBitVecCounts) evenK4TerminalGroup0005_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0005Row0007_counts_fit :
    evenK4TerminalGroup0005Row0007.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0005Row0007, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0005Row0008_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0008.maskedPrefix = evenK4TerminalGroup0005FinalRows0008 := by
  have hrow := congrArg
    (fun rows => rows.getD 8 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0005_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 11] evenK4TerminalGroup0005CommonRows = evenK4TerminalGroup0005FinalRows0008 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 11] = evenK4TerminalGroup0005FinalRows0008 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 11] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 11]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
            evenK4TerminalGroup0005TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0005NormalLookup evenK4TerminalGroup0005TwistLookup
          [] [7, 11]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 11] evenK4TerminalGroup0005CommonRows := by
        rw [evenK4TerminalGroup0005_common_rows]
      _ = evenK4TerminalGroup0005FinalRows0008 := hcontinued
  rw [show evenK4TerminalGroup0005Row0008.maskedPrefix = [7, 11] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 11] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
        evenK4TerminalGroup0005TwistLookup [7, 11] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0005_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0005_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0005FinalRows0008 := hlocal

theorem evenK4TerminalGroup0005Row0008_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0008.maskedPrefix).counts = evenK4TerminalGroup0005Row0008.counts.toBitVec := by
  rw [evenK4TerminalGroup0005Row0008_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 8 emptyBitVecCounts) evenK4TerminalGroup0005_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0005Row0008_counts_fit :
    evenK4TerminalGroup0005Row0008.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0005Row0008, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0005Row0009_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0009.maskedPrefix = evenK4TerminalGroup0005FinalRows0009 := by
  have hrow := congrArg
    (fun rows => rows.getD 9 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0005_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 13] evenK4TerminalGroup0005CommonRows = evenK4TerminalGroup0005FinalRows0009 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 13] = evenK4TerminalGroup0005FinalRows0009 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 13] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 13]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
            evenK4TerminalGroup0005TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0005NormalLookup evenK4TerminalGroup0005TwistLookup
          [] [7, 13]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 13] evenK4TerminalGroup0005CommonRows := by
        rw [evenK4TerminalGroup0005_common_rows]
      _ = evenK4TerminalGroup0005FinalRows0009 := hcontinued
  rw [show evenK4TerminalGroup0005Row0009.maskedPrefix = [7, 13] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 13] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
        evenK4TerminalGroup0005TwistLookup [7, 13] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0005_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0005_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0005FinalRows0009 := hlocal

theorem evenK4TerminalGroup0005Row0009_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0009.maskedPrefix).counts = evenK4TerminalGroup0005Row0009.counts.toBitVec := by
  rw [evenK4TerminalGroup0005Row0009_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 9 emptyBitVecCounts) evenK4TerminalGroup0005_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0005Row0009_counts_fit :
    evenK4TerminalGroup0005Row0009.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0005Row0009, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0005Row0010_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0010.maskedPrefix = evenK4TerminalGroup0005FinalRows0010 := by
  have hrow := congrArg
    (fun rows => rows.getD 10 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0005_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 17] evenK4TerminalGroup0005CommonRows = evenK4TerminalGroup0005FinalRows0010 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 17] = evenK4TerminalGroup0005FinalRows0010 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 17] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 17]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
            evenK4TerminalGroup0005TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0005NormalLookup evenK4TerminalGroup0005TwistLookup
          [] [7, 17]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 17] evenK4TerminalGroup0005CommonRows := by
        rw [evenK4TerminalGroup0005_common_rows]
      _ = evenK4TerminalGroup0005FinalRows0010 := hcontinued
  rw [show evenK4TerminalGroup0005Row0010.maskedPrefix = [7, 17] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 17] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
        evenK4TerminalGroup0005TwistLookup [7, 17] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0005_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0005_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0005FinalRows0010 := hlocal

theorem evenK4TerminalGroup0005Row0010_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0010.maskedPrefix).counts = evenK4TerminalGroup0005Row0010.counts.toBitVec := by
  rw [evenK4TerminalGroup0005Row0010_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 10 emptyBitVecCounts) evenK4TerminalGroup0005_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0005Row0010_counts_fit :
    evenK4TerminalGroup0005Row0010.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0005Row0010, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0005Row0011_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0011.maskedPrefix = evenK4TerminalGroup0005FinalRows0011 := by
  have hrow := congrArg
    (fun rows => rows.getD 11 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0005_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 19] evenK4TerminalGroup0005CommonRows = evenK4TerminalGroup0005FinalRows0011 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 19] = evenK4TerminalGroup0005FinalRows0011 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 19] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 19]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
            evenK4TerminalGroup0005TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0005NormalLookup evenK4TerminalGroup0005TwistLookup
          [] [7, 19]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 19] evenK4TerminalGroup0005CommonRows := by
        rw [evenK4TerminalGroup0005_common_rows]
      _ = evenK4TerminalGroup0005FinalRows0011 := hcontinued
  rw [show evenK4TerminalGroup0005Row0011.maskedPrefix = [7, 19] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 19] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
        evenK4TerminalGroup0005TwistLookup [7, 19] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0005_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0005_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0005FinalRows0011 := hlocal

theorem evenK4TerminalGroup0005Row0011_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0011.maskedPrefix).counts = evenK4TerminalGroup0005Row0011.counts.toBitVec := by
  rw [evenK4TerminalGroup0005Row0011_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 11 emptyBitVecCounts) evenK4TerminalGroup0005_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0005Row0011_counts_fit :
    evenK4TerminalGroup0005Row0011.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0005Row0011, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0005Row0012_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0012.maskedPrefix = evenK4TerminalGroup0005FinalRows0012 := by
  have hrow := congrArg
    (fun rows => rows.getD 12 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0005_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 23] evenK4TerminalGroup0005CommonRows = evenK4TerminalGroup0005FinalRows0012 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 23] = evenK4TerminalGroup0005FinalRows0012 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 23] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 23]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
            evenK4TerminalGroup0005TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0005NormalLookup evenK4TerminalGroup0005TwistLookup
          [] [7, 23]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 23] evenK4TerminalGroup0005CommonRows := by
        rw [evenK4TerminalGroup0005_common_rows]
      _ = evenK4TerminalGroup0005FinalRows0012 := hcontinued
  rw [show evenK4TerminalGroup0005Row0012.maskedPrefix = [7, 23] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 23] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
        evenK4TerminalGroup0005TwistLookup [7, 23] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0005_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0005_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0005FinalRows0012 := hlocal

theorem evenK4TerminalGroup0005Row0012_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0012.maskedPrefix).counts = evenK4TerminalGroup0005Row0012.counts.toBitVec := by
  rw [evenK4TerminalGroup0005Row0012_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 12 emptyBitVecCounts) evenK4TerminalGroup0005_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0005Row0012_counts_fit :
    evenK4TerminalGroup0005Row0012.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0005Row0012, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0005Row0013_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0013.maskedPrefix = evenK4TerminalGroup0005FinalRows0013 := by
  have hrow := congrArg
    (fun rows => rows.getD 13 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0005_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 29] evenK4TerminalGroup0005CommonRows = evenK4TerminalGroup0005FinalRows0013 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 29] = evenK4TerminalGroup0005FinalRows0013 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 29] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 29]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
            evenK4TerminalGroup0005TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0005NormalLookup evenK4TerminalGroup0005TwistLookup
          [] [7, 29]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 29] evenK4TerminalGroup0005CommonRows := by
        rw [evenK4TerminalGroup0005_common_rows]
      _ = evenK4TerminalGroup0005FinalRows0013 := hcontinued
  rw [show evenK4TerminalGroup0005Row0013.maskedPrefix = [7, 29] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 29] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
        evenK4TerminalGroup0005TwistLookup [7, 29] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0005_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0005_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0005FinalRows0013 := hlocal

theorem evenK4TerminalGroup0005Row0013_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0013.maskedPrefix).counts = evenK4TerminalGroup0005Row0013.counts.toBitVec := by
  rw [evenK4TerminalGroup0005Row0013_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 13 emptyBitVecCounts) evenK4TerminalGroup0005_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0005Row0013_counts_fit :
    evenK4TerminalGroup0005Row0013.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0005Row0013, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0005Row0014_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0014.maskedPrefix = evenK4TerminalGroup0005FinalRows0014 := by
  have hrow := congrArg
    (fun rows => rows.getD 14 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0005_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 31] evenK4TerminalGroup0005CommonRows = evenK4TerminalGroup0005FinalRows0014 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 31] = evenK4TerminalGroup0005FinalRows0014 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 31] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 31]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
            evenK4TerminalGroup0005TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0005NormalLookup evenK4TerminalGroup0005TwistLookup
          [] [7, 31]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 31] evenK4TerminalGroup0005CommonRows := by
        rw [evenK4TerminalGroup0005_common_rows]
      _ = evenK4TerminalGroup0005FinalRows0014 := hcontinued
  rw [show evenK4TerminalGroup0005Row0014.maskedPrefix = [7, 31] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 31] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
        evenK4TerminalGroup0005TwistLookup [7, 31] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0005_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0005_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0005FinalRows0014 := hlocal

theorem evenK4TerminalGroup0005Row0014_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0014.maskedPrefix).counts = evenK4TerminalGroup0005Row0014.counts.toBitVec := by
  rw [evenK4TerminalGroup0005Row0014_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 14 emptyBitVecCounts) evenK4TerminalGroup0005_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0005Row0014_counts_fit :
    evenK4TerminalGroup0005Row0014.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0005Row0014, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0005Row0015_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0015.maskedPrefix = evenK4TerminalGroup0005FinalRows0015 := by
  have hrow := congrArg
    (fun rows => rows.getD 15 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0005_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 37] evenK4TerminalGroup0005CommonRows = evenK4TerminalGroup0005FinalRows0015 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 37] = evenK4TerminalGroup0005FinalRows0015 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 37] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 37]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
            evenK4TerminalGroup0005TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0005NormalLookup evenK4TerminalGroup0005TwistLookup
          [] [7, 37]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0005NormalLookup
          evenK4TerminalGroup0005TwistLookup [7, 37] evenK4TerminalGroup0005CommonRows := by
        rw [evenK4TerminalGroup0005_common_rows]
      _ = evenK4TerminalGroup0005FinalRows0015 := hcontinued
  rw [show evenK4TerminalGroup0005Row0015.maskedPrefix = [7, 37] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 37] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0005NormalLookup
        evenK4TerminalGroup0005TwistLookup [7, 37] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0005_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0005_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0005FinalRows0015 := hlocal

theorem evenK4TerminalGroup0005Row0015_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0005Row0015.maskedPrefix).counts = evenK4TerminalGroup0005Row0015.counts.toBitVec := by
  rw [evenK4TerminalGroup0005Row0015_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 15 emptyBitVecCounts) evenK4TerminalGroup0005_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0005Row0015_counts_fit :
    evenK4TerminalGroup0005Row0015.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0005Row0015, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

#print axioms evenK4TerminalGroup0005Row0015_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
