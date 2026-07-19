import Erdos848.TailGlobalMixedEvenBitVecSemantic
import Erdos848.TailGlobalMixedEvenTerminalActualSound
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK4TerminalGroup0027
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData
import Mathlib.Tactic
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0002

namespace Erdos848.GeneratedTailGlobalMixedEvenTerminalSound

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
open Erdos848.GeneratedTailGlobalMixedSupportCoverage

private def emptyBitVecCounts : Erdos848.GlobalMixedEvenBitVecCounts :=
  (0, 0, 0, 0, 0, 0, 0, 0)

theorem evenK4TerminalGroup0027_normal_lookup_eq
    {p : Nat} (hp : p ∈ [29, 31, 37, 41, 43, 47, 53, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211]) :
    normalQrMaskWords p = evenK4TerminalGroup0027NormalLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK4TerminalGroup0027NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 29) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 31) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 37) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 41) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 43) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 47) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027NormalLookup] using (normalQrMaskWords_eq_group0000 (p := 53) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 157) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 163) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 167) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 173) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 179) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 181) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 191) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 193) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 197) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 199) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027NormalLookup] using (normalQrMaskWords_eq_group0002 (p := 211) (by norm_num) (by norm_num))

theorem evenK4TerminalGroup0027_twist_lookup_eq
    {p : Nat} (hp : p ∈ [29, 31, 37, 41, 43, 47, 53, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211]) :
    twistQrMaskWords p = evenK4TerminalGroup0027TwistLookup p := by
  simp at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · simpa [evenK4TerminalGroup0027TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 29) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 31) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 37) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 41) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 43) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 47) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027TwistLookup] using (twistQrMaskWords_eq_group0000 (p := 53) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 157) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 163) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 167) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 173) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 179) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 181) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 191) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 193) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 197) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 199) (by norm_num) (by norm_num))
  · simpa [evenK4TerminalGroup0027TwistLookup] using (twistQrMaskWords_eq_group0002 (p := 211) (by norm_num) (by norm_num))

