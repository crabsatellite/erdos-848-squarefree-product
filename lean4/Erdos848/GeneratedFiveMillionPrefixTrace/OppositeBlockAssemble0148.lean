import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0148
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0149
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0150
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0151

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0148, 0149, 0150, 0151 -/

def oppositeAggregatePartValid0_0148 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 151552
  | _ => True

theorem oppositeAggregatePart0_0148 :
    oppositeAggregatePartValid0_0148 oppositeHistoryChunk0148 := by
  unfold oppositeAggregatePartValid0_0148 oppositeHistoryChunk0148
  decide

def oppositeAggregatePartValid1_0148 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 151680
  | _ => True

theorem oppositeAggregatePart1_0148 :
    oppositeAggregatePartValid1_0148 oppositeHistoryChunk0148 := by
  unfold oppositeAggregatePartValid1_0148 oppositeHistoryChunk0148
  decide

def oppositeAggregatePartValid2_0148 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 151808
  | _ => True

theorem oppositeAggregatePart2_0148 :
    oppositeAggregatePartValid2_0148 oppositeHistoryChunk0148 := by
  unfold oppositeAggregatePartValid2_0148 oppositeHistoryChunk0148
  decide

def oppositeAggregatePartValid3_0148 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 151936
  | _ => True

theorem oppositeAggregatePart3_0148 :
    oppositeAggregatePartValid3_0148 oppositeHistoryChunk0148 := by
  unfold oppositeAggregatePartValid3_0148 oppositeHistoryChunk0148
  decide

def oppositeAggregatePartValid4_0148 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 152064
  | _ => True

theorem oppositeAggregatePart4_0148 :
    oppositeAggregatePartValid4_0148 oppositeHistoryChunk0148 := by
  unfold oppositeAggregatePartValid4_0148 oppositeHistoryChunk0148
  decide

def oppositeAggregatePartValid5_0148 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 152192
  | _ => True

theorem oppositeAggregatePart5_0148 :
    oppositeAggregatePartValid5_0148 oppositeHistoryChunk0148 := by
  unfold oppositeAggregatePartValid5_0148 oppositeHistoryChunk0148
  decide

def oppositeAggregatePartValid6_0148 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 152320
  | _ => True

theorem oppositeAggregatePart6_0148 :
    oppositeAggregatePartValid6_0148 oppositeHistoryChunk0148 := by
  unfold oppositeAggregatePartValid6_0148 oppositeHistoryChunk0148
  decide

def oppositeAggregatePartValid7_0148 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 152448
  | _ => True

theorem oppositeAggregatePart7_0148 :
    oppositeAggregatePartValid7_0148 oppositeHistoryChunk0148 := by
  unfold oppositeAggregatePartValid7_0148 oppositeHistoryChunk0148
  decide

theorem oppositeRange_0148 :
    oppositeHistoryChunk0148.ResidueIndexedValid anchorHistories 5000000 18 25 151552 := by
  have h0 := oppositeAggregatePart0_0148
  simp only [oppositeAggregatePartValid0_0148, oppositeHistoryChunk0148] at h0
  have h1 := oppositeAggregatePart1_0148
  simp only [oppositeAggregatePartValid1_0148, oppositeHistoryChunk0148] at h1
  have h2 := oppositeAggregatePart2_0148
  simp only [oppositeAggregatePartValid2_0148, oppositeHistoryChunk0148] at h2
  have h3 := oppositeAggregatePart3_0148
  simp only [oppositeAggregatePartValid3_0148, oppositeHistoryChunk0148] at h3
  have h4 := oppositeAggregatePart4_0148
  simp only [oppositeAggregatePartValid4_0148, oppositeHistoryChunk0148] at h4
  have h5 := oppositeAggregatePart5_0148
  simp only [oppositeAggregatePartValid5_0148, oppositeHistoryChunk0148] at h5
  have h6 := oppositeAggregatePart6_0148
  simp only [oppositeAggregatePartValid6_0148, oppositeHistoryChunk0148] at h6
  have h7 := oppositeAggregatePart7_0148
  simp only [oppositeAggregatePartValid7_0148, oppositeHistoryChunk0148] at h7
  unfold oppositeHistoryChunk0148
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0149 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 152576
  | _ => True

