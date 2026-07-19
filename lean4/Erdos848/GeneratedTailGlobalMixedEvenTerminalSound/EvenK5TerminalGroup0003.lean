import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.TailGlobalMixedEvenTerminalActualSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK5TerminalGroup0003
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0003

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

private def emptyBitVecCounts : Erdos848.GlobalMixedEvenBitVecCounts :=
  (0, 0, 0, 0, 0, 0, 0, 0)

theorem evenK5TerminalGroup0003_normal_lookup_eq
    {p : Nat} (hp : p ∈ [3, 7, 11, 13, 17, 19, 23, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311]) :
    normalQrMaskWords p = evenK5TerminalGroup0003NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 7) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 13) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 17) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 19) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 23) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 241) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 251) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 257) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 263) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 269) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 271) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 277) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 281) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 283) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 293) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 307) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 311) (by norm_num) (by norm_num))

theorem evenK5TerminalGroup0003_twist_lookup_eq
    {p : Nat} (hp : p ∈ [3, 7, 11, 13, 17, 19, 23, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311]) :
    twistQrMaskWords p = evenK5TerminalGroup0003TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 3) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 7) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 13) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 17) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 19) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 23) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 241) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 251) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 257) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 263) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 269) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 271) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 277) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 281) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 283) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 293) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 307) (by norm_num) (by norm_num))
  · simpa [evenK5TerminalGroup0003TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 311) (by norm_num) (by norm_num))

theorem evenK5TerminalGroup0003Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0000.maskedPrefix = evenK5TerminalGroup0003FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0003_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 241] evenK5TerminalGroup0003CommonRows = evenK5TerminalGroup0003FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 241] = evenK5TerminalGroup0003FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 241] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 241]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
            evenK5TerminalGroup0003TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0003NormalLookup evenK5TerminalGroup0003TwistLookup
          [3] [7, 241]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 241] evenK5TerminalGroup0003CommonRows := by
        rw [evenK5TerminalGroup0003_common_rows]
      _ = evenK5TerminalGroup0003FinalRows0000 := hcontinued
  rw [show evenK5TerminalGroup0003Row0000.maskedPrefix = [3, 7, 241] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 7, 241] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
        evenK5TerminalGroup0003TwistLookup [3, 7, 241] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0003_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0003_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0003FinalRows0000 := hlocal

theorem evenK5TerminalGroup0003Row0000_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0000.maskedPrefix).counts = evenK5TerminalGroup0003Row0000.counts.toBitVec := by
  rw [evenK5TerminalGroup0003Row0000_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 0 emptyBitVecCounts) evenK5TerminalGroup0003_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0003Row0000_counts_fit :
    evenK5TerminalGroup0003Row0000.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0003Row0000, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0003Row0001_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0001.maskedPrefix = evenK5TerminalGroup0003FinalRows0001 := by
  have hrow := congrArg
    (fun rows => rows.getD 1 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0003_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 251] evenK5TerminalGroup0003CommonRows = evenK5TerminalGroup0003FinalRows0001 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 251] = evenK5TerminalGroup0003FinalRows0001 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 251] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 251]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
            evenK5TerminalGroup0003TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0003NormalLookup evenK5TerminalGroup0003TwistLookup
          [3] [7, 251]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 251] evenK5TerminalGroup0003CommonRows := by
        rw [evenK5TerminalGroup0003_common_rows]
      _ = evenK5TerminalGroup0003FinalRows0001 := hcontinued
  rw [show evenK5TerminalGroup0003Row0001.maskedPrefix = [3, 7, 251] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 7, 251] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
        evenK5TerminalGroup0003TwistLookup [3, 7, 251] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0003_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0003_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0003FinalRows0001 := hlocal

