import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0048
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0049
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0050
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0051

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0048, 0049, 0050, 0051 -/

def oppositeAggregatePartValid0_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 49152
  | _ => True

theorem oppositeAggregatePart0_0048 :
    oppositeAggregatePartValid0_0048 oppositeHistoryChunk0048 := by
  unfold oppositeAggregatePartValid0_0048 oppositeHistoryChunk0048
  decide

def oppositeAggregatePartValid1_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 49280
  | _ => True

theorem oppositeAggregatePart1_0048 :
    oppositeAggregatePartValid1_0048 oppositeHistoryChunk0048 := by
  unfold oppositeAggregatePartValid1_0048 oppositeHistoryChunk0048
  decide

def oppositeAggregatePartValid2_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 49408
  | _ => True

theorem oppositeAggregatePart2_0048 :
    oppositeAggregatePartValid2_0048 oppositeHistoryChunk0048 := by
  unfold oppositeAggregatePartValid2_0048 oppositeHistoryChunk0048
  decide

def oppositeAggregatePartValid3_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 49536
  | _ => True

theorem oppositeAggregatePart3_0048 :
    oppositeAggregatePartValid3_0048 oppositeHistoryChunk0048 := by
  unfold oppositeAggregatePartValid3_0048 oppositeHistoryChunk0048
  decide

def oppositeAggregatePartValid4_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 49664
  | _ => True

theorem oppositeAggregatePart4_0048 :
    oppositeAggregatePartValid4_0048 oppositeHistoryChunk0048 := by
  unfold oppositeAggregatePartValid4_0048 oppositeHistoryChunk0048
  decide

def oppositeAggregatePartValid5_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 49792
  | _ => True

theorem oppositeAggregatePart5_0048 :
    oppositeAggregatePartValid5_0048 oppositeHistoryChunk0048 := by
  unfold oppositeAggregatePartValid5_0048 oppositeHistoryChunk0048
  decide

def oppositeAggregatePartValid6_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 49920
  | _ => True

theorem oppositeAggregatePart6_0048 :
    oppositeAggregatePartValid6_0048 oppositeHistoryChunk0048 := by
  unfold oppositeAggregatePartValid6_0048 oppositeHistoryChunk0048
  decide

def oppositeAggregatePartValid7_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 50048
  | _ => True

theorem oppositeAggregatePart7_0048 :
    oppositeAggregatePartValid7_0048 oppositeHistoryChunk0048 := by
  unfold oppositeAggregatePartValid7_0048 oppositeHistoryChunk0048
  decide

theorem oppositeRange_0048 :
    oppositeHistoryChunk0048.ResidueIndexedValid anchorHistories 5000000 18 25 49152 := by
  have h0 := oppositeAggregatePart0_0048
  simp only [oppositeAggregatePartValid0_0048, oppositeHistoryChunk0048] at h0
  have h1 := oppositeAggregatePart1_0048
  simp only [oppositeAggregatePartValid1_0048, oppositeHistoryChunk0048] at h1
  have h2 := oppositeAggregatePart2_0048
  simp only [oppositeAggregatePartValid2_0048, oppositeHistoryChunk0048] at h2
  have h3 := oppositeAggregatePart3_0048
  simp only [oppositeAggregatePartValid3_0048, oppositeHistoryChunk0048] at h3
  have h4 := oppositeAggregatePart4_0048
  simp only [oppositeAggregatePartValid4_0048, oppositeHistoryChunk0048] at h4
  have h5 := oppositeAggregatePart5_0048
  simp only [oppositeAggregatePartValid5_0048, oppositeHistoryChunk0048] at h5
  have h6 := oppositeAggregatePart6_0048
  simp only [oppositeAggregatePartValid6_0048, oppositeHistoryChunk0048] at h6
  have h7 := oppositeAggregatePart7_0048
  simp only [oppositeAggregatePartValid7_0048, oppositeHistoryChunk0048] at h7
  unfold oppositeHistoryChunk0048
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 50176
  | _ => True

theorem oppositeAggregatePart0_0049 :
    oppositeAggregatePartValid0_0049 oppositeHistoryChunk0049 := by
  unfold oppositeAggregatePartValid0_0049 oppositeHistoryChunk0049
  decide

def oppositeAggregatePartValid1_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 50304
  | _ => True

theorem oppositeAggregatePart1_0049 :
    oppositeAggregatePartValid1_0049 oppositeHistoryChunk0049 := by
  unfold oppositeAggregatePartValid1_0049 oppositeHistoryChunk0049
  decide

def oppositeAggregatePartValid2_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 50432
  | _ => True

theorem oppositeAggregatePart2_0049 :
    oppositeAggregatePartValid2_0049 oppositeHistoryChunk0049 := by
  unfold oppositeAggregatePartValid2_0049 oppositeHistoryChunk0049
  decide

def oppositeAggregatePartValid3_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 50560
  | _ => True

theorem oppositeAggregatePart3_0049 :
    oppositeAggregatePartValid3_0049 oppositeHistoryChunk0049 := by
  unfold oppositeAggregatePartValid3_0049 oppositeHistoryChunk0049
  decide

