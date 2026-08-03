import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0096
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0097
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0098
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0099

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0096, 0097, 0098, 0099 -/

def oppositeAggregatePartValid0_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 98304
  | _ => True

theorem oppositeAggregatePart0_0096 :
    oppositeAggregatePartValid0_0096 oppositeHistoryChunk0096 := by
  unfold oppositeAggregatePartValid0_0096 oppositeHistoryChunk0096
  decide

def oppositeAggregatePartValid1_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 98432
  | _ => True

theorem oppositeAggregatePart1_0096 :
    oppositeAggregatePartValid1_0096 oppositeHistoryChunk0096 := by
  unfold oppositeAggregatePartValid1_0096 oppositeHistoryChunk0096
  decide

def oppositeAggregatePartValid2_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 98560
  | _ => True

theorem oppositeAggregatePart2_0096 :
    oppositeAggregatePartValid2_0096 oppositeHistoryChunk0096 := by
  unfold oppositeAggregatePartValid2_0096 oppositeHistoryChunk0096
  decide

def oppositeAggregatePartValid3_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 98688
  | _ => True

theorem oppositeAggregatePart3_0096 :
    oppositeAggregatePartValid3_0096 oppositeHistoryChunk0096 := by
  unfold oppositeAggregatePartValid3_0096 oppositeHistoryChunk0096
  decide

def oppositeAggregatePartValid4_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 98816
  | _ => True

theorem oppositeAggregatePart4_0096 :
    oppositeAggregatePartValid4_0096 oppositeHistoryChunk0096 := by
  unfold oppositeAggregatePartValid4_0096 oppositeHistoryChunk0096
  decide

def oppositeAggregatePartValid5_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 98944
  | _ => True

theorem oppositeAggregatePart5_0096 :
    oppositeAggregatePartValid5_0096 oppositeHistoryChunk0096 := by
  unfold oppositeAggregatePartValid5_0096 oppositeHistoryChunk0096
  decide

def oppositeAggregatePartValid6_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 99072
  | _ => True

theorem oppositeAggregatePart6_0096 :
    oppositeAggregatePartValid6_0096 oppositeHistoryChunk0096 := by
  unfold oppositeAggregatePartValid6_0096 oppositeHistoryChunk0096
  decide

def oppositeAggregatePartValid7_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 99200
  | _ => True

theorem oppositeAggregatePart7_0096 :
    oppositeAggregatePartValid7_0096 oppositeHistoryChunk0096 := by
  unfold oppositeAggregatePartValid7_0096 oppositeHistoryChunk0096
  decide

theorem oppositeRange_0096 :
    oppositeHistoryChunk0096.ResidueIndexedValid anchorHistories 5000000 18 25 98304 := by
  have h0 := oppositeAggregatePart0_0096
  simp only [oppositeAggregatePartValid0_0096, oppositeHistoryChunk0096] at h0
  have h1 := oppositeAggregatePart1_0096
  simp only [oppositeAggregatePartValid1_0096, oppositeHistoryChunk0096] at h1
  have h2 := oppositeAggregatePart2_0096
  simp only [oppositeAggregatePartValid2_0096, oppositeHistoryChunk0096] at h2
  have h3 := oppositeAggregatePart3_0096
  simp only [oppositeAggregatePartValid3_0096, oppositeHistoryChunk0096] at h3
  have h4 := oppositeAggregatePart4_0096
  simp only [oppositeAggregatePartValid4_0096, oppositeHistoryChunk0096] at h4
  have h5 := oppositeAggregatePart5_0096
  simp only [oppositeAggregatePartValid5_0096, oppositeHistoryChunk0096] at h5
  have h6 := oppositeAggregatePart6_0096
  simp only [oppositeAggregatePartValid6_0096, oppositeHistoryChunk0096] at h6
  have h7 := oppositeAggregatePart7_0096
  simp only [oppositeAggregatePartValid7_0096, oppositeHistoryChunk0096] at h7
  unfold oppositeHistoryChunk0096
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 99328
  | _ => True

theorem oppositeAggregatePart0_0097 :
    oppositeAggregatePartValid0_0097 oppositeHistoryChunk0097 := by
  unfold oppositeAggregatePartValid0_0097 oppositeHistoryChunk0097
  decide

def oppositeAggregatePartValid1_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 99456
  | _ => True

theorem oppositeAggregatePart1_0097 :
    oppositeAggregatePartValid1_0097 oppositeHistoryChunk0097 := by
  unfold oppositeAggregatePartValid1_0097 oppositeHistoryChunk0097
  decide

def oppositeAggregatePartValid2_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 99584
  | _ => True

theorem oppositeAggregatePart2_0097 :
    oppositeAggregatePartValid2_0097 oppositeHistoryChunk0097 := by
  unfold oppositeAggregatePartValid2_0097 oppositeHistoryChunk0097
  decide

def oppositeAggregatePartValid3_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 99712
  | _ => True

theorem oppositeAggregatePart3_0097 :
    oppositeAggregatePartValid3_0097 oppositeHistoryChunk0097 := by
  unfold oppositeAggregatePartValid3_0097 oppositeHistoryChunk0097
  decide

