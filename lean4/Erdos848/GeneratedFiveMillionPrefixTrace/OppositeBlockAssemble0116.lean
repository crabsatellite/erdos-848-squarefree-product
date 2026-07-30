import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0116
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0117
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0118
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0119

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0116, 0117, 0118, 0119 -/

def oppositeAggregatePartValid0_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 118784
  | _ => True

theorem oppositeAggregatePart0_0116 :
    oppositeAggregatePartValid0_0116 oppositeHistoryChunk0116 := by
  unfold oppositeAggregatePartValid0_0116 oppositeHistoryChunk0116
  decide

def oppositeAggregatePartValid1_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 118912
  | _ => True

theorem oppositeAggregatePart1_0116 :
    oppositeAggregatePartValid1_0116 oppositeHistoryChunk0116 := by
  unfold oppositeAggregatePartValid1_0116 oppositeHistoryChunk0116
  decide

def oppositeAggregatePartValid2_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 119040
  | _ => True

theorem oppositeAggregatePart2_0116 :
    oppositeAggregatePartValid2_0116 oppositeHistoryChunk0116 := by
  unfold oppositeAggregatePartValid2_0116 oppositeHistoryChunk0116
  decide

def oppositeAggregatePartValid3_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 119168
  | _ => True

theorem oppositeAggregatePart3_0116 :
    oppositeAggregatePartValid3_0116 oppositeHistoryChunk0116 := by
  unfold oppositeAggregatePartValid3_0116 oppositeHistoryChunk0116
  decide

def oppositeAggregatePartValid4_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 119296
  | _ => True

theorem oppositeAggregatePart4_0116 :
    oppositeAggregatePartValid4_0116 oppositeHistoryChunk0116 := by
  unfold oppositeAggregatePartValid4_0116 oppositeHistoryChunk0116
  decide

def oppositeAggregatePartValid5_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 119424
  | _ => True

theorem oppositeAggregatePart5_0116 :
    oppositeAggregatePartValid5_0116 oppositeHistoryChunk0116 := by
  unfold oppositeAggregatePartValid5_0116 oppositeHistoryChunk0116
  decide

def oppositeAggregatePartValid6_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 119552
  | _ => True

theorem oppositeAggregatePart6_0116 :
    oppositeAggregatePartValid6_0116 oppositeHistoryChunk0116 := by
  unfold oppositeAggregatePartValid6_0116 oppositeHistoryChunk0116
  decide

def oppositeAggregatePartValid7_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 119680
  | _ => True

theorem oppositeAggregatePart7_0116 :
    oppositeAggregatePartValid7_0116 oppositeHistoryChunk0116 := by
  unfold oppositeAggregatePartValid7_0116 oppositeHistoryChunk0116
  decide

theorem oppositeRange_0116 :
    oppositeHistoryChunk0116.ResidueIndexedValid anchorHistories 5000000 18 25 118784 := by
  have h0 := oppositeAggregatePart0_0116
  simp only [oppositeAggregatePartValid0_0116, oppositeHistoryChunk0116] at h0
  have h1 := oppositeAggregatePart1_0116
  simp only [oppositeAggregatePartValid1_0116, oppositeHistoryChunk0116] at h1
  have h2 := oppositeAggregatePart2_0116
  simp only [oppositeAggregatePartValid2_0116, oppositeHistoryChunk0116] at h2
  have h3 := oppositeAggregatePart3_0116
  simp only [oppositeAggregatePartValid3_0116, oppositeHistoryChunk0116] at h3
  have h4 := oppositeAggregatePart4_0116
  simp only [oppositeAggregatePartValid4_0116, oppositeHistoryChunk0116] at h4
  have h5 := oppositeAggregatePart5_0116
  simp only [oppositeAggregatePartValid5_0116, oppositeHistoryChunk0116] at h5
  have h6 := oppositeAggregatePart6_0116
  simp only [oppositeAggregatePartValid6_0116, oppositeHistoryChunk0116] at h6
  have h7 := oppositeAggregatePart7_0116
  simp only [oppositeAggregatePartValid7_0116, oppositeHistoryChunk0116] at h7
  unfold oppositeHistoryChunk0116
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 119808
  | _ => True

