import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0124
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0125
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0126
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0127

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0124, 0125, 0126, 0127 -/

def oppositeAggregatePartValid0_0124 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 126976
  | _ => True

theorem oppositeAggregatePart0_0124 :
    oppositeAggregatePartValid0_0124 oppositeHistoryChunk0124 := by
  unfold oppositeAggregatePartValid0_0124 oppositeHistoryChunk0124
  decide

def oppositeAggregatePartValid1_0124 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 127104
  | _ => True

theorem oppositeAggregatePart1_0124 :
    oppositeAggregatePartValid1_0124 oppositeHistoryChunk0124 := by
  unfold oppositeAggregatePartValid1_0124 oppositeHistoryChunk0124
  decide

def oppositeAggregatePartValid2_0124 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 127232
  | _ => True

theorem oppositeAggregatePart2_0124 :
    oppositeAggregatePartValid2_0124 oppositeHistoryChunk0124 := by
  unfold oppositeAggregatePartValid2_0124 oppositeHistoryChunk0124
  decide

def oppositeAggregatePartValid3_0124 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 127360
  | _ => True

theorem oppositeAggregatePart3_0124 :
    oppositeAggregatePartValid3_0124 oppositeHistoryChunk0124 := by
  unfold oppositeAggregatePartValid3_0124 oppositeHistoryChunk0124
  decide

def oppositeAggregatePartValid4_0124 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 127488
  | _ => True

theorem oppositeAggregatePart4_0124 :
    oppositeAggregatePartValid4_0124 oppositeHistoryChunk0124 := by
  unfold oppositeAggregatePartValid4_0124 oppositeHistoryChunk0124
  decide

def oppositeAggregatePartValid5_0124 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 127616
  | _ => True

theorem oppositeAggregatePart5_0124 :
    oppositeAggregatePartValid5_0124 oppositeHistoryChunk0124 := by
  unfold oppositeAggregatePartValid5_0124 oppositeHistoryChunk0124
  decide

def oppositeAggregatePartValid6_0124 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 127744
  | _ => True

theorem oppositeAggregatePart6_0124 :
    oppositeAggregatePartValid6_0124 oppositeHistoryChunk0124 := by
  unfold oppositeAggregatePartValid6_0124 oppositeHistoryChunk0124
  decide

def oppositeAggregatePartValid7_0124 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 127872
  | _ => True

theorem oppositeAggregatePart7_0124 :
    oppositeAggregatePartValid7_0124 oppositeHistoryChunk0124 := by
  unfold oppositeAggregatePartValid7_0124 oppositeHistoryChunk0124
  decide

theorem oppositeRange_0124 :
    oppositeHistoryChunk0124.ResidueIndexedValid anchorHistories 5000000 18 25 126976 := by
  have h0 := oppositeAggregatePart0_0124
  simp only [oppositeAggregatePartValid0_0124, oppositeHistoryChunk0124] at h0
  have h1 := oppositeAggregatePart1_0124
  simp only [oppositeAggregatePartValid1_0124, oppositeHistoryChunk0124] at h1
  have h2 := oppositeAggregatePart2_0124
  simp only [oppositeAggregatePartValid2_0124, oppositeHistoryChunk0124] at h2
  have h3 := oppositeAggregatePart3_0124
  simp only [oppositeAggregatePartValid3_0124, oppositeHistoryChunk0124] at h3
  have h4 := oppositeAggregatePart4_0124
  simp only [oppositeAggregatePartValid4_0124, oppositeHistoryChunk0124] at h4
  have h5 := oppositeAggregatePart5_0124
  simp only [oppositeAggregatePartValid5_0124, oppositeHistoryChunk0124] at h5
  have h6 := oppositeAggregatePart6_0124
  simp only [oppositeAggregatePartValid6_0124, oppositeHistoryChunk0124] at h6
  have h7 := oppositeAggregatePart7_0124
  simp only [oppositeAggregatePartValid7_0124, oppositeHistoryChunk0124] at h7
  unfold oppositeHistoryChunk0124
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0125 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 128000
  | _ => True

