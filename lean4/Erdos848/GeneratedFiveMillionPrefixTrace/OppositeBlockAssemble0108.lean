import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0108
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0109
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0110
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0111

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0108, 0109, 0110, 0111 -/

def oppositeAggregatePartValid0_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 110592
  | _ => True

theorem oppositeAggregatePart0_0108 :
    oppositeAggregatePartValid0_0108 oppositeHistoryChunk0108 := by
  unfold oppositeAggregatePartValid0_0108 oppositeHistoryChunk0108
  decide

def oppositeAggregatePartValid1_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 110720
  | _ => True

theorem oppositeAggregatePart1_0108 :
    oppositeAggregatePartValid1_0108 oppositeHistoryChunk0108 := by
  unfold oppositeAggregatePartValid1_0108 oppositeHistoryChunk0108
  decide

def oppositeAggregatePartValid2_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 110848
  | _ => True

theorem oppositeAggregatePart2_0108 :
    oppositeAggregatePartValid2_0108 oppositeHistoryChunk0108 := by
  unfold oppositeAggregatePartValid2_0108 oppositeHistoryChunk0108
  decide

def oppositeAggregatePartValid3_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 110976
  | _ => True

theorem oppositeAggregatePart3_0108 :
    oppositeAggregatePartValid3_0108 oppositeHistoryChunk0108 := by
  unfold oppositeAggregatePartValid3_0108 oppositeHistoryChunk0108
  decide

def oppositeAggregatePartValid4_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 111104
  | _ => True

theorem oppositeAggregatePart4_0108 :
    oppositeAggregatePartValid4_0108 oppositeHistoryChunk0108 := by
  unfold oppositeAggregatePartValid4_0108 oppositeHistoryChunk0108
  decide

def oppositeAggregatePartValid5_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 111232
  | _ => True

theorem oppositeAggregatePart5_0108 :
    oppositeAggregatePartValid5_0108 oppositeHistoryChunk0108 := by
  unfold oppositeAggregatePartValid5_0108 oppositeHistoryChunk0108
  decide

def oppositeAggregatePartValid6_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 111360
  | _ => True

theorem oppositeAggregatePart6_0108 :
    oppositeAggregatePartValid6_0108 oppositeHistoryChunk0108 := by
  unfold oppositeAggregatePartValid6_0108 oppositeHistoryChunk0108
  decide

def oppositeAggregatePartValid7_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 111488
  | _ => True

theorem oppositeAggregatePart7_0108 :
    oppositeAggregatePartValid7_0108 oppositeHistoryChunk0108 := by
  unfold oppositeAggregatePartValid7_0108 oppositeHistoryChunk0108
  decide

theorem oppositeRange_0108 :
    oppositeHistoryChunk0108.ResidueIndexedValid anchorHistories 5000000 18 25 110592 := by
  have h0 := oppositeAggregatePart0_0108
  simp only [oppositeAggregatePartValid0_0108, oppositeHistoryChunk0108] at h0
  have h1 := oppositeAggregatePart1_0108
  simp only [oppositeAggregatePartValid1_0108, oppositeHistoryChunk0108] at h1
  have h2 := oppositeAggregatePart2_0108
  simp only [oppositeAggregatePartValid2_0108, oppositeHistoryChunk0108] at h2
  have h3 := oppositeAggregatePart3_0108
  simp only [oppositeAggregatePartValid3_0108, oppositeHistoryChunk0108] at h3
  have h4 := oppositeAggregatePart4_0108
  simp only [oppositeAggregatePartValid4_0108, oppositeHistoryChunk0108] at h4
  have h5 := oppositeAggregatePart5_0108
  simp only [oppositeAggregatePartValid5_0108, oppositeHistoryChunk0108] at h5
  have h6 := oppositeAggregatePart6_0108
  simp only [oppositeAggregatePartValid6_0108, oppositeHistoryChunk0108] at h6
  have h7 := oppositeAggregatePart7_0108
  simp only [oppositeAggregatePartValid7_0108, oppositeHistoryChunk0108] at h7
  unfold oppositeHistoryChunk0108
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 111616
  | _ => True

