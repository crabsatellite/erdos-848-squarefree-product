import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0128
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0129
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0130
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0131

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0128, 0129, 0130, 0131 -/

def oppositeAggregatePartValid0_0128 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 131072
  | _ => True

theorem oppositeAggregatePart0_0128 :
    oppositeAggregatePartValid0_0128 oppositeHistoryChunk0128 := by
  unfold oppositeAggregatePartValid0_0128 oppositeHistoryChunk0128
  decide

def oppositeAggregatePartValid1_0128 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 131200
  | _ => True

theorem oppositeAggregatePart1_0128 :
    oppositeAggregatePartValid1_0128 oppositeHistoryChunk0128 := by
  unfold oppositeAggregatePartValid1_0128 oppositeHistoryChunk0128
  decide

def oppositeAggregatePartValid2_0128 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 131328
  | _ => True

theorem oppositeAggregatePart2_0128 :
    oppositeAggregatePartValid2_0128 oppositeHistoryChunk0128 := by
  unfold oppositeAggregatePartValid2_0128 oppositeHistoryChunk0128
  decide

def oppositeAggregatePartValid3_0128 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 131456
  | _ => True

theorem oppositeAggregatePart3_0128 :
    oppositeAggregatePartValid3_0128 oppositeHistoryChunk0128 := by
  unfold oppositeAggregatePartValid3_0128 oppositeHistoryChunk0128
  decide

def oppositeAggregatePartValid4_0128 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 131584
  | _ => True

theorem oppositeAggregatePart4_0128 :
    oppositeAggregatePartValid4_0128 oppositeHistoryChunk0128 := by
  unfold oppositeAggregatePartValid4_0128 oppositeHistoryChunk0128
  decide

def oppositeAggregatePartValid5_0128 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 131712
  | _ => True

theorem oppositeAggregatePart5_0128 :
    oppositeAggregatePartValid5_0128 oppositeHistoryChunk0128 := by
  unfold oppositeAggregatePartValid5_0128 oppositeHistoryChunk0128
  decide

def oppositeAggregatePartValid6_0128 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 131840
  | _ => True

theorem oppositeAggregatePart6_0128 :
    oppositeAggregatePartValid6_0128 oppositeHistoryChunk0128 := by
  unfold oppositeAggregatePartValid6_0128 oppositeHistoryChunk0128
  decide

def oppositeAggregatePartValid7_0128 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 131968
  | _ => True

theorem oppositeAggregatePart7_0128 :
    oppositeAggregatePartValid7_0128 oppositeHistoryChunk0128 := by
  unfold oppositeAggregatePartValid7_0128 oppositeHistoryChunk0128
  decide

theorem oppositeRange_0128 :
    oppositeHistoryChunk0128.ResidueIndexedValid anchorHistories 5000000 18 25 131072 := by
  have h0 := oppositeAggregatePart0_0128
  simp only [oppositeAggregatePartValid0_0128, oppositeHistoryChunk0128] at h0
  have h1 := oppositeAggregatePart1_0128
  simp only [oppositeAggregatePartValid1_0128, oppositeHistoryChunk0128] at h1
  have h2 := oppositeAggregatePart2_0128
  simp only [oppositeAggregatePartValid2_0128, oppositeHistoryChunk0128] at h2
  have h3 := oppositeAggregatePart3_0128
  simp only [oppositeAggregatePartValid3_0128, oppositeHistoryChunk0128] at h3
  have h4 := oppositeAggregatePart4_0128
  simp only [oppositeAggregatePartValid4_0128, oppositeHistoryChunk0128] at h4
  have h5 := oppositeAggregatePart5_0128
  simp only [oppositeAggregatePartValid5_0128, oppositeHistoryChunk0128] at h5
  have h6 := oppositeAggregatePart6_0128
  simp only [oppositeAggregatePartValid6_0128, oppositeHistoryChunk0128] at h6
  have h7 := oppositeAggregatePart7_0128
  simp only [oppositeAggregatePartValid7_0128, oppositeHistoryChunk0128] at h7
  unfold oppositeHistoryChunk0128
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0129 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 132096
  | _ => True