theorem oppositeAggregatePart0_0149 :
    oppositeAggregatePartValid0_0149 oppositeHistoryChunk0149 := by
  unfold oppositeAggregatePartValid0_0149 oppositeHistoryChunk0149
  decide

def oppositeAggregatePartValid1_0149 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 152704
  | _ => True

theorem oppositeAggregatePart1_0149 :
    oppositeAggregatePartValid1_0149 oppositeHistoryChunk0149 := by
  unfold oppositeAggregatePartValid1_0149 oppositeHistoryChunk0149
  decide

def oppositeAggregatePartValid2_0149 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 152832
  | _ => True

theorem oppositeAggregatePart2_0149 :
    oppositeAggregatePartValid2_0149 oppositeHistoryChunk0149 := by
  unfold oppositeAggregatePartValid2_0149 oppositeHistoryChunk0149
  decide

def oppositeAggregatePartValid3_0149 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 152960
  | _ => True

theorem oppositeAggregatePart3_0149 :
    oppositeAggregatePartValid3_0149 oppositeHistoryChunk0149 := by
  unfold oppositeAggregatePartValid3_0149 oppositeHistoryChunk0149
  decide

def oppositeAggregatePartValid4_0149 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 153088
  | _ => True

theorem oppositeAggregatePart4_0149 :
    oppositeAggregatePartValid4_0149 oppositeHistoryChunk0149 := by
  unfold oppositeAggregatePartValid4_0149 oppositeHistoryChunk0149
  decide

def oppositeAggregatePartValid5_0149 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 153216
  | _ => True

theorem oppositeAggregatePart5_0149 :
    oppositeAggregatePartValid5_0149 oppositeHistoryChunk0149 := by
  unfold oppositeAggregatePartValid5_0149 oppositeHistoryChunk0149
  decide

def oppositeAggregatePartValid6_0149 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 153344
  | _ => True

theorem oppositeAggregatePart6_0149 :
    oppositeAggregatePartValid6_0149 oppositeHistoryChunk0149 := by
  unfold oppositeAggregatePartValid6_0149 oppositeHistoryChunk0149
  decide

def oppositeAggregatePartValid7_0149 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 153472
  | _ => True

theorem oppositeAggregatePart7_0149 :
    oppositeAggregatePartValid7_0149 oppositeHistoryChunk0149 := by
  unfold oppositeAggregatePartValid7_0149 oppositeHistoryChunk0149
  decide

theorem oppositeRange_0149 :
    oppositeHistoryChunk0149.ResidueIndexedValid anchorHistories 5000000 18 25 152576 := by
  have h0 := oppositeAggregatePart0_0149
  simp only [oppositeAggregatePartValid0_0149, oppositeHistoryChunk0149] at h0
  have h1 := oppositeAggregatePart1_0149
  simp only [oppositeAggregatePartValid1_0149, oppositeHistoryChunk0149] at h1
  have h2 := oppositeAggregatePart2_0149
  simp only [oppositeAggregatePartValid2_0149, oppositeHistoryChunk0149] at h2
  have h3 := oppositeAggregatePart3_0149
  simp only [oppositeAggregatePartValid3_0149, oppositeHistoryChunk0149] at h3
  have h4 := oppositeAggregatePart4_0149
  simp only [oppositeAggregatePartValid4_0149, oppositeHistoryChunk0149] at h4
  have h5 := oppositeAggregatePart5_0149
  simp only [oppositeAggregatePartValid5_0149, oppositeHistoryChunk0149] at h5
  have h6 := oppositeAggregatePart6_0149
  simp only [oppositeAggregatePartValid6_0149, oppositeHistoryChunk0149] at h6
  have h7 := oppositeAggregatePart7_0149
  simp only [oppositeAggregatePartValid7_0149, oppositeHistoryChunk0149] at h7
  unfold oppositeHistoryChunk0149
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0150 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 153600
  | _ => True

