import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0032
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0033
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0034
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0035

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0032, 0033, 0034, 0035 -/

def oppositeAggregatePartValid0_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 32768
  | _ => True

theorem oppositeAggregatePart0_0032 :
    oppositeAggregatePartValid0_0032 oppositeHistoryChunk0032 := by
  unfold oppositeAggregatePartValid0_0032 oppositeHistoryChunk0032
  decide

def oppositeAggregatePartValid1_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 32896
  | _ => True

theorem oppositeAggregatePart1_0032 :
    oppositeAggregatePartValid1_0032 oppositeHistoryChunk0032 := by
  unfold oppositeAggregatePartValid1_0032 oppositeHistoryChunk0032
  decide

def oppositeAggregatePartValid2_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 33024
  | _ => True

theorem oppositeAggregatePart2_0032 :
    oppositeAggregatePartValid2_0032 oppositeHistoryChunk0032 := by
  unfold oppositeAggregatePartValid2_0032 oppositeHistoryChunk0032
  decide

def oppositeAggregatePartValid3_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 33152
  | _ => True

theorem oppositeAggregatePart3_0032 :
    oppositeAggregatePartValid3_0032 oppositeHistoryChunk0032 := by
  unfold oppositeAggregatePartValid3_0032 oppositeHistoryChunk0032
  decide

def oppositeAggregatePartValid4_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 33280
  | _ => True

theorem oppositeAggregatePart4_0032 :
    oppositeAggregatePartValid4_0032 oppositeHistoryChunk0032 := by
  unfold oppositeAggregatePartValid4_0032 oppositeHistoryChunk0032
  decide

def oppositeAggregatePartValid5_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 33408
  | _ => True

theorem oppositeAggregatePart5_0032 :
    oppositeAggregatePartValid5_0032 oppositeHistoryChunk0032 := by
  unfold oppositeAggregatePartValid5_0032 oppositeHistoryChunk0032
  decide

def oppositeAggregatePartValid6_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 33536
  | _ => True

theorem oppositeAggregatePart6_0032 :
    oppositeAggregatePartValid6_0032 oppositeHistoryChunk0032 := by
  unfold oppositeAggregatePartValid6_0032 oppositeHistoryChunk0032
  decide

def oppositeAggregatePartValid7_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 33664
  | _ => True

theorem oppositeAggregatePart7_0032 :
    oppositeAggregatePartValid7_0032 oppositeHistoryChunk0032 := by
  unfold oppositeAggregatePartValid7_0032 oppositeHistoryChunk0032
  decide

theorem oppositeRange_0032 :
    oppositeHistoryChunk0032.ResidueIndexedValid anchorHistories 5000000 18 25 32768 := by
  have h0 := oppositeAggregatePart0_0032
  simp only [oppositeAggregatePartValid0_0032, oppositeHistoryChunk0032] at h0
  have h1 := oppositeAggregatePart1_0032
  simp only [oppositeAggregatePartValid1_0032, oppositeHistoryChunk0032] at h1
  have h2 := oppositeAggregatePart2_0032
  simp only [oppositeAggregatePartValid2_0032, oppositeHistoryChunk0032] at h2
  have h3 := oppositeAggregatePart3_0032
  simp only [oppositeAggregatePartValid3_0032, oppositeHistoryChunk0032] at h3
  have h4 := oppositeAggregatePart4_0032
  simp only [oppositeAggregatePartValid4_0032, oppositeHistoryChunk0032] at h4
  have h5 := oppositeAggregatePart5_0032
  simp only [oppositeAggregatePartValid5_0032, oppositeHistoryChunk0032] at h5
  have h6 := oppositeAggregatePart6_0032
  simp only [oppositeAggregatePartValid6_0032, oppositeHistoryChunk0032] at h6
  have h7 := oppositeAggregatePart7_0032
  simp only [oppositeAggregatePartValid7_0032, oppositeHistoryChunk0032] at h7
  unfold oppositeHistoryChunk0032
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 33792
  | _ => True

theorem oppositeAggregatePart0_0033 :
    oppositeAggregatePartValid0_0033 oppositeHistoryChunk0033 := by
  unfold oppositeAggregatePartValid0_0033 oppositeHistoryChunk0033
  decide

def oppositeAggregatePartValid1_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 33920
  | _ => True

theorem oppositeAggregatePart1_0033 :
    oppositeAggregatePartValid1_0033 oppositeHistoryChunk0033 := by
  unfold oppositeAggregatePartValid1_0033 oppositeHistoryChunk0033
  decide

def oppositeAggregatePartValid2_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 34048
  | _ => True

theorem oppositeAggregatePart2_0033 :
    oppositeAggregatePartValid2_0033 oppositeHistoryChunk0033 := by
  unfold oppositeAggregatePartValid2_0033 oppositeHistoryChunk0033
  decide

def oppositeAggregatePartValid3_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 34176
  | _ => True

theorem oppositeAggregatePart3_0033 :
    oppositeAggregatePartValid3_0033 oppositeHistoryChunk0033 := by
  unfold oppositeAggregatePartValid3_0033 oppositeHistoryChunk0033
  decide