theorem oppositeAggregatePart0_0129 :
    oppositeAggregatePartValid0_0129 oppositeHistoryChunk0129 := by
  unfold oppositeAggregatePartValid0_0129 oppositeHistoryChunk0129
  decide

def oppositeAggregatePartValid1_0129 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 132224
  | _ => True

theorem oppositeAggregatePart1_0129 :
    oppositeAggregatePartValid1_0129 oppositeHistoryChunk0129 := by
  unfold oppositeAggregatePartValid1_0129 oppositeHistoryChunk0129
  decide

def oppositeAggregatePartValid2_0129 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 132352
  | _ => True

theorem oppositeAggregatePart2_0129 :
    oppositeAggregatePartValid2_0129 oppositeHistoryChunk0129 := by
  unfold oppositeAggregatePartValid2_0129 oppositeHistoryChunk0129
  decide

def oppositeAggregatePartValid3_0129 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 132480
  | _ => True

theorem oppositeAggregatePart3_0129 :
    oppositeAggregatePartValid3_0129 oppositeHistoryChunk0129 := by
  unfold oppositeAggregatePartValid3_0129 oppositeHistoryChunk0129
  decide

def oppositeAggregatePartValid4_0129 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 132608
  | _ => True

theorem oppositeAggregatePart4_0129 :
    oppositeAggregatePartValid4_0129 oppositeHistoryChunk0129 := by
  unfold oppositeAggregatePartValid4_0129 oppositeHistoryChunk0129
  decide

def oppositeAggregatePartValid5_0129 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 132736
  | _ => True

theorem oppositeAggregatePart5_0129 :
    oppositeAggregatePartValid5_0129 oppositeHistoryChunk0129 := by
  unfold oppositeAggregatePartValid5_0129 oppositeHistoryChunk0129
  decide

def oppositeAggregatePartValid6_0129 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 132864
  | _ => True

theorem oppositeAggregatePart6_0129 :
    oppositeAggregatePartValid6_0129 oppositeHistoryChunk0129 := by
  unfold oppositeAggregatePartValid6_0129 oppositeHistoryChunk0129
  decide

def oppositeAggregatePartValid7_0129 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 132992
  | _ => True

theorem oppositeAggregatePart7_0129 :
    oppositeAggregatePartValid7_0129 oppositeHistoryChunk0129 := by
  unfold oppositeAggregatePartValid7_0129 oppositeHistoryChunk0129
  decide

theorem oppositeRange_0129 :
    oppositeHistoryChunk0129.ResidueIndexedValid anchorHistories 5000000 18 25 132096 := by
  have h0 := oppositeAggregatePart0_0129
  simp only [oppositeAggregatePartValid0_0129, oppositeHistoryChunk0129] at h0
  have h1 := oppositeAggregatePart1_0129
  simp only [oppositeAggregatePartValid1_0129, oppositeHistoryChunk0129] at h1
  have h2 := oppositeAggregatePart2_0129
  simp only [oppositeAggregatePartValid2_0129, oppositeHistoryChunk0129] at h2
  have h3 := oppositeAggregatePart3_0129
  simp only [oppositeAggregatePartValid3_0129, oppositeHistoryChunk0129] at h3
  have h4 := oppositeAggregatePart4_0129
  simp only [oppositeAggregatePartValid4_0129, oppositeHistoryChunk0129] at h4
  have h5 := oppositeAggregatePart5_0129
  simp only [oppositeAggregatePartValid5_0129, oppositeHistoryChunk0129] at h5
  have h6 := oppositeAggregatePart6_0129
  simp only [oppositeAggregatePartValid6_0129, oppositeHistoryChunk0129] at h6
  have h7 := oppositeAggregatePart7_0129
  simp only [oppositeAggregatePartValid7_0129, oppositeHistoryChunk0129] at h7
  unfold oppositeHistoryChunk0129
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0130 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 133120
  | _ => True

