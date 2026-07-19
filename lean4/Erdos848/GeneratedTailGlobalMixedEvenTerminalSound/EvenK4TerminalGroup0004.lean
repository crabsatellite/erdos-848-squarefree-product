import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.TailGlobalMixedEvenTerminalActualSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK4TerminalGroup0004
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0004
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0005

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

private def emptyBitVecCounts : Erdos848.GlobalMixedEvenBitVecCounts :=
  (0, 0, 0, 0, 0, 0, 0, 0)

theorem evenK4TerminalGroup0004_normal_lookup_eq
    {p : Nat} (hp : p ∈ [3, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431]) :
    normalQrMaskWords p = evenK4TerminalGroup0004NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK4TerminalGroup0004NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 337) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 347) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 349) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 353) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 359) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 367) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 373) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 379) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 383) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 389) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 397) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 401) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 409) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 419) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 421) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004NormalLookup] using (normalQrMaskWords_eq_group0005 (p := 431) (by norm_num) (by norm_num))

theorem evenK4TerminalGroup0004_twist_lookup_eq
    {p : Nat} (hp : p ∈ [3, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431]) :
    twistQrMaskWords p = evenK4TerminalGroup0004TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK4TerminalGroup0004TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 337) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 347) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 349) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 353) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 359) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 367) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 373) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 379) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 383) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 389) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 397) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 401) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 409) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 419) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 421) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0004TwistLookup] using (twistQrMaskWords_eq_group0005 (p := 431) (by norm_num) (by norm_num))

theorem evenK4TerminalGroup0004Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0000.maskedPrefix = evenK4TerminalGroup0004FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0004_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [337] evenK4TerminalGroup0004CommonRows = evenK4TerminalGroup0004FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 337] = evenK4TerminalGroup0004FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 337] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [337]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
            evenK4TerminalGroup0004TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0004NormalLookup evenK4TerminalGroup0004TwistLookup
          [3] [337]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [337] evenK4TerminalGroup0004CommonRows := by
        rw [evenK4TerminalGroup0004_common_rows]
      _ = evenK4TerminalGroup0004FinalRows0000 := hcontinued
  rw [show evenK4TerminalGroup0004Row0000.maskedPrefix = [3, 337] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 337] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
        evenK4TerminalGroup0004TwistLookup [3, 337] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0004_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0004_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0004FinalRows0000 := hlocal

theorem evenK4TerminalGroup0004Row0000_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0000.maskedPrefix).counts = evenK4TerminalGroup0004Row0000.counts.toBitVec := by
  rw [evenK4TerminalGroup0004Row0000_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 0 emptyBitVecCounts) evenK4TerminalGroup0004_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0004Row0000_counts_fit :
    evenK4TerminalGroup0004Row0000.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0004Row0000, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0004Row0001_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0001.maskedPrefix = evenK4TerminalGroup0004FinalRows0001 := by
  have hrow := congrArg
    (fun rows => rows.getD 1 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0004_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [347] evenK4TerminalGroup0004CommonRows = evenK4TerminalGroup0004FinalRows0001 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 347] = evenK4TerminalGroup0004FinalRows0001 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 347] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [347]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
            evenK4TerminalGroup0004TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0004NormalLookup evenK4TerminalGroup0004TwistLookup
          [3] [347]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [347] evenK4TerminalGroup0004CommonRows := by
        rw [evenK4TerminalGroup0004_common_rows]
      _ = evenK4TerminalGroup0004FinalRows0001 := hcontinued
  rw [show evenK4TerminalGroup0004Row0001.maskedPrefix = [3, 347] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 347] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
        evenK4TerminalGroup0004TwistLookup [3, 347] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0004_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0004_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0004FinalRows0001 := hlocal