theorem oppositeAggregatePart0_0117 :
    oppositeAggregatePartValid0_0117 oppositeHistoryChunk0117 := by
  unfold oppositeAggregatePartValid0_0117 oppositeHistoryChunk0117
  decide

def oppositeAggregatePartValid1_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 119936
  | _ => True

theorem oppositeAggregatePart1_0117 :
    oppositeAggregatePartValid1_0117 oppositeHistoryChunk0117 := by
  unfold oppositeAggregatePartValid1_0117 oppositeHistoryChunk0117
  decide

def oppositeAggregatePartValid2_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 120064
  | _ => True

theorem oppositeAggregatePart2_0117 :
    oppositeAggregatePartValid2_0117 oppositeHistoryChunk0117 := by
  unfold oppositeAggregatePartValid2_0117 oppositeHistoryChunk0117
  decide

def oppositeAggregatePartValid3_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 120192
  | _ => True

theorem oppositeAggregatePart3_0117 :
    oppositeAggregatePartValid3_0117 oppositeHistoryChunk0117 := by
  unfold oppositeAggregatePartValid3_0117 oppositeHistoryChunk0117
  decide

def oppositeAggregatePartValid4_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 120320
  | _ => True

theorem oppositeAggregatePart4_0117 :
    oppositeAggregatePartValid4_0117 oppositeHistoryChunk0117 := by
  unfold oppositeAggregatePartValid4_0117 oppositeHistoryChunk0117
  decide

def oppositeAggregatePartValid5_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 120448
  | _ => True

theorem oppositeAggregatePart5_0117 :
    oppositeAggregatePartValid5_0117 oppositeHistoryChunk0117 := by
  unfold oppositeAggregatePartValid5_0117 oppositeHistoryChunk0117
  decide

def oppositeAggregatePartValid6_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 120576
  | _ => True

theorem oppositeAggregatePart6_0117 :
    oppositeAggregatePartValid6_0117 oppositeHistoryChunk0117 := by
  unfold oppositeAggregatePartValid6_0117 oppositeHistoryChunk0117
  decide

def oppositeAggregatePartValid7_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 120704
  | _ => True

theorem oppositeAggregatePart7_0117 :
    oppositeAggregatePartValid7_0117 oppositeHistoryChunk0117 := by
  unfold oppositeAggregatePartValid7_0117 oppositeHistoryChunk0117
  decide

theorem oppositeRange_0117 :
    oppositeHistoryChunk0117.ResidueIndexedValid anchorHistories 5000000 18 25 119808 := by
  have h0 := oppositeAggregatePart0_0117
  simp only [oppositeAggregatePartValid0_0117, oppositeHistoryChunk0117] at h0
  have h1 := oppositeAggregatePart1_0117
  simp only [oppositeAggregatePartValid1_0117, oppositeHistoryChunk0117] at h1
  have h2 := oppositeAggregatePart2_0117
  simp only [oppositeAggregatePartValid2_0117, oppositeHistoryChunk0117] at h2
  have h3 := oppositeAggregatePart3_0117
  simp only [oppositeAggregatePartValid3_0117, oppositeHistoryChunk0117] at h3
  have h4 := oppositeAggregatePart4_0117
  simp only [oppositeAggregatePartValid4_0117, oppositeHistoryChunk0117] at h4
  have h5 := oppositeAggregatePart5_0117
  simp only [oppositeAggregatePartValid5_0117, oppositeHistoryChunk0117] at h5
  have h6 := oppositeAggregatePart6_0117
  simp only [oppositeAggregatePartValid6_0117, oppositeHistoryChunk0117] at h6
  have h7 := oppositeAggregatePart7_0117
  simp only [oppositeAggregatePartValid7_0117, oppositeHistoryChunk0117] at h7
  unfold oppositeHistoryChunk0117
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 120832
  | _ => True