theorem oppositeAggregatePart0_0125 :
    oppositeAggregatePartValid0_0125 oppositeHistoryChunk0125 := by
  unfold oppositeAggregatePartValid0_0125 oppositeHistoryChunk0125
  decide

def oppositeAggregatePartValid1_0125 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 128128
  | _ => True

theorem oppositeAggregatePart1_0125 :
    oppositeAggregatePartValid1_0125 oppositeHistoryChunk0125 := by
  unfold oppositeAggregatePartValid1_0125 oppositeHistoryChunk0125
  decide

def oppositeAggregatePartValid2_0125 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 128256
  | _ => True

theorem oppositeAggregatePart2_0125 :
    oppositeAggregatePartValid2_0125 oppositeHistoryChunk0125 := by
  unfold oppositeAggregatePartValid2_0125 oppositeHistoryChunk0125
  decide

def oppositeAggregatePartValid3_0125 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 128384
  | _ => True

theorem oppositeAggregatePart3_0125 :
    oppositeAggregatePartValid3_0125 oppositeHistoryChunk0125 := by
  unfold oppositeAggregatePartValid3_0125 oppositeHistoryChunk0125
  decide

def oppositeAggregatePartValid4_0125 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 128512
  | _ => True

theorem oppositeAggregatePart4_0125 :
    oppositeAggregatePartValid4_0125 oppositeHistoryChunk0125 := by
  unfold oppositeAggregatePartValid4_0125 oppositeHistoryChunk0125
  decide

def oppositeAggregatePartValid5_0125 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 128640
  | _ => True

theorem oppositeAggregatePart5_0125 :
    oppositeAggregatePartValid5_0125 oppositeHistoryChunk0125 := by
  unfold oppositeAggregatePartValid5_0125 oppositeHistoryChunk0125
  decide

def oppositeAggregatePartValid6_0125 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 128768
  | _ => True

theorem oppositeAggregatePart6_0125 :
    oppositeAggregatePartValid6_0125 oppositeHistoryChunk0125 := by
  unfold oppositeAggregatePartValid6_0125 oppositeHistoryChunk0125
  decide

def oppositeAggregatePartValid7_0125 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 128896
  | _ => True

theorem oppositeAggregatePart7_0125 :
    oppositeAggregatePartValid7_0125 oppositeHistoryChunk0125 := by
  unfold oppositeAggregatePartValid7_0125 oppositeHistoryChunk0125
  decide

theorem oppositeRange_0125 :
    oppositeHistoryChunk0125.ResidueIndexedValid anchorHistories 5000000 18 25 128000 := by
  have h0 := oppositeAggregatePart0_0125
  simp only [oppositeAggregatePartValid0_0125, oppositeHistoryChunk0125] at h0
  have h1 := oppositeAggregatePart1_0125
  simp only [oppositeAggregatePartValid1_0125, oppositeHistoryChunk0125] at h1
  have h2 := oppositeAggregatePart2_0125
  simp only [oppositeAggregatePartValid2_0125, oppositeHistoryChunk0125] at h2
  have h3 := oppositeAggregatePart3_0125
  simp only [oppositeAggregatePartValid3_0125, oppositeHistoryChunk0125] at h3
  have h4 := oppositeAggregatePart4_0125
  simp only [oppositeAggregatePartValid4_0125, oppositeHistoryChunk0125] at h4
  have h5 := oppositeAggregatePart5_0125
  simp only [oppositeAggregatePartValid5_0125, oppositeHistoryChunk0125] at h5
  have h6 := oppositeAggregatePart6_0125
  simp only [oppositeAggregatePartValid6_0125, oppositeHistoryChunk0125] at h6
  have h7 := oppositeAggregatePart7_0125
  simp only [oppositeAggregatePartValid7_0125, oppositeHistoryChunk0125] at h7
  unfold oppositeHistoryChunk0125
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0126 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 129024
  | _ => True