def oppositeAggregatePartValid4_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 50688
  | _ => True

theorem oppositeAggregatePart4_0049 :
    oppositeAggregatePartValid4_0049 oppositeHistoryChunk0049 := by
  unfold oppositeAggregatePartValid4_0049 oppositeHistoryChunk0049
  decide

def oppositeAggregatePartValid5_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 50816
  | _ => True

theorem oppositeAggregatePart5_0049 :
    oppositeAggregatePartValid5_0049 oppositeHistoryChunk0049 := by
  unfold oppositeAggregatePartValid5_0049 oppositeHistoryChunk0049
  decide

def oppositeAggregatePartValid6_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 50944
  | _ => True

theorem oppositeAggregatePart6_0049 :
    oppositeAggregatePartValid6_0049 oppositeHistoryChunk0049 := by
  unfold oppositeAggregatePartValid6_0049 oppositeHistoryChunk0049
  decide

def oppositeAggregatePartValid7_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 51072
  | _ => True

theorem oppositeAggregatePart7_0049 :
    oppositeAggregatePartValid7_0049 oppositeHistoryChunk0049 := by
  unfold oppositeAggregatePartValid7_0049 oppositeHistoryChunk0049
  decide

theorem oppositeRange_0049 :
    oppositeHistoryChunk0049.ResidueIndexedValid anchorHistories 5000000 18 25 50176 := by
  have h0 := oppositeAggregatePart0_0049
  simp only [oppositeAggregatePartValid0_0049, oppositeHistoryChunk0049] at h0
  have h1 := oppositeAggregatePart1_0049
  simp only [oppositeAggregatePartValid1_0049, oppositeHistoryChunk0049] at h1
  have h2 := oppositeAggregatePart2_0049
  simp only [oppositeAggregatePartValid2_0049, oppositeHistoryChunk0049] at h2
  have h3 := oppositeAggregatePart3_0049
  simp only [oppositeAggregatePartValid3_0049, oppositeHistoryChunk0049] at h3
  have h4 := oppositeAggregatePart4_0049
  simp only [oppositeAggregatePartValid4_0049, oppositeHistoryChunk0049] at h4
  have h5 := oppositeAggregatePart5_0049
  simp only [oppositeAggregatePartValid5_0049, oppositeHistoryChunk0049] at h5
  have h6 := oppositeAggregatePart6_0049
  simp only [oppositeAggregatePartValid6_0049, oppositeHistoryChunk0049] at h6
  have h7 := oppositeAggregatePart7_0049
  simp only [oppositeAggregatePartValid7_0049, oppositeHistoryChunk0049] at h7
  unfold oppositeHistoryChunk0049
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 51200
  | _ => True

theorem oppositeAggregatePart0_0050 :
    oppositeAggregatePartValid0_0050 oppositeHistoryChunk0050 := by
  unfold oppositeAggregatePartValid0_0050 oppositeHistoryChunk0050
  decide

def oppositeAggregatePartValid1_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 51328
  | _ => True

theorem oppositeAggregatePart1_0050 :
    oppositeAggregatePartValid1_0050 oppositeHistoryChunk0050 := by
  unfold oppositeAggregatePartValid1_0050 oppositeHistoryChunk0050
  decide

def oppositeAggregatePartValid2_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 51456
  | _ => True

theorem oppositeAggregatePart2_0050 :
    oppositeAggregatePartValid2_0050 oppositeHistoryChunk0050 := by
  unfold oppositeAggregatePartValid2_0050 oppositeHistoryChunk0050
  decide

def oppositeAggregatePartValid3_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 51584
  | _ => True

theorem oppositeAggregatePart3_0050 :
    oppositeAggregatePartValid3_0050 oppositeHistoryChunk0050 := by
  unfold oppositeAggregatePartValid3_0050 oppositeHistoryChunk0050
  decide

def oppositeAggregatePartValid4_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 51712
  | _ => True

theorem oppositeAggregatePart4_0050 :
    oppositeAggregatePartValid4_0050 oppositeHistoryChunk0050 := by
  unfold oppositeAggregatePartValid4_0050 oppositeHistoryChunk0050
  decide

def oppositeAggregatePartValid5_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 51840
  | _ => True

theorem oppositeAggregatePart5_0050 :
    oppositeAggregatePartValid5_0050 oppositeHistoryChunk0050 := by
  unfold oppositeAggregatePartValid5_0050 oppositeHistoryChunk0050
  decide

def oppositeAggregatePartValid6_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 51968
  | _ => True

theorem oppositeAggregatePart6_0050 :
    oppositeAggregatePartValid6_0050 oppositeHistoryChunk0050 := by
  unfold oppositeAggregatePartValid6_0050 oppositeHistoryChunk0050
  decide

def oppositeAggregatePartValid7_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 52096
  | _ => True

theorem oppositeAggregatePart7_0050 :
    oppositeAggregatePartValid7_0050 oppositeHistoryChunk0050 := by
  unfold oppositeAggregatePartValid7_0050 oppositeHistoryChunk0050
  decide