def oppositeAggregatePartValid4_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 34304
  | _ => True

theorem oppositeAggregatePart4_0033 :
    oppositeAggregatePartValid4_0033 oppositeHistoryChunk0033 := by
  unfold oppositeAggregatePartValid4_0033 oppositeHistoryChunk0033
  decide

def oppositeAggregatePartValid5_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 34432
  | _ => True

theorem oppositeAggregatePart5_0033 :
    oppositeAggregatePartValid5_0033 oppositeHistoryChunk0033 := by
  unfold oppositeAggregatePartValid5_0033 oppositeHistoryChunk0033
  decide

def oppositeAggregatePartValid6_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 34560
  | _ => True

theorem oppositeAggregatePart6_0033 :
    oppositeAggregatePartValid6_0033 oppositeHistoryChunk0033 := by
  unfold oppositeAggregatePartValid6_0033 oppositeHistoryChunk0033
  decide

def oppositeAggregatePartValid7_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 34688
  | _ => True

theorem oppositeAggregatePart7_0033 :
    oppositeAggregatePartValid7_0033 oppositeHistoryChunk0033 := by
  unfold oppositeAggregatePartValid7_0033 oppositeHistoryChunk0033
  decide

theorem oppositeRange_0033 :
    oppositeHistoryChunk0033.ResidueIndexedValid anchorHistories 5000000 18 25 33792 := by
  have h0 := oppositeAggregatePart0_0033
  simp only [oppositeAggregatePartValid0_0033, oppositeHistoryChunk0033] at h0
  have h1 := oppositeAggregatePart1_0033
  simp only [oppositeAggregatePartValid1_0033, oppositeHistoryChunk0033] at h1
  have h2 := oppositeAggregatePart2_0033
  simp only [oppositeAggregatePartValid2_0033, oppositeHistoryChunk0033] at h2
  have h3 := oppositeAggregatePart3_0033
  simp only [oppositeAggregatePartValid3_0033, oppositeHistoryChunk0033] at h3
  have h4 := oppositeAggregatePart4_0033
  simp only [oppositeAggregatePartValid4_0033, oppositeHistoryChunk0033] at h4
  have h5 := oppositeAggregatePart5_0033
  simp only [oppositeAggregatePartValid5_0033, oppositeHistoryChunk0033] at h5
  have h6 := oppositeAggregatePart6_0033
  simp only [oppositeAggregatePartValid6_0033, oppositeHistoryChunk0033] at h6
  have h7 := oppositeAggregatePart7_0033
  simp only [oppositeAggregatePartValid7_0033, oppositeHistoryChunk0033] at h7
  unfold oppositeHistoryChunk0033
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 34816
  | _ => True

theorem oppositeAggregatePart0_0034 :
    oppositeAggregatePartValid0_0034 oppositeHistoryChunk0034 := by
  unfold oppositeAggregatePartValid0_0034 oppositeHistoryChunk0034
  decide

def oppositeAggregatePartValid1_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 34944
  | _ => True

theorem oppositeAggregatePart1_0034 :
    oppositeAggregatePartValid1_0034 oppositeHistoryChunk0034 := by
  unfold oppositeAggregatePartValid1_0034 oppositeHistoryChunk0034
  decide

def oppositeAggregatePartValid2_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 35072
  | _ => True

theorem oppositeAggregatePart2_0034 :
    oppositeAggregatePartValid2_0034 oppositeHistoryChunk0034 := by
  unfold oppositeAggregatePartValid2_0034 oppositeHistoryChunk0034
  decide

def oppositeAggregatePartValid3_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 35200
  | _ => True

theorem oppositeAggregatePart3_0034 :
    oppositeAggregatePartValid3_0034 oppositeHistoryChunk0034 := by
  unfold oppositeAggregatePartValid3_0034 oppositeHistoryChunk0034
  decide

def oppositeAggregatePartValid4_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 35328
  | _ => True

theorem oppositeAggregatePart4_0034 :
    oppositeAggregatePartValid4_0034 oppositeHistoryChunk0034 := by
  unfold oppositeAggregatePartValid4_0034 oppositeHistoryChunk0034
  decide

def oppositeAggregatePartValid5_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 35456
  | _ => True

theorem oppositeAggregatePart5_0034 :
    oppositeAggregatePartValid5_0034 oppositeHistoryChunk0034 := by
  unfold oppositeAggregatePartValid5_0034 oppositeHistoryChunk0034
  decide

def oppositeAggregatePartValid6_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 35584
  | _ => True

theorem oppositeAggregatePart6_0034 :
    oppositeAggregatePartValid6_0034 oppositeHistoryChunk0034 := by
  unfold oppositeAggregatePartValid6_0034 oppositeHistoryChunk0034
  decide

def oppositeAggregatePartValid7_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 35712
  | _ => True

theorem oppositeAggregatePart7_0034 :
    oppositeAggregatePartValid7_0034 oppositeHistoryChunk0034 := by
  unfold oppositeAggregatePartValid7_0034 oppositeHistoryChunk0034
  decide