theorem oppositeAggregatePart0_0126 :
    oppositeAggregatePartValid0_0126 oppositeHistoryChunk0126 := by
  unfold oppositeAggregatePartValid0_0126 oppositeHistoryChunk0126
  decide

def oppositeAggregatePartValid1_0126 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 129152
  | _ => True

theorem oppositeAggregatePart1_0126 :
    oppositeAggregatePartValid1_0126 oppositeHistoryChunk0126 := by
  unfold oppositeAggregatePartValid1_0126 oppositeHistoryChunk0126
  decide

def oppositeAggregatePartValid2_0126 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 129280
  | _ => True

theorem oppositeAggregatePart2_0126 :
    oppositeAggregatePartValid2_0126 oppositeHistoryChunk0126 := by
  unfold oppositeAggregatePartValid2_0126 oppositeHistoryChunk0126
  decide

def oppositeAggregatePartValid3_0126 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 129408
  | _ => True

theorem oppositeAggregatePart3_0126 :
    oppositeAggregatePartValid3_0126 oppositeHistoryChunk0126 := by
  unfold oppositeAggregatePartValid3_0126 oppositeHistoryChunk0126
  decide

def oppositeAggregatePartValid4_0126 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 129536
  | _ => True

theorem oppositeAggregatePart4_0126 :
    oppositeAggregatePartValid4_0126 oppositeHistoryChunk0126 := by
  unfold oppositeAggregatePartValid4_0126 oppositeHistoryChunk0126
  decide

def oppositeAggregatePartValid5_0126 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 129664
  | _ => True

theorem oppositeAggregatePart5_0126 :
    oppositeAggregatePartValid5_0126 oppositeHistoryChunk0126 := by
  unfold oppositeAggregatePartValid5_0126 oppositeHistoryChunk0126
  decide

def oppositeAggregatePartValid6_0126 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 129792
  | _ => True

theorem oppositeAggregatePart6_0126 :
    oppositeAggregatePartValid6_0126 oppositeHistoryChunk0126 := by
  unfold oppositeAggregatePartValid6_0126 oppositeHistoryChunk0126
  decide

def oppositeAggregatePartValid7_0126 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 129920
  | _ => True

theorem oppositeAggregatePart7_0126 :
    oppositeAggregatePartValid7_0126 oppositeHistoryChunk0126 := by
  unfold oppositeAggregatePartValid7_0126 oppositeHistoryChunk0126
  decide

theorem oppositeRange_0126 :
    oppositeHistoryChunk0126.ResidueIndexedValid anchorHistories 5000000 18 25 129024 := by
  have h0 := oppositeAggregatePart0_0126
  simp only [oppositeAggregatePartValid0_0126, oppositeHistoryChunk0126] at h0
  have h1 := oppositeAggregatePart1_0126
  simp only [oppositeAggregatePartValid1_0126, oppositeHistoryChunk0126] at h1
  have h2 := oppositeAggregatePart2_0126
  simp only [oppositeAggregatePartValid2_0126, oppositeHistoryChunk0126] at h2
  have h3 := oppositeAggregatePart3_0126
  simp only [oppositeAggregatePartValid3_0126, oppositeHistoryChunk0126] at h3
  have h4 := oppositeAggregatePart4_0126
  simp only [oppositeAggregatePartValid4_0126, oppositeHistoryChunk0126] at h4
  have h5 := oppositeAggregatePart5_0126
  simp only [oppositeAggregatePartValid5_0126, oppositeHistoryChunk0126] at h5
  have h6 := oppositeAggregatePart6_0126
  simp only [oppositeAggregatePartValid6_0126, oppositeHistoryChunk0126] at h6
  have h7 := oppositeAggregatePart7_0126
  simp only [oppositeAggregatePartValid7_0126, oppositeHistoryChunk0126] at h7
  unfold oppositeHistoryChunk0126
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0127 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 130048
  | _ => True