theorem oppositeAggregatePart0_0130 :
    oppositeAggregatePartValid0_0130 oppositeHistoryChunk0130 := by
  unfold oppositeAggregatePartValid0_0130 oppositeHistoryChunk0130
  decide

def oppositeAggregatePartValid1_0130 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 133248
  | _ => True

theorem oppositeAggregatePart1_0130 :
    oppositeAggregatePartValid1_0130 oppositeHistoryChunk0130 := by
  unfold oppositeAggregatePartValid1_0130 oppositeHistoryChunk0130
  decide

def oppositeAggregatePartValid2_0130 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 133376
  | _ => True

theorem oppositeAggregatePart2_0130 :
    oppositeAggregatePartValid2_0130 oppositeHistoryChunk0130 := by
  unfold oppositeAggregatePartValid2_0130 oppositeHistoryChunk0130
  decide

def oppositeAggregatePartValid3_0130 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 133504
  | _ => True

theorem oppositeAggregatePart3_0130 :
    oppositeAggregatePartValid3_0130 oppositeHistoryChunk0130 := by
  unfold oppositeAggregatePartValid3_0130 oppositeHistoryChunk0130
  decide

def oppositeAggregatePartValid4_0130 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 133632
  | _ => True

theorem oppositeAggregatePart4_0130 :
    oppositeAggregatePartValid4_0130 oppositeHistoryChunk0130 := by
  unfold oppositeAggregatePartValid4_0130 oppositeHistoryChunk0130
  decide

def oppositeAggregatePartValid5_0130 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 133760
  | _ => True

theorem oppositeAggregatePart5_0130 :
    oppositeAggregatePartValid5_0130 oppositeHistoryChunk0130 := by
  unfold oppositeAggregatePartValid5_0130 oppositeHistoryChunk0130
  decide

def oppositeAggregatePartValid6_0130 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 133888
  | _ => True

theorem oppositeAggregatePart6_0130 :
    oppositeAggregatePartValid6_0130 oppositeHistoryChunk0130 := by
  unfold oppositeAggregatePartValid6_0130 oppositeHistoryChunk0130
  decide

def oppositeAggregatePartValid7_0130 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 134016
  | _ => True

theorem oppositeAggregatePart7_0130 :
    oppositeAggregatePartValid7_0130 oppositeHistoryChunk0130 := by
  unfold oppositeAggregatePartValid7_0130 oppositeHistoryChunk0130
  decide

theorem oppositeRange_0130 :
    oppositeHistoryChunk0130.ResidueIndexedValid anchorHistories 5000000 18 25 133120 := by
  have h0 := oppositeAggregatePart0_0130
  simp only [oppositeAggregatePartValid0_0130, oppositeHistoryChunk0130] at h0
  have h1 := oppositeAggregatePart1_0130
  simp only [oppositeAggregatePartValid1_0130, oppositeHistoryChunk0130] at h1
  have h2 := oppositeAggregatePart2_0130
  simp only [oppositeAggregatePartValid2_0130, oppositeHistoryChunk0130] at h2
  have h3 := oppositeAggregatePart3_0130
  simp only [oppositeAggregatePartValid3_0130, oppositeHistoryChunk0130] at h3
  have h4 := oppositeAggregatePart4_0130
  simp only [oppositeAggregatePartValid4_0130, oppositeHistoryChunk0130] at h4
  have h5 := oppositeAggregatePart5_0130
  simp only [oppositeAggregatePartValid5_0130, oppositeHistoryChunk0130] at h5
  have h6 := oppositeAggregatePart6_0130
  simp only [oppositeAggregatePartValid6_0130, oppositeHistoryChunk0130] at h6
  have h7 := oppositeAggregatePart7_0130
  simp only [oppositeAggregatePartValid7_0130, oppositeHistoryChunk0130] at h7
  unfold oppositeHistoryChunk0130
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0131 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 134144
  | _ => True

