import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0132
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0133
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0134
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0135

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0132, 0133, 0134, 0135 -/

def oppositeAggregatePartValid0_0132 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 135168
  | _ => True

theorem oppositeAggregatePart0_0132 :
    oppositeAggregatePartValid0_0132 oppositeHistoryChunk0132 := by
  unfold oppositeAggregatePartValid0_0132 oppositeHistoryChunk0132
  decide

def oppositeAggregatePartValid1_0132 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 135296
  | _ => True

theorem oppositeAggregatePart1_0132 :
    oppositeAggregatePartValid1_0132 oppositeHistoryChunk0132 := by
  unfold oppositeAggregatePartValid1_0132 oppositeHistoryChunk0132
  decide

def oppositeAggregatePartValid2_0132 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 135424
  | _ => True

theorem oppositeAggregatePart2_0132 :
    oppositeAggregatePartValid2_0132 oppositeHistoryChunk0132 := by
  unfold oppositeAggregatePartValid2_0132 oppositeHistoryChunk0132
  decide

def oppositeAggregatePartValid3_0132 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 135552
  | _ => True

theorem oppositeAggregatePart3_0132 :
    oppositeAggregatePartValid3_0132 oppositeHistoryChunk0132 := by
  unfold oppositeAggregatePartValid3_0132 oppositeHistoryChunk0132
  decide

def oppositeAggregatePartValid4_0132 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 135680
  | _ => True

theorem oppositeAggregatePart4_0132 :
    oppositeAggregatePartValid4_0132 oppositeHistoryChunk0132 := by
  unfold oppositeAggregatePartValid4_0132 oppositeHistoryChunk0132
  decide

def oppositeAggregatePartValid5_0132 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 135808
  | _ => True

theorem oppositeAggregatePart5_0132 :
    oppositeAggregatePartValid5_0132 oppositeHistoryChunk0132 := by
  unfold oppositeAggregatePartValid5_0132 oppositeHistoryChunk0132
  decide

def oppositeAggregatePartValid6_0132 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 135936
  | _ => True

theorem oppositeAggregatePart6_0132 :
    oppositeAggregatePartValid6_0132 oppositeHistoryChunk0132 := by
  unfold oppositeAggregatePartValid6_0132 oppositeHistoryChunk0132
  decide

def oppositeAggregatePartValid7_0132 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 136064
  | _ => True

theorem oppositeAggregatePart7_0132 :
    oppositeAggregatePartValid7_0132 oppositeHistoryChunk0132 := by
  unfold oppositeAggregatePartValid7_0132 oppositeHistoryChunk0132
  decide

theorem oppositeRange_0132 :
    oppositeHistoryChunk0132.ResidueIndexedValid anchorHistories 5000000 18 25 135168 := by
  have h0 := oppositeAggregatePart0_0132
  simp only [oppositeAggregatePartValid0_0132, oppositeHistoryChunk0132] at h0
  have h1 := oppositeAggregatePart1_0132
  simp only [oppositeAggregatePartValid1_0132, oppositeHistoryChunk0132] at h1
  have h2 := oppositeAggregatePart2_0132
  simp only [oppositeAggregatePartValid2_0132, oppositeHistoryChunk0132] at h2
  have h3 := oppositeAggregatePart3_0132
  simp only [oppositeAggregatePartValid3_0132, oppositeHistoryChunk0132] at h3
  have h4 := oppositeAggregatePart4_0132
  simp only [oppositeAggregatePartValid4_0132, oppositeHistoryChunk0132] at h4
  have h5 := oppositeAggregatePart5_0132
  simp only [oppositeAggregatePartValid5_0132, oppositeHistoryChunk0132] at h5
  have h6 := oppositeAggregatePart6_0132
  simp only [oppositeAggregatePartValid6_0132, oppositeHistoryChunk0132] at h6
  have h7 := oppositeAggregatePart7_0132
  simp only [oppositeAggregatePartValid7_0132, oppositeHistoryChunk0132] at h7
  unfold oppositeHistoryChunk0132
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0133 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 136192
  | _ => True

