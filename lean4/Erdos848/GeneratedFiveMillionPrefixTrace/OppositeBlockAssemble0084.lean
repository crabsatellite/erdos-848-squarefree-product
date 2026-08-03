import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0084
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0085
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0086
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0087

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0084, 0085, 0086, 0087 -/

def oppositeAggregatePartValid0_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 86016
  | _ => True

theorem oppositeAggregatePart0_0084 :
    oppositeAggregatePartValid0_0084 oppositeHistoryChunk0084 := by
  unfold oppositeAggregatePartValid0_0084 oppositeHistoryChunk0084
  decide

def oppositeAggregatePartValid1_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 86144
  | _ => True

theorem oppositeAggregatePart1_0084 :
    oppositeAggregatePartValid1_0084 oppositeHistoryChunk0084 := by
  unfold oppositeAggregatePartValid1_0084 oppositeHistoryChunk0084
  decide

def oppositeAggregatePartValid2_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 86272
  | _ => True

theorem oppositeAggregatePart2_0084 :
    oppositeAggregatePartValid2_0084 oppositeHistoryChunk0084 := by
  unfold oppositeAggregatePartValid2_0084 oppositeHistoryChunk0084
  decide

def oppositeAggregatePartValid3_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 86400
  | _ => True

theorem oppositeAggregatePart3_0084 :
    oppositeAggregatePartValid3_0084 oppositeHistoryChunk0084 := by
  unfold oppositeAggregatePartValid3_0084 oppositeHistoryChunk0084
  decide

def oppositeAggregatePartValid4_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 86528
  | _ => True

theorem oppositeAggregatePart4_0084 :
    oppositeAggregatePartValid4_0084 oppositeHistoryChunk0084 := by
  unfold oppositeAggregatePartValid4_0084 oppositeHistoryChunk0084
  decide

def oppositeAggregatePartValid5_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 86656
  | _ => True

theorem oppositeAggregatePart5_0084 :
    oppositeAggregatePartValid5_0084 oppositeHistoryChunk0084 := by
  unfold oppositeAggregatePartValid5_0084 oppositeHistoryChunk0084
  decide

def oppositeAggregatePartValid6_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 86784
  | _ => True

theorem oppositeAggregatePart6_0084 :
    oppositeAggregatePartValid6_0084 oppositeHistoryChunk0084 := by
  unfold oppositeAggregatePartValid6_0084 oppositeHistoryChunk0084
  decide

def oppositeAggregatePartValid7_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 86912
  | _ => True

theorem oppositeAggregatePart7_0084 :
    oppositeAggregatePartValid7_0084 oppositeHistoryChunk0084 := by
  unfold oppositeAggregatePartValid7_0084 oppositeHistoryChunk0084
  decide

theorem oppositeRange_0084 :
    oppositeHistoryChunk0084.ResidueIndexedValid anchorHistories 5000000 18 25 86016 := by
  have h0 := oppositeAggregatePart0_0084
  simp only [oppositeAggregatePartValid0_0084, oppositeHistoryChunk0084] at h0
  have h1 := oppositeAggregatePart1_0084
  simp only [oppositeAggregatePartValid1_0084, oppositeHistoryChunk0084] at h1
  have h2 := oppositeAggregatePart2_0084
  simp only [oppositeAggregatePartValid2_0084, oppositeHistoryChunk0084] at h2
  have h3 := oppositeAggregatePart3_0084
  simp only [oppositeAggregatePartValid3_0084, oppositeHistoryChunk0084] at h3
  have h4 := oppositeAggregatePart4_0084
  simp only [oppositeAggregatePartValid4_0084, oppositeHistoryChunk0084] at h4
  have h5 := oppositeAggregatePart5_0084
  simp only [oppositeAggregatePartValid5_0084, oppositeHistoryChunk0084] at h5
  have h6 := oppositeAggregatePart6_0084
  simp only [oppositeAggregatePartValid6_0084, oppositeHistoryChunk0084] at h6
  have h7 := oppositeAggregatePart7_0084
  simp only [oppositeAggregatePartValid7_0084, oppositeHistoryChunk0084] at h7
  unfold oppositeHistoryChunk0084
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 87040
  | _ => True