theorem oppositeAggregatePart0_0150 :
    oppositeAggregatePartValid0_0150 oppositeHistoryChunk0150 := by
  unfold oppositeAggregatePartValid0_0150 oppositeHistoryChunk0150
  decide

def oppositeAggregatePartValid1_0150 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 153728
  | _ => True

theorem oppositeAggregatePart1_0150 :
    oppositeAggregatePartValid1_0150 oppositeHistoryChunk0150 := by
  unfold oppositeAggregatePartValid1_0150 oppositeHistoryChunk0150
  decide

def oppositeAggregatePartValid2_0150 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 153856
  | _ => True

theorem oppositeAggregatePart2_0150 :
    oppositeAggregatePartValid2_0150 oppositeHistoryChunk0150 := by
  unfold oppositeAggregatePartValid2_0150 oppositeHistoryChunk0150
  decide

def oppositeAggregatePartValid3_0150 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 153984
  | _ => True

theorem oppositeAggregatePart3_0150 :
    oppositeAggregatePartValid3_0150 oppositeHistoryChunk0150 := by
  unfold oppositeAggregatePartValid3_0150 oppositeHistoryChunk0150
  decide

def oppositeAggregatePartValid4_0150 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 154112
  | _ => True

theorem oppositeAggregatePart4_0150 :
    oppositeAggregatePartValid4_0150 oppositeHistoryChunk0150 := by
  unfold oppositeAggregatePartValid4_0150 oppositeHistoryChunk0150
  decide

def oppositeAggregatePartValid5_0150 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 154240
  | _ => True

theorem oppositeAggregatePart5_0150 :
    oppositeAggregatePartValid5_0150 oppositeHistoryChunk0150 := by
  unfold oppositeAggregatePartValid5_0150 oppositeHistoryChunk0150
  decide

def oppositeAggregatePartValid6_0150 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 154368
  | _ => True

theorem oppositeAggregatePart6_0150 :
    oppositeAggregatePartValid6_0150 oppositeHistoryChunk0150 := by
  unfold oppositeAggregatePartValid6_0150 oppositeHistoryChunk0150
  decide

def oppositeAggregatePartValid7_0150 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 154496
  | _ => True

theorem oppositeAggregatePart7_0150 :
    oppositeAggregatePartValid7_0150 oppositeHistoryChunk0150 := by
  unfold oppositeAggregatePartValid7_0150 oppositeHistoryChunk0150
  decide

theorem oppositeRange_0150 :
    oppositeHistoryChunk0150.ResidueIndexedValid anchorHistories 5000000 18 25 153600 := by
  have h0 := oppositeAggregatePart0_0150
  simp only [oppositeAggregatePartValid0_0150, oppositeHistoryChunk0150] at h0
  have h1 := oppositeAggregatePart1_0150
  simp only [oppositeAggregatePartValid1_0150, oppositeHistoryChunk0150] at h1
  have h2 := oppositeAggregatePart2_0150
  simp only [oppositeAggregatePartValid2_0150, oppositeHistoryChunk0150] at h2
  have h3 := oppositeAggregatePart3_0150
  simp only [oppositeAggregatePartValid3_0150, oppositeHistoryChunk0150] at h3
  have h4 := oppositeAggregatePart4_0150
  simp only [oppositeAggregatePartValid4_0150, oppositeHistoryChunk0150] at h4
  have h5 := oppositeAggregatePart5_0150
  simp only [oppositeAggregatePartValid5_0150, oppositeHistoryChunk0150] at h5
  have h6 := oppositeAggregatePart6_0150
  simp only [oppositeAggregatePartValid6_0150, oppositeHistoryChunk0150] at h6
  have h7 := oppositeAggregatePart7_0150
  simp only [oppositeAggregatePartValid7_0150, oppositeHistoryChunk0150] at h7
  unfold oppositeHistoryChunk0150
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0151 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 154624
  | _ => True

