import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0100
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0101
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0102
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0103

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0100, 0101, 0102, 0103 -/

def oppositeAggregatePartValid0_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 102400
  | _ => True

theorem oppositeAggregatePart0_0100 :
    oppositeAggregatePartValid0_0100 oppositeHistoryChunk0100 := by
  unfold oppositeAggregatePartValid0_0100 oppositeHistoryChunk0100
  decide

def oppositeAggregatePartValid1_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 102528
  | _ => True

theorem oppositeAggregatePart1_0100 :
    oppositeAggregatePartValid1_0100 oppositeHistoryChunk0100 := by
  unfold oppositeAggregatePartValid1_0100 oppositeHistoryChunk0100
  decide

def oppositeAggregatePartValid2_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 102656
  | _ => True

theorem oppositeAggregatePart2_0100 :
    oppositeAggregatePartValid2_0100 oppositeHistoryChunk0100 := by
  unfold oppositeAggregatePartValid2_0100 oppositeHistoryChunk0100
  decide

def oppositeAggregatePartValid3_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 102784
  | _ => True

theorem oppositeAggregatePart3_0100 :
    oppositeAggregatePartValid3_0100 oppositeHistoryChunk0100 := by
  unfold oppositeAggregatePartValid3_0100 oppositeHistoryChunk0100
  decide

def oppositeAggregatePartValid4_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 102912
  | _ => True

theorem oppositeAggregatePart4_0100 :
    oppositeAggregatePartValid4_0100 oppositeHistoryChunk0100 := by
  unfold oppositeAggregatePartValid4_0100 oppositeHistoryChunk0100
  decide

def oppositeAggregatePartValid5_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 103040
  | _ => True

theorem oppositeAggregatePart5_0100 :
    oppositeAggregatePartValid5_0100 oppositeHistoryChunk0100 := by
  unfold oppositeAggregatePartValid5_0100 oppositeHistoryChunk0100
  decide

def oppositeAggregatePartValid6_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 103168
  | _ => True

theorem oppositeAggregatePart6_0100 :
    oppositeAggregatePartValid6_0100 oppositeHistoryChunk0100 := by
  unfold oppositeAggregatePartValid6_0100 oppositeHistoryChunk0100
  decide

def oppositeAggregatePartValid7_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 103296
  | _ => True

theorem oppositeAggregatePart7_0100 :
    oppositeAggregatePartValid7_0100 oppositeHistoryChunk0100 := by
  unfold oppositeAggregatePartValid7_0100 oppositeHistoryChunk0100
  decide

theorem oppositeRange_0100 :
    oppositeHistoryChunk0100.ResidueIndexedValid anchorHistories 5000000 18 25 102400 := by
  have h0 := oppositeAggregatePart0_0100
  simp only [oppositeAggregatePartValid0_0100, oppositeHistoryChunk0100] at h0
  have h1 := oppositeAggregatePart1_0100
  simp only [oppositeAggregatePartValid1_0100, oppositeHistoryChunk0100] at h1
  have h2 := oppositeAggregatePart2_0100
  simp only [oppositeAggregatePartValid2_0100, oppositeHistoryChunk0100] at h2
  have h3 := oppositeAggregatePart3_0100
  simp only [oppositeAggregatePartValid3_0100, oppositeHistoryChunk0100] at h3
  have h4 := oppositeAggregatePart4_0100
  simp only [oppositeAggregatePartValid4_0100, oppositeHistoryChunk0100] at h4
  have h5 := oppositeAggregatePart5_0100
  simp only [oppositeAggregatePartValid5_0100, oppositeHistoryChunk0100] at h5
  have h6 := oppositeAggregatePart6_0100
  simp only [oppositeAggregatePartValid6_0100, oppositeHistoryChunk0100] at h6
  have h7 := oppositeAggregatePart7_0100
  simp only [oppositeAggregatePartValid7_0100, oppositeHistoryChunk0100] at h7
  unfold oppositeHistoryChunk0100
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 103424
  | _ => True

theorem oppositeAggregatePart0_0101 :
    oppositeAggregatePartValid0_0101 oppositeHistoryChunk0101 := by
  unfold oppositeAggregatePartValid0_0101 oppositeHistoryChunk0101
  decide

def oppositeAggregatePartValid1_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 103552
  | _ => True

theorem oppositeAggregatePart1_0101 :
    oppositeAggregatePartValid1_0101 oppositeHistoryChunk0101 := by
  unfold oppositeAggregatePartValid1_0101 oppositeHistoryChunk0101
  decide

def oppositeAggregatePartValid2_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 103680
  | _ => True

theorem oppositeAggregatePart2_0101 :
    oppositeAggregatePartValid2_0101 oppositeHistoryChunk0101 := by
  unfold oppositeAggregatePartValid2_0101 oppositeHistoryChunk0101
  decide

def oppositeAggregatePartValid3_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 103808
  | _ => True

theorem oppositeAggregatePart3_0101 :
    oppositeAggregatePartValid3_0101 oppositeHistoryChunk0101 := by
  unfold oppositeAggregatePartValid3_0101 oppositeHistoryChunk0101
  decide