theorem oppositeAggregatePart0_0085 :
    oppositeAggregatePartValid0_0085 oppositeHistoryChunk0085 := by
  unfold oppositeAggregatePartValid0_0085 oppositeHistoryChunk0085
  decide

def oppositeAggregatePartValid1_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 87168
  | _ => True

theorem oppositeAggregatePart1_0085 :
    oppositeAggregatePartValid1_0085 oppositeHistoryChunk0085 := by
  unfold oppositeAggregatePartValid1_0085 oppositeHistoryChunk0085
  decide

def oppositeAggregatePartValid2_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 87296
  | _ => True

theorem oppositeAggregatePart2_0085 :
    oppositeAggregatePartValid2_0085 oppositeHistoryChunk0085 := by
  unfold oppositeAggregatePartValid2_0085 oppositeHistoryChunk0085
  decide

def oppositeAggregatePartValid3_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 87424
  | _ => True

theorem oppositeAggregatePart3_0085 :
    oppositeAggregatePartValid3_0085 oppositeHistoryChunk0085 := by
  unfold oppositeAggregatePartValid3_0085 oppositeHistoryChunk0085
  decide

def oppositeAggregatePartValid4_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 87552
  | _ => True

theorem oppositeAggregatePart4_0085 :
    oppositeAggregatePartValid4_0085 oppositeHistoryChunk0085 := by
  unfold oppositeAggregatePartValid4_0085 oppositeHistoryChunk0085
  decide

def oppositeAggregatePartValid5_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 87680
  | _ => True

theorem oppositeAggregatePart5_0085 :
    oppositeAggregatePartValid5_0085 oppositeHistoryChunk0085 := by
  unfold oppositeAggregatePartValid5_0085 oppositeHistoryChunk0085
  decide

def oppositeAggregatePartValid6_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 87808
  | _ => True

theorem oppositeAggregatePart6_0085 :
    oppositeAggregatePartValid6_0085 oppositeHistoryChunk0085 := by
  unfold oppositeAggregatePartValid6_0085 oppositeHistoryChunk0085
  decide

def oppositeAggregatePartValid7_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 87936
  | _ => True

theorem oppositeAggregatePart7_0085 :
    oppositeAggregatePartValid7_0085 oppositeHistoryChunk0085 := by
  unfold oppositeAggregatePartValid7_0085 oppositeHistoryChunk0085
  decide

theorem oppositeRange_0085 :
    oppositeHistoryChunk0085.ResidueIndexedValid anchorHistories 5000000 18 25 87040 := by
  have h0 := oppositeAggregatePart0_0085
  simp only [oppositeAggregatePartValid0_0085, oppositeHistoryChunk0085] at h0
  have h1 := oppositeAggregatePart1_0085
  simp only [oppositeAggregatePartValid1_0085, oppositeHistoryChunk0085] at h1
  have h2 := oppositeAggregatePart2_0085
  simp only [oppositeAggregatePartValid2_0085, oppositeHistoryChunk0085] at h2
  have h3 := oppositeAggregatePart3_0085
  simp only [oppositeAggregatePartValid3_0085, oppositeHistoryChunk0085] at h3
  have h4 := oppositeAggregatePart4_0085
  simp only [oppositeAggregatePartValid4_0085, oppositeHistoryChunk0085] at h4
  have h5 := oppositeAggregatePart5_0085
  simp only [oppositeAggregatePartValid5_0085, oppositeHistoryChunk0085] at h5
  have h6 := oppositeAggregatePart6_0085
  simp only [oppositeAggregatePartValid6_0085, oppositeHistoryChunk0085] at h6
  have h7 := oppositeAggregatePart7_0085
  simp only [oppositeAggregatePartValid7_0085, oppositeHistoryChunk0085] at h7
  unfold oppositeHistoryChunk0085
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 88064
  | _ => True

