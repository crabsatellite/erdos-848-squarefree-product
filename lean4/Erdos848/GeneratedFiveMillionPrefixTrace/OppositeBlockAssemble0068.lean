import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0068
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0069
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0070
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0071

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0068, 0069, 0070, 0071 -/

def oppositeAggregatePartValid0_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 69632
  | _ => True

theorem oppositeAggregatePart0_0068 :
    oppositeAggregatePartValid0_0068 oppositeHistoryChunk0068 := by
  unfold oppositeAggregatePartValid0_0068 oppositeHistoryChunk0068
  decide

def oppositeAggregatePartValid1_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 69760
  | _ => True

theorem oppositeAggregatePart1_0068 :
    oppositeAggregatePartValid1_0068 oppositeHistoryChunk0068 := by
  unfold oppositeAggregatePartValid1_0068 oppositeHistoryChunk0068
  decide

def oppositeAggregatePartValid2_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 69888
  | _ => True

theorem oppositeAggregatePart2_0068 :
    oppositeAggregatePartValid2_0068 oppositeHistoryChunk0068 := by
  unfold oppositeAggregatePartValid2_0068 oppositeHistoryChunk0068
  decide

def oppositeAggregatePartValid3_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 70016
  | _ => True

theorem oppositeAggregatePart3_0068 :
    oppositeAggregatePartValid3_0068 oppositeHistoryChunk0068 := by
  unfold oppositeAggregatePartValid3_0068 oppositeHistoryChunk0068
  decide

def oppositeAggregatePartValid4_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 70144
  | _ => True

theorem oppositeAggregatePart4_0068 :
    oppositeAggregatePartValid4_0068 oppositeHistoryChunk0068 := by
  unfold oppositeAggregatePartValid4_0068 oppositeHistoryChunk0068
  decide

def oppositeAggregatePartValid5_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 70272
  | _ => True

theorem oppositeAggregatePart5_0068 :
    oppositeAggregatePartValid5_0068 oppositeHistoryChunk0068 := by
  unfold oppositeAggregatePartValid5_0068 oppositeHistoryChunk0068
  decide

def oppositeAggregatePartValid6_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 70400
  | _ => True

theorem oppositeAggregatePart6_0068 :
    oppositeAggregatePartValid6_0068 oppositeHistoryChunk0068 := by
  unfold oppositeAggregatePartValid6_0068 oppositeHistoryChunk0068
  decide

def oppositeAggregatePartValid7_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 70528
  | _ => True

theorem oppositeAggregatePart7_0068 :
    oppositeAggregatePartValid7_0068 oppositeHistoryChunk0068 := by
  unfold oppositeAggregatePartValid7_0068 oppositeHistoryChunk0068
  decide

theorem oppositeRange_0068 :
    oppositeHistoryChunk0068.ResidueIndexedValid anchorHistories 5000000 18 25 69632 := by
  have h0 := oppositeAggregatePart0_0068
  simp only [oppositeAggregatePartValid0_0068, oppositeHistoryChunk0068] at h0
  have h1 := oppositeAggregatePart1_0068
  simp only [oppositeAggregatePartValid1_0068, oppositeHistoryChunk0068] at h1
  have h2 := oppositeAggregatePart2_0068
  simp only [oppositeAggregatePartValid2_0068, oppositeHistoryChunk0068] at h2
  have h3 := oppositeAggregatePart3_0068
  simp only [oppositeAggregatePartValid3_0068, oppositeHistoryChunk0068] at h3
  have h4 := oppositeAggregatePart4_0068
  simp only [oppositeAggregatePartValid4_0068, oppositeHistoryChunk0068] at h4
  have h5 := oppositeAggregatePart5_0068
  simp only [oppositeAggregatePartValid5_0068, oppositeHistoryChunk0068] at h5
  have h6 := oppositeAggregatePart6_0068
  simp only [oppositeAggregatePartValid6_0068, oppositeHistoryChunk0068] at h6
  have h7 := oppositeAggregatePart7_0068
  simp only [oppositeAggregatePartValid7_0068, oppositeHistoryChunk0068] at h7
  unfold oppositeHistoryChunk0068
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 70656
  | _ => True

