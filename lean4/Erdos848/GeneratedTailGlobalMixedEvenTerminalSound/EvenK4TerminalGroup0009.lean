import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.TailGlobalMixedEvenTerminalActualSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK4TerminalGroup0009
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0003
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0004

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

private def emptyBitVecCounts : Erdos848.GlobalMixedEvenBitVecCounts :=
  (0, 0, 0, 0, 0, 0, 0, 0)

theorem evenK4TerminalGroup0009_normal_lookup_eq
    {p : Nat} (hp : p ∈ [7, 11, 13, 17, 19, 23, 29, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353]) :
    normalQrMaskWords p = evenK4TerminalGroup0009NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK4TerminalGroup0009NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 7) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 13) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 17) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 19) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 23) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 29) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 283) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 293) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 307) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 311) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 313) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009NormalLookup] using (normalQrMaskWords_eq_group0003 (p := 317) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 331) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 337) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 347) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 349) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009NormalLookup] using (normalQrMaskWords_eq_group0004 (p := 353) (by norm_num) (by norm_num))

theorem evenK4TerminalGroup0009_twist_lookup_eq
    {p : Nat} (hp : p ∈ [7, 11, 13, 17, 19, 23, 29, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353]) :
    twistQrMaskWords p = evenK4TerminalGroup0009TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK4TerminalGroup0009TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 7) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 11) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 13) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 17) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 19) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 23) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 29) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 283) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 293) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 307) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 311) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 313) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009TwistLookup] using (twistQrMaskWords_eq_group0003 (p := 317) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 331) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 337) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 347) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 349) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0009TwistLookup] using (twistQrMaskWords_eq_group0004 (p := 353) (by norm_num) (by norm_num))

theorem evenK4TerminalGroup0009Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0000.maskedPrefix = evenK4TerminalGroup0009FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0009_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 283] evenK4TerminalGroup0009CommonRows = evenK4TerminalGroup0009FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 283] = evenK4TerminalGroup0009FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 283] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 283]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
            evenK4TerminalGroup0009TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0009NormalLookup evenK4TerminalGroup0009TwistLookup
          [] [7, 283]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 283] evenK4TerminalGroup0009CommonRows := by
        rw [evenK4TerminalGroup0009_common_rows]
      _ = evenK4TerminalGroup0009FinalRows0000 := hcontinued
  rw [show evenK4TerminalGroup0009Row0000.maskedPrefix = [7, 283] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 283] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
        evenK4TerminalGroup0009TwistLookup [7, 283] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0009_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0009_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0009FinalRows0000 := hlocal

theorem evenK4TerminalGroup0009Row0000_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0000.maskedPrefix).counts = evenK4TerminalGroup0009Row0000.counts.toBitVec := by
  rw [evenK4TerminalGroup0009Row0000_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 0 emptyBitVecCounts) evenK4TerminalGroup0009_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0009Row0000_counts_fit :
    evenK4TerminalGroup0009Row0000.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0009Row0000, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0009Row0001_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0001.maskedPrefix = evenK4TerminalGroup0009FinalRows0001 := by
  have hrow := congrArg
    (fun rows => rows.getD 1 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0009_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 293] evenK4TerminalGroup0009CommonRows = evenK4TerminalGroup0009FinalRows0001 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 293] = evenK4TerminalGroup0009FinalRows0001 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 293] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 293]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
            evenK4TerminalGroup0009TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0009NormalLookup evenK4TerminalGroup0009TwistLookup
          [] [7, 293]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 293] evenK4TerminalGroup0009CommonRows := by
        rw [evenK4TerminalGroup0009_common_rows]
      _ = evenK4TerminalGroup0009FinalRows0001 := hcontinued
  rw [show evenK4TerminalGroup0009Row0001.maskedPrefix = [7, 293] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 293] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
        evenK4TerminalGroup0009TwistLookup [7, 293] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0009_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0009_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0009FinalRows0001 := hlocal