def oppositeAggregatePartValid4_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 99840
  | _ => True

theorem oppositeAggregatePart4_0097 :
    oppositeAggregatePartValid4_0097 oppositeHistoryChunk0097 := by
  unfold oppositeAggregatePartValid4_0097 oppositeHistoryChunk0097
  decide

def oppositeAggregatePartValid5_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 99968
  | _ => True

theorem oppositeAggregatePart5_0097 :
    oppositeAggregatePartValid5_0097 oppositeHistoryChunk0097 := by
  unfold oppositeAggregatePartValid5_0097 oppositeHistoryChunk0097
  decide

def oppositeAggregatePartValid6_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 100096
  | _ => True

theorem oppositeAggregatePart6_0097 :
    oppositeAggregatePartValid6_0097 oppositeHistoryChunk0097 := by
  unfold oppositeAggregatePartValid6_0097 oppositeHistoryChunk0097
  decide

def oppositeAggregatePartValid7_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 100224
  | _ => True

theorem oppositeAggregatePart7_0097 :
    oppositeAggregatePartValid7_0097 oppositeHistoryChunk0097 := by
  unfold oppositeAggregatePartValid7_0097 oppositeHistoryChunk0097
  decide

theorem oppositeRange_0097 :
    oppositeHistoryChunk0097.ResidueIndexedValid anchorHistories 5000000 18 25 99328 := by
  have h0 := oppositeAggregatePart0_0097
  simp only [oppositeAggregatePartValid0_0097, oppositeHistoryChunk0097] at h0
  have h1 := oppositeAggregatePart1_0097
  simp only [oppositeAggregatePartValid1_0097, oppositeHistoryChunk0097] at h1
  have h2 := oppositeAggregatePart2_0097
  simp only [oppositeAggregatePartValid2_0097, oppositeHistoryChunk0097] at h2
  have h3 := oppositeAggregatePart3_0097
  simp only [oppositeAggregatePartValid3_0097, oppositeHistoryChunk0097] at h3
  have h4 := oppositeAggregatePart4_0097
  simp only [oppositeAggregatePartValid4_0097, oppositeHistoryChunk0097] at h4
  have h5 := oppositeAggregatePart5_0097
  simp only [oppositeAggregatePartValid5_0097, oppositeHistoryChunk0097] at h5
  have h6 := oppositeAggregatePart6_0097
  simp only [oppositeAggregatePartValid6_0097, oppositeHistoryChunk0097] at h6
  have h7 := oppositeAggregatePart7_0097
  simp only [oppositeAggregatePartValid7_0097, oppositeHistoryChunk0097] at h7
  unfold oppositeHistoryChunk0097
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 100352
  | _ => True

theorem oppositeAggregatePart0_0098 :
    oppositeAggregatePartValid0_0098 oppositeHistoryChunk0098 := by
  unfold oppositeAggregatePartValid0_0098 oppositeHistoryChunk0098
  decide

def oppositeAggregatePartValid1_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 100480
  | _ => True

theorem oppositeAggregatePart1_0098 :
    oppositeAggregatePartValid1_0098 oppositeHistoryChunk0098 := by
  unfold oppositeAggregatePartValid1_0098 oppositeHistoryChunk0098
  decide

def oppositeAggregatePartValid2_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 100608
  | _ => True

theorem oppositeAggregatePart2_0098 :
    oppositeAggregatePartValid2_0098 oppositeHistoryChunk0098 := by
  unfold oppositeAggregatePartValid2_0098 oppositeHistoryChunk0098
  decide

def oppositeAggregatePartValid3_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 100736
  | _ => True

theorem oppositeAggregatePart3_0098 :
    oppositeAggregatePartValid3_0098 oppositeHistoryChunk0098 := by
  unfold oppositeAggregatePartValid3_0098 oppositeHistoryChunk0098
  decide

def oppositeAggregatePartValid4_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 100864
  | _ => True

theorem oppositeAggregatePart4_0098 :
    oppositeAggregatePartValid4_0098 oppositeHistoryChunk0098 := by
  unfold oppositeAggregatePartValid4_0098 oppositeHistoryChunk0098
  decide

def oppositeAggregatePartValid5_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 100992
  | _ => True

theorem oppositeAggregatePart5_0098 :
    oppositeAggregatePartValid5_0098 oppositeHistoryChunk0098 := by
  unfold oppositeAggregatePartValid5_0098 oppositeHistoryChunk0098
  decide

def oppositeAggregatePartValid6_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 101120
  | _ => True

theorem oppositeAggregatePart6_0098 :
    oppositeAggregatePartValid6_0098 oppositeHistoryChunk0098 := by
  unfold oppositeAggregatePartValid6_0098 oppositeHistoryChunk0098
  decide

def oppositeAggregatePartValid7_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 101248
  | _ => True

theorem oppositeAggregatePart7_0098 :
    oppositeAggregatePartValid7_0098 oppositeHistoryChunk0098 := by
  unfold oppositeAggregatePartValid7_0098 oppositeHistoryChunk0098
  decide