theorem oppositeRange_0050 :
    oppositeHistoryChunk0050.ResidueIndexedValid anchorHistories 5000000 18 25 51200 := by
  have h0 := oppositeAggregatePart0_0050
  simp only [oppositeAggregatePartValid0_0050, oppositeHistoryChunk0050] at h0
  have h1 := oppositeAggregatePart1_0050
  simp only [oppositeAggregatePartValid1_0050, oppositeHistoryChunk0050] at h1
  have h2 := oppositeAggregatePart2_0050
  simp only [oppositeAggregatePartValid2_0050, oppositeHistoryChunk0050] at h2
  have h3 := oppositeAggregatePart3_0050
  simp only [oppositeAggregatePartValid3_0050, oppositeHistoryChunk0050] at h3
  have h4 := oppositeAggregatePart4_0050
  simp only [oppositeAggregatePartValid4_0050, oppositeHistoryChunk0050] at h4
  have h5 := oppositeAggregatePart5_0050
  simp only [oppositeAggregatePartValid5_0050, oppositeHistoryChunk0050] at h5
  have h6 := oppositeAggregatePart6_0050
  simp only [oppositeAggregatePartValid6_0050, oppositeHistoryChunk0050] at h6
  have h7 := oppositeAggregatePart7_0050
  simp only [oppositeAggregatePartValid7_0050, oppositeHistoryChunk0050] at h7
  unfold oppositeHistoryChunk0050
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 52224
  | _ => True

theorem oppositeAggregatePart0_0051 :
    oppositeAggregatePartValid0_0051 oppositeHistoryChunk0051 := by
  unfold oppositeAggregatePartValid0_0051 oppositeHistoryChunk0051
  decide

def oppositeAggregatePartValid1_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 52352
  | _ => True

theorem oppositeAggregatePart1_0051 :
    oppositeAggregatePartValid1_0051 oppositeHistoryChunk0051 := by
  unfold oppositeAggregatePartValid1_0051 oppositeHistoryChunk0051
  decide

def oppositeAggregatePartValid2_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 52480
  | _ => True

theorem oppositeAggregatePart2_0051 :
    oppositeAggregatePartValid2_0051 oppositeHistoryChunk0051 := by
  unfold oppositeAggregatePartValid2_0051 oppositeHistoryChunk0051
  decide

def oppositeAggregatePartValid3_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 52608
  | _ => True

theorem oppositeAggregatePart3_0051 :
    oppositeAggregatePartValid3_0051 oppositeHistoryChunk0051 := by
  unfold oppositeAggregatePartValid3_0051 oppositeHistoryChunk0051
  decide

def oppositeAggregatePartValid4_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 52736
  | _ => True

theorem oppositeAggregatePart4_0051 :
    oppositeAggregatePartValid4_0051 oppositeHistoryChunk0051 := by
  unfold oppositeAggregatePartValid4_0051 oppositeHistoryChunk0051
  decide

def oppositeAggregatePartValid5_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 52864
  | _ => True

theorem oppositeAggregatePart5_0051 :
    oppositeAggregatePartValid5_0051 oppositeHistoryChunk0051 := by
  unfold oppositeAggregatePartValid5_0051 oppositeHistoryChunk0051
  decide

def oppositeAggregatePartValid6_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 52992
  | _ => True

theorem oppositeAggregatePart6_0051 :
    oppositeAggregatePartValid6_0051 oppositeHistoryChunk0051 := by
  unfold oppositeAggregatePartValid6_0051 oppositeHistoryChunk0051
  decide

def oppositeAggregatePartValid7_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 53120
  | _ => True

theorem oppositeAggregatePart7_0051 :
    oppositeAggregatePartValid7_0051 oppositeHistoryChunk0051 := by
  unfold oppositeAggregatePartValid7_0051 oppositeHistoryChunk0051
  decide

theorem oppositeRange_0051 :
    oppositeHistoryChunk0051.ResidueIndexedValid anchorHistories 5000000 18 25 52224 := by
  have h0 := oppositeAggregatePart0_0051
  simp only [oppositeAggregatePartValid0_0051, oppositeHistoryChunk0051] at h0
  have h1 := oppositeAggregatePart1_0051
  simp only [oppositeAggregatePartValid1_0051, oppositeHistoryChunk0051] at h1
  have h2 := oppositeAggregatePart2_0051
  simp only [oppositeAggregatePartValid2_0051, oppositeHistoryChunk0051] at h2
  have h3 := oppositeAggregatePart3_0051
  simp only [oppositeAggregatePartValid3_0051, oppositeHistoryChunk0051] at h3
  have h4 := oppositeAggregatePart4_0051
  simp only [oppositeAggregatePartValid4_0051, oppositeHistoryChunk0051] at h4
  have h5 := oppositeAggregatePart5_0051
  simp only [oppositeAggregatePartValid5_0051, oppositeHistoryChunk0051] at h5
  have h6 := oppositeAggregatePart6_0051
  simp only [oppositeAggregatePartValid6_0051, oppositeHistoryChunk0051] at h6
  have h7 := oppositeAggregatePart7_0051
  simp only [oppositeAggregatePartValid7_0051, oppositeHistoryChunk0051] at h7
  unfold oppositeHistoryChunk0051
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