theorem evenK4TerminalGroup0004Row0001_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0001.maskedPrefix).counts = evenK4TerminalGroup0004Row0001.counts.toBitVec := by
  rw [evenK4TerminalGroup0004Row0001_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 1 emptyBitVecCounts) evenK4TerminalGroup0004_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0004Row0001_counts_fit :
    evenK4TerminalGroup0004Row0001.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0004Row0001, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0004Row0002_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0002.maskedPrefix = evenK4TerminalGroup0004FinalRows0002 := by
  have hrow := congrArg
    (fun rows => rows.getD 2 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0004_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [349] evenK4TerminalGroup0004CommonRows = evenK4TerminalGroup0004FinalRows0002 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 349] = evenK4TerminalGroup0004FinalRows0002 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 349] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [349]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
            evenK4TerminalGroup0004TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0004NormalLookup evenK4TerminalGroup0004TwistLookup
          [3] [349]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [349] evenK4TerminalGroup0004CommonRows := by
        rw [evenK4TerminalGroup0004_common_rows]
      _ = evenK4TerminalGroup0004FinalRows0002 := hcontinued
  rw [show evenK4TerminalGroup0004Row0002.maskedPrefix = [3, 349] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 349] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
        evenK4TerminalGroup0004TwistLookup [3, 349] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0004_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0004_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0004FinalRows0002 := hlocal

theorem evenK4TerminalGroup0004Row0002_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0002.maskedPrefix).counts = evenK4TerminalGroup0004Row0002.counts.toBitVec := by
  rw [evenK4TerminalGroup0004Row0002_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 2 emptyBitVecCounts) evenK4TerminalGroup0004_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0004Row0002_counts_fit :
    evenK4TerminalGroup0004Row0002.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0004Row0002, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0004Row0003_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0003.maskedPrefix = evenK4TerminalGroup0004FinalRows0003 := by
  have hrow := congrArg
    (fun rows => rows.getD 3 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0004_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [353] evenK4TerminalGroup0004CommonRows = evenK4TerminalGroup0004FinalRows0003 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 353] = evenK4TerminalGroup0004FinalRows0003 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 353] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [353]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
            evenK4TerminalGroup0004TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0004NormalLookup evenK4TerminalGroup0004TwistLookup
          [3] [353]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [353] evenK4TerminalGroup0004CommonRows := by
        rw [evenK4TerminalGroup0004_common_rows]
      _ = evenK4TerminalGroup0004FinalRows0003 := hcontinued
  rw [show evenK4TerminalGroup0004Row0003.maskedPrefix = [3, 353] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 353] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
        evenK4TerminalGroup0004TwistLookup [3, 353] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0004_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0004_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0004FinalRows0003 := hlocal

theorem evenK4TerminalGroup0004Row0003_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0003.maskedPrefix).counts = evenK4TerminalGroup0004Row0003.counts.toBitVec := by
  rw [evenK4TerminalGroup0004Row0003_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 3 emptyBitVecCounts) evenK4TerminalGroup0004_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0004Row0003_counts_fit :
    evenK4TerminalGroup0004Row0003.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0004Row0003, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0004Row0004_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0004.maskedPrefix = evenK4TerminalGroup0004FinalRows0004 := by
  have hrow := congrArg
    (fun rows => rows.getD 4 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0004_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [359] evenK4TerminalGroup0004CommonRows = evenK4TerminalGroup0004FinalRows0004 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 359] = evenK4TerminalGroup0004FinalRows0004 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 359] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [359]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
            evenK4TerminalGroup0004TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0004NormalLookup evenK4TerminalGroup0004TwistLookup
          [3] [359]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [359] evenK4TerminalGroup0004CommonRows := by
        rw [evenK4TerminalGroup0004_common_rows]
      _ = evenK4TerminalGroup0004FinalRows0004 := hcontinued
  rw [show evenK4TerminalGroup0004Row0004.maskedPrefix = [3, 359] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 359] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
        evenK4TerminalGroup0004TwistLookup [3, 359] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0004_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0004_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0004FinalRows0004 := hlocal

