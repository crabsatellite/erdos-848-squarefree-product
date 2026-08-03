import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0080
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0081
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0082
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0083

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0080, 0081, 0082, 0083 -/

def oppositeAggregatePartValid0_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 81920
  | _ => True

theorem oppositeAggregatePart0_0080 :
    oppositeAggregatePartValid0_0080 oppositeHistoryChunk0080 := by
  unfold oppositeAggregatePartValid0_0080 oppositeHistoryChunk0080
  decide

def oppositeAggregatePartValid1_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 82048
  | _ => True

theorem oppositeAggregatePart1_0080 :
    oppositeAggregatePartValid1_0080 oppositeHistoryChunk0080 := by
  unfold oppositeAggregatePartValid1_0080 oppositeHistoryChunk0080
  decide

def oppositeAggregatePartValid2_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 82176
  | _ => True

theorem oppositeAggregatePart2_0080 :
    oppositeAggregatePartValid2_0080 oppositeHistoryChunk0080 := by
  unfold oppositeAggregatePartValid2_0080 oppositeHistoryChunk0080
  decide

def oppositeAggregatePartValid3_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 82304
  | _ => True

theorem oppositeAggregatePart3_0080 :
    oppositeAggregatePartValid3_0080 oppositeHistoryChunk0080 := by
  unfold oppositeAggregatePartValid3_0080 oppositeHistoryChunk0080
  decide

def oppositeAggregatePartValid4_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 82432
  | _ => True

theorem oppositeAggregatePart4_0080 :
    oppositeAggregatePartValid4_0080 oppositeHistoryChunk0080 := by
  unfold oppositeAggregatePartValid4_0080 oppositeHistoryChunk0080
  decide

def oppositeAggregatePartValid5_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 82560
  | _ => True

theorem oppositeAggregatePart5_0080 :
    oppositeAggregatePartValid5_0080 oppositeHistoryChunk0080 := by
  unfold oppositeAggregatePartValid5_0080 oppositeHistoryChunk0080
  decide

def oppositeAggregatePartValid6_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 82688
  | _ => True

theorem oppositeAggregatePart6_0080 :
    oppositeAggregatePartValid6_0080 oppositeHistoryChunk0080 := by
  unfold oppositeAggregatePartValid6_0080 oppositeHistoryChunk0080
  decide

def oppositeAggregatePartValid7_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 82816
  | _ => True

theorem oppositeAggregatePart7_0080 :
    oppositeAggregatePartValid7_0080 oppositeHistoryChunk0080 := by
  unfold oppositeAggregatePartValid7_0080 oppositeHistoryChunk0080
  decide

theorem oppositeRange_0080 :
    oppositeHistoryChunk0080.ResidueIndexedValid anchorHistories 5000000 18 25 81920 := by
  have h0 := oppositeAggregatePart0_0080
  simp only [oppositeAggregatePartValid0_0080, oppositeHistoryChunk0080] at h0
  have h1 := oppositeAggregatePart1_0080
  simp only [oppositeAggregatePartValid1_0080, oppositeHistoryChunk0080] at h1
  have h2 := oppositeAggregatePart2_0080
  simp only [oppositeAggregatePartValid2_0080, oppositeHistoryChunk0080] at h2
  have h3 := oppositeAggregatePart3_0080
  simp only [oppositeAggregatePartValid3_0080, oppositeHistoryChunk0080] at h3
  have h4 := oppositeAggregatePart4_0080
  simp only [oppositeAggregatePartValid4_0080, oppositeHistoryChunk0080] at h4
  have h5 := oppositeAggregatePart5_0080
  simp only [oppositeAggregatePartValid5_0080, oppositeHistoryChunk0080] at h5
  have h6 := oppositeAggregatePart6_0080
  simp only [oppositeAggregatePartValid6_0080, oppositeHistoryChunk0080] at h6
  have h7 := oppositeAggregatePart7_0080
  simp only [oppositeAggregatePartValid7_0080, oppositeHistoryChunk0080] at h7
  unfold oppositeHistoryChunk0080
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 82944
  | _ => True