theorem evenK5TerminalGroup0003Row0001_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0001.maskedPrefix).counts = evenK5TerminalGroup0003Row0001.counts.toBitVec := by
  rw [evenK5TerminalGroup0003Row0001_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 1 emptyBitVecCounts) evenK5TerminalGroup0003_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0003Row0001_counts_fit :
    evenK5TerminalGroup0003Row0001.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0003Row0001, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0003Row0002_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0002.maskedPrefix = evenK5TerminalGroup0003FinalRows0002 := by
  have hrow := congrArg
    (fun rows => rows.getD 2 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0003_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 257] evenK5TerminalGroup0003CommonRows = evenK5TerminalGroup0003FinalRows0002 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 257] = evenK5TerminalGroup0003FinalRows0002 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 257] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 257]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
            evenK5TerminalGroup0003TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0003NormalLookup evenK5TerminalGroup0003TwistLookup
          [3] [7, 257]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 257] evenK5TerminalGroup0003CommonRows := by
        rw [evenK5TerminalGroup0003_common_rows]
      _ = evenK5TerminalGroup0003FinalRows0002 := hcontinued
  rw [show evenK5TerminalGroup0003Row0002.maskedPrefix = [3, 7, 257] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 7, 257] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
        evenK5TerminalGroup0003TwistLookup [3, 7, 257] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0003_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0003_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0003FinalRows0002 := hlocal

theorem evenK5TerminalGroup0003Row0002_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0002.maskedPrefix).counts = evenK5TerminalGroup0003Row0002.counts.toBitVec := by
  rw [evenK5TerminalGroup0003Row0002_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 2 emptyBitVecCounts) evenK5TerminalGroup0003_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0003Row0002_counts_fit :
    evenK5TerminalGroup0003Row0002.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0003Row0002, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0003Row0003_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0003.maskedPrefix = evenK5TerminalGroup0003FinalRows0003 := by
  have hrow := congrArg
    (fun rows => rows.getD 3 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0003_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 263] evenK5TerminalGroup0003CommonRows = evenK5TerminalGroup0003FinalRows0003 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 263] = evenK5TerminalGroup0003FinalRows0003 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 263] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 263]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
            evenK5TerminalGroup0003TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0003NormalLookup evenK5TerminalGroup0003TwistLookup
          [3] [7, 263]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 263] evenK5TerminalGroup0003CommonRows := by
        rw [evenK5TerminalGroup0003_common_rows]
      _ = evenK5TerminalGroup0003FinalRows0003 := hcontinued
  rw [show evenK5TerminalGroup0003Row0003.maskedPrefix = [3, 7, 263] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 7, 263] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
        evenK5TerminalGroup0003TwistLookup [3, 7, 263] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0003_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0003_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0003FinalRows0003 := hlocal

theorem evenK5TerminalGroup0003Row0003_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0003.maskedPrefix).counts = evenK5TerminalGroup0003Row0003.counts.toBitVec := by
  rw [evenK5TerminalGroup0003Row0003_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 3 emptyBitVecCounts) evenK5TerminalGroup0003_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0003Row0003_counts_fit :
    evenK5TerminalGroup0003Row0003.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0003Row0003, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0003Row0004_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0004.maskedPrefix = evenK5TerminalGroup0003FinalRows0004 := by
  have hrow := congrArg
    (fun rows => rows.getD 4 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0003_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 269] evenK5TerminalGroup0003CommonRows = evenK5TerminalGroup0003FinalRows0004 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 269] = evenK5TerminalGroup0003FinalRows0004 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 269] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 269]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
            evenK5TerminalGroup0003TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0003NormalLookup evenK5TerminalGroup0003TwistLookup
          [3] [7, 269]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 269] evenK5TerminalGroup0003CommonRows := by
        rw [evenK5TerminalGroup0003_common_rows]
      _ = evenK5TerminalGroup0003FinalRows0004 := hcontinued
  rw [show evenK5TerminalGroup0003Row0004.maskedPrefix = [3, 7, 269] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 7, 269] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
        evenK5TerminalGroup0003TwistLookup [3, 7, 269] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0003_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0003_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0003FinalRows0004 := hlocal