theorem evenK4TerminalGroup0004Row0004_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0004.maskedPrefix).counts = evenK4TerminalGroup0004Row0004.counts.toBitVec := by
  rw [evenK4TerminalGroup0004Row0004_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 4 emptyBitVecCounts) evenK4TerminalGroup0004_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0004Row0004_counts_fit :
    evenK4TerminalGroup0004Row0004.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0004Row0004, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0004Row0005_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0005.maskedPrefix = evenK4TerminalGroup0004FinalRows0005 := by
  have hrow := congrArg
    (fun rows => rows.getD 5 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0004_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [367] evenK4TerminalGroup0004CommonRows = evenK4TerminalGroup0004FinalRows0005 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 367] = evenK4TerminalGroup0004FinalRows0005 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 367] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [367]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
            evenK4TerminalGroup0004TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0004NormalLookup evenK4TerminalGroup0004TwistLookup
          [3] [367]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [367] evenK4TerminalGroup0004CommonRows := by
        rw [evenK4TerminalGroup0004_common_rows]
      _ = evenK4TerminalGroup0004FinalRows0005 := hcontinued
  rw [show evenK4TerminalGroup0004Row0005.maskedPrefix = [3, 367] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 367] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
        evenK4TerminalGroup0004TwistLookup [3, 367] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0004_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0004_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0004FinalRows0005 := hlocal

theorem evenK4TerminalGroup0004Row0005_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0005.maskedPrefix).counts = evenK4TerminalGroup0004Row0005.counts.toBitVec := by
  rw [evenK4TerminalGroup0004Row0005_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 5 emptyBitVecCounts) evenK4TerminalGroup0004_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0004Row0005_counts_fit :
    evenK4TerminalGroup0004Row0005.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0004Row0005, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0004Row0006_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0006.maskedPrefix = evenK4TerminalGroup0004FinalRows0006 := by
  have hrow := congrArg
    (fun rows => rows.getD 6 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0004_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [373] evenK4TerminalGroup0004CommonRows = evenK4TerminalGroup0004FinalRows0006 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 373] = evenK4TerminalGroup0004FinalRows0006 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 373] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [373]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
            evenK4TerminalGroup0004TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0004NormalLookup evenK4TerminalGroup0004TwistLookup
          [3] [373]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [373] evenK4TerminalGroup0004CommonRows := by
        rw [evenK4TerminalGroup0004_common_rows]
      _ = evenK4TerminalGroup0004FinalRows0006 := hcontinued
  rw [show evenK4TerminalGroup0004Row0006.maskedPrefix = [3, 373] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 373] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
        evenK4TerminalGroup0004TwistLookup [3, 373] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0004_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0004_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0004FinalRows0006 := hlocal

theorem evenK4TerminalGroup0004Row0006_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0006.maskedPrefix).counts = evenK4TerminalGroup0004Row0006.counts.toBitVec := by
  rw [evenK4TerminalGroup0004Row0006_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 6 emptyBitVecCounts) evenK4TerminalGroup0004_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0004Row0006_counts_fit :
    evenK4TerminalGroup0004Row0006.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0004Row0006, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0004Row0007_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0007.maskedPrefix = evenK4TerminalGroup0004FinalRows0007 := by
  have hrow := congrArg
    (fun rows => rows.getD 7 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0004_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [379] evenK4TerminalGroup0004CommonRows = evenK4TerminalGroup0004FinalRows0007 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 379] = evenK4TerminalGroup0004FinalRows0007 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 379] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [379]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
            evenK4TerminalGroup0004TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0004NormalLookup evenK4TerminalGroup0004TwistLookup
          [3] [379]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [379] evenK4TerminalGroup0004CommonRows := by
        rw [evenK4TerminalGroup0004_common_rows]
      _ = evenK4TerminalGroup0004FinalRows0007 := hcontinued
  rw [show evenK4TerminalGroup0004Row0007.maskedPrefix = [3, 379] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 379] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
        evenK4TerminalGroup0004TwistLookup [3, 379] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0004_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0004_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0004FinalRows0007 := hlocal