def oppositeAggregatePartValid4_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 103936
  | _ => True

theorem oppositeAggregatePart4_0101 :
    oppositeAggregatePartValid4_0101 oppositeHistoryChunk0101 := by
  unfold oppositeAggregatePartValid4_0101 oppositeHistoryChunk0101
  decide

def oppositeAggregatePartValid5_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 104064
  | _ => True

theorem oppositeAggregatePart5_0101 :
    oppositeAggregatePartValid5_0101 oppositeHistoryChunk0101 := by
  unfold oppositeAggregatePartValid5_0101 oppositeHistoryChunk0101
  decide

def oppositeAggregatePartValid6_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 104192
  | _ => True

theorem oppositeAggregatePart6_0101 :
    oppositeAggregatePartValid6_0101 oppositeHistoryChunk0101 := by
  unfold oppositeAggregatePartValid6_0101 oppositeHistoryChunk0101
  decide

def oppositeAggregatePartValid7_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 104320
  | _ => True

theorem oppositeAggregatePart7_0101 :
    oppositeAggregatePartValid7_0101 oppositeHistoryChunk0101 := by
  unfold oppositeAggregatePartValid7_0101 oppositeHistoryChunk0101
  decide

theorem oppositeRange_0101 :
    oppositeHistoryChunk0101.ResidueIndexedValid anchorHistories 5000000 18 25 103424 := by
  have h0 := oppositeAggregatePart0_0101
  simp only [oppositeAggregatePartValid0_0101, oppositeHistoryChunk0101] at h0
  have h1 := oppositeAggregatePart1_0101
  simp only [oppositeAggregatePartValid1_0101, oppositeHistoryChunk0101] at h1
  have h2 := oppositeAggregatePart2_0101
  simp only [oppositeAggregatePartValid2_0101, oppositeHistoryChunk0101] at h2
  have h3 := oppositeAggregatePart3_0101
  simp only [oppositeAggregatePartValid3_0101, oppositeHistoryChunk0101] at h3
  have h4 := oppositeAggregatePart4_0101
  simp only [oppositeAggregatePartValid4_0101, oppositeHistoryChunk0101] at h4
  have h5 := oppositeAggregatePart5_0101
  simp only [oppositeAggregatePartValid5_0101, oppositeHistoryChunk0101] at h5
  have h6 := oppositeAggregatePart6_0101
  simp only [oppositeAggregatePartValid6_0101, oppositeHistoryChunk0101] at h6
  have h7 := oppositeAggregatePart7_0101
  simp only [oppositeAggregatePartValid7_0101, oppositeHistoryChunk0101] at h7
  unfold oppositeHistoryChunk0101
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 104448
  | _ => True

theorem oppositeAggregatePart0_0102 :
    oppositeAggregatePartValid0_0102 oppositeHistoryChunk0102 := by
  unfold oppositeAggregatePartValid0_0102 oppositeHistoryChunk0102
  decide

def oppositeAggregatePartValid1_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 104576
  | _ => True

theorem oppositeAggregatePart1_0102 :
    oppositeAggregatePartValid1_0102 oppositeHistoryChunk0102 := by
  unfold oppositeAggregatePartValid1_0102 oppositeHistoryChunk0102
  decide

def oppositeAggregatePartValid2_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 104704
  | _ => True

theorem oppositeAggregatePart2_0102 :
    oppositeAggregatePartValid2_0102 oppositeHistoryChunk0102 := by
  unfold oppositeAggregatePartValid2_0102 oppositeHistoryChunk0102
  decide

def oppositeAggregatePartValid3_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 104832
  | _ => True

theorem oppositeAggregatePart3_0102 :
    oppositeAggregatePartValid3_0102 oppositeHistoryChunk0102 := by
  unfold oppositeAggregatePartValid3_0102 oppositeHistoryChunk0102
  decide

def oppositeAggregatePartValid4_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 104960
  | _ => True

theorem oppositeAggregatePart4_0102 :
    oppositeAggregatePartValid4_0102 oppositeHistoryChunk0102 := by
  unfold oppositeAggregatePartValid4_0102 oppositeHistoryChunk0102
  decide

def oppositeAggregatePartValid5_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 105088
  | _ => True

theorem oppositeAggregatePart5_0102 :
    oppositeAggregatePartValid5_0102 oppositeHistoryChunk0102 := by
  unfold oppositeAggregatePartValid5_0102 oppositeHistoryChunk0102
  decide

def oppositeAggregatePartValid6_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 105216
  | _ => True

theorem oppositeAggregatePart6_0102 :
    oppositeAggregatePartValid6_0102 oppositeHistoryChunk0102 := by
  unfold oppositeAggregatePartValid6_0102 oppositeHistoryChunk0102
  decide

def oppositeAggregatePartValid7_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 105344
  | _ => True

theorem oppositeAggregatePart7_0102 :
    oppositeAggregatePartValid7_0102 oppositeHistoryChunk0102 := by
  unfold oppositeAggregatePartValid7_0102 oppositeHistoryChunk0102
  decide

