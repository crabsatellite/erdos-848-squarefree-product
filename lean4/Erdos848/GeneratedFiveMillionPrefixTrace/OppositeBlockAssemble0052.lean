import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0052
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0053
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0054
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0055

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0052, 0053, 0054, 0055 -/

def oppositeAggregatePartValid0_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 53248
  | _ => True

theorem oppositeAggregatePart0_0052 :
    oppositeAggregatePartValid0_0052 oppositeHistoryChunk0052 := by
  unfold oppositeAggregatePartValid0_0052 oppositeHistoryChunk0052
  decide

def oppositeAggregatePartValid1_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 53376
  | _ => True

theorem oppositeAggregatePart1_0052 :
    oppositeAggregatePartValid1_0052 oppositeHistoryChunk0052 := by
  unfold oppositeAggregatePartValid1_0052 oppositeHistoryChunk0052
  decide

def oppositeAggregatePartValid2_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 53504
  | _ => True

theorem oppositeAggregatePart2_0052 :
    oppositeAggregatePartValid2_0052 oppositeHistoryChunk0052 := by
  unfold oppositeAggregatePartValid2_0052 oppositeHistoryChunk0052
  decide

def oppositeAggregatePartValid3_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 53632
  | _ => True

theorem oppositeAggregatePart3_0052 :
    oppositeAggregatePartValid3_0052 oppositeHistoryChunk0052 := by
  unfold oppositeAggregatePartValid3_0052 oppositeHistoryChunk0052
  decide

def oppositeAggregatePartValid4_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 53760
  | _ => True

theorem oppositeAggregatePart4_0052 :
    oppositeAggregatePartValid4_0052 oppositeHistoryChunk0052 := by
  unfold oppositeAggregatePartValid4_0052 oppositeHistoryChunk0052
  decide

def oppositeAggregatePartValid5_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 53888
  | _ => True

theorem oppositeAggregatePart5_0052 :
    oppositeAggregatePartValid5_0052 oppositeHistoryChunk0052 := by
  unfold oppositeAggregatePartValid5_0052 oppositeHistoryChunk0052
  decide

def oppositeAggregatePartValid6_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 54016
  | _ => True

theorem oppositeAggregatePart6_0052 :
    oppositeAggregatePartValid6_0052 oppositeHistoryChunk0052 := by
  unfold oppositeAggregatePartValid6_0052 oppositeHistoryChunk0052
  decide

def oppositeAggregatePartValid7_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 54144
  | _ => True

theorem oppositeAggregatePart7_0052 :
    oppositeAggregatePartValid7_0052 oppositeHistoryChunk0052 := by
  unfold oppositeAggregatePartValid7_0052 oppositeHistoryChunk0052
  decide

theorem oppositeRange_0052 :
    oppositeHistoryChunk0052.ResidueIndexedValid anchorHistories 5000000 18 25 53248 := by
  have h0 := oppositeAggregatePart0_0052
  simp only [oppositeAggregatePartValid0_0052, oppositeHistoryChunk0052] at h0
  have h1 := oppositeAggregatePart1_0052
  simp only [oppositeAggregatePartValid1_0052, oppositeHistoryChunk0052] at h1
  have h2 := oppositeAggregatePart2_0052
  simp only [oppositeAggregatePartValid2_0052, oppositeHistoryChunk0052] at h2
  have h3 := oppositeAggregatePart3_0052
  simp only [oppositeAggregatePartValid3_0052, oppositeHistoryChunk0052] at h3
  have h4 := oppositeAggregatePart4_0052
  simp only [oppositeAggregatePartValid4_0052, oppositeHistoryChunk0052] at h4
  have h5 := oppositeAggregatePart5_0052
  simp only [oppositeAggregatePartValid5_0052, oppositeHistoryChunk0052] at h5
  have h6 := oppositeAggregatePart6_0052
  simp only [oppositeAggregatePartValid6_0052, oppositeHistoryChunk0052] at h6
  have h7 := oppositeAggregatePart7_0052
  simp only [oppositeAggregatePartValid7_0052, oppositeHistoryChunk0052] at h7
  unfold oppositeHistoryChunk0052
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 54272
  | _ => True