theorem oppositeAggregatePart0_0109 :
    oppositeAggregatePartValid0_0109 oppositeHistoryChunk0109 := by
  unfold oppositeAggregatePartValid0_0109 oppositeHistoryChunk0109
  decide

def oppositeAggregatePartValid1_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 111744
  | _ => True

theorem oppositeAggregatePart1_0109 :
    oppositeAggregatePartValid1_0109 oppositeHistoryChunk0109 := by
  unfold oppositeAggregatePartValid1_0109 oppositeHistoryChunk0109
  decide

def oppositeAggregatePartValid2_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 111872
  | _ => True

theorem oppositeAggregatePart2_0109 :
    oppositeAggregatePartValid2_0109 oppositeHistoryChunk0109 := by
  unfold oppositeAggregatePartValid2_0109 oppositeHistoryChunk0109
  decide

def oppositeAggregatePartValid3_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 112000
  | _ => True

theorem oppositeAggregatePart3_0109 :
    oppositeAggregatePartValid3_0109 oppositeHistoryChunk0109 := by
  unfold oppositeAggregatePartValid3_0109 oppositeHistoryChunk0109
  decide

def oppositeAggregatePartValid4_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 112128
  | _ => True

theorem oppositeAggregatePart4_0109 :
    oppositeAggregatePartValid4_0109 oppositeHistoryChunk0109 := by
  unfold oppositeAggregatePartValid4_0109 oppositeHistoryChunk0109
  decide

def oppositeAggregatePartValid5_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 112256
  | _ => True

theorem oppositeAggregatePart5_0109 :
    oppositeAggregatePartValid5_0109 oppositeHistoryChunk0109 := by
  unfold oppositeAggregatePartValid5_0109 oppositeHistoryChunk0109
  decide

def oppositeAggregatePartValid6_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 112384
  | _ => True

theorem oppositeAggregatePart6_0109 :
    oppositeAggregatePartValid6_0109 oppositeHistoryChunk0109 := by
  unfold oppositeAggregatePartValid6_0109 oppositeHistoryChunk0109
  decide

def oppositeAggregatePartValid7_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 112512
  | _ => True

theorem oppositeAggregatePart7_0109 :
    oppositeAggregatePartValid7_0109 oppositeHistoryChunk0109 := by
  unfold oppositeAggregatePartValid7_0109 oppositeHistoryChunk0109
  decide

theorem oppositeRange_0109 :
    oppositeHistoryChunk0109.ResidueIndexedValid anchorHistories 5000000 18 25 111616 := by
  have h0 := oppositeAggregatePart0_0109
  simp only [oppositeAggregatePartValid0_0109, oppositeHistoryChunk0109] at h0
  have h1 := oppositeAggregatePart1_0109
  simp only [oppositeAggregatePartValid1_0109, oppositeHistoryChunk0109] at h1
  have h2 := oppositeAggregatePart2_0109
  simp only [oppositeAggregatePartValid2_0109, oppositeHistoryChunk0109] at h2
  have h3 := oppositeAggregatePart3_0109
  simp only [oppositeAggregatePartValid3_0109, oppositeHistoryChunk0109] at h3
  have h4 := oppositeAggregatePart4_0109
  simp only [oppositeAggregatePartValid4_0109, oppositeHistoryChunk0109] at h4
  have h5 := oppositeAggregatePart5_0109
  simp only [oppositeAggregatePartValid5_0109, oppositeHistoryChunk0109] at h5
  have h6 := oppositeAggregatePart6_0109
  simp only [oppositeAggregatePartValid6_0109, oppositeHistoryChunk0109] at h6
  have h7 := oppositeAggregatePart7_0109
  simp only [oppositeAggregatePartValid7_0109, oppositeHistoryChunk0109] at h7
  unfold oppositeHistoryChunk0109
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 112640
  | _ => True