theorem evenK4TerminalGroup0009Row0001_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0001.maskedPrefix).counts = evenK4TerminalGroup0009Row0001.counts.toBitVec := by
  rw [evenK4TerminalGroup0009Row0001_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 1 emptyBitVecCounts) evenK4TerminalGroup0009_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0009Row0001_counts_fit :
    evenK4TerminalGroup0009Row0001.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0009Row0001, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0009Row0002_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0002.maskedPrefix = evenK4TerminalGroup0009FinalRows0002 := by
  have hrow := congrArg
    (fun rows => rows.getD 2 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0009_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 307] evenK4TerminalGroup0009CommonRows = evenK4TerminalGroup0009FinalRows0002 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 307] = evenK4TerminalGroup0009FinalRows0002 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 307] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 307]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
            evenK4TerminalGroup0009TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0009NormalLookup evenK4TerminalGroup0009TwistLookup
          [] [7, 307]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 307] evenK4TerminalGroup0009CommonRows := by
        rw [evenK4TerminalGroup0009_common_rows]
      _ = evenK4TerminalGroup0009FinalRows0002 := hcontinued
  rw [show evenK4TerminalGroup0009Row0002.maskedPrefix = [7, 307] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 307] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
        evenK4TerminalGroup0009TwistLookup [7, 307] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0009_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0009_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0009FinalRows0002 := hlocal

theorem evenK4TerminalGroup0009Row0002_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0002.maskedPrefix).counts = evenK4TerminalGroup0009Row0002.counts.toBitVec := by
  rw [evenK4TerminalGroup0009Row0002_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 2 emptyBitVecCounts) evenK4TerminalGroup0009_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0009Row0002_counts_fit :
    evenK4TerminalGroup0009Row0002.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0009Row0002, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0009Row0003_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0003.maskedPrefix = evenK4TerminalGroup0009FinalRows0003 := by
  have hrow := congrArg
    (fun rows => rows.getD 3 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0009_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 311] evenK4TerminalGroup0009CommonRows = evenK4TerminalGroup0009FinalRows0003 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 311] = evenK4TerminalGroup0009FinalRows0003 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 311] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 311]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
            evenK4TerminalGroup0009TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0009NormalLookup evenK4TerminalGroup0009TwistLookup
          [] [7, 311]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 311] evenK4TerminalGroup0009CommonRows := by
        rw [evenK4TerminalGroup0009_common_rows]
      _ = evenK4TerminalGroup0009FinalRows0003 := hcontinued
  rw [show evenK4TerminalGroup0009Row0003.maskedPrefix = [7, 311] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 311] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
        evenK4TerminalGroup0009TwistLookup [7, 311] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0009_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0009_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0009FinalRows0003 := hlocal

theorem evenK4TerminalGroup0009Row0003_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0003.maskedPrefix).counts = evenK4TerminalGroup0009Row0003.counts.toBitVec := by
  rw [evenK4TerminalGroup0009Row0003_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 3 emptyBitVecCounts) evenK4TerminalGroup0009_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0009Row0003_counts_fit :
    evenK4TerminalGroup0009Row0003.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0009Row0003, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0009Row0004_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0004.maskedPrefix = evenK4TerminalGroup0009FinalRows0004 := by
  have hrow := congrArg
    (fun rows => rows.getD 4 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0009_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 313] evenK4TerminalGroup0009CommonRows = evenK4TerminalGroup0009FinalRows0004 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 313] = evenK4TerminalGroup0009FinalRows0004 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 313] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 313]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
            evenK4TerminalGroup0009TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0009NormalLookup evenK4TerminalGroup0009TwistLookup
          [] [7, 313]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 313] evenK4TerminalGroup0009CommonRows := by
        rw [evenK4TerminalGroup0009_common_rows]
      _ = evenK4TerminalGroup0009FinalRows0004 := hcontinued
  rw [show evenK4TerminalGroup0009Row0004.maskedPrefix = [7, 313] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 313] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
        evenK4TerminalGroup0009TwistLookup [7, 313] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0009_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0009_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0009FinalRows0004 := hlocal