theorem oppositeAggregatePart0_0127 :
    oppositeAggregatePartValid0_0127 oppositeHistoryChunk0127 := by
  unfold oppositeAggregatePartValid0_0127 oppositeHistoryChunk0127
  decide

def oppositeAggregatePartValid1_0127 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 130176
  | _ => True

theorem oppositeAggregatePart1_0127 :
    oppositeAggregatePartValid1_0127 oppositeHistoryChunk0127 := by
  unfold oppositeAggregatePartValid1_0127 oppositeHistoryChunk0127
  decide

def oppositeAggregatePartValid2_0127 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 130304
  | _ => True

theorem oppositeAggregatePart2_0127 :
    oppositeAggregatePartValid2_0127 oppositeHistoryChunk0127 := by
  unfold oppositeAggregatePartValid2_0127 oppositeHistoryChunk0127
  decide

def oppositeAggregatePartValid3_0127 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 130432
  | _ => True

theorem oppositeAggregatePart3_0127 :
    oppositeAggregatePartValid3_0127 oppositeHistoryChunk0127 := by
  unfold oppositeAggregatePartValid3_0127 oppositeHistoryChunk0127
  decide

def oppositeAggregatePartValid4_0127 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 130560
  | _ => True

theorem oppositeAggregatePart4_0127 :
    oppositeAggregatePartValid4_0127 oppositeHistoryChunk0127 := by
  unfold oppositeAggregatePartValid4_0127 oppositeHistoryChunk0127
  decide

def oppositeAggregatePartValid5_0127 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 130688
  | _ => True

theorem oppositeAggregatePart5_0127 :
    oppositeAggregatePartValid5_0127 oppositeHistoryChunk0127 := by
  unfold oppositeAggregatePartValid5_0127 oppositeHistoryChunk0127
  decide

def oppositeAggregatePartValid6_0127 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 130816
  | _ => True

theorem oppositeAggregatePart6_0127 :
    oppositeAggregatePartValid6_0127 oppositeHistoryChunk0127 := by
  unfold oppositeAggregatePartValid6_0127 oppositeHistoryChunk0127
  decide

def oppositeAggregatePartValid7_0127 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 130944
  | _ => True

theorem oppositeAggregatePart7_0127 :
    oppositeAggregatePartValid7_0127 oppositeHistoryChunk0127 := by
  unfold oppositeAggregatePartValid7_0127 oppositeHistoryChunk0127
  decide

theorem oppositeRange_0127 :
    oppositeHistoryChunk0127.ResidueIndexedValid anchorHistories 5000000 18 25 130048 := by
  have h0 := oppositeAggregatePart0_0127
  simp only [oppositeAggregatePartValid0_0127, oppositeHistoryChunk0127] at h0
  have h1 := oppositeAggregatePart1_0127
  simp only [oppositeAggregatePartValid1_0127, oppositeHistoryChunk0127] at h1
  have h2 := oppositeAggregatePart2_0127
  simp only [oppositeAggregatePartValid2_0127, oppositeHistoryChunk0127] at h2
  have h3 := oppositeAggregatePart3_0127
  simp only [oppositeAggregatePartValid3_0127, oppositeHistoryChunk0127] at h3
  have h4 := oppositeAggregatePart4_0127
  simp only [oppositeAggregatePartValid4_0127, oppositeHistoryChunk0127] at h4
  have h5 := oppositeAggregatePart5_0127
  simp only [oppositeAggregatePartValid5_0127, oppositeHistoryChunk0127] at h5
  have h6 := oppositeAggregatePart6_0127
  simp only [oppositeAggregatePartValid6_0127, oppositeHistoryChunk0127] at h6
  have h7 := oppositeAggregatePart7_0127
  simp only [oppositeAggregatePartValid7_0127, oppositeHistoryChunk0127] at h7
  unfold oppositeHistoryChunk0127
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