theorem oppositeAggregatePart0_0133 :
    oppositeAggregatePartValid0_0133 oppositeHistoryChunk0133 := by
  unfold oppositeAggregatePartValid0_0133 oppositeHistoryChunk0133
  decide

def oppositeAggregatePartValid1_0133 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 136320
  | _ => True

theorem oppositeAggregatePart1_0133 :
    oppositeAggregatePartValid1_0133 oppositeHistoryChunk0133 := by
  unfold oppositeAggregatePartValid1_0133 oppositeHistoryChunk0133
  decide

def oppositeAggregatePartValid2_0133 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 136448
  | _ => True

theorem oppositeAggregatePart2_0133 :
    oppositeAggregatePartValid2_0133 oppositeHistoryChunk0133 := by
  unfold oppositeAggregatePartValid2_0133 oppositeHistoryChunk0133
  decide

def oppositeAggregatePartValid3_0133 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 136576
  | _ => True

theorem oppositeAggregatePart3_0133 :
    oppositeAggregatePartValid3_0133 oppositeHistoryChunk0133 := by
  unfold oppositeAggregatePartValid3_0133 oppositeHistoryChunk0133
  decide

def oppositeAggregatePartValid4_0133 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 136704
  | _ => True

theorem oppositeAggregatePart4_0133 :
    oppositeAggregatePartValid4_0133 oppositeHistoryChunk0133 := by
  unfold oppositeAggregatePartValid4_0133 oppositeHistoryChunk0133
  decide

def oppositeAggregatePartValid5_0133 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 136832
  | _ => True

theorem oppositeAggregatePart5_0133 :
    oppositeAggregatePartValid5_0133 oppositeHistoryChunk0133 := by
  unfold oppositeAggregatePartValid5_0133 oppositeHistoryChunk0133
  decide

def oppositeAggregatePartValid6_0133 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 136960
  | _ => True

theorem oppositeAggregatePart6_0133 :
    oppositeAggregatePartValid6_0133 oppositeHistoryChunk0133 := by
  unfold oppositeAggregatePartValid6_0133 oppositeHistoryChunk0133
  decide

def oppositeAggregatePartValid7_0133 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 137088
  | _ => True

theorem oppositeAggregatePart7_0133 :
    oppositeAggregatePartValid7_0133 oppositeHistoryChunk0133 := by
  unfold oppositeAggregatePartValid7_0133 oppositeHistoryChunk0133
  decide

theorem oppositeRange_0133 :
    oppositeHistoryChunk0133.ResidueIndexedValid anchorHistories 5000000 18 25 136192 := by
  have h0 := oppositeAggregatePart0_0133
  simp only [oppositeAggregatePartValid0_0133, oppositeHistoryChunk0133] at h0
  have h1 := oppositeAggregatePart1_0133
  simp only [oppositeAggregatePartValid1_0133, oppositeHistoryChunk0133] at h1
  have h2 := oppositeAggregatePart2_0133
  simp only [oppositeAggregatePartValid2_0133, oppositeHistoryChunk0133] at h2
  have h3 := oppositeAggregatePart3_0133
  simp only [oppositeAggregatePartValid3_0133, oppositeHistoryChunk0133] at h3
  have h4 := oppositeAggregatePart4_0133
  simp only [oppositeAggregatePartValid4_0133, oppositeHistoryChunk0133] at h4
  have h5 := oppositeAggregatePart5_0133
  simp only [oppositeAggregatePartValid5_0133, oppositeHistoryChunk0133] at h5
  have h6 := oppositeAggregatePart6_0133
  simp only [oppositeAggregatePartValid6_0133, oppositeHistoryChunk0133] at h6
  have h7 := oppositeAggregatePart7_0133
  simp only [oppositeAggregatePartValid7_0133, oppositeHistoryChunk0133] at h7
  unfold oppositeHistoryChunk0133
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0134 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 137216
  | _ => True