theorem evenK5TerminalGroup0003Row0004_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0004.maskedPrefix).counts = evenK5TerminalGroup0003Row0004.counts.toBitVec := by
  rw [evenK5TerminalGroup0003Row0004_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 4 emptyBitVecCounts) evenK5TerminalGroup0003_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0003Row0004_counts_fit :
    evenK5TerminalGroup0003Row0004.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0003Row0004, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0003Row0005_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0005.maskedPrefix = evenK5TerminalGroup0003FinalRows0005 := by
  have hrow := congrArg
    (fun rows => rows.getD 5 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0003_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 271] evenK5TerminalGroup0003CommonRows = evenK5TerminalGroup0003FinalRows0005 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 271] = evenK5TerminalGroup0003FinalRows0005 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 271] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 271]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
            evenK5TerminalGroup0003TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0003NormalLookup evenK5TerminalGroup0003TwistLookup
          [3] [7, 271]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 271] evenK5TerminalGroup0003CommonRows := by
        rw [evenK5TerminalGroup0003_common_rows]
      _ = evenK5TerminalGroup0003FinalRows0005 := hcontinued
  rw [show evenK5TerminalGroup0003Row0005.maskedPrefix = [3, 7, 271] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 7, 271] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
        evenK5TerminalGroup0003TwistLookup [3, 7, 271] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0003_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0003_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0003FinalRows0005 := hlocal

theorem evenK5TerminalGroup0003Row0005_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0005.maskedPrefix).counts = evenK5TerminalGroup0003Row0005.counts.toBitVec := by
  rw [evenK5TerminalGroup0003Row0005_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 5 emptyBitVecCounts) evenK5TerminalGroup0003_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0003Row0005_counts_fit :
    evenK5TerminalGroup0003Row0005.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0003Row0005, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0003Row0006_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0006.maskedPrefix = evenK5TerminalGroup0003FinalRows0006 := by
  have hrow := congrArg
    (fun rows => rows.getD 6 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0003_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 277] evenK5TerminalGroup0003CommonRows = evenK5TerminalGroup0003FinalRows0006 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 277] = evenK5TerminalGroup0003FinalRows0006 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 277] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 277]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
            evenK5TerminalGroup0003TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0003NormalLookup evenK5TerminalGroup0003TwistLookup
          [3] [7, 277]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 277] evenK5TerminalGroup0003CommonRows := by
        rw [evenK5TerminalGroup0003_common_rows]
      _ = evenK5TerminalGroup0003FinalRows0006 := hcontinued
  rw [show evenK5TerminalGroup0003Row0006.maskedPrefix = [3, 7, 277] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 7, 277] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
        evenK5TerminalGroup0003TwistLookup [3, 7, 277] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0003_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0003_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0003FinalRows0006 := hlocal

theorem evenK5TerminalGroup0003Row0006_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0006.maskedPrefix).counts = evenK5TerminalGroup0003Row0006.counts.toBitVec := by
  rw [evenK5TerminalGroup0003Row0006_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 6 emptyBitVecCounts) evenK5TerminalGroup0003_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0003Row0006_counts_fit :
    evenK5TerminalGroup0003Row0006.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0003Row0006, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0003Row0007_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0007.maskedPrefix = evenK5TerminalGroup0003FinalRows0007 := by
  have hrow := congrArg
    (fun rows => rows.getD 7 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0003_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 281] evenK5TerminalGroup0003CommonRows = evenK5TerminalGroup0003FinalRows0007 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 281] = evenK5TerminalGroup0003FinalRows0007 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 281] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 281]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
            evenK5TerminalGroup0003TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0003NormalLookup evenK5TerminalGroup0003TwistLookup
          [3] [7, 281]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 281] evenK5TerminalGroup0003CommonRows := by
        rw [evenK5TerminalGroup0003_common_rows]
      _ = evenK5TerminalGroup0003FinalRows0007 := hcontinued
  rw [show evenK5TerminalGroup0003Row0007.maskedPrefix = [3, 7, 281] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 7, 281] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
        evenK5TerminalGroup0003TwistLookup [3, 7, 281] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0003_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0003_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0003FinalRows0007 := hlocal