theorem oppositeRange_0098 :
    oppositeHistoryChunk0098.ResidueIndexedValid anchorHistories 5000000 18 25 100352 := by
  have h0 := oppositeAggregatePart0_0098
  simp only [oppositeAggregatePartValid0_0098, oppositeHistoryChunk0098] at h0
  have h1 := oppositeAggregatePart1_0098
  simp only [oppositeAggregatePartValid1_0098, oppositeHistoryChunk0098] at h1
  have h2 := oppositeAggregatePart2_0098
  simp only [oppositeAggregatePartValid2_0098, oppositeHistoryChunk0098] at h2
  have h3 := oppositeAggregatePart3_0098
  simp only [oppositeAggregatePartValid3_0098, oppositeHistoryChunk0098] at h3
  have h4 := oppositeAggregatePart4_0098
  simp only [oppositeAggregatePartValid4_0098, oppositeHistoryChunk0098] at h4
  have h5 := oppositeAggregatePart5_0098
  simp only [oppositeAggregatePartValid5_0098, oppositeHistoryChunk0098] at h5
  have h6 := oppositeAggregatePart6_0098
  simp only [oppositeAggregatePartValid6_0098, oppositeHistoryChunk0098] at h6
  have h7 := oppositeAggregatePart7_0098
  simp only [oppositeAggregatePartValid7_0098, oppositeHistoryChunk0098] at h7
  unfold oppositeHistoryChunk0098
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 101376
  | _ => True

theorem oppositeAggregatePart0_0099 :
    oppositeAggregatePartValid0_0099 oppositeHistoryChunk0099 := by
  unfold oppositeAggregatePartValid0_0099 oppositeHistoryChunk0099
  decide

def oppositeAggregatePartValid1_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 101504
  | _ => True

theorem oppositeAggregatePart1_0099 :
    oppositeAggregatePartValid1_0099 oppositeHistoryChunk0099 := by
  unfold oppositeAggregatePartValid1_0099 oppositeHistoryChunk0099
  decide

def oppositeAggregatePartValid2_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 101632
  | _ => True

theorem oppositeAggregatePart2_0099 :
    oppositeAggregatePartValid2_0099 oppositeHistoryChunk0099 := by
  unfold oppositeAggregatePartValid2_0099 oppositeHistoryChunk0099
  decide

def oppositeAggregatePartValid3_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 101760
  | _ => True

theorem oppositeAggregatePart3_0099 :
    oppositeAggregatePartValid3_0099 oppositeHistoryChunk0099 := by
  unfold oppositeAggregatePartValid3_0099 oppositeHistoryChunk0099
  decide

def oppositeAggregatePartValid4_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 101888
  | _ => True

theorem oppositeAggregatePart4_0099 :
    oppositeAggregatePartValid4_0099 oppositeHistoryChunk0099 := by
  unfold oppositeAggregatePartValid4_0099 oppositeHistoryChunk0099
  decide

def oppositeAggregatePartValid5_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 102016
  | _ => True

theorem oppositeAggregatePart5_0099 :
    oppositeAggregatePartValid5_0099 oppositeHistoryChunk0099 := by
  unfold oppositeAggregatePartValid5_0099 oppositeHistoryChunk0099
  decide

def oppositeAggregatePartValid6_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 102144
  | _ => True

theorem oppositeAggregatePart6_0099 :
    oppositeAggregatePartValid6_0099 oppositeHistoryChunk0099 := by
  unfold oppositeAggregatePartValid6_0099 oppositeHistoryChunk0099
  decide

def oppositeAggregatePartValid7_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 102272
  | _ => True

theorem oppositeAggregatePart7_0099 :
    oppositeAggregatePartValid7_0099 oppositeHistoryChunk0099 := by
  unfold oppositeAggregatePartValid7_0099 oppositeHistoryChunk0099
  decide

theorem oppositeRange_0099 :
    oppositeHistoryChunk0099.ResidueIndexedValid anchorHistories 5000000 18 25 101376 := by
  have h0 := oppositeAggregatePart0_0099
  simp only [oppositeAggregatePartValid0_0099, oppositeHistoryChunk0099] at h0
  have h1 := oppositeAggregatePart1_0099
  simp only [oppositeAggregatePartValid1_0099, oppositeHistoryChunk0099] at h1
  have h2 := oppositeAggregatePart2_0099
  simp only [oppositeAggregatePartValid2_0099, oppositeHistoryChunk0099] at h2
  have h3 := oppositeAggregatePart3_0099
  simp only [oppositeAggregatePartValid3_0099, oppositeHistoryChunk0099] at h3
  have h4 := oppositeAggregatePart4_0099
  simp only [oppositeAggregatePartValid4_0099, oppositeHistoryChunk0099] at h4
  have h5 := oppositeAggregatePart5_0099
  simp only [oppositeAggregatePartValid5_0099, oppositeHistoryChunk0099] at h5
  have h6 := oppositeAggregatePart6_0099
  simp only [oppositeAggregatePartValid6_0099, oppositeHistoryChunk0099] at h6
  have h7 := oppositeAggregatePart7_0099
  simp only [oppositeAggregatePartValid7_0099, oppositeHistoryChunk0099] at h7
  unfold oppositeHistoryChunk0099
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