theorem evenK4TerminalGroup0004Row0007_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0007.maskedPrefix).counts = evenK4TerminalGroup0004Row0007.counts.toBitVec := by
  rw [evenK4TerminalGroup0004Row0007_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 7 emptyBitVecCounts) evenK4TerminalGroup0004_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0004Row0007_counts_fit :
    evenK4TerminalGroup0004Row0007.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0004Row0007, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0004Row0008_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0008.maskedPrefix = evenK4TerminalGroup0004FinalRows0008 := by
  have hrow := congrArg
    (fun rows => rows.getD 8 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0004_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [383] evenK4TerminalGroup0004CommonRows = evenK4TerminalGroup0004FinalRows0008 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 383] = evenK4TerminalGroup0004FinalRows0008 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 383] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [383]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
            evenK4TerminalGroup0004TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0004NormalLookup evenK4TerminalGroup0004TwistLookup
          [3] [383]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [383] evenK4TerminalGroup0004CommonRows := by
        rw [evenK4TerminalGroup0004_common_rows]
      _ = evenK4TerminalGroup0004FinalRows0008 := hcontinued
  rw [show evenK4TerminalGroup0004Row0008.maskedPrefix = [3, 383] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 383] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
        evenK4TerminalGroup0004TwistLookup [3, 383] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0004_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0004_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0004FinalRows0008 := hlocal

theorem evenK4TerminalGroup0004Row0008_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0008.maskedPrefix).counts = evenK4TerminalGroup0004Row0008.counts.toBitVec := by
  rw [evenK4TerminalGroup0004Row0008_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 8 emptyBitVecCounts) evenK4TerminalGroup0004_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0004Row0008_counts_fit :
    evenK4TerminalGroup0004Row0008.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0004Row0008, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0004Row0009_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0009.maskedPrefix = evenK4TerminalGroup0004FinalRows0009 := by
  have hrow := congrArg
    (fun rows => rows.getD 9 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0004_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [389] evenK4TerminalGroup0004CommonRows = evenK4TerminalGroup0004FinalRows0009 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 389] = evenK4TerminalGroup0004FinalRows0009 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 389] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [389]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
            evenK4TerminalGroup0004TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0004NormalLookup evenK4TerminalGroup0004TwistLookup
          [3] [389]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [389] evenK4TerminalGroup0004CommonRows := by
        rw [evenK4TerminalGroup0004_common_rows]
      _ = evenK4TerminalGroup0004FinalRows0009 := hcontinued
  rw [show evenK4TerminalGroup0004Row0009.maskedPrefix = [3, 389] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 389] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
        evenK4TerminalGroup0004TwistLookup [3, 389] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0004_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0004_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0004FinalRows0009 := hlocal

theorem evenK4TerminalGroup0004Row0009_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0009.maskedPrefix).counts = evenK4TerminalGroup0004Row0009.counts.toBitVec := by
  rw [evenK4TerminalGroup0004Row0009_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 9 emptyBitVecCounts) evenK4TerminalGroup0004_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0004Row0009_counts_fit :
    evenK4TerminalGroup0004Row0009.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0004Row0009, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0004Row0010_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0010.maskedPrefix = evenK4TerminalGroup0004FinalRows0010 := by
  have hrow := congrArg
    (fun rows => rows.getD 10 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0004_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [397] evenK4TerminalGroup0004CommonRows = evenK4TerminalGroup0004FinalRows0010 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 397] = evenK4TerminalGroup0004FinalRows0010 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 397] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [397]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
            evenK4TerminalGroup0004TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0004NormalLookup evenK4TerminalGroup0004TwistLookup
          [3] [397]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [397] evenK4TerminalGroup0004CommonRows := by
        rw [evenK4TerminalGroup0004_common_rows]
      _ = evenK4TerminalGroup0004FinalRows0010 := hcontinued
  rw [show evenK4TerminalGroup0004Row0010.maskedPrefix = [3, 397] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 397] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
        evenK4TerminalGroup0004TwistLookup [3, 397] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0004_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0004_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0004FinalRows0010 := hlocal