theorem evenK4TerminalGroup0027Row0000_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0000.maskedPrefix = evenK4TerminalGroup0027FinalRows0000 := by
  have hrow := congrArg
    (fun rows => rows.getD 0 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0027_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 157] evenK4TerminalGroup0027CommonRows = evenK4TerminalGroup0027FinalRows0000 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 157] = evenK4TerminalGroup0027FinalRows0000 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 157] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 157]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
            evenK4TerminalGroup0027TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0027NormalLookup evenK4TerminalGroup0027TwistLookup
          [] [29, 157]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 157] evenK4TerminalGroup0027CommonRows := by
        rw [evenK4TerminalGroup0027_common_rows]
      _ = evenK4TerminalGroup0027FinalRows0000 := hcontinued
  rw [show evenK4TerminalGroup0027Row0000.maskedPrefix = [29, 157] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [29, 157] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
        evenK4TerminalGroup0027TwistLookup [29, 157] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0027_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0027_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0027FinalRows0000 := hlocal

theorem evenK4TerminalGroup0027Row0000_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0000.maskedPrefix).counts = evenK4TerminalGroup0027Row0000.counts.toBitVec := by
  rw [evenK4TerminalGroup0027Row0000_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 0 emptyBitVecCounts) evenK4TerminalGroup0027_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0027Row0000_counts_fit :
    evenK4TerminalGroup0027Row0000.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0027Row0000, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0027Row0001_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0001.maskedPrefix = evenK4TerminalGroup0027FinalRows0001 := by
  have hrow := congrArg
    (fun rows => rows.getD 1 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0027_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 163] evenK4TerminalGroup0027CommonRows = evenK4TerminalGroup0027FinalRows0001 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 163] = evenK4TerminalGroup0027FinalRows0001 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 163] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 163]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
            evenK4TerminalGroup0027TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0027NormalLookup evenK4TerminalGroup0027TwistLookup
          [] [29, 163]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 163] evenK4TerminalGroup0027CommonRows := by
        rw [evenK4TerminalGroup0027_common_rows]
      _ = evenK4TerminalGroup0027FinalRows0001 := hcontinued
  rw [show evenK4TerminalGroup0027Row0001.maskedPrefix = [29, 163] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [29, 163] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
        evenK4TerminalGroup0027TwistLookup [29, 163] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0027_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0027_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0027FinalRows0001 := hlocal

theorem evenK4TerminalGroup0027Row0001_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0001.maskedPrefix).counts = evenK4TerminalGroup0027Row0001.counts.toBitVec := by
  rw [evenK4TerminalGroup0027Row0001_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 1 emptyBitVecCounts) evenK4TerminalGroup0027_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0027Row0001_counts_fit :
    evenK4TerminalGroup0027Row0001.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0027Row0001, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0027Row0002_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0002.maskedPrefix = evenK4TerminalGroup0027FinalRows0002 := by
  have hrow := congrArg
    (fun rows => rows.getD 2 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0027_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 167] evenK4TerminalGroup0027CommonRows = evenK4TerminalGroup0027FinalRows0002 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 167] = evenK4TerminalGroup0027FinalRows0002 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 167] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 167]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
            evenK4TerminalGroup0027TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0027NormalLookup evenK4TerminalGroup0027TwistLookup
          [] [29, 167]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 167] evenK4TerminalGroup0027CommonRows := by
        rw [evenK4TerminalGroup0027_common_rows]
      _ = evenK4TerminalGroup0027FinalRows0002 := hcontinued
  rw [show evenK4TerminalGroup0027Row0002.maskedPrefix = [29, 167] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [29, 167] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
        evenK4TerminalGroup0027TwistLookup [29, 167] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0027_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0027_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0027FinalRows0002 := hlocal

theorem evenK4TerminalGroup0027Row0002_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0002.maskedPrefix).counts = evenK4TerminalGroup0027Row0002.counts.toBitVec := by
  rw [evenK4TerminalGroup0027Row0002_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 2 emptyBitVecCounts) evenK4TerminalGroup0027_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0027Row0002_counts_fit :
    evenK4TerminalGroup0027Row0002.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0027Row0002, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0027Row0003_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0003.maskedPrefix = evenK4TerminalGroup0027FinalRows0003 := by
  have hrow := congrArg
    (fun rows => rows.getD 3 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0027_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 173] evenK4TerminalGroup0027CommonRows = evenK4TerminalGroup0027FinalRows0003 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 173] = evenK4TerminalGroup0027FinalRows0003 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 173] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 173]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
            evenK4TerminalGroup0027TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0027NormalLookup evenK4TerminalGroup0027TwistLookup
          [] [29, 173]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 173] evenK4TerminalGroup0027CommonRows := by
        rw [evenK4TerminalGroup0027_common_rows]
      _ = evenK4TerminalGroup0027FinalRows0003 := hcontinued
  rw [show evenK4TerminalGroup0027Row0003.maskedPrefix = [29, 173] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [29, 173] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
        evenK4TerminalGroup0027TwistLookup [29, 173] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0027_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0027_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0027FinalRows0003 := hlocal

theorem evenK4TerminalGroup0027Row0003_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0003.maskedPrefix).counts = evenK4TerminalGroup0027Row0003.counts.toBitVec := by
  rw [evenK4TerminalGroup0027Row0003_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 3 emptyBitVecCounts) evenK4TerminalGroup0027_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0027Row0003_counts_fit :
    evenK4TerminalGroup0027Row0003.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0027Row0003, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0027Row0004_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0004.maskedPrefix = evenK4TerminalGroup0027FinalRows0004 := by
  have hrow := congrArg
    (fun rows => rows.getD 4 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0027_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 179] evenK4TerminalGroup0027CommonRows = evenK4TerminalGroup0027FinalRows0004 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 179] = evenK4TerminalGroup0027FinalRows0004 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 179] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 179]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
            evenK4TerminalGroup0027TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0027NormalLookup evenK4TerminalGroup0027TwistLookup
          [] [29, 179]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 179] evenK4TerminalGroup0027CommonRows := by
        rw [evenK4TerminalGroup0027_common_rows]
      _ = evenK4TerminalGroup0027FinalRows0004 := hcontinued
  rw [show evenK4TerminalGroup0027Row0004.maskedPrefix = [29, 179] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [29, 179] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
        evenK4TerminalGroup0027TwistLookup [29, 179] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0027_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0027_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0027FinalRows0004 := hlocal

theorem evenK4TerminalGroup0027Row0004_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0004.maskedPrefix).counts = evenK4TerminalGroup0027Row0004.counts.toBitVec := by
  rw [evenK4TerminalGroup0027Row0004_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 4 emptyBitVecCounts) evenK4TerminalGroup0027_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0027Row0004_counts_fit :
    evenK4TerminalGroup0027Row0004.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0027Row0004, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0027Row0005_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0005.maskedPrefix = evenK4TerminalGroup0027FinalRows0005 := by
  have hrow := congrArg
    (fun rows => rows.getD 5 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0027_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 181] evenK4TerminalGroup0027CommonRows = evenK4TerminalGroup0027FinalRows0005 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 181] = evenK4TerminalGroup0027FinalRows0005 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 181] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 181]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
            evenK4TerminalGroup0027TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0027NormalLookup evenK4TerminalGroup0027TwistLookup
          [] [29, 181]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 181] evenK4TerminalGroup0027CommonRows := by
        rw [evenK4TerminalGroup0027_common_rows]
      _ = evenK4TerminalGroup0027FinalRows0005 := hcontinued
  rw [show evenK4TerminalGroup0027Row0005.maskedPrefix = [29, 181] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [29, 181] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
        evenK4TerminalGroup0027TwistLookup [29, 181] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0027_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0027_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0027FinalRows0005 := hlocal

theorem evenK4TerminalGroup0027Row0005_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0005.maskedPrefix).counts = evenK4TerminalGroup0027Row0005.counts.toBitVec := by
  rw [evenK4TerminalGroup0027Row0005_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 5 emptyBitVecCounts) evenK4TerminalGroup0027_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0027Row0005_counts_fit :
    evenK4TerminalGroup0027Row0005.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0027Row0005, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0027Row0006_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0006.maskedPrefix = evenK4TerminalGroup0027FinalRows0006 := by
  have hrow := congrArg
    (fun rows => rows.getD 6 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0027_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 191] evenK4TerminalGroup0027CommonRows = evenK4TerminalGroup0027FinalRows0006 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 191] = evenK4TerminalGroup0027FinalRows0006 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 191] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 191]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
            evenK4TerminalGroup0027TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0027NormalLookup evenK4TerminalGroup0027TwistLookup
          [] [29, 191]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 191] evenK4TerminalGroup0027CommonRows := by
        rw [evenK4TerminalGroup0027_common_rows]
      _ = evenK4TerminalGroup0027FinalRows0006 := hcontinued
  rw [show evenK4TerminalGroup0027Row0006.maskedPrefix = [29, 191] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [29, 191] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
        evenK4TerminalGroup0027TwistLookup [29, 191] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0027_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0027_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0027FinalRows0006 := hlocal

theorem evenK4TerminalGroup0027Row0006_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0006.maskedPrefix).counts = evenK4TerminalGroup0027Row0006.counts.toBitVec := by
  rw [evenK4TerminalGroup0027Row0006_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 6 emptyBitVecCounts) evenK4TerminalGroup0027_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0027Row0006_counts_fit :
    evenK4TerminalGroup0027Row0006.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0027Row0006, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0027Row0007_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0007.maskedPrefix = evenK4TerminalGroup0027FinalRows0007 := by
  have hrow := congrArg
    (fun rows => rows.getD 7 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0027_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 193] evenK4TerminalGroup0027CommonRows = evenK4TerminalGroup0027FinalRows0007 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 193] = evenK4TerminalGroup0027FinalRows0007 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 193] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 193]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
            evenK4TerminalGroup0027TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0027NormalLookup evenK4TerminalGroup0027TwistLookup
          [] [29, 193]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 193] evenK4TerminalGroup0027CommonRows := by
        rw [evenK4TerminalGroup0027_common_rows]
      _ = evenK4TerminalGroup0027FinalRows0007 := hcontinued
  rw [show evenK4TerminalGroup0027Row0007.maskedPrefix = [29, 193] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [29, 193] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
        evenK4TerminalGroup0027TwistLookup [29, 193] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0027_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0027_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0027FinalRows0007 := hlocal

theorem evenK4TerminalGroup0027Row0007_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0007.maskedPrefix).counts = evenK4TerminalGroup0027Row0007.counts.toBitVec := by
  rw [evenK4TerminalGroup0027Row0007_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 7 emptyBitVecCounts) evenK4TerminalGroup0027_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0027Row0007_counts_fit :
    evenK4TerminalGroup0027Row0007.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0027Row0007, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0027Row0008_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0008.maskedPrefix = evenK4TerminalGroup0027FinalRows0008 := by
  have hrow := congrArg
    (fun rows => rows.getD 8 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0027_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 197] evenK4TerminalGroup0027CommonRows = evenK4TerminalGroup0027FinalRows0008 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 197] = evenK4TerminalGroup0027FinalRows0008 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 197] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 197]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
            evenK4TerminalGroup0027TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0027NormalLookup evenK4TerminalGroup0027TwistLookup
          [] [29, 197]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 197] evenK4TerminalGroup0027CommonRows := by
        rw [evenK4TerminalGroup0027_common_rows]
      _ = evenK4TerminalGroup0027FinalRows0008 := hcontinued
  rw [show evenK4TerminalGroup0027Row0008.maskedPrefix = [29, 197] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [29, 197] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
        evenK4TerminalGroup0027TwistLookup [29, 197] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0027_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0027_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0027FinalRows0008 := hlocal

theorem evenK4TerminalGroup0027Row0008_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0008.maskedPrefix).counts = evenK4TerminalGroup0027Row0008.counts.toBitVec := by
  rw [evenK4TerminalGroup0027Row0008_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 8 emptyBitVecCounts) evenK4TerminalGroup0027_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0027Row0008_counts_fit :
    evenK4TerminalGroup0027Row0008.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0027Row0008, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0027Row0009_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0009.maskedPrefix = evenK4TerminalGroup0027FinalRows0009 := by
  have hrow := congrArg
    (fun rows => rows.getD 9 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0027_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 199] evenK4TerminalGroup0027CommonRows = evenK4TerminalGroup0027FinalRows0009 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 199] = evenK4TerminalGroup0027FinalRows0009 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 199] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 199]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
            evenK4TerminalGroup0027TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0027NormalLookup evenK4TerminalGroup0027TwistLookup
          [] [29, 199]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 199] evenK4TerminalGroup0027CommonRows := by
        rw [evenK4TerminalGroup0027_common_rows]
      _ = evenK4TerminalGroup0027FinalRows0009 := hcontinued
  rw [show evenK4TerminalGroup0027Row0009.maskedPrefix = [29, 199] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [29, 199] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
        evenK4TerminalGroup0027TwistLookup [29, 199] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0027_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0027_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0027FinalRows0009 := hlocal

theorem evenK4TerminalGroup0027Row0009_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0009.maskedPrefix).counts = evenK4TerminalGroup0027Row0009.counts.toBitVec := by
  rw [evenK4TerminalGroup0027Row0009_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 9 emptyBitVecCounts) evenK4TerminalGroup0027_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0027Row0009_counts_fit :
    evenK4TerminalGroup0027Row0009.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0027Row0009, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0027Row0010_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0010.maskedPrefix = evenK4TerminalGroup0027FinalRows0010 := by
  have hrow := congrArg
    (fun rows => rows.getD 10 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0027_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 211] evenK4TerminalGroup0027CommonRows = evenK4TerminalGroup0027FinalRows0010 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 211] = evenK4TerminalGroup0027FinalRows0010 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 211] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 211]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
            evenK4TerminalGroup0027TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0027NormalLookup evenK4TerminalGroup0027TwistLookup
          [] [29, 211]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [29, 211] evenK4TerminalGroup0027CommonRows := by
        rw [evenK4TerminalGroup0027_common_rows]
      _ = evenK4TerminalGroup0027FinalRows0010 := hcontinued
  rw [show evenK4TerminalGroup0027Row0010.maskedPrefix = [29, 211] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [29, 211] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
        evenK4TerminalGroup0027TwistLookup [29, 211] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0027_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0027_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0027FinalRows0010 := hlocal

theorem evenK4TerminalGroup0027Row0010_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0010.maskedPrefix).counts = evenK4TerminalGroup0027Row0010.counts.toBitVec := by
  rw [evenK4TerminalGroup0027Row0010_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 10 emptyBitVecCounts) evenK4TerminalGroup0027_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0027Row0010_counts_fit :
    evenK4TerminalGroup0027Row0010.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0027Row0010, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0027Row0011_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0011.maskedPrefix = evenK4TerminalGroup0027FinalRows0011 := by
  have hrow := congrArg
    (fun rows => rows.getD 11 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0027_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 37] evenK4TerminalGroup0027CommonRows = evenK4TerminalGroup0027FinalRows0011 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 37] = evenK4TerminalGroup0027FinalRows0011 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 37] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 37]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
            evenK4TerminalGroup0027TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0027NormalLookup evenK4TerminalGroup0027TwistLookup
          [] [31, 37]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 37] evenK4TerminalGroup0027CommonRows := by
        rw [evenK4TerminalGroup0027_common_rows]
      _ = evenK4TerminalGroup0027FinalRows0011 := hcontinued
  rw [show evenK4TerminalGroup0027Row0011.maskedPrefix = [31, 37] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [31, 37] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
        evenK4TerminalGroup0027TwistLookup [31, 37] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0027_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0027_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0027FinalRows0011 := hlocal

theorem evenK4TerminalGroup0027Row0011_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0011.maskedPrefix).counts = evenK4TerminalGroup0027Row0011.counts.toBitVec := by
  rw [evenK4TerminalGroup0027Row0011_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 11 emptyBitVecCounts) evenK4TerminalGroup0027_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0027Row0011_counts_fit :
    evenK4TerminalGroup0027Row0011.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0027Row0011, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0027Row0012_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0012.maskedPrefix = evenK4TerminalGroup0027FinalRows0012 := by
  have hrow := congrArg
    (fun rows => rows.getD 12 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0027_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 41] evenK4TerminalGroup0027CommonRows = evenK4TerminalGroup0027FinalRows0012 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 41] = evenK4TerminalGroup0027FinalRows0012 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 41] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 41]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
            evenK4TerminalGroup0027TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0027NormalLookup evenK4TerminalGroup0027TwistLookup
          [] [31, 41]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 41] evenK4TerminalGroup0027CommonRows := by
        rw [evenK4TerminalGroup0027_common_rows]
      _ = evenK4TerminalGroup0027FinalRows0012 := hcontinued
  rw [show evenK4TerminalGroup0027Row0012.maskedPrefix = [31, 41] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [31, 41] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
        evenK4TerminalGroup0027TwistLookup [31, 41] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0027_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0027_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0027FinalRows0012 := hlocal

theorem evenK4TerminalGroup0027Row0012_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0012.maskedPrefix).counts = evenK4TerminalGroup0027Row0012.counts.toBitVec := by
  rw [evenK4TerminalGroup0027Row0012_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 12 emptyBitVecCounts) evenK4TerminalGroup0027_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0027Row0012_counts_fit :
    evenK4TerminalGroup0027Row0012.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0027Row0012, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0027Row0013_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0013.maskedPrefix = evenK4TerminalGroup0027FinalRows0013 := by
  have hrow := congrArg
    (fun rows => rows.getD 13 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0027_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 43] evenK4TerminalGroup0027CommonRows = evenK4TerminalGroup0027FinalRows0013 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 43] = evenK4TerminalGroup0027FinalRows0013 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 43] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 43]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
            evenK4TerminalGroup0027TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0027NormalLookup evenK4TerminalGroup0027TwistLookup
          [] [31, 43]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 43] evenK4TerminalGroup0027CommonRows := by
        rw [evenK4TerminalGroup0027_common_rows]
      _ = evenK4TerminalGroup0027FinalRows0013 := hcontinued
  rw [show evenK4TerminalGroup0027Row0013.maskedPrefix = [31, 43] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [31, 43] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
        evenK4TerminalGroup0027TwistLookup [31, 43] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0027_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0027_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0027FinalRows0013 := hlocal

theorem evenK4TerminalGroup0027Row0013_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0013.maskedPrefix).counts = evenK4TerminalGroup0027Row0013.counts.toBitVec := by
  rw [evenK4TerminalGroup0027Row0013_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 13 emptyBitVecCounts) evenK4TerminalGroup0027_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0027Row0013_counts_fit :
    evenK4TerminalGroup0027Row0013.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0027Row0013, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0027Row0014_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0014.maskedPrefix = evenK4TerminalGroup0027FinalRows0014 := by
  have hrow := congrArg
    (fun rows => rows.getD 14 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0027_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 47] evenK4TerminalGroup0027CommonRows = evenK4TerminalGroup0027FinalRows0014 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 47] = evenK4TerminalGroup0027FinalRows0014 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 47] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 47]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
            evenK4TerminalGroup0027TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0027NormalLookup evenK4TerminalGroup0027TwistLookup
          [] [31, 47]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 47] evenK4TerminalGroup0027CommonRows := by
        rw [evenK4TerminalGroup0027_common_rows]
      _ = evenK4TerminalGroup0027FinalRows0014 := hcontinued
  rw [show evenK4TerminalGroup0027Row0014.maskedPrefix = [31, 47] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [31, 47] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
        evenK4TerminalGroup0027TwistLookup [31, 47] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0027_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0027_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0027FinalRows0014 := hlocal

theorem evenK4TerminalGroup0027Row0014_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0014.maskedPrefix).counts = evenK4TerminalGroup0027Row0014.counts.toBitVec := by
  rw [evenK4TerminalGroup0027Row0014_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 14 emptyBitVecCounts) evenK4TerminalGroup0027_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0027Row0014_counts_fit :
    evenK4TerminalGroup0027Row0014.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0027Row0014, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