theorem oppositeAggregatePart0_0053 :
    oppositeAggregatePartValid0_0053 oppositeHistoryChunk0053 := by
  unfold oppositeAggregatePartValid0_0053 oppositeHistoryChunk0053
  decide

def oppositeAggregatePartValid1_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 54400
  | _ => True

theorem oppositeAggregatePart1_0053 :
    oppositeAggregatePartValid1_0053 oppositeHistoryChunk0053 := by
  unfold oppositeAggregatePartValid1_0053 oppositeHistoryChunk0053
  decide

def oppositeAggregatePartValid2_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 54528
  | _ => True

theorem oppositeAggregatePart2_0053 :
    oppositeAggregatePartValid2_0053 oppositeHistoryChunk0053 := by
  unfold oppositeAggregatePartValid2_0053 oppositeHistoryChunk0053
  decide

def oppositeAggregatePartValid3_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 54656
  | _ => True

theorem oppositeAggregatePart3_0053 :
    oppositeAggregatePartValid3_0053 oppositeHistoryChunk0053 := by
  unfold oppositeAggregatePartValid3_0053 oppositeHistoryChunk0053
  decide

def oppositeAggregatePartValid4_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 54784
  | _ => True

theorem oppositeAggregatePart4_0053 :
    oppositeAggregatePartValid4_0053 oppositeHistoryChunk0053 := by
  unfold oppositeAggregatePartValid4_0053 oppositeHistoryChunk0053
  decide

def oppositeAggregatePartValid5_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 54912
  | _ => True

theorem oppositeAggregatePart5_0053 :
    oppositeAggregatePartValid5_0053 oppositeHistoryChunk0053 := by
  unfold oppositeAggregatePartValid5_0053 oppositeHistoryChunk0053
  decide

def oppositeAggregatePartValid6_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 55040
  | _ => True

theorem oppositeAggregatePart6_0053 :
    oppositeAggregatePartValid6_0053 oppositeHistoryChunk0053 := by
  unfold oppositeAggregatePartValid6_0053 oppositeHistoryChunk0053
  decide

def oppositeAggregatePartValid7_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 55168
  | _ => True

theorem oppositeAggregatePart7_0053 :
    oppositeAggregatePartValid7_0053 oppositeHistoryChunk0053 := by
  unfold oppositeAggregatePartValid7_0053 oppositeHistoryChunk0053
  decide

theorem oppositeRange_0053 :
    oppositeHistoryChunk0053.ResidueIndexedValid anchorHistories 5000000 18 25 54272 := by
  have h0 := oppositeAggregatePart0_0053
  simp only [oppositeAggregatePartValid0_0053, oppositeHistoryChunk0053] at h0
  have h1 := oppositeAggregatePart1_0053
  simp only [oppositeAggregatePartValid1_0053, oppositeHistoryChunk0053] at h1
  have h2 := oppositeAggregatePart2_0053
  simp only [oppositeAggregatePartValid2_0053, oppositeHistoryChunk0053] at h2
  have h3 := oppositeAggregatePart3_0053
  simp only [oppositeAggregatePartValid3_0053, oppositeHistoryChunk0053] at h3
  have h4 := oppositeAggregatePart4_0053
  simp only [oppositeAggregatePartValid4_0053, oppositeHistoryChunk0053] at h4
  have h5 := oppositeAggregatePart5_0053
  simp only [oppositeAggregatePartValid5_0053, oppositeHistoryChunk0053] at h5
  have h6 := oppositeAggregatePart6_0053
  simp only [oppositeAggregatePartValid6_0053, oppositeHistoryChunk0053] at h6
  have h7 := oppositeAggregatePart7_0053
  simp only [oppositeAggregatePartValid7_0053, oppositeHistoryChunk0053] at h7
  unfold oppositeHistoryChunk0053
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 55296
  | _ => True