theorem evenK4TerminalGroup0004Row0010_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0010.maskedPrefix).counts = evenK4TerminalGroup0004Row0010.counts.toBitVec := by
  rw [evenK4TerminalGroup0004Row0010_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 10 emptyBitVecCounts) evenK4TerminalGroup0004_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0004Row0010_counts_fit :
    evenK4TerminalGroup0004Row0010.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0004Row0010, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0004Row0011_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0011.maskedPrefix = evenK4TerminalGroup0004FinalRows0011 := by
  have hrow := congrArg
    (fun rows => rows.getD 11 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0004_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [401] evenK4TerminalGroup0004CommonRows = evenK4TerminalGroup0004FinalRows0011 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 401] = evenK4TerminalGroup0004FinalRows0011 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 401] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [401]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
            evenK4TerminalGroup0004TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0004NormalLookup evenK4TerminalGroup0004TwistLookup
          [3] [401]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [401] evenK4TerminalGroup0004CommonRows := by
        rw [evenK4TerminalGroup0004_common_rows]
      _ = evenK4TerminalGroup0004FinalRows0011 := hcontinued
  rw [show evenK4TerminalGroup0004Row0011.maskedPrefix = [3, 401] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 401] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
        evenK4TerminalGroup0004TwistLookup [3, 401] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0004_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0004_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0004FinalRows0011 := hlocal

theorem evenK4TerminalGroup0004Row0011_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0011.maskedPrefix).counts = evenK4TerminalGroup0004Row0011.counts.toBitVec := by
  rw [evenK4TerminalGroup0004Row0011_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 11 emptyBitVecCounts) evenK4TerminalGroup0004_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0004Row0011_counts_fit :
    evenK4TerminalGroup0004Row0011.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0004Row0011, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0004Row0012_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0012.maskedPrefix = evenK4TerminalGroup0004FinalRows0012 := by
  have hrow := congrArg
    (fun rows => rows.getD 12 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0004_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [409] evenK4TerminalGroup0004CommonRows = evenK4TerminalGroup0004FinalRows0012 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 409] = evenK4TerminalGroup0004FinalRows0012 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 409] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [409]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
            evenK4TerminalGroup0004TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0004NormalLookup evenK4TerminalGroup0004TwistLookup
          [3] [409]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [409] evenK4TerminalGroup0004CommonRows := by
        rw [evenK4TerminalGroup0004_common_rows]
      _ = evenK4TerminalGroup0004FinalRows0012 := hcontinued
  rw [show evenK4TerminalGroup0004Row0012.maskedPrefix = [3, 409] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 409] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
        evenK4TerminalGroup0004TwistLookup [3, 409] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0004_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0004_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0004FinalRows0012 := hlocal

theorem evenK4TerminalGroup0004Row0012_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0012.maskedPrefix).counts = evenK4TerminalGroup0004Row0012.counts.toBitVec := by
  rw [evenK4TerminalGroup0004Row0012_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 12 emptyBitVecCounts) evenK4TerminalGroup0004_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0004Row0012_counts_fit :
    evenK4TerminalGroup0004Row0012.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0004Row0012, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0004Row0013_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0013.maskedPrefix = evenK4TerminalGroup0004FinalRows0013 := by
  have hrow := congrArg
    (fun rows => rows.getD 13 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0004_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [419] evenK4TerminalGroup0004CommonRows = evenK4TerminalGroup0004FinalRows0013 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 419] = evenK4TerminalGroup0004FinalRows0013 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 419] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [419]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
            evenK4TerminalGroup0004TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0004NormalLookup evenK4TerminalGroup0004TwistLookup
          [3] [419]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [419] evenK4TerminalGroup0004CommonRows := by
        rw [evenK4TerminalGroup0004_common_rows]
      _ = evenK4TerminalGroup0004FinalRows0013 := hcontinued
  rw [show evenK4TerminalGroup0004Row0013.maskedPrefix = [3, 419] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 419] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
        evenK4TerminalGroup0004TwistLookup [3, 419] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0004_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0004_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0004FinalRows0013 := hlocal