theorem evenK4TerminalGroup0009Row0004_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0004.maskedPrefix).counts = evenK4TerminalGroup0009Row0004.counts.toBitVec := by
  rw [evenK4TerminalGroup0009Row0004_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 4 emptyBitVecCounts) evenK4TerminalGroup0009_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0009Row0004_counts_fit :
    evenK4TerminalGroup0009Row0004.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0009Row0004, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0009Row0005_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0005.maskedPrefix = evenK4TerminalGroup0009FinalRows0005 := by
  have hrow := congrArg
    (fun rows => rows.getD 5 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0009_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 317] evenK4TerminalGroup0009CommonRows = evenK4TerminalGroup0009FinalRows0005 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 317] = evenK4TerminalGroup0009FinalRows0005 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 317] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 317]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
            evenK4TerminalGroup0009TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0009NormalLookup evenK4TerminalGroup0009TwistLookup
          [] [7, 317]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 317] evenK4TerminalGroup0009CommonRows := by
        rw [evenK4TerminalGroup0009_common_rows]
      _ = evenK4TerminalGroup0009FinalRows0005 := hcontinued
  rw [show evenK4TerminalGroup0009Row0005.maskedPrefix = [7, 317] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 317] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
        evenK4TerminalGroup0009TwistLookup [7, 317] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0009_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0009_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0009FinalRows0005 := hlocal

theorem evenK4TerminalGroup0009Row0005_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0005.maskedPrefix).counts = evenK4TerminalGroup0009Row0005.counts.toBitVec := by
  rw [evenK4TerminalGroup0009Row0005_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 5 emptyBitVecCounts) evenK4TerminalGroup0009_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0009Row0005_counts_fit :
    evenK4TerminalGroup0009Row0005.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0009Row0005, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0009Row0006_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0006.maskedPrefix = evenK4TerminalGroup0009FinalRows0006 := by
  have hrow := congrArg
    (fun rows => rows.getD 6 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0009_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 331] evenK4TerminalGroup0009CommonRows = evenK4TerminalGroup0009FinalRows0006 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 331] = evenK4TerminalGroup0009FinalRows0006 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 331] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 331]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
            evenK4TerminalGroup0009TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0009NormalLookup evenK4TerminalGroup0009TwistLookup
          [] [7, 331]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 331] evenK4TerminalGroup0009CommonRows := by
        rw [evenK4TerminalGroup0009_common_rows]
      _ = evenK4TerminalGroup0009FinalRows0006 := hcontinued
  rw [show evenK4TerminalGroup0009Row0006.maskedPrefix = [7, 331] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 331] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
        evenK4TerminalGroup0009TwistLookup [7, 331] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0009_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0009_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0009FinalRows0006 := hlocal

theorem evenK4TerminalGroup0009Row0006_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0006.maskedPrefix).counts = evenK4TerminalGroup0009Row0006.counts.toBitVec := by
  rw [evenK4TerminalGroup0009Row0006_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 6 emptyBitVecCounts) evenK4TerminalGroup0009_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0009Row0006_counts_fit :
    evenK4TerminalGroup0009Row0006.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0009Row0006, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0009Row0007_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0007.maskedPrefix = evenK4TerminalGroup0009FinalRows0007 := by
  have hrow := congrArg
    (fun rows => rows.getD 7 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0009_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 337] evenK4TerminalGroup0009CommonRows = evenK4TerminalGroup0009FinalRows0007 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 337] = evenK4TerminalGroup0009FinalRows0007 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 337] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 337]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
            evenK4TerminalGroup0009TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0009NormalLookup evenK4TerminalGroup0009TwistLookup
          [] [7, 337]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 337] evenK4TerminalGroup0009CommonRows := by
        rw [evenK4TerminalGroup0009_common_rows]
      _ = evenK4TerminalGroup0009FinalRows0007 := hcontinued
  rw [show evenK4TerminalGroup0009Row0007.maskedPrefix = [7, 337] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 337] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
        evenK4TerminalGroup0009TwistLookup [7, 337] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0009_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0009_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0009FinalRows0007 := hlocal