theorem oppositeAggregatePart0_0054 :
    oppositeAggregatePartValid0_0054 oppositeHistoryChunk0054 := by
  unfold oppositeAggregatePartValid0_0054 oppositeHistoryChunk0054
  decide

def oppositeAggregatePartValid1_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 55424
  | _ => True

theorem oppositeAggregatePart1_0054 :
    oppositeAggregatePartValid1_0054 oppositeHistoryChunk0054 := by
  unfold oppositeAggregatePartValid1_0054 oppositeHistoryChunk0054
  decide

def oppositeAggregatePartValid2_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 55552
  | _ => True

theorem oppositeAggregatePart2_0054 :
    oppositeAggregatePartValid2_0054 oppositeHistoryChunk0054 := by
  unfold oppositeAggregatePartValid2_0054 oppositeHistoryChunk0054
  decide

def oppositeAggregatePartValid3_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 55680
  | _ => True

theorem oppositeAggregatePart3_0054 :
    oppositeAggregatePartValid3_0054 oppositeHistoryChunk0054 := by
  unfold oppositeAggregatePartValid3_0054 oppositeHistoryChunk0054
  decide

def oppositeAggregatePartValid4_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 55808
  | _ => True

theorem oppositeAggregatePart4_0054 :
    oppositeAggregatePartValid4_0054 oppositeHistoryChunk0054 := by
  unfold oppositeAggregatePartValid4_0054 oppositeHistoryChunk0054
  decide

def oppositeAggregatePartValid5_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 55936
  | _ => True

theorem oppositeAggregatePart5_0054 :
    oppositeAggregatePartValid5_0054 oppositeHistoryChunk0054 := by
  unfold oppositeAggregatePartValid5_0054 oppositeHistoryChunk0054
  decide

def oppositeAggregatePartValid6_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 56064
  | _ => True

theorem oppositeAggregatePart6_0054 :
    oppositeAggregatePartValid6_0054 oppositeHistoryChunk0054 := by
  unfold oppositeAggregatePartValid6_0054 oppositeHistoryChunk0054
  decide

def oppositeAggregatePartValid7_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 56192
  | _ => True

theorem oppositeAggregatePart7_0054 :
    oppositeAggregatePartValid7_0054 oppositeHistoryChunk0054 := by
  unfold oppositeAggregatePartValid7_0054 oppositeHistoryChunk0054
  decide

theorem oppositeRange_0054 :
    oppositeHistoryChunk0054.ResidueIndexedValid anchorHistories 5000000 18 25 55296 := by
  have h0 := oppositeAggregatePart0_0054
  simp only [oppositeAggregatePartValid0_0054, oppositeHistoryChunk0054] at h0
  have h1 := oppositeAggregatePart1_0054
  simp only [oppositeAggregatePartValid1_0054, oppositeHistoryChunk0054] at h1
  have h2 := oppositeAggregatePart2_0054
  simp only [oppositeAggregatePartValid2_0054, oppositeHistoryChunk0054] at h2
  have h3 := oppositeAggregatePart3_0054
  simp only [oppositeAggregatePartValid3_0054, oppositeHistoryChunk0054] at h3
  have h4 := oppositeAggregatePart4_0054
  simp only [oppositeAggregatePartValid4_0054, oppositeHistoryChunk0054] at h4
  have h5 := oppositeAggregatePart5_0054
  simp only [oppositeAggregatePartValid5_0054, oppositeHistoryChunk0054] at h5
  have h6 := oppositeAggregatePart6_0054
  simp only [oppositeAggregatePartValid6_0054, oppositeHistoryChunk0054] at h6
  have h7 := oppositeAggregatePart7_0054
  simp only [oppositeAggregatePartValid7_0054, oppositeHistoryChunk0054] at h7
  unfold oppositeHistoryChunk0054
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 56320
  | _ => True