theorem oppositeAggregatePart0_0110 :
    oppositeAggregatePartValid0_0110 oppositeHistoryChunk0110 := by
  unfold oppositeAggregatePartValid0_0110 oppositeHistoryChunk0110
  decide

def oppositeAggregatePartValid1_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 112768
  | _ => True

theorem oppositeAggregatePart1_0110 :
    oppositeAggregatePartValid1_0110 oppositeHistoryChunk0110 := by
  unfold oppositeAggregatePartValid1_0110 oppositeHistoryChunk0110
  decide

def oppositeAggregatePartValid2_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 112896
  | _ => True

theorem oppositeAggregatePart2_0110 :
    oppositeAggregatePartValid2_0110 oppositeHistoryChunk0110 := by
  unfold oppositeAggregatePartValid2_0110 oppositeHistoryChunk0110
  decide

def oppositeAggregatePartValid3_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 113024
  | _ => True

theorem oppositeAggregatePart3_0110 :
    oppositeAggregatePartValid3_0110 oppositeHistoryChunk0110 := by
  unfold oppositeAggregatePartValid3_0110 oppositeHistoryChunk0110
  decide

def oppositeAggregatePartValid4_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 113152
  | _ => True

theorem oppositeAggregatePart4_0110 :
    oppositeAggregatePartValid4_0110 oppositeHistoryChunk0110 := by
  unfold oppositeAggregatePartValid4_0110 oppositeHistoryChunk0110
  decide

def oppositeAggregatePartValid5_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 113280
  | _ => True

theorem oppositeAggregatePart5_0110 :
    oppositeAggregatePartValid5_0110 oppositeHistoryChunk0110 := by
  unfold oppositeAggregatePartValid5_0110 oppositeHistoryChunk0110
  decide

def oppositeAggregatePartValid6_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 113408
  | _ => True

theorem oppositeAggregatePart6_0110 :
    oppositeAggregatePartValid6_0110 oppositeHistoryChunk0110 := by
  unfold oppositeAggregatePartValid6_0110 oppositeHistoryChunk0110
  decide

def oppositeAggregatePartValid7_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 113536
  | _ => True

theorem oppositeAggregatePart7_0110 :
    oppositeAggregatePartValid7_0110 oppositeHistoryChunk0110 := by
  unfold oppositeAggregatePartValid7_0110 oppositeHistoryChunk0110
  decide

theorem oppositeRange_0110 :
    oppositeHistoryChunk0110.ResidueIndexedValid anchorHistories 5000000 18 25 112640 := by
  have h0 := oppositeAggregatePart0_0110
  simp only [oppositeAggregatePartValid0_0110, oppositeHistoryChunk0110] at h0
  have h1 := oppositeAggregatePart1_0110
  simp only [oppositeAggregatePartValid1_0110, oppositeHistoryChunk0110] at h1
  have h2 := oppositeAggregatePart2_0110
  simp only [oppositeAggregatePartValid2_0110, oppositeHistoryChunk0110] at h2
  have h3 := oppositeAggregatePart3_0110
  simp only [oppositeAggregatePartValid3_0110, oppositeHistoryChunk0110] at h3
  have h4 := oppositeAggregatePart4_0110
  simp only [oppositeAggregatePartValid4_0110, oppositeHistoryChunk0110] at h4
  have h5 := oppositeAggregatePart5_0110
  simp only [oppositeAggregatePartValid5_0110, oppositeHistoryChunk0110] at h5
  have h6 := oppositeAggregatePart6_0110
  simp only [oppositeAggregatePartValid6_0110, oppositeHistoryChunk0110] at h6
  have h7 := oppositeAggregatePart7_0110
  simp only [oppositeAggregatePartValid7_0110, oppositeHistoryChunk0110] at h7
  unfold oppositeHistoryChunk0110
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 113664
  | _ => True