theorem oppositeAggregatePart0_0069 :
    oppositeAggregatePartValid0_0069 oppositeHistoryChunk0069 := by
  unfold oppositeAggregatePartValid0_0069 oppositeHistoryChunk0069
  decide

def oppositeAggregatePartValid1_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 70784
  | _ => True

theorem oppositeAggregatePart1_0069 :
    oppositeAggregatePartValid1_0069 oppositeHistoryChunk0069 := by
  unfold oppositeAggregatePartValid1_0069 oppositeHistoryChunk0069
  decide

def oppositeAggregatePartValid2_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 70912
  | _ => True

theorem oppositeAggregatePart2_0069 :
    oppositeAggregatePartValid2_0069 oppositeHistoryChunk0069 := by
  unfold oppositeAggregatePartValid2_0069 oppositeHistoryChunk0069
  decide

def oppositeAggregatePartValid3_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 71040
  | _ => True

theorem oppositeAggregatePart3_0069 :
    oppositeAggregatePartValid3_0069 oppositeHistoryChunk0069 := by
  unfold oppositeAggregatePartValid3_0069 oppositeHistoryChunk0069
  decide

def oppositeAggregatePartValid4_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 71168
  | _ => True

theorem oppositeAggregatePart4_0069 :
    oppositeAggregatePartValid4_0069 oppositeHistoryChunk0069 := by
  unfold oppositeAggregatePartValid4_0069 oppositeHistoryChunk0069
  decide

def oppositeAggregatePartValid5_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 71296
  | _ => True

theorem oppositeAggregatePart5_0069 :
    oppositeAggregatePartValid5_0069 oppositeHistoryChunk0069 := by
  unfold oppositeAggregatePartValid5_0069 oppositeHistoryChunk0069
  decide

def oppositeAggregatePartValid6_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 71424
  | _ => True

theorem oppositeAggregatePart6_0069 :
    oppositeAggregatePartValid6_0069 oppositeHistoryChunk0069 := by
  unfold oppositeAggregatePartValid6_0069 oppositeHistoryChunk0069
  decide

def oppositeAggregatePartValid7_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 71552
  | _ => True

theorem oppositeAggregatePart7_0069 :
    oppositeAggregatePartValid7_0069 oppositeHistoryChunk0069 := by
  unfold oppositeAggregatePartValid7_0069 oppositeHistoryChunk0069
  decide

theorem oppositeRange_0069 :
    oppositeHistoryChunk0069.ResidueIndexedValid anchorHistories 5000000 18 25 70656 := by
  have h0 := oppositeAggregatePart0_0069
  simp only [oppositeAggregatePartValid0_0069, oppositeHistoryChunk0069] at h0
  have h1 := oppositeAggregatePart1_0069
  simp only [oppositeAggregatePartValid1_0069, oppositeHistoryChunk0069] at h1
  have h2 := oppositeAggregatePart2_0069
  simp only [oppositeAggregatePartValid2_0069, oppositeHistoryChunk0069] at h2
  have h3 := oppositeAggregatePart3_0069
  simp only [oppositeAggregatePartValid3_0069, oppositeHistoryChunk0069] at h3
  have h4 := oppositeAggregatePart4_0069
  simp only [oppositeAggregatePartValid4_0069, oppositeHistoryChunk0069] at h4
  have h5 := oppositeAggregatePart5_0069
  simp only [oppositeAggregatePartValid5_0069, oppositeHistoryChunk0069] at h5
  have h6 := oppositeAggregatePart6_0069
  simp only [oppositeAggregatePartValid6_0069, oppositeHistoryChunk0069] at h6
  have h7 := oppositeAggregatePart7_0069
  simp only [oppositeAggregatePartValid7_0069, oppositeHistoryChunk0069] at h7
  unfold oppositeHistoryChunk0069
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 71680
  | _ => True