theorem oppositeAggregatePart0_0086 :
    oppositeAggregatePartValid0_0086 oppositeHistoryChunk0086 := by
  unfold oppositeAggregatePartValid0_0086 oppositeHistoryChunk0086
  decide

def oppositeAggregatePartValid1_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 88192
  | _ => True

theorem oppositeAggregatePart1_0086 :
    oppositeAggregatePartValid1_0086 oppositeHistoryChunk0086 := by
  unfold oppositeAggregatePartValid1_0086 oppositeHistoryChunk0086
  decide

def oppositeAggregatePartValid2_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 88320
  | _ => True

theorem oppositeAggregatePart2_0086 :
    oppositeAggregatePartValid2_0086 oppositeHistoryChunk0086 := by
  unfold oppositeAggregatePartValid2_0086 oppositeHistoryChunk0086
  decide

def oppositeAggregatePartValid3_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 88448
  | _ => True

theorem oppositeAggregatePart3_0086 :
    oppositeAggregatePartValid3_0086 oppositeHistoryChunk0086 := by
  unfold oppositeAggregatePartValid3_0086 oppositeHistoryChunk0086
  decide

def oppositeAggregatePartValid4_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 88576
  | _ => True

theorem oppositeAggregatePart4_0086 :
    oppositeAggregatePartValid4_0086 oppositeHistoryChunk0086 := by
  unfold oppositeAggregatePartValid4_0086 oppositeHistoryChunk0086
  decide

def oppositeAggregatePartValid5_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 88704
  | _ => True

theorem oppositeAggregatePart5_0086 :
    oppositeAggregatePartValid5_0086 oppositeHistoryChunk0086 := by
  unfold oppositeAggregatePartValid5_0086 oppositeHistoryChunk0086
  decide

def oppositeAggregatePartValid6_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 88832
  | _ => True

theorem oppositeAggregatePart6_0086 :
    oppositeAggregatePartValid6_0086 oppositeHistoryChunk0086 := by
  unfold oppositeAggregatePartValid6_0086 oppositeHistoryChunk0086
  decide

def oppositeAggregatePartValid7_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 88960
  | _ => True

theorem oppositeAggregatePart7_0086 :
    oppositeAggregatePartValid7_0086 oppositeHistoryChunk0086 := by
  unfold oppositeAggregatePartValid7_0086 oppositeHistoryChunk0086
  decide

theorem oppositeRange_0086 :
    oppositeHistoryChunk0086.ResidueIndexedValid anchorHistories 5000000 18 25 88064 := by
  have h0 := oppositeAggregatePart0_0086
  simp only [oppositeAggregatePartValid0_0086, oppositeHistoryChunk0086] at h0
  have h1 := oppositeAggregatePart1_0086
  simp only [oppositeAggregatePartValid1_0086, oppositeHistoryChunk0086] at h1
  have h2 := oppositeAggregatePart2_0086
  simp only [oppositeAggregatePartValid2_0086, oppositeHistoryChunk0086] at h2
  have h3 := oppositeAggregatePart3_0086
  simp only [oppositeAggregatePartValid3_0086, oppositeHistoryChunk0086] at h3
  have h4 := oppositeAggregatePart4_0086
  simp only [oppositeAggregatePartValid4_0086, oppositeHistoryChunk0086] at h4
  have h5 := oppositeAggregatePart5_0086
  simp only [oppositeAggregatePartValid5_0086, oppositeHistoryChunk0086] at h5
  have h6 := oppositeAggregatePart6_0086
  simp only [oppositeAggregatePartValid6_0086, oppositeHistoryChunk0086] at h6
  have h7 := oppositeAggregatePart7_0086
  simp only [oppositeAggregatePartValid7_0086, oppositeHistoryChunk0086] at h7
  unfold oppositeHistoryChunk0086
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 89088
  | _ => True