theorem oppositeRange_0102 :
    oppositeHistoryChunk0102.ResidueIndexedValid anchorHistories 5000000 18 25 104448 := by
  have h0 := oppositeAggregatePart0_0102
  simp only [oppositeAggregatePartValid0_0102, oppositeHistoryChunk0102] at h0
  have h1 := oppositeAggregatePart1_0102
  simp only [oppositeAggregatePartValid1_0102, oppositeHistoryChunk0102] at h1
  have h2 := oppositeAggregatePart2_0102
  simp only [oppositeAggregatePartValid2_0102, oppositeHistoryChunk0102] at h2
  have h3 := oppositeAggregatePart3_0102
  simp only [oppositeAggregatePartValid3_0102, oppositeHistoryChunk0102] at h3
  have h4 := oppositeAggregatePart4_0102
  simp only [oppositeAggregatePartValid4_0102, oppositeHistoryChunk0102] at h4
  have h5 := oppositeAggregatePart5_0102
  simp only [oppositeAggregatePartValid5_0102, oppositeHistoryChunk0102] at h5
  have h6 := oppositeAggregatePart6_0102
  simp only [oppositeAggregatePartValid6_0102, oppositeHistoryChunk0102] at h6
  have h7 := oppositeAggregatePart7_0102
  simp only [oppositeAggregatePartValid7_0102, oppositeHistoryChunk0102] at h7
  unfold oppositeHistoryChunk0102
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 105472
  | _ => True

theorem oppositeAggregatePart0_0103 :
    oppositeAggregatePartValid0_0103 oppositeHistoryChunk0103 := by
  unfold oppositeAggregatePartValid0_0103 oppositeHistoryChunk0103
  decide

def oppositeAggregatePartValid1_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 105600
  | _ => True

theorem oppositeAggregatePart1_0103 :
    oppositeAggregatePartValid1_0103 oppositeHistoryChunk0103 := by
  unfold oppositeAggregatePartValid1_0103 oppositeHistoryChunk0103
  decide

def oppositeAggregatePartValid2_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 105728
  | _ => True

theorem oppositeAggregatePart2_0103 :
    oppositeAggregatePartValid2_0103 oppositeHistoryChunk0103 := by
  unfold oppositeAggregatePartValid2_0103 oppositeHistoryChunk0103
  decide

def oppositeAggregatePartValid3_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 105856
  | _ => True

theorem oppositeAggregatePart3_0103 :
    oppositeAggregatePartValid3_0103 oppositeHistoryChunk0103 := by
  unfold oppositeAggregatePartValid3_0103 oppositeHistoryChunk0103
  decide

def oppositeAggregatePartValid4_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 105984
  | _ => True

theorem oppositeAggregatePart4_0103 :
    oppositeAggregatePartValid4_0103 oppositeHistoryChunk0103 := by
  unfold oppositeAggregatePartValid4_0103 oppositeHistoryChunk0103
  decide

def oppositeAggregatePartValid5_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 106112
  | _ => True

theorem oppositeAggregatePart5_0103 :
    oppositeAggregatePartValid5_0103 oppositeHistoryChunk0103 := by
  unfold oppositeAggregatePartValid5_0103 oppositeHistoryChunk0103
  decide

def oppositeAggregatePartValid6_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 106240
  | _ => True

theorem oppositeAggregatePart6_0103 :
    oppositeAggregatePartValid6_0103 oppositeHistoryChunk0103 := by
  unfold oppositeAggregatePartValid6_0103 oppositeHistoryChunk0103
  decide

def oppositeAggregatePartValid7_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 106368
  | _ => True

theorem oppositeAggregatePart7_0103 :
    oppositeAggregatePartValid7_0103 oppositeHistoryChunk0103 := by
  unfold oppositeAggregatePartValid7_0103 oppositeHistoryChunk0103
  decide

theorem oppositeRange_0103 :
    oppositeHistoryChunk0103.ResidueIndexedValid anchorHistories 5000000 18 25 105472 := by
  have h0 := oppositeAggregatePart0_0103
  simp only [oppositeAggregatePartValid0_0103, oppositeHistoryChunk0103] at h0
  have h1 := oppositeAggregatePart1_0103
  simp only [oppositeAggregatePartValid1_0103, oppositeHistoryChunk0103] at h1
  have h2 := oppositeAggregatePart2_0103
  simp only [oppositeAggregatePartValid2_0103, oppositeHistoryChunk0103] at h2
  have h3 := oppositeAggregatePart3_0103
  simp only [oppositeAggregatePartValid3_0103, oppositeHistoryChunk0103] at h3
  have h4 := oppositeAggregatePart4_0103
  simp only [oppositeAggregatePartValid4_0103, oppositeHistoryChunk0103] at h4
  have h5 := oppositeAggregatePart5_0103
  simp only [oppositeAggregatePartValid5_0103, oppositeHistoryChunk0103] at h5
  have h6 := oppositeAggregatePart6_0103
  simp only [oppositeAggregatePartValid6_0103, oppositeHistoryChunk0103] at h6
  have h7 := oppositeAggregatePart7_0103
  simp only [oppositeAggregatePartValid7_0103, oppositeHistoryChunk0103] at h7
  unfold oppositeHistoryChunk0103
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