theorem oppositeAggregatePart0_0111 :
    oppositeAggregatePartValid0_0111 oppositeHistoryChunk0111 := by
  unfold oppositeAggregatePartValid0_0111 oppositeHistoryChunk0111
  decide

def oppositeAggregatePartValid1_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 113792
  | _ => True

theorem oppositeAggregatePart1_0111 :
    oppositeAggregatePartValid1_0111 oppositeHistoryChunk0111 := by
  unfold oppositeAggregatePartValid1_0111 oppositeHistoryChunk0111
  decide

def oppositeAggregatePartValid2_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 113920
  | _ => True

theorem oppositeAggregatePart2_0111 :
    oppositeAggregatePartValid2_0111 oppositeHistoryChunk0111 := by
  unfold oppositeAggregatePartValid2_0111 oppositeHistoryChunk0111
  decide

def oppositeAggregatePartValid3_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 114048
  | _ => True

theorem oppositeAggregatePart3_0111 :
    oppositeAggregatePartValid3_0111 oppositeHistoryChunk0111 := by
  unfold oppositeAggregatePartValid3_0111 oppositeHistoryChunk0111
  decide

def oppositeAggregatePartValid4_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 114176
  | _ => True

theorem oppositeAggregatePart4_0111 :
    oppositeAggregatePartValid4_0111 oppositeHistoryChunk0111 := by
  unfold oppositeAggregatePartValid4_0111 oppositeHistoryChunk0111
  decide

def oppositeAggregatePartValid5_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 114304
  | _ => True

theorem oppositeAggregatePart5_0111 :
    oppositeAggregatePartValid5_0111 oppositeHistoryChunk0111 := by
  unfold oppositeAggregatePartValid5_0111 oppositeHistoryChunk0111
  decide

def oppositeAggregatePartValid6_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 114432
  | _ => True

theorem oppositeAggregatePart6_0111 :
    oppositeAggregatePartValid6_0111 oppositeHistoryChunk0111 := by
  unfold oppositeAggregatePartValid6_0111 oppositeHistoryChunk0111
  decide

def oppositeAggregatePartValid7_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 114560
  | _ => True

theorem oppositeAggregatePart7_0111 :
    oppositeAggregatePartValid7_0111 oppositeHistoryChunk0111 := by
  unfold oppositeAggregatePartValid7_0111 oppositeHistoryChunk0111
  decide

theorem oppositeRange_0111 :
    oppositeHistoryChunk0111.ResidueIndexedValid anchorHistories 5000000 18 25 113664 := by
  have h0 := oppositeAggregatePart0_0111
  simp only [oppositeAggregatePartValid0_0111, oppositeHistoryChunk0111] at h0
  have h1 := oppositeAggregatePart1_0111
  simp only [oppositeAggregatePartValid1_0111, oppositeHistoryChunk0111] at h1
  have h2 := oppositeAggregatePart2_0111
  simp only [oppositeAggregatePartValid2_0111, oppositeHistoryChunk0111] at h2
  have h3 := oppositeAggregatePart3_0111
  simp only [oppositeAggregatePartValid3_0111, oppositeHistoryChunk0111] at h3
  have h4 := oppositeAggregatePart4_0111
  simp only [oppositeAggregatePartValid4_0111, oppositeHistoryChunk0111] at h4
  have h5 := oppositeAggregatePart5_0111
  simp only [oppositeAggregatePartValid5_0111, oppositeHistoryChunk0111] at h5
  have h6 := oppositeAggregatePart6_0111
  simp only [oppositeAggregatePartValid6_0111, oppositeHistoryChunk0111] at h6
  have h7 := oppositeAggregatePart7_0111
  simp only [oppositeAggregatePartValid7_0111, oppositeHistoryChunk0111] at h7
  unfold oppositeHistoryChunk0111
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