theorem oppositeRange_0034 :
    oppositeHistoryChunk0034.ResidueIndexedValid anchorHistories 5000000 18 25 34816 := by
  have h0 := oppositeAggregatePart0_0034
  simp only [oppositeAggregatePartValid0_0034, oppositeHistoryChunk0034] at h0
  have h1 := oppositeAggregatePart1_0034
  simp only [oppositeAggregatePartValid1_0034, oppositeHistoryChunk0034] at h1
  have h2 := oppositeAggregatePart2_0034
  simp only [oppositeAggregatePartValid2_0034, oppositeHistoryChunk0034] at h2
  have h3 := oppositeAggregatePart3_0034
  simp only [oppositeAggregatePartValid3_0034, oppositeHistoryChunk0034] at h3
  have h4 := oppositeAggregatePart4_0034
  simp only [oppositeAggregatePartValid4_0034, oppositeHistoryChunk0034] at h4
  have h5 := oppositeAggregatePart5_0034
  simp only [oppositeAggregatePartValid5_0034, oppositeHistoryChunk0034] at h5
  have h6 := oppositeAggregatePart6_0034
  simp only [oppositeAggregatePartValid6_0034, oppositeHistoryChunk0034] at h6
  have h7 := oppositeAggregatePart7_0034
  simp only [oppositeAggregatePartValid7_0034, oppositeHistoryChunk0034] at h7
  unfold oppositeHistoryChunk0034
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 35840
  | _ => True

theorem oppositeAggregatePart0_0035 :
    oppositeAggregatePartValid0_0035 oppositeHistoryChunk0035 := by
  unfold oppositeAggregatePartValid0_0035 oppositeHistoryChunk0035
  decide

def oppositeAggregatePartValid1_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 35968
  | _ => True

theorem oppositeAggregatePart1_0035 :
    oppositeAggregatePartValid1_0035 oppositeHistoryChunk0035 := by
  unfold oppositeAggregatePartValid1_0035 oppositeHistoryChunk0035
  decide

def oppositeAggregatePartValid2_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 36096
  | _ => True

theorem oppositeAggregatePart2_0035 :
    oppositeAggregatePartValid2_0035 oppositeHistoryChunk0035 := by
  unfold oppositeAggregatePartValid2_0035 oppositeHistoryChunk0035
  decide

def oppositeAggregatePartValid3_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 36224
  | _ => True

theorem oppositeAggregatePart3_0035 :
    oppositeAggregatePartValid3_0035 oppositeHistoryChunk0035 := by
  unfold oppositeAggregatePartValid3_0035 oppositeHistoryChunk0035
  decide

def oppositeAggregatePartValid4_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 36352
  | _ => True

theorem oppositeAggregatePart4_0035 :
    oppositeAggregatePartValid4_0035 oppositeHistoryChunk0035 := by
  unfold oppositeAggregatePartValid4_0035 oppositeHistoryChunk0035
  decide

def oppositeAggregatePartValid5_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 36480
  | _ => True

theorem oppositeAggregatePart5_0035 :
    oppositeAggregatePartValid5_0035 oppositeHistoryChunk0035 := by
  unfold oppositeAggregatePartValid5_0035 oppositeHistoryChunk0035
  decide

def oppositeAggregatePartValid6_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 36608
  | _ => True

theorem oppositeAggregatePart6_0035 :
    oppositeAggregatePartValid6_0035 oppositeHistoryChunk0035 := by
  unfold oppositeAggregatePartValid6_0035 oppositeHistoryChunk0035
  decide

def oppositeAggregatePartValid7_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 36736
  | _ => True

theorem oppositeAggregatePart7_0035 :
    oppositeAggregatePartValid7_0035 oppositeHistoryChunk0035 := by
  unfold oppositeAggregatePartValid7_0035 oppositeHistoryChunk0035
  decide

theorem oppositeRange_0035 :
    oppositeHistoryChunk0035.ResidueIndexedValid anchorHistories 5000000 18 25 35840 := by
  have h0 := oppositeAggregatePart0_0035
  simp only [oppositeAggregatePartValid0_0035, oppositeHistoryChunk0035] at h0
  have h1 := oppositeAggregatePart1_0035
  simp only [oppositeAggregatePartValid1_0035, oppositeHistoryChunk0035] at h1
  have h2 := oppositeAggregatePart2_0035
  simp only [oppositeAggregatePartValid2_0035, oppositeHistoryChunk0035] at h2
  have h3 := oppositeAggregatePart3_0035
  simp only [oppositeAggregatePartValid3_0035, oppositeHistoryChunk0035] at h3
  have h4 := oppositeAggregatePart4_0035
  simp only [oppositeAggregatePartValid4_0035, oppositeHistoryChunk0035] at h4
  have h5 := oppositeAggregatePart5_0035
  simp only [oppositeAggregatePartValid5_0035, oppositeHistoryChunk0035] at h5
  have h6 := oppositeAggregatePart6_0035
  simp only [oppositeAggregatePartValid6_0035, oppositeHistoryChunk0035] at h6
  have h7 := oppositeAggregatePart7_0035
  simp only [oppositeAggregatePartValid7_0035, oppositeHistoryChunk0035] at h7
  unfold oppositeHistoryChunk0035
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