theorem oppositeAggregatePart0_0081 :
    oppositeAggregatePartValid0_0081 oppositeHistoryChunk0081 := by
  unfold oppositeAggregatePartValid0_0081 oppositeHistoryChunk0081
  decide

def oppositeAggregatePartValid1_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 83072
  | _ => True

theorem oppositeAggregatePart1_0081 :
    oppositeAggregatePartValid1_0081 oppositeHistoryChunk0081 := by
  unfold oppositeAggregatePartValid1_0081 oppositeHistoryChunk0081
  decide

def oppositeAggregatePartValid2_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 83200
  | _ => True

theorem oppositeAggregatePart2_0081 :
    oppositeAggregatePartValid2_0081 oppositeHistoryChunk0081 := by
  unfold oppositeAggregatePartValid2_0081 oppositeHistoryChunk0081
  decide

def oppositeAggregatePartValid3_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 83328
  | _ => True

theorem oppositeAggregatePart3_0081 :
    oppositeAggregatePartValid3_0081 oppositeHistoryChunk0081 := by
  unfold oppositeAggregatePartValid3_0081 oppositeHistoryChunk0081
  decide

def oppositeAggregatePartValid4_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 83456
  | _ => True

theorem oppositeAggregatePart4_0081 :
    oppositeAggregatePartValid4_0081 oppositeHistoryChunk0081 := by
  unfold oppositeAggregatePartValid4_0081 oppositeHistoryChunk0081
  decide

def oppositeAggregatePartValid5_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 83584
  | _ => True

theorem oppositeAggregatePart5_0081 :
    oppositeAggregatePartValid5_0081 oppositeHistoryChunk0081 := by
  unfold oppositeAggregatePartValid5_0081 oppositeHistoryChunk0081
  decide

def oppositeAggregatePartValid6_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 83712
  | _ => True

theorem oppositeAggregatePart6_0081 :
    oppositeAggregatePartValid6_0081 oppositeHistoryChunk0081 := by
  unfold oppositeAggregatePartValid6_0081 oppositeHistoryChunk0081
  decide

def oppositeAggregatePartValid7_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 83840
  | _ => True

theorem oppositeAggregatePart7_0081 :
    oppositeAggregatePartValid7_0081 oppositeHistoryChunk0081 := by
  unfold oppositeAggregatePartValid7_0081 oppositeHistoryChunk0081
  decide

theorem oppositeRange_0081 :
    oppositeHistoryChunk0081.ResidueIndexedValid anchorHistories 5000000 18 25 82944 := by
  have h0 := oppositeAggregatePart0_0081
  simp only [oppositeAggregatePartValid0_0081, oppositeHistoryChunk0081] at h0
  have h1 := oppositeAggregatePart1_0081
  simp only [oppositeAggregatePartValid1_0081, oppositeHistoryChunk0081] at h1
  have h2 := oppositeAggregatePart2_0081
  simp only [oppositeAggregatePartValid2_0081, oppositeHistoryChunk0081] at h2
  have h3 := oppositeAggregatePart3_0081
  simp only [oppositeAggregatePartValid3_0081, oppositeHistoryChunk0081] at h3
  have h4 := oppositeAggregatePart4_0081
  simp only [oppositeAggregatePartValid4_0081, oppositeHistoryChunk0081] at h4
  have h5 := oppositeAggregatePart5_0081
  simp only [oppositeAggregatePartValid5_0081, oppositeHistoryChunk0081] at h5
  have h6 := oppositeAggregatePart6_0081
  simp only [oppositeAggregatePartValid6_0081, oppositeHistoryChunk0081] at h6
  have h7 := oppositeAggregatePart7_0081
  simp only [oppositeAggregatePartValid7_0081, oppositeHistoryChunk0081] at h7
  unfold oppositeHistoryChunk0081
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 83968
  | _ => True