theorem oppositeAggregatePart0_0151 :
    oppositeAggregatePartValid0_0151 oppositeHistoryChunk0151 := by
  unfold oppositeAggregatePartValid0_0151 oppositeHistoryChunk0151
  decide

def oppositeAggregatePartValid1_0151 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 154752
  | _ => True

theorem oppositeAggregatePart1_0151 :
    oppositeAggregatePartValid1_0151 oppositeHistoryChunk0151 := by
  unfold oppositeAggregatePartValid1_0151 oppositeHistoryChunk0151
  decide

def oppositeAggregatePartValid2_0151 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 154880
  | _ => True

theorem oppositeAggregatePart2_0151 :
    oppositeAggregatePartValid2_0151 oppositeHistoryChunk0151 := by
  unfold oppositeAggregatePartValid2_0151 oppositeHistoryChunk0151
  decide

def oppositeAggregatePartValid3_0151 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 155008
  | _ => True

theorem oppositeAggregatePart3_0151 :
    oppositeAggregatePartValid3_0151 oppositeHistoryChunk0151 := by
  unfold oppositeAggregatePartValid3_0151 oppositeHistoryChunk0151
  decide

def oppositeAggregatePartValid4_0151 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 155136
  | _ => True

theorem oppositeAggregatePart4_0151 :
    oppositeAggregatePartValid4_0151 oppositeHistoryChunk0151 := by
  unfold oppositeAggregatePartValid4_0151 oppositeHistoryChunk0151
  decide

def oppositeAggregatePartValid5_0151 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 155264
  | _ => True

theorem oppositeAggregatePart5_0151 :
    oppositeAggregatePartValid5_0151 oppositeHistoryChunk0151 := by
  unfold oppositeAggregatePartValid5_0151 oppositeHistoryChunk0151
  decide

def oppositeAggregatePartValid6_0151 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 155392
  | _ => True

theorem oppositeAggregatePart6_0151 :
    oppositeAggregatePartValid6_0151 oppositeHistoryChunk0151 := by
  unfold oppositeAggregatePartValid6_0151 oppositeHistoryChunk0151
  decide

def oppositeAggregatePartValid7_0151 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 155520
  | _ => True

theorem oppositeAggregatePart7_0151 :
    oppositeAggregatePartValid7_0151 oppositeHistoryChunk0151 := by
  unfold oppositeAggregatePartValid7_0151 oppositeHistoryChunk0151
  decide

theorem oppositeRange_0151 :
    oppositeHistoryChunk0151.ResidueIndexedValid anchorHistories 5000000 18 25 154624 := by
  have h0 := oppositeAggregatePart0_0151
  simp only [oppositeAggregatePartValid0_0151, oppositeHistoryChunk0151] at h0
  have h1 := oppositeAggregatePart1_0151
  simp only [oppositeAggregatePartValid1_0151, oppositeHistoryChunk0151] at h1
  have h2 := oppositeAggregatePart2_0151
  simp only [oppositeAggregatePartValid2_0151, oppositeHistoryChunk0151] at h2
  have h3 := oppositeAggregatePart3_0151
  simp only [oppositeAggregatePartValid3_0151, oppositeHistoryChunk0151] at h3
  have h4 := oppositeAggregatePart4_0151
  simp only [oppositeAggregatePartValid4_0151, oppositeHistoryChunk0151] at h4
  have h5 := oppositeAggregatePart5_0151
  simp only [oppositeAggregatePartValid5_0151, oppositeHistoryChunk0151] at h5
  have h6 := oppositeAggregatePart6_0151
  simp only [oppositeAggregatePartValid6_0151, oppositeHistoryChunk0151] at h6
  have h7 := oppositeAggregatePart7_0151
  simp only [oppositeAggregatePartValid7_0151, oppositeHistoryChunk0151] at h7
  unfold oppositeHistoryChunk0151
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