theorem oppositeAggregatePart0_0070 :
    oppositeAggregatePartValid0_0070 oppositeHistoryChunk0070 := by
  unfold oppositeAggregatePartValid0_0070 oppositeHistoryChunk0070
  decide

def oppositeAggregatePartValid1_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 71808
  | _ => True

theorem oppositeAggregatePart1_0070 :
    oppositeAggregatePartValid1_0070 oppositeHistoryChunk0070 := by
  unfold oppositeAggregatePartValid1_0070 oppositeHistoryChunk0070
  decide

def oppositeAggregatePartValid2_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 71936
  | _ => True

theorem oppositeAggregatePart2_0070 :
    oppositeAggregatePartValid2_0070 oppositeHistoryChunk0070 := by
  unfold oppositeAggregatePartValid2_0070 oppositeHistoryChunk0070
  decide

def oppositeAggregatePartValid3_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 72064
  | _ => True

theorem oppositeAggregatePart3_0070 :
    oppositeAggregatePartValid3_0070 oppositeHistoryChunk0070 := by
  unfold oppositeAggregatePartValid3_0070 oppositeHistoryChunk0070
  decide

def oppositeAggregatePartValid4_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 72192
  | _ => True

theorem oppositeAggregatePart4_0070 :
    oppositeAggregatePartValid4_0070 oppositeHistoryChunk0070 := by
  unfold oppositeAggregatePartValid4_0070 oppositeHistoryChunk0070
  decide

def oppositeAggregatePartValid5_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 72320
  | _ => True

theorem oppositeAggregatePart5_0070 :
    oppositeAggregatePartValid5_0070 oppositeHistoryChunk0070 := by
  unfold oppositeAggregatePartValid5_0070 oppositeHistoryChunk0070
  decide

def oppositeAggregatePartValid6_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 72448
  | _ => True

theorem oppositeAggregatePart6_0070 :
    oppositeAggregatePartValid6_0070 oppositeHistoryChunk0070 := by
  unfold oppositeAggregatePartValid6_0070 oppositeHistoryChunk0070
  decide

def oppositeAggregatePartValid7_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 72576
  | _ => True

theorem oppositeAggregatePart7_0070 :
    oppositeAggregatePartValid7_0070 oppositeHistoryChunk0070 := by
  unfold oppositeAggregatePartValid7_0070 oppositeHistoryChunk0070
  decide

theorem oppositeRange_0070 :
    oppositeHistoryChunk0070.ResidueIndexedValid anchorHistories 5000000 18 25 71680 := by
  have h0 := oppositeAggregatePart0_0070
  simp only [oppositeAggregatePartValid0_0070, oppositeHistoryChunk0070] at h0
  have h1 := oppositeAggregatePart1_0070
  simp only [oppositeAggregatePartValid1_0070, oppositeHistoryChunk0070] at h1
  have h2 := oppositeAggregatePart2_0070
  simp only [oppositeAggregatePartValid2_0070, oppositeHistoryChunk0070] at h2
  have h3 := oppositeAggregatePart3_0070
  simp only [oppositeAggregatePartValid3_0070, oppositeHistoryChunk0070] at h3
  have h4 := oppositeAggregatePart4_0070
  simp only [oppositeAggregatePartValid4_0070, oppositeHistoryChunk0070] at h4
  have h5 := oppositeAggregatePart5_0070
  simp only [oppositeAggregatePartValid5_0070, oppositeHistoryChunk0070] at h5
  have h6 := oppositeAggregatePart6_0070
  simp only [oppositeAggregatePartValid6_0070, oppositeHistoryChunk0070] at h6
  have h7 := oppositeAggregatePart7_0070
  simp only [oppositeAggregatePartValid7_0070, oppositeHistoryChunk0070] at h7
  unfold oppositeHistoryChunk0070
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 72704
  | _ => True