theorem evenK5TerminalGroup0003Row0007_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0007.maskedPrefix).counts = evenK5TerminalGroup0003Row0007.counts.toBitVec := by
  rw [evenK5TerminalGroup0003Row0007_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 7 emptyBitVecCounts) evenK5TerminalGroup0003_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0003Row0007_counts_fit :
    evenK5TerminalGroup0003Row0007.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0003Row0007, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0003Row0008_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0008.maskedPrefix = evenK5TerminalGroup0003FinalRows0008 := by
  have hrow := congrArg
    (fun rows => rows.getD 8 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0003_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 283] evenK5TerminalGroup0003CommonRows = evenK5TerminalGroup0003FinalRows0008 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 283] = evenK5TerminalGroup0003FinalRows0008 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 283] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 283]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
            evenK5TerminalGroup0003TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0003NormalLookup evenK5TerminalGroup0003TwistLookup
          [3] [7, 283]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 283] evenK5TerminalGroup0003CommonRows := by
        rw [evenK5TerminalGroup0003_common_rows]
      _ = evenK5TerminalGroup0003FinalRows0008 := hcontinued
  rw [show evenK5TerminalGroup0003Row0008.maskedPrefix = [3, 7, 283] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 7, 283] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
        evenK5TerminalGroup0003TwistLookup [3, 7, 283] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0003_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0003_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0003FinalRows0008 := hlocal

theorem evenK5TerminalGroup0003Row0008_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0008.maskedPrefix).counts = evenK5TerminalGroup0003Row0008.counts.toBitVec := by
  rw [evenK5TerminalGroup0003Row0008_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 8 emptyBitVecCounts) evenK5TerminalGroup0003_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0003Row0008_counts_fit :
    evenK5TerminalGroup0003Row0008.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0003Row0008, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0003Row0009_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0009.maskedPrefix = evenK5TerminalGroup0003FinalRows0009 := by
  have hrow := congrArg
    (fun rows => rows.getD 9 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0003_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 293] evenK5TerminalGroup0003CommonRows = evenK5TerminalGroup0003FinalRows0009 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 293] = evenK5TerminalGroup0003FinalRows0009 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 293] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 293]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
            evenK5TerminalGroup0003TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0003NormalLookup evenK5TerminalGroup0003TwistLookup
          [3] [7, 293]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 293] evenK5TerminalGroup0003CommonRows := by
        rw [evenK5TerminalGroup0003_common_rows]
      _ = evenK5TerminalGroup0003FinalRows0009 := hcontinued
  rw [show evenK5TerminalGroup0003Row0009.maskedPrefix = [3, 7, 293] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 7, 293] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
        evenK5TerminalGroup0003TwistLookup [3, 7, 293] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0003_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0003_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0003FinalRows0009 := hlocal

theorem evenK5TerminalGroup0003Row0009_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0009.maskedPrefix).counts = evenK5TerminalGroup0003Row0009.counts.toBitVec := by
  rw [evenK5TerminalGroup0003Row0009_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 9 emptyBitVecCounts) evenK5TerminalGroup0003_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0003Row0009_counts_fit :
    evenK5TerminalGroup0003Row0009.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0003Row0009, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0003Row0010_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0010.maskedPrefix = evenK5TerminalGroup0003FinalRows0010 := by
  have hrow := congrArg
    (fun rows => rows.getD 10 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0003_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 307] evenK5TerminalGroup0003CommonRows = evenK5TerminalGroup0003FinalRows0010 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 307] = evenK5TerminalGroup0003FinalRows0010 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 307] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 307]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
            evenK5TerminalGroup0003TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0003NormalLookup evenK5TerminalGroup0003TwistLookup
          [3] [7, 307]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 307] evenK5TerminalGroup0003CommonRows := by
        rw [evenK5TerminalGroup0003_common_rows]
      _ = evenK5TerminalGroup0003FinalRows0010 := hcontinued
  rw [show evenK5TerminalGroup0003Row0010.maskedPrefix = [3, 7, 307] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 7, 307] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
        evenK5TerminalGroup0003TwistLookup [3, 7, 307] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0003_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0003_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0003FinalRows0010 := hlocal