theorem evenK4TerminalGroup0027Row0015_global_rows :
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0015.maskedPrefix = evenK4TerminalGroup0027FinalRows0015 := by
  have hrow := congrArg
    (fun rows => rows.getD 15 Erdos848.globalMixedEmptyEvenBitVecRows)
    evenK4TerminalGroup0027_rows
  have hcontinued :
      Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 53] evenK4TerminalGroup0027CommonRows = evenK4TerminalGroup0027FinalRows0015 := by
    simpa [Erdos848.globalMixedEmptyEvenBitVecRows] using hrow
  have hlocal :
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 53] = evenK4TerminalGroup0027FinalRows0015 := by
    calc
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 53] =
        Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 53]
          (Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
            evenK4TerminalGroup0027TwistLookup []) :=
        (Erdos848.globalMixedBitVecContinueRows_restrictedRows_append
          evenK4TerminalGroup0027NormalLookup evenK4TerminalGroup0027TwistLookup
          [] [31, 53]).symm
      _ = Erdos848.globalMixedBitVecContinueRows evenK4TerminalGroup0027NormalLookup
          evenK4TerminalGroup0027TwistLookup [31, 53] evenK4TerminalGroup0027CommonRows := by
        rw [evenK4TerminalGroup0027_common_rows]
      _ = evenK4TerminalGroup0027FinalRows0015 := hcontinued
  rw [show evenK4TerminalGroup0027Row0015.maskedPrefix = [31, 53] by rfl]
  calc
    Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        [31, 53] =
      Erdos848.globalMixedBitVecRestrictedRows evenK4TerminalGroup0027NormalLookup
        evenK4TerminalGroup0027TwistLookup [31, 53] := by
      apply Erdos848.globalMixedBitVecRestrictedRows_congr_lookup
      · intro p hp
        apply evenK4TerminalGroup0027_normal_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
      · intro p hp
        apply evenK4TerminalGroup0027_twist_lookup_eq
        simp at hp
        rcases hp with rfl | rfl
        all_goals simp
    _ = evenK4TerminalGroup0027FinalRows0015 := hlocal

theorem evenK4TerminalGroup0027Row0015_global_counts :
    (Erdos848.globalMixedBitVecRestrictedRows normalQrMaskWords twistQrMaskWords
        evenK4TerminalGroup0027Row0015.maskedPrefix).counts = evenK4TerminalGroup0027Row0015.counts.toBitVec := by
  rw [evenK4TerminalGroup0027Row0015_global_rows]
  have hcount := congrArg
    (fun counts => counts.getD 15 emptyBitVecCounts) evenK4TerminalGroup0027_counts
  simpa [emptyBitVecCounts] using hcount

theorem evenK4TerminalGroup0027Row0015_counts_fit :
    evenK4TerminalGroup0027Row0015.counts.FitsBitVec64 := by
  norm_num [evenK4TerminalGroup0027Row0015, Erdos848.GlobalMixedEvenCounts.FitsBitVec64]

#print axioms evenK4TerminalGroup0027Row0015_global_counts

end Erdos848.GeneratedTailGlobalMixedEvenTerminalSound