theorem evenK4TerminalGroup0009Row0007_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0007.maskedPrefix).counts = evenK4TerminalGroup0009Row0007.counts.toBitVec := by
  rw [evenK4TerminalGroup0009Row0007_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 7 emptyBitVecCounts) evenK4TerminalGroup0009_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0009Row0007_counts_fit :
    evenK4TerminalGroup0009Row0007.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0009Row0007, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0009Row0008_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0008.maskedPrefix = evenK4TerminalGroup0009FinalRows0008 := by
  have hrow := congrArg
    (fun rows => rows.getD 8 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0009_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 347] evenK4TerminalGroup0009CommonRows = evenK4TerminalGroup0009FinalRows0008 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 347] = evenK4TerminalGroup0009FinalRows0008 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 347] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 347]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
            evenK4TerminalGroup0009TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0009NormalLookup evenK4TerminalGroup0009TwistLookup
          [] [7, 347]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 347] evenK4TerminalGroup0009CommonRows := by
        rw [evenK4TerminalGroup0009_common_rows]
      _ = evenK4TerminalGroup0009FinalRows0008 := hcontinued
  rw [show evenK4TerminalGroup0009Row0008.maskedPrefix = [7, 347] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 347] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
        evenK4TerminalGroup0009TwistLookup [7, 347] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0009_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0009_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0009FinalRows0008 := hlocal

theorem evenK4TerminalGroup0009Row0008_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0008.maskedPrefix).counts = evenK4TerminalGroup0009Row0008.counts.toBitVec := by
  rw [evenK4TerminalGroup0009Row0008_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 8 emptyBitVecCounts) evenK4TerminalGroup0009_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0009Row0008_counts_fit :
    evenK4TerminalGroup0009Row0008.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0009Row0008, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0009Row0009_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0009.maskedPrefix = evenK4TerminalGroup0009FinalRows0009 := by
  have hrow := congrArg
    (fun rows => rows.getD 9 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0009_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 349] evenK4TerminalGroup0009CommonRows = evenK4TerminalGroup0009FinalRows0009 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 349] = evenK4TerminalGroup0009FinalRows0009 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 349] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 349]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
            evenK4TerminalGroup0009TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0009NormalLookup evenK4TerminalGroup0009TwistLookup
          [] [7, 349]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 349] evenK4TerminalGroup0009CommonRows := by
        rw [evenK4TerminalGroup0009_common_rows]
      _ = evenK4TerminalGroup0009FinalRows0009 := hcontinued
  rw [show evenK4TerminalGroup0009Row0009.maskedPrefix = [7, 349] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 349] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
        evenK4TerminalGroup0009TwistLookup [7, 349] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0009_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0009_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0009FinalRows0009 := hlocal