theorem evenK5TerminalGroup0003Row0010_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0010.maskedPrefix).counts = evenK5TerminalGroup0003Row0010.counts.toBitVec := by
  rw [evenK5TerminalGroup0003Row0010_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 10 emptyBitVecCounts) evenK5TerminalGroup0003_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0003Row0010_counts_fit :
    evenK5TerminalGroup0003Row0010.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0003Row0010, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0003Row0011_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0011.maskedPrefix = evenK5TerminalGroup0003FinalRows0011 := by
  have hrow := congrArg
    (fun rows => rows.getD 11 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0003_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 311] evenK5TerminalGroup0003CommonRows = evenK5TerminalGroup0003FinalRows0011 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 311] = evenK5TerminalGroup0003FinalRows0011 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 7, 311] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 311]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
            evenK5TerminalGroup0003TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0003NormalLookup evenK5TerminalGroup0003TwistLookup
          [3] [7, 311]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [7, 311] evenK5TerminalGroup0003CommonRows := by
        rw [evenK5TerminalGroup0003_common_rows]
      _ = evenK5TerminalGroup0003FinalRows0011 := hcontinued
  rw [show evenK5TerminalGroup0003Row0011.maskedPrefix = [3, 7, 311] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 7, 311] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
        evenK5TerminalGroup0003TwistLookup [3, 7, 311] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0003_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0003_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0003FinalRows0011 := hlocal

theorem evenK5TerminalGroup0003Row0011_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0011.maskedPrefix).counts = evenK5TerminalGroup0003Row0011.counts.toBitVec := by
  rw [evenK5TerminalGroup0003Row0011_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 11 emptyBitVecCounts) evenK5TerminalGroup0003_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0003Row0011_counts_fit :
    evenK5TerminalGroup0003Row0011.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0003Row0011, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0003Row0012_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0012.maskedPrefix = evenK5TerminalGroup0003FinalRows0012 := by
  have hrow := congrArg
    (fun rows => rows.getD 12 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0003_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [11, 13] evenK5TerminalGroup0003CommonRows = evenK5TerminalGroup0003FinalRows0012 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 11, 13] = evenK5TerminalGroup0003FinalRows0012 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 11, 13] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [11, 13]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
            evenK5TerminalGroup0003TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0003NormalLookup evenK5TerminalGroup0003TwistLookup
          [3] [11, 13]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [11, 13] evenK5TerminalGroup0003CommonRows := by
        rw [evenK5TerminalGroup0003_common_rows]
      _ = evenK5TerminalGroup0003FinalRows0012 := hcontinued
  rw [show evenK5TerminalGroup0003Row0012.maskedPrefix = [3, 11, 13] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 13] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
        evenK5TerminalGroup0003TwistLookup [3, 11, 13] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0003_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0003_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0003FinalRows0012 := hlocal

theorem evenK5TerminalGroup0003Row0012_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0012.maskedPrefix).counts = evenK5TerminalGroup0003Row0012.counts.toBitVec := by
  rw [evenK5TerminalGroup0003Row0012_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 12 emptyBitVecCounts) evenK5TerminalGroup0003_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0003Row0012_counts_fit :
    evenK5TerminalGroup0003Row0012.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0003Row0012, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0003Row0013_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0013.maskedPrefix = evenK5TerminalGroup0003FinalRows0013 := by
  have hrow := congrArg
    (fun rows => rows.getD 13 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0003_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [11, 17] evenK5TerminalGroup0003CommonRows = evenK5TerminalGroup0003FinalRows0013 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 11, 17] = evenK5TerminalGroup0003FinalRows0013 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 11, 17] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [11, 17]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
            evenK5TerminalGroup0003TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0003NormalLookup evenK5TerminalGroup0003TwistLookup
          [3] [11, 17]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [11, 17] evenK5TerminalGroup0003CommonRows := by
        rw [evenK5TerminalGroup0003_common_rows]
      _ = evenK5TerminalGroup0003FinalRows0013 := hcontinued
  rw [show evenK5TerminalGroup0003Row0013.maskedPrefix = [3, 11, 17] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 17] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
        evenK5TerminalGroup0003TwistLookup [3, 11, 17] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0003_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0003_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0003FinalRows0013 := hlocal