theorem oppositeAggregatePart0_0118 :
    oppositeAggregatePartValid0_0118 oppositeHistoryChunk0118 := by
  unfold oppositeAggregatePartValid0_0118 oppositeHistoryChunk0118
  decide

def oppositeAggregatePartValid1_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 120960
  | _ => True

theorem oppositeAggregatePart1_0118 :
    oppositeAggregatePartValid1_0118 oppositeHistoryChunk0118 := by
  unfold oppositeAggregatePartValid1_0118 oppositeHistoryChunk0118
  decide

def oppositeAggregatePartValid2_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 121088
  | _ => True

theorem oppositeAggregatePart2_0118 :
    oppositeAggregatePartValid2_0118 oppositeHistoryChunk0118 := by
  unfold oppositeAggregatePartValid2_0118 oppositeHistoryChunk0118
  decide

def oppositeAggregatePartValid3_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 121216
  | _ => True

theorem oppositeAggregatePart3_0118 :
    oppositeAggregatePartValid3_0118 oppositeHistoryChunk0118 := by
  unfold oppositeAggregatePartValid3_0118 oppositeHistoryChunk0118
  decide

def oppositeAggregatePartValid4_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 121344
  | _ => True

theorem oppositeAggregatePart4_0118 :
    oppositeAggregatePartValid4_0118 oppositeHistoryChunk0118 := by
  unfold oppositeAggregatePartValid4_0118 oppositeHistoryChunk0118
  decide

def oppositeAggregatePartValid5_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 121472
  | _ => True

theorem oppositeAggregatePart5_0118 :
    oppositeAggregatePartValid5_0118 oppositeHistoryChunk0118 := by
  unfold oppositeAggregatePartValid5_0118 oppositeHistoryChunk0118
  decide

def oppositeAggregatePartValid6_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 121600
  | _ => True

theorem oppositeAggregatePart6_0118 :
    oppositeAggregatePartValid6_0118 oppositeHistoryChunk0118 := by
  unfold oppositeAggregatePartValid6_0118 oppositeHistoryChunk0118
  decide

def oppositeAggregatePartValid7_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 121728
  | _ => True

theorem oppositeAggregatePart7_0118 :
    oppositeAggregatePartValid7_0118 oppositeHistoryChunk0118 := by
  unfold oppositeAggregatePartValid7_0118 oppositeHistoryChunk0118
  decide

theorem oppositeRange_0118 :
    oppositeHistoryChunk0118.ResidueIndexedValid anchorHistories 5000000 18 25 120832 := by
  have h0 := oppositeAggregatePart0_0118
  simp only [oppositeAggregatePartValid0_0118, oppositeHistoryChunk0118] at h0
  have h1 := oppositeAggregatePart1_0118
  simp only [oppositeAggregatePartValid1_0118, oppositeHistoryChunk0118] at h1
  have h2 := oppositeAggregatePart2_0118
  simp only [oppositeAggregatePartValid2_0118, oppositeHistoryChunk0118] at h2
  have h3 := oppositeAggregatePart3_0118
  simp only [oppositeAggregatePartValid3_0118, oppositeHistoryChunk0118] at h3
  have h4 := oppositeAggregatePart4_0118
  simp only [oppositeAggregatePartValid4_0118, oppositeHistoryChunk0118] at h4
  have h5 := oppositeAggregatePart5_0118
  simp only [oppositeAggregatePartValid5_0118, oppositeHistoryChunk0118] at h5
  have h6 := oppositeAggregatePart6_0118
  simp only [oppositeAggregatePartValid6_0118, oppositeHistoryChunk0118] at h6
  have h7 := oppositeAggregatePart7_0118
  simp only [oppositeAggregatePartValid7_0118, oppositeHistoryChunk0118] at h7
  unfold oppositeHistoryChunk0118
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 121856
  | _ => True