theorem oppositeAggregatePart0_0055 :
    oppositeAggregatePartValid0_0055 oppositeHistoryChunk0055 := by
  unfold oppositeAggregatePartValid0_0055 oppositeHistoryChunk0055
  decide

def oppositeAggregatePartValid1_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 56448
  | _ => True

theorem oppositeAggregatePart1_0055 :
    oppositeAggregatePartValid1_0055 oppositeHistoryChunk0055 := by
  unfold oppositeAggregatePartValid1_0055 oppositeHistoryChunk0055
  decide

def oppositeAggregatePartValid2_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 56576
  | _ => True

theorem oppositeAggregatePart2_0055 :
    oppositeAggregatePartValid2_0055 oppositeHistoryChunk0055 := by
  unfold oppositeAggregatePartValid2_0055 oppositeHistoryChunk0055
  decide

def oppositeAggregatePartValid3_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 56704
  | _ => True

theorem oppositeAggregatePart3_0055 :
    oppositeAggregatePartValid3_0055 oppositeHistoryChunk0055 := by
  unfold oppositeAggregatePartValid3_0055 oppositeHistoryChunk0055
  decide

def oppositeAggregatePartValid4_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 56832
  | _ => True

theorem oppositeAggregatePart4_0055 :
    oppositeAggregatePartValid4_0055 oppositeHistoryChunk0055 := by
  unfold oppositeAggregatePartValid4_0055 oppositeHistoryChunk0055
  decide

def oppositeAggregatePartValid5_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 56960
  | _ => True

theorem oppositeAggregatePart5_0055 :
    oppositeAggregatePartValid5_0055 oppositeHistoryChunk0055 := by
  unfold oppositeAggregatePartValid5_0055 oppositeHistoryChunk0055
  decide

def oppositeAggregatePartValid6_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 57088
  | _ => True

theorem oppositeAggregatePart6_0055 :
    oppositeAggregatePartValid6_0055 oppositeHistoryChunk0055 := by
  unfold oppositeAggregatePartValid6_0055 oppositeHistoryChunk0055
  decide

def oppositeAggregatePartValid7_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 57216
  | _ => True

theorem oppositeAggregatePart7_0055 :
    oppositeAggregatePartValid7_0055 oppositeHistoryChunk0055 := by
  unfold oppositeAggregatePartValid7_0055 oppositeHistoryChunk0055
  decide

theorem oppositeRange_0055 :
    oppositeHistoryChunk0055.ResidueIndexedValid anchorHistories 5000000 18 25 56320 := by
  have h0 := oppositeAggregatePart0_0055
  simp only [oppositeAggregatePartValid0_0055, oppositeHistoryChunk0055] at h0
  have h1 := oppositeAggregatePart1_0055
  simp only [oppositeAggregatePartValid1_0055, oppositeHistoryChunk0055] at h1
  have h2 := oppositeAggregatePart2_0055
  simp only [oppositeAggregatePartValid2_0055, oppositeHistoryChunk0055] at h2
  have h3 := oppositeAggregatePart3_0055
  simp only [oppositeAggregatePartValid3_0055, oppositeHistoryChunk0055] at h3
  have h4 := oppositeAggregatePart4_0055
  simp only [oppositeAggregatePartValid4_0055, oppositeHistoryChunk0055] at h4
  have h5 := oppositeAggregatePart5_0055
  simp only [oppositeAggregatePartValid5_0055, oppositeHistoryChunk0055] at h5
  have h6 := oppositeAggregatePart6_0055
  simp only [oppositeAggregatePartValid6_0055, oppositeHistoryChunk0055] at h6
  have h7 := oppositeAggregatePart7_0055
  simp only [oppositeAggregatePartValid7_0055, oppositeHistoryChunk0055] at h7
  unfold oppositeHistoryChunk0055
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