theorem oppositeAggregatePart0_0134 :
    oppositeAggregatePartValid0_0134 oppositeHistoryChunk0134 := by
  unfold oppositeAggregatePartValid0_0134 oppositeHistoryChunk0134
  decide

def oppositeAggregatePartValid1_0134 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 137344
  | _ => True

theorem oppositeAggregatePart1_0134 :
    oppositeAggregatePartValid1_0134 oppositeHistoryChunk0134 := by
  unfold oppositeAggregatePartValid1_0134 oppositeHistoryChunk0134
  decide

def oppositeAggregatePartValid2_0134 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 137472
  | _ => True

theorem oppositeAggregatePart2_0134 :
    oppositeAggregatePartValid2_0134 oppositeHistoryChunk0134 := by
  unfold oppositeAggregatePartValid2_0134 oppositeHistoryChunk0134
  decide

def oppositeAggregatePartValid3_0134 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 137600
  | _ => True

theorem oppositeAggregatePart3_0134 :
    oppositeAggregatePartValid3_0134 oppositeHistoryChunk0134 := by
  unfold oppositeAggregatePartValid3_0134 oppositeHistoryChunk0134
  decide

def oppositeAggregatePartValid4_0134 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 137728
  | _ => True

theorem oppositeAggregatePart4_0134 :
    oppositeAggregatePartValid4_0134 oppositeHistoryChunk0134 := by
  unfold oppositeAggregatePartValid4_0134 oppositeHistoryChunk0134
  decide

def oppositeAggregatePartValid5_0134 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 137856
  | _ => True

theorem oppositeAggregatePart5_0134 :
    oppositeAggregatePartValid5_0134 oppositeHistoryChunk0134 := by
  unfold oppositeAggregatePartValid5_0134 oppositeHistoryChunk0134
  decide

def oppositeAggregatePartValid6_0134 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 137984
  | _ => True

theorem oppositeAggregatePart6_0134 :
    oppositeAggregatePartValid6_0134 oppositeHistoryChunk0134 := by
  unfold oppositeAggregatePartValid6_0134 oppositeHistoryChunk0134
  decide

def oppositeAggregatePartValid7_0134 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 138112
  | _ => True

theorem oppositeAggregatePart7_0134 :
    oppositeAggregatePartValid7_0134 oppositeHistoryChunk0134 := by
  unfold oppositeAggregatePartValid7_0134 oppositeHistoryChunk0134
  decide

theorem oppositeRange_0134 :
    oppositeHistoryChunk0134.ResidueIndexedValid anchorHistories 5000000 18 25 137216 := by
  have h0 := oppositeAggregatePart0_0134
  simp only [oppositeAggregatePartValid0_0134, oppositeHistoryChunk0134] at h0
  have h1 := oppositeAggregatePart1_0134
  simp only [oppositeAggregatePartValid1_0134, oppositeHistoryChunk0134] at h1
  have h2 := oppositeAggregatePart2_0134
  simp only [oppositeAggregatePartValid2_0134, oppositeHistoryChunk0134] at h2
  have h3 := oppositeAggregatePart3_0134
  simp only [oppositeAggregatePartValid3_0134, oppositeHistoryChunk0134] at h3
  have h4 := oppositeAggregatePart4_0134
  simp only [oppositeAggregatePartValid4_0134, oppositeHistoryChunk0134] at h4
  have h5 := oppositeAggregatePart5_0134
  simp only [oppositeAggregatePartValid5_0134, oppositeHistoryChunk0134] at h5
  have h6 := oppositeAggregatePart6_0134
  simp only [oppositeAggregatePartValid6_0134, oppositeHistoryChunk0134] at h6
  have h7 := oppositeAggregatePart7_0134
  simp only [oppositeAggregatePartValid7_0134, oppositeHistoryChunk0134] at h7
  unfold oppositeHistoryChunk0134
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0135 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 138240
  | _ => True