theorem oppositeAggregatePart0_0071 :
    oppositeAggregatePartValid0_0071 oppositeHistoryChunk0071 := by
  unfold oppositeAggregatePartValid0_0071 oppositeHistoryChunk0071
  decide

def oppositeAggregatePartValid1_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 72832
  | _ => True

theorem oppositeAggregatePart1_0071 :
    oppositeAggregatePartValid1_0071 oppositeHistoryChunk0071 := by
  unfold oppositeAggregatePartValid1_0071 oppositeHistoryChunk0071
  decide

def oppositeAggregatePartValid2_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 72960
  | _ => True

theorem oppositeAggregatePart2_0071 :
    oppositeAggregatePartValid2_0071 oppositeHistoryChunk0071 := by
  unfold oppositeAggregatePartValid2_0071 oppositeHistoryChunk0071
  decide

def oppositeAggregatePartValid3_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 73088
  | _ => True

theorem oppositeAggregatePart3_0071 :
    oppositeAggregatePartValid3_0071 oppositeHistoryChunk0071 := by
  unfold oppositeAggregatePartValid3_0071 oppositeHistoryChunk0071
  decide

def oppositeAggregatePartValid4_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 73216
  | _ => True

theorem oppositeAggregatePart4_0071 :
    oppositeAggregatePartValid4_0071 oppositeHistoryChunk0071 := by
  unfold oppositeAggregatePartValid4_0071 oppositeHistoryChunk0071
  decide

def oppositeAggregatePartValid5_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 73344
  | _ => True

theorem oppositeAggregatePart5_0071 :
    oppositeAggregatePartValid5_0071 oppositeHistoryChunk0071 := by
  unfold oppositeAggregatePartValid5_0071 oppositeHistoryChunk0071
  decide

def oppositeAggregatePartValid6_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 73472
  | _ => True

theorem oppositeAggregatePart6_0071 :
    oppositeAggregatePartValid6_0071 oppositeHistoryChunk0071 := by
  unfold oppositeAggregatePartValid6_0071 oppositeHistoryChunk0071
  decide

def oppositeAggregatePartValid7_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 73600
  | _ => True

theorem oppositeAggregatePart7_0071 :
    oppositeAggregatePartValid7_0071 oppositeHistoryChunk0071 := by
  unfold oppositeAggregatePartValid7_0071 oppositeHistoryChunk0071
  decide

theorem oppositeRange_0071 :
    oppositeHistoryChunk0071.ResidueIndexedValid anchorHistories 5000000 18 25 72704 := by
  have h0 := oppositeAggregatePart0_0071
  simp only [oppositeAggregatePartValid0_0071, oppositeHistoryChunk0071] at h0
  have h1 := oppositeAggregatePart1_0071
  simp only [oppositeAggregatePartValid1_0071, oppositeHistoryChunk0071] at h1
  have h2 := oppositeAggregatePart2_0071
  simp only [oppositeAggregatePartValid2_0071, oppositeHistoryChunk0071] at h2
  have h3 := oppositeAggregatePart3_0071
  simp only [oppositeAggregatePartValid3_0071, oppositeHistoryChunk0071] at h3
  have h4 := oppositeAggregatePart4_0071
  simp only [oppositeAggregatePartValid4_0071, oppositeHistoryChunk0071] at h4
  have h5 := oppositeAggregatePart5_0071
  simp only [oppositeAggregatePartValid5_0071, oppositeHistoryChunk0071] at h5
  have h6 := oppositeAggregatePart6_0071
  simp only [oppositeAggregatePartValid6_0071, oppositeHistoryChunk0071] at h6
  have h7 := oppositeAggregatePart7_0071
  simp only [oppositeAggregatePartValid7_0071, oppositeHistoryChunk0071] at h7
  unfold oppositeHistoryChunk0071
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