theorem evenK4TerminalGroup0004Row0013_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0013.maskedPrefix).counts = evenK4TerminalGroup0004Row0013.counts.toBitVec := by
  rw [evenK4TerminalGroup0004Row0013_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 13 emptyBitVecCounts) evenK4TerminalGroup0004_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0004Row0013_counts_fit :
    evenK4TerminalGroup0004Row0013.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0004Row0013, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0004Row0014_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0014.maskedPrefix = evenK4TerminalGroup0004FinalRows0014 := by
  have hrow := congrArg
    (fun rows => rows.getD 14 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0004_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [421] evenK4TerminalGroup0004CommonRows = evenK4TerminalGroup0004FinalRows0014 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 421] = evenK4TerminalGroup0004FinalRows0014 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 421] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [421]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
            evenK4TerminalGroup0004TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0004NormalLookup evenK4TerminalGroup0004TwistLookup
          [3] [421]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [421] evenK4TerminalGroup0004CommonRows := by
        rw [evenK4TerminalGroup0004_common_rows]
      _ = evenK4TerminalGroup0004FinalRows0014 := hcontinued
  rw [show evenK4TerminalGroup0004Row0014.maskedPrefix = [3, 421] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 421] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
        evenK4TerminalGroup0004TwistLookup [3, 421] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0004_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0004_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0004FinalRows0014 := hlocal

theorem evenK4TerminalGroup0004Row0014_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0014.maskedPrefix).counts = evenK4TerminalGroup0004Row0014.counts.toBitVec := by
  rw [evenK4TerminalGroup0004Row0014_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 14 emptyBitVecCounts) evenK4TerminalGroup0004_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0004Row0014_counts_fit :
    evenK4TerminalGroup0004Row0014.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0004Row0014, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0004Row0015_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0015.maskedPrefix = evenK4TerminalGroup0004FinalRows0015 := by
  have hrow := congrArg
    (fun rows => rows.getD 15 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0004_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [431] evenK4TerminalGroup0004CommonRows = evenK4TerminalGroup0004FinalRows0015 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 431] = evenK4TerminalGroup0004FinalRows0015 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [3, 431] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [431]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
            evenK4TerminalGroup0004TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0004NormalLookup evenK4TerminalGroup0004TwistLookup
          [3] [431]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0004NormalLookup
          evenK4TerminalGroup0004TwistLookup [431] evenK4TerminalGroup0004CommonRows := by
        rw [evenK4TerminalGroup0004_common_rows]
      _ = evenK4TerminalGroup0004FinalRows0015 := hcontinued
  rw [show evenK4TerminalGroup0004Row0015.maskedPrefix = [3, 431] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 431] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0004NormalLookup
        evenK4TerminalGroup0004TwistLookup [3, 431] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0004_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0004_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0004FinalRows0015 := hlocal

theorem evenK4TerminalGroup0004Row0015_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0004Row0015.maskedPrefix).counts = evenK4TerminalGroup0004Row0015.counts.toBitVec := by
  rw [evenK4TerminalGroup0004Row0015_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 15 emptyBitVecCounts) evenK4TerminalGroup0004_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0004Row0015_counts_fit :
    evenK4TerminalGroup0004Row0015.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0004Row0015, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

#print axioms evenK4TerminalGroup0004Row0015_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