theorem oppositeAggregatePart0_0135 :
    oppositeAggregatePartValid0_0135 oppositeHistoryChunk0135 := by
  unfold oppositeAggregatePartValid0_0135 oppositeHistoryChunk0135
  decide

def oppositeAggregatePartValid1_0135 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 138368
  | _ => True

theorem oppositeAggregatePart1_0135 :
    oppositeAggregatePartValid1_0135 oppositeHistoryChunk0135 := by
  unfold oppositeAggregatePartValid1_0135 oppositeHistoryChunk0135
  decide

def oppositeAggregatePartValid2_0135 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 138496
  | _ => True

theorem oppositeAggregatePart2_0135 :
    oppositeAggregatePartValid2_0135 oppositeHistoryChunk0135 := by
  unfold oppositeAggregatePartValid2_0135 oppositeHistoryChunk0135
  decide

def oppositeAggregatePartValid3_0135 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 138624
  | _ => True

theorem oppositeAggregatePart3_0135 :
    oppositeAggregatePartValid3_0135 oppositeHistoryChunk0135 := by
  unfold oppositeAggregatePartValid3_0135 oppositeHistoryChunk0135
  decide

def oppositeAggregatePartValid4_0135 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 138752
  | _ => True

theorem oppositeAggregatePart4_0135 :
    oppositeAggregatePartValid4_0135 oppositeHistoryChunk0135 := by
  unfold oppositeAggregatePartValid4_0135 oppositeHistoryChunk0135
  decide

def oppositeAggregatePartValid5_0135 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 138880
  | _ => True

theorem oppositeAggregatePart5_0135 :
    oppositeAggregatePartValid5_0135 oppositeHistoryChunk0135 := by
  unfold oppositeAggregatePartValid5_0135 oppositeHistoryChunk0135
  decide

def oppositeAggregatePartValid6_0135 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 139008
  | _ => True

theorem oppositeAggregatePart6_0135 :
    oppositeAggregatePartValid6_0135 oppositeHistoryChunk0135 := by
  unfold oppositeAggregatePartValid6_0135 oppositeHistoryChunk0135
  decide

def oppositeAggregatePartValid7_0135 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 139136
  | _ => True

theorem oppositeAggregatePart7_0135 :
    oppositeAggregatePartValid7_0135 oppositeHistoryChunk0135 := by
  unfold oppositeAggregatePartValid7_0135 oppositeHistoryChunk0135
  decide

theorem oppositeRange_0135 :
    oppositeHistoryChunk0135.ResidueIndexedValid anchorHistories 5000000 18 25 138240 := by
  have h0 := oppositeAggregatePart0_0135
  simp only [oppositeAggregatePartValid0_0135, oppositeHistoryChunk0135] at h0
  have h1 := oppositeAggregatePart1_0135
  simp only [oppositeAggregatePartValid1_0135, oppositeHistoryChunk0135] at h1
  have h2 := oppositeAggregatePart2_0135
  simp only [oppositeAggregatePartValid2_0135, oppositeHistoryChunk0135] at h2
  have h3 := oppositeAggregatePart3_0135
  simp only [oppositeAggregatePartValid3_0135, oppositeHistoryChunk0135] at h3
  have h4 := oppositeAggregatePart4_0135
  simp only [oppositeAggregatePartValid4_0135, oppositeHistoryChunk0135] at h4
  have h5 := oppositeAggregatePart5_0135
  simp only [oppositeAggregatePartValid5_0135, oppositeHistoryChunk0135] at h5
  have h6 := oppositeAggregatePart6_0135
  simp only [oppositeAggregatePartValid6_0135, oppositeHistoryChunk0135] at h6
  have h7 := oppositeAggregatePart7_0135
  simp only [oppositeAggregatePartValid7_0135, oppositeHistoryChunk0135] at h7
  unfold oppositeHistoryChunk0135
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