theorem oppositeAggregatePart0_0087 :
    oppositeAggregatePartValid0_0087 oppositeHistoryChunk0087 := by
  unfold oppositeAggregatePartValid0_0087 oppositeHistoryChunk0087
  decide

def oppositeAggregatePartValid1_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 89216
  | _ => True

theorem oppositeAggregatePart1_0087 :
    oppositeAggregatePartValid1_0087 oppositeHistoryChunk0087 := by
  unfold oppositeAggregatePartValid1_0087 oppositeHistoryChunk0087
  decide

def oppositeAggregatePartValid2_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 89344
  | _ => True

theorem oppositeAggregatePart2_0087 :
    oppositeAggregatePartValid2_0087 oppositeHistoryChunk0087 := by
  unfold oppositeAggregatePartValid2_0087 oppositeHistoryChunk0087
  decide

def oppositeAggregatePartValid3_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 89472
  | _ => True

theorem oppositeAggregatePart3_0087 :
    oppositeAggregatePartValid3_0087 oppositeHistoryChunk0087 := by
  unfold oppositeAggregatePartValid3_0087 oppositeHistoryChunk0087
  decide

def oppositeAggregatePartValid4_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 89600
  | _ => True

theorem oppositeAggregatePart4_0087 :
    oppositeAggregatePartValid4_0087 oppositeHistoryChunk0087 := by
  unfold oppositeAggregatePartValid4_0087 oppositeHistoryChunk0087
  decide

def oppositeAggregatePartValid5_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 89728
  | _ => True

theorem oppositeAggregatePart5_0087 :
    oppositeAggregatePartValid5_0087 oppositeHistoryChunk0087 := by
  unfold oppositeAggregatePartValid5_0087 oppositeHistoryChunk0087
  decide

def oppositeAggregatePartValid6_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 89856
  | _ => True

theorem oppositeAggregatePart6_0087 :
    oppositeAggregatePartValid6_0087 oppositeHistoryChunk0087 := by
  unfold oppositeAggregatePartValid6_0087 oppositeHistoryChunk0087
  decide

def oppositeAggregatePartValid7_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 89984
  | _ => True

theorem oppositeAggregatePart7_0087 :
    oppositeAggregatePartValid7_0087 oppositeHistoryChunk0087 := by
  unfold oppositeAggregatePartValid7_0087 oppositeHistoryChunk0087
  decide

theorem oppositeRange_0087 :
    oppositeHistoryChunk0087.ResidueIndexedValid anchorHistories 5000000 18 25 89088 := by
  have h0 := oppositeAggregatePart0_0087
  simp only [oppositeAggregatePartValid0_0087, oppositeHistoryChunk0087] at h0
  have h1 := oppositeAggregatePart1_0087
  simp only [oppositeAggregatePartValid1_0087, oppositeHistoryChunk0087] at h1
  have h2 := oppositeAggregatePart2_0087
  simp only [oppositeAggregatePartValid2_0087, oppositeHistoryChunk0087] at h2
  have h3 := oppositeAggregatePart3_0087
  simp only [oppositeAggregatePartValid3_0087, oppositeHistoryChunk0087] at h3
  have h4 := oppositeAggregatePart4_0087
  simp only [oppositeAggregatePartValid4_0087, oppositeHistoryChunk0087] at h4
  have h5 := oppositeAggregatePart5_0087
  simp only [oppositeAggregatePartValid5_0087, oppositeHistoryChunk0087] at h5
  have h6 := oppositeAggregatePart6_0087
  simp only [oppositeAggregatePartValid6_0087, oppositeHistoryChunk0087] at h6
  have h7 := oppositeAggregatePart7_0087
  simp only [oppositeAggregatePartValid7_0087, oppositeHistoryChunk0087] at h7
  unfold oppositeHistoryChunk0087
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