theorem oppositeAggregatePart0_0119 :
    oppositeAggregatePartValid0_0119 oppositeHistoryChunk0119 := by
  unfold oppositeAggregatePartValid0_0119 oppositeHistoryChunk0119
  decide

def oppositeAggregatePartValid1_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 121984
  | _ => True

theorem oppositeAggregatePart1_0119 :
    oppositeAggregatePartValid1_0119 oppositeHistoryChunk0119 := by
  unfold oppositeAggregatePartValid1_0119 oppositeHistoryChunk0119
  decide

def oppositeAggregatePartValid2_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 122112
  | _ => True

theorem oppositeAggregatePart2_0119 :
    oppositeAggregatePartValid2_0119 oppositeHistoryChunk0119 := by
  unfold oppositeAggregatePartValid2_0119 oppositeHistoryChunk0119
  decide

def oppositeAggregatePartValid3_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 122240
  | _ => True

theorem oppositeAggregatePart3_0119 :
    oppositeAggregatePartValid3_0119 oppositeHistoryChunk0119 := by
  unfold oppositeAggregatePartValid3_0119 oppositeHistoryChunk0119
  decide

def oppositeAggregatePartValid4_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 122368
  | _ => True

theorem oppositeAggregatePart4_0119 :
    oppositeAggregatePartValid4_0119 oppositeHistoryChunk0119 := by
  unfold oppositeAggregatePartValid4_0119 oppositeHistoryChunk0119
  decide

def oppositeAggregatePartValid5_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 122496
  | _ => True

theorem oppositeAggregatePart5_0119 :
    oppositeAggregatePartValid5_0119 oppositeHistoryChunk0119 := by
  unfold oppositeAggregatePartValid5_0119 oppositeHistoryChunk0119
  decide

def oppositeAggregatePartValid6_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 122624
  | _ => True

theorem oppositeAggregatePart6_0119 :
    oppositeAggregatePartValid6_0119 oppositeHistoryChunk0119 := by
  unfold oppositeAggregatePartValid6_0119 oppositeHistoryChunk0119
  decide

def oppositeAggregatePartValid7_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 122752
  | _ => True

theorem oppositeAggregatePart7_0119 :
    oppositeAggregatePartValid7_0119 oppositeHistoryChunk0119 := by
  unfold oppositeAggregatePartValid7_0119 oppositeHistoryChunk0119
  decide

theorem oppositeRange_0119 :
    oppositeHistoryChunk0119.ResidueIndexedValid anchorHistories 5000000 18 25 121856 := by
  have h0 := oppositeAggregatePart0_0119
  simp only [oppositeAggregatePartValid0_0119, oppositeHistoryChunk0119] at h0
  have h1 := oppositeAggregatePart1_0119
  simp only [oppositeAggregatePartValid1_0119, oppositeHistoryChunk0119] at h1
  have h2 := oppositeAggregatePart2_0119
  simp only [oppositeAggregatePartValid2_0119, oppositeHistoryChunk0119] at h2
  have h3 := oppositeAggregatePart3_0119
  simp only [oppositeAggregatePartValid3_0119, oppositeHistoryChunk0119] at h3
  have h4 := oppositeAggregatePart4_0119
  simp only [oppositeAggregatePartValid4_0119, oppositeHistoryChunk0119] at h4
  have h5 := oppositeAggregatePart5_0119
  simp only [oppositeAggregatePartValid5_0119, oppositeHistoryChunk0119] at h5
  have h6 := oppositeAggregatePart6_0119
  simp only [oppositeAggregatePartValid6_0119, oppositeHistoryChunk0119] at h6
  have h7 := oppositeAggregatePart7_0119
  simp only [oppositeAggregatePartValid7_0119, oppositeHistoryChunk0119] at h7
  unfold oppositeHistoryChunk0119
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