theorem evenK5TerminalGroup0003Row0013_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0013.maskedPrefix).counts = evenK5TerminalGroup0003Row0013.counts.toBitVec := by
  rw [evenK5TerminalGroup0003Row0013_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 13 emptyBitVecCounts) evenK5TerminalGroup0003_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0003Row0013_counts_fit :
    evenK5TerminalGroup0003Row0013.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0003Row0013, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0003Row0014_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0014.maskedPrefix = evenK5TerminalGroup0003FinalRows0014 := by
  have hrow := congrArg
    (fun rows => rows.getD 14 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0003_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [11, 19] evenK5TerminalGroup0003CommonRows = evenK5TerminalGroup0003FinalRows0014 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 11, 19] = evenK5TerminalGroup0003FinalRows0014 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 11, 19] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [11, 19]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
            evenK5TerminalGroup0003TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0003NormalLookup evenK5TerminalGroup0003TwistLookup
          [3] [11, 19]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [11, 19] evenK5TerminalGroup0003CommonRows := by
        rw [evenK5TerminalGroup0003_common_rows]
      _ = evenK5TerminalGroup0003FinalRows0014 := hcontinued
  rw [show evenK5TerminalGroup0003Row0014.maskedPrefix = [3, 11, 19] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 19] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
        evenK5TerminalGroup0003TwistLookup [3, 11, 19] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0003_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0003_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0003FinalRows0014 := hlocal

theorem evenK5TerminalGroup0003Row0014_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0014.maskedPrefix).counts = evenK5TerminalGroup0003Row0014.counts.toBitVec := by
  rw [evenK5TerminalGroup0003Row0014_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 14 emptyBitVecCounts) evenK5TerminalGroup0003_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0003Row0014_counts_fit :
    evenK5TerminalGroup0003Row0014.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0003Row0014, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK5TerminalGroup0003Row0015_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0015.maskedPrefix = evenK5TerminalGroup0003FinalRows0015 := by
  have hrow := congrArg
    (fun rows => rows.getD 15 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK5TerminalGroup0003_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [11, 23] evenK5TerminalGroup0003CommonRows = evenK5TerminalGroup0003FinalRows0015 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 11, 23] = evenK5TerminalGroup0003FinalRows0015 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [3, 11, 23] =
        Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [11, 23]
          (Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
            evenK5TerminalGroup0003TwistLookup [3]) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK5TerminalGroup0003NormalLookup evenK5TerminalGroup0003TwistLookup
          [3] [11, 23]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK5TerminalGroup0003NormalLookup
          evenK5TerminalGroup0003TwistLookup [11, 23] evenK5TerminalGroup0003CommonRows := by
        rw [evenK5TerminalGroup0003_common_rows]
      _ = evenK5TerminalGroup0003FinalRows0015 := hcontinued
  rw [show evenK5TerminalGroup0003Row0015.maskedPrefix = [3, 11, 23] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [3, 11, 23] =
      Erdos848.globalMixedBitVecRestrictedRows evenK5TerminalGroup0003NormalLookup
        evenK5TerminalGroup0003TwistLookup [3, 11, 23] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK5TerminalGroup0003_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK5TerminalGroup0003_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl | rfl
        all_goals simp
    _ = evenK5TerminalGroup0003FinalRows0015 := hlocal

theorem evenK5TerminalGroup0003Row0015_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK5TerminalGroup0003Row0015.maskedPrefix).counts = evenK5TerminalGroup0003Row0015.counts.toBitVec := by
  rw [evenK5TerminalGroup0003Row0015_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 15 emptyBitVecCounts) evenK5TerminalGroup0003_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK5TerminalGroup0003Row0015_counts_fit :
    evenK5TerminalGroup0003Row0015.counts.FitsBitVec64 := by
  norm_num [evenK5TerminalGroup0003Row0015, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

#print axioms evenK5TerminalGroup0003Row0015_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