theorem evenK4TerminalGroup0009Row0009_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0009.maskedPrefix).counts = evenK4TerminalGroup0009Row0009.counts.toBitVec := by
  rw [evenK4TerminalGroup0009Row0009_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 9 emptyBitVecCounts) evenK4TerminalGroup0009_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0009Row0009_counts_fit :
    evenK4TerminalGroup0009Row0009.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0009Row0009, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0009Row0010_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0010.maskedPrefix = evenK4TerminalGroup0009FinalRows0010 := by
  have hrow := congrArg
    (fun rows => rows.getD 10 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0009_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 353] evenK4TerminalGroup0009CommonRows = evenK4TerminalGroup0009FinalRows0010 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 353] = evenK4TerminalGroup0009FinalRows0010 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 353] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 353]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
            evenK4TerminalGroup0009TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0009NormalLookup evenK4TerminalGroup0009TwistLookup
          [] [7, 353]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [7, 353] evenK4TerminalGroup0009CommonRows := by
        rw [evenK4TerminalGroup0009_common_rows]
      _ = evenK4TerminalGroup0009FinalRows0010 := hcontinued
  rw [show evenK4TerminalGroup0009Row0010.maskedPrefix = [7, 353] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [7, 353] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
        evenK4TerminalGroup0009TwistLookup [7, 353] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0009_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0009_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0009FinalRows0010 := hlocal

theorem evenK4TerminalGroup0009Row0010_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0010.maskedPrefix).counts = evenK4TerminalGroup0009Row0010.counts.toBitVec := by
  rw [evenK4TerminalGroup0009Row0010_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 10 emptyBitVecCounts) evenK4TerminalGroup0009_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0009Row0010_counts_fit :
    evenK4TerminalGroup0009Row0010.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0009Row0010, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0009Row0011_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0011.maskedPrefix = evenK4TerminalGroup0009FinalRows0011 := by
  have hrow := congrArg
    (fun rows => rows.getD 11 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0009_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 13] evenK4TerminalGroup0009CommonRows = evenK4TerminalGroup0009FinalRows0011 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 13] = evenK4TerminalGroup0009FinalRows0011 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 13] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 13]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
            evenK4TerminalGroup0009TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0009NormalLookup evenK4TerminalGroup0009TwistLookup
          [] [11, 13]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 13] evenK4TerminalGroup0009CommonRows := by
        rw [evenK4TerminalGroup0009_common_rows]
      _ = evenK4TerminalGroup0009FinalRows0011 := hcontinued
  rw [show evenK4TerminalGroup0009Row0011.maskedPrefix = [11, 13] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 13] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
        evenK4TerminalGroup0009TwistLookup [11, 13] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0009_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0009_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0009FinalRows0011 := hlocal

theorem evenK4TerminalGroup0009Row0011_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0011.maskedPrefix).counts = evenK4TerminalGroup0009Row0011.counts.toBitVec := by
  rw [evenK4TerminalGroup0009Row0011_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 11 emptyBitVecCounts) evenK4TerminalGroup0009_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0009Row0011_counts_fit :
    evenK4TerminalGroup0009Row0011.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0009Row0011, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0009Row0012_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0012.maskedPrefix = evenK4TerminalGroup0009FinalRows0012 := by
  have hrow := congrArg
    (fun rows => rows.getD 12 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0009_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 17] evenK4TerminalGroup0009CommonRows = evenK4TerminalGroup0009FinalRows0012 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 17] = evenK4TerminalGroup0009FinalRows0012 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 17] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 17]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
            evenK4TerminalGroup0009TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0009NormalLookup evenK4TerminalGroup0009TwistLookup
          [] [11, 17]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 17] evenK4TerminalGroup0009CommonRows := by
        rw [evenK4TerminalGroup0009_common_rows]
      _ = evenK4TerminalGroup0009FinalRows0012 := hcontinued
  rw [show evenK4TerminalGroup0009Row0012.maskedPrefix = [11, 17] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 17] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
        evenK4TerminalGroup0009TwistLookup [11, 17] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0009_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0009_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0009FinalRows0012 := hlocal

theorem evenK4TerminalGroup0009Row0012_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0012.maskedPrefix).counts = evenK4TerminalGroup0009Row0012.counts.toBitVec := by
  rw [evenK4TerminalGroup0009Row0012_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 12 emptyBitVecCounts) evenK4TerminalGroup0009_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0009Row0012_counts_fit :
    evenK4TerminalGroup0009Row0012.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0009Row0012, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0009Row0013_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0013.maskedPrefix = evenK4TerminalGroup0009FinalRows0013 := by
  have hrow := congrArg
    (fun rows => rows.getD 13 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0009_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 19] evenK4TerminalGroup0009CommonRows = evenK4TerminalGroup0009FinalRows0013 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 19] = evenK4TerminalGroup0009FinalRows0013 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 19] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 19]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
            evenK4TerminalGroup0009TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0009NormalLookup evenK4TerminalGroup0009TwistLookup
          [] [11, 19]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 19] evenK4TerminalGroup0009CommonRows := by
        rw [evenK4TerminalGroup0009_common_rows]
      _ = evenK4TerminalGroup0009FinalRows0013 := hcontinued
  rw [show evenK4TerminalGroup0009Row0013.maskedPrefix = [11, 19] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 19] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
        evenK4TerminalGroup0009TwistLookup [11, 19] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0009_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0009_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0009FinalRows0013 := hlocal