theorem oppositeAggregatePart0_0082 :
    oppositeAggregatePartValid0_0082 oppositeHistoryChunk0082 := by
  unfold oppositeAggregatePartValid0_0082 oppositeHistoryChunk0082
  decide

def oppositeAggregatePartValid1_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 84096
  | _ => True

theorem oppositeAggregatePart1_0082 :
    oppositeAggregatePartValid1_0082 oppositeHistoryChunk0082 := by
  unfold oppositeAggregatePartValid1_0082 oppositeHistoryChunk0082
  decide

def oppositeAggregatePartValid2_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 84224
  | _ => True

theorem oppositeAggregatePart2_0082 :
    oppositeAggregatePartValid2_0082 oppositeHistoryChunk0082 := by
  unfold oppositeAggregatePartValid2_0082 oppositeHistoryChunk0082
  decide

def oppositeAggregatePartValid3_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 84352
  | _ => True

theorem oppositeAggregatePart3_0082 :
    oppositeAggregatePartValid3_0082 oppositeHistoryChunk0082 := by
  unfold oppositeAggregatePartValid3_0082 oppositeHistoryChunk0082
  decide

def oppositeAggregatePartValid4_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 84480
  | _ => True

theorem oppositeAggregatePart4_0082 :
    oppositeAggregatePartValid4_0082 oppositeHistoryChunk0082 := by
  unfold oppositeAggregatePartValid4_0082 oppositeHistoryChunk0082
  decide

def oppositeAggregatePartValid5_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 84608
  | _ => True

theorem oppositeAggregatePart5_0082 :
    oppositeAggregatePartValid5_0082 oppositeHistoryChunk0082 := by
  unfold oppositeAggregatePartValid5_0082 oppositeHistoryChunk0082
  decide

def oppositeAggregatePartValid6_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 84736
  | _ => True

theorem oppositeAggregatePart6_0082 :
    oppositeAggregatePartValid6_0082 oppositeHistoryChunk0082 := by
  unfold oppositeAggregatePartValid6_0082 oppositeHistoryChunk0082
  decide

def oppositeAggregatePartValid7_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 84864
  | _ => True

theorem oppositeAggregatePart7_0082 :
    oppositeAggregatePartValid7_0082 oppositeHistoryChunk0082 := by
  unfold oppositeAggregatePartValid7_0082 oppositeHistoryChunk0082
  decide

theorem oppositeRange_0082 :
    oppositeHistoryChunk0082.ResidueIndexedValid anchorHistories 5000000 18 25 83968 := by
  have h0 := oppositeAggregatePart0_0082
  simp only [oppositeAggregatePartValid0_0082, oppositeHistoryChunk0082] at h0
  have h1 := oppositeAggregatePart1_0082
  simp only [oppositeAggregatePartValid1_0082, oppositeHistoryChunk0082] at h1
  have h2 := oppositeAggregatePart2_0082
  simp only [oppositeAggregatePartValid2_0082, oppositeHistoryChunk0082] at h2
  have h3 := oppositeAggregatePart3_0082
  simp only [oppositeAggregatePartValid3_0082, oppositeHistoryChunk0082] at h3
  have h4 := oppositeAggregatePart4_0082
  simp only [oppositeAggregatePartValid4_0082, oppositeHistoryChunk0082] at h4
  have h5 := oppositeAggregatePart5_0082
  simp only [oppositeAggregatePartValid5_0082, oppositeHistoryChunk0082] at h5
  have h6 := oppositeAggregatePart6_0082
  simp only [oppositeAggregatePartValid6_0082, oppositeHistoryChunk0082] at h6
  have h7 := oppositeAggregatePart7_0082
  simp only [oppositeAggregatePartValid7_0082, oppositeHistoryChunk0082] at h7
  unfold oppositeHistoryChunk0082
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 84992
  | _ => True