theorem oppositeAggregatePart0_0131 :
    oppositeAggregatePartValid0_0131 oppositeHistoryChunk0131 := by
  unfold oppositeAggregatePartValid0_0131 oppositeHistoryChunk0131
  decide

def oppositeAggregatePartValid1_0131 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 134272
  | _ => True

theorem oppositeAggregatePart1_0131 :
    oppositeAggregatePartValid1_0131 oppositeHistoryChunk0131 := by
  unfold oppositeAggregatePartValid1_0131 oppositeHistoryChunk0131
  decide

def oppositeAggregatePartValid2_0131 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 134400
  | _ => True

theorem oppositeAggregatePart2_0131 :
    oppositeAggregatePartValid2_0131 oppositeHistoryChunk0131 := by
  unfold oppositeAggregatePartValid2_0131 oppositeHistoryChunk0131
  decide

def oppositeAggregatePartValid3_0131 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 134528
  | _ => True

theorem oppositeAggregatePart3_0131 :
    oppositeAggregatePartValid3_0131 oppositeHistoryChunk0131 := by
  unfold oppositeAggregatePartValid3_0131 oppositeHistoryChunk0131
  decide

def oppositeAggregatePartValid4_0131 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 134656
  | _ => True

theorem oppositeAggregatePart4_0131 :
    oppositeAggregatePartValid4_0131 oppositeHistoryChunk0131 := by
  unfold oppositeAggregatePartValid4_0131 oppositeHistoryChunk0131
  decide

def oppositeAggregatePartValid5_0131 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 134784
  | _ => True

theorem oppositeAggregatePart5_0131 :
    oppositeAggregatePartValid5_0131 oppositeHistoryChunk0131 := by
  unfold oppositeAggregatePartValid5_0131 oppositeHistoryChunk0131
  decide

def oppositeAggregatePartValid6_0131 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 134912
  | _ => True

theorem oppositeAggregatePart6_0131 :
    oppositeAggregatePartValid6_0131 oppositeHistoryChunk0131 := by
  unfold oppositeAggregatePartValid6_0131 oppositeHistoryChunk0131
  decide

def oppositeAggregatePartValid7_0131 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 135040
  | _ => True

theorem oppositeAggregatePart7_0131 :
    oppositeAggregatePartValid7_0131 oppositeHistoryChunk0131 := by
  unfold oppositeAggregatePartValid7_0131 oppositeHistoryChunk0131
  decide

theorem oppositeRange_0131 :
    oppositeHistoryChunk0131.ResidueIndexedValid anchorHistories 5000000 18 25 134144 := by
  have h0 := oppositeAggregatePart0_0131
  simp only [oppositeAggregatePartValid0_0131, oppositeHistoryChunk0131] at h0
  have h1 := oppositeAggregatePart1_0131
  simp only [oppositeAggregatePartValid1_0131, oppositeHistoryChunk0131] at h1
  have h2 := oppositeAggregatePart2_0131
  simp only [oppositeAggregatePartValid2_0131, oppositeHistoryChunk0131] at h2
  have h3 := oppositeAggregatePart3_0131
  simp only [oppositeAggregatePartValid3_0131, oppositeHistoryChunk0131] at h3
  have h4 := oppositeAggregatePart4_0131
  simp only [oppositeAggregatePartValid4_0131, oppositeHistoryChunk0131] at h4
  have h5 := oppositeAggregatePart5_0131
  simp only [oppositeAggregatePartValid5_0131, oppositeHistoryChunk0131] at h5
  have h6 := oppositeAggregatePart6_0131
  simp only [oppositeAggregatePartValid6_0131, oppositeHistoryChunk0131] at h6
  have h7 := oppositeAggregatePart7_0131
  simp only [oppositeAggregatePartValid7_0131, oppositeHistoryChunk0131] at h7
  unfold oppositeHistoryChunk0131
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