theorem evenK4TerminalGroup0009Row0013_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0013.maskedPrefix).counts = evenK4TerminalGroup0009Row0013.counts.toBitVec := by
  rw [evenK4TerminalGroup0009Row0013_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 13 emptyBitVecCounts) evenK4TerminalGroup0009_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0009Row0013_counts_fit :
    evenK4TerminalGroup0009Row0013.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0009Row0013, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0009Row0014_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0014.maskedPrefix = evenK4TerminalGroup0009FinalRows0014 := by
  have hrow := congrArg
    (fun rows => rows.getD 14 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0009_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 23] evenK4TerminalGroup0009CommonRows = evenK4TerminalGroup0009FinalRows0014 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 23] = evenK4TerminalGroup0009FinalRows0014 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 23] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 23]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
            evenK4TerminalGroup0009TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0009NormalLookup evenK4TerminalGroup0009TwistLookup
          [] [11, 23]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 23] evenK4TerminalGroup0009CommonRows := by
        rw [evenK4TerminalGroup0009_common_rows]
      _ = evenK4TerminalGroup0009FinalRows0014 := hcontinued
  rw [show evenK4TerminalGroup0009Row0014.maskedPrefix = [11, 23] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 23] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
        evenK4TerminalGroup0009TwistLookup [11, 23] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0009_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0009_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0009FinalRows0014 := hlocal

theorem evenK4TerminalGroup0009Row0014_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0014.maskedPrefix).counts = evenK4TerminalGroup0009Row0014.counts.toBitVec := by
  rw [evenK4TerminalGroup0009Row0014_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 14 emptyBitVecCounts) evenK4TerminalGroup0009_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0009Row0014_counts_fit :
    evenK4TerminalGroup0009Row0014.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0009Row0014, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0009Row0015_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0015.maskedPrefix = evenK4TerminalGroup0009FinalRows0015 := by
  have hrow := congrArg
    (fun rows => rows.getD 15 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0009_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 29] evenK4TerminalGroup0009CommonRows = evenK4TerminalGroup0009FinalRows0015 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 29] = evenK4TerminalGroup0009FinalRows0015 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 29] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 29]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
            evenK4TerminalGroup0009TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0009NormalLookup evenK4TerminalGroup0009TwistLookup
          [] [11, 29]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0009NormalLookup
          evenK4TerminalGroup0009TwistLookup [11, 29] evenK4TerminalGroup0009CommonRows := by
        rw [evenK4TerminalGroup0009_common_rows]
      _ = evenK4TerminalGroup0009FinalRows0015 := hcontinued
  rw [show evenK4TerminalGroup0009Row0015.maskedPrefix = [11, 29] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [11, 29] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0009NormalLookup
        evenK4TerminalGroup0009TwistLookup [11, 29] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0009_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0009_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0009FinalRows0015 := hlocal

theorem evenK4TerminalGroup0009Row0015_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0009Row0015.maskedPrefix).counts = evenK4TerminalGroup0009Row0015.counts.toBitVec := by
  rw [evenK4TerminalGroup0009Row0015_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 15 emptyBitVecCounts) evenK4TerminalGroup0009_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0009Row0015_counts_fit :
    evenK4TerminalGroup0009Row0015.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0009Row0015, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

#print axioms evenK4TerminalGroup0009Row0015_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