theorem oppositeAggregatePart0_0083 :
    oppositeAggregatePartValid0_0083 oppositeHistoryChunk0083 := by
  unfold oppositeAggregatePartValid0_0083 oppositeHistoryChunk0083
  decide

def oppositeAggregatePartValid1_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 85120
  | _ => True

theorem oppositeAggregatePart1_0083 :
    oppositeAggregatePartValid1_0083 oppositeHistoryChunk0083 := by
  unfold oppositeAggregatePartValid1_0083 oppositeHistoryChunk0083
  decide

def oppositeAggregatePartValid2_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 85248
  | _ => True

theorem oppositeAggregatePart2_0083 :
    oppositeAggregatePartValid2_0083 oppositeHistoryChunk0083 := by
  unfold oppositeAggregatePartValid2_0083 oppositeHistoryChunk0083
  decide

def oppositeAggregatePartValid3_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 85376
  | _ => True

theorem oppositeAggregatePart3_0083 :
    oppositeAggregatePartValid3_0083 oppositeHistoryChunk0083 := by
  unfold oppositeAggregatePartValid3_0083 oppositeHistoryChunk0083
  decide

def oppositeAggregatePartValid4_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 85504
  | _ => True

theorem oppositeAggregatePart4_0083 :
    oppositeAggregatePartValid4_0083 oppositeHistoryChunk0083 := by
  unfold oppositeAggregatePartValid4_0083 oppositeHistoryChunk0083
  decide

def oppositeAggregatePartValid5_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 85632
  | _ => True

theorem oppositeAggregatePart5_0083 :
    oppositeAggregatePartValid5_0083 oppositeHistoryChunk0083 := by
  unfold oppositeAggregatePartValid5_0083 oppositeHistoryChunk0083
  decide

def oppositeAggregatePartValid6_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 85760
  | _ => True

theorem oppositeAggregatePart6_0083 :
    oppositeAggregatePartValid6_0083 oppositeHistoryChunk0083 := by
  unfold oppositeAggregatePartValid6_0083 oppositeHistoryChunk0083
  decide

def oppositeAggregatePartValid7_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 85888
  | _ => True

theorem oppositeAggregatePart7_0083 :
    oppositeAggregatePartValid7_0083 oppositeHistoryChunk0083 := by
  unfold oppositeAggregatePartValid7_0083 oppositeHistoryChunk0083
  decide

theorem oppositeRange_0083 :
    oppositeHistoryChunk0083.ResidueIndexedValid anchorHistories 5000000 18 25 84992 := by
  have h0 := oppositeAggregatePart0_0083
  simp only [oppositeAggregatePartValid0_0083, oppositeHistoryChunk0083] at h0
  have h1 := oppositeAggregatePart1_0083
  simp only [oppositeAggregatePartValid1_0083, oppositeHistoryChunk0083] at h1
  have h2 := oppositeAggregatePart2_0083
  simp only [oppositeAggregatePartValid2_0083, oppositeHistoryChunk0083] at h2
  have h3 := oppositeAggregatePart3_0083
  simp only [oppositeAggregatePartValid3_0083, oppositeHistoryChunk0083] at h3
  have h4 := oppositeAggregatePart4_0083
  simp only [oppositeAggregatePartValid4_0083, oppositeHistoryChunk0083] at h4
  have h5 := oppositeAggregatePart5_0083
  simp only [oppositeAggregatePartValid5_0083, oppositeHistoryChunk0083] at h5
  have h6 := oppositeAggregatePart6_0083
  simp only [oppositeAggregatePartValid6_0083, oppositeHistoryChunk0083] at h6
  have h7 := oppositeAggregatePart7_0083
  simp only [oppositeAggregatePartValid7_0083, oppositeHistoryChunk0083] at h7
  unfold oppositeHistoryChunk0083
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
