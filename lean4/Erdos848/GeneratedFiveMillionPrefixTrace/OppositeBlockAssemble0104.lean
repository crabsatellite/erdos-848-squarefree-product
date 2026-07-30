import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0104
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0105
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0106
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0107

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0104, 0105, 0106, 0107 -/

def oppositeAggregatePartValid0_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 106496
  | _ => True

theorem oppositeAggregatePart0_0104 :
    oppositeAggregatePartValid0_0104 oppositeHistoryChunk0104 := by
  unfold oppositeAggregatePartValid0_0104 oppositeHistoryChunk0104
  decide

def oppositeAggregatePartValid1_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 106624
  | _ => True

theorem oppositeAggregatePart1_0104 :
    oppositeAggregatePartValid1_0104 oppositeHistoryChunk0104 := by
  unfold oppositeAggregatePartValid1_0104 oppositeHistoryChunk0104
  decide

def oppositeAggregatePartValid2_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 106752
  | _ => True

theorem oppositeAggregatePart2_0104 :
    oppositeAggregatePartValid2_0104 oppositeHistoryChunk0104 := by
  unfold oppositeAggregatePartValid2_0104 oppositeHistoryChunk0104
  decide

def oppositeAggregatePartValid3_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 106880
  | _ => True

theorem oppositeAggregatePart3_0104 :
    oppositeAggregatePartValid3_0104 oppositeHistoryChunk0104 := by
  unfold oppositeAggregatePartValid3_0104 oppositeHistoryChunk0104
  decide

def oppositeAggregatePartValid4_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 107008
  | _ => True

theorem oppositeAggregatePart4_0104 :
    oppositeAggregatePartValid4_0104 oppositeHistoryChunk0104 := by
  unfold oppositeAggregatePartValid4_0104 oppositeHistoryChunk0104
  decide

def oppositeAggregatePartValid5_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 107136
  | _ => True

theorem oppositeAggregatePart5_0104 :
    oppositeAggregatePartValid5_0104 oppositeHistoryChunk0104 := by
  unfold oppositeAggregatePartValid5_0104 oppositeHistoryChunk0104
  decide

def oppositeAggregatePartValid6_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 107264
  | _ => True

theorem oppositeAggregatePart6_0104 :
    oppositeAggregatePartValid6_0104 oppositeHistoryChunk0104 := by
  unfold oppositeAggregatePartValid6_0104 oppositeHistoryChunk0104
  decide

def oppositeAggregatePartValid7_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 107392
  | _ => True

theorem oppositeAggregatePart7_0104 :
    oppositeAggregatePartValid7_0104 oppositeHistoryChunk0104 := by
  unfold oppositeAggregatePartValid7_0104 oppositeHistoryChunk0104
  decide

theorem oppositeRange_0104 :
    oppositeHistoryChunk0104.ResidueIndexedValid anchorHistories 5000000 18 25 106496 := by
  have h0 := oppositeAggregatePart0_0104
  simp only [oppositeAggregatePartValid0_0104, oppositeHistoryChunk0104] at h0
  have h1 := oppositeAggregatePart1_0104
  simp only [oppositeAggregatePartValid1_0104, oppositeHistoryChunk0104] at h1
  have h2 := oppositeAggregatePart2_0104
  simp only [oppositeAggregatePartValid2_0104, oppositeHistoryChunk0104] at h2
  have h3 := oppositeAggregatePart3_0104
  simp only [oppositeAggregatePartValid3_0104, oppositeHistoryChunk0104] at h3
  have h4 := oppositeAggregatePart4_0104
  simp only [oppositeAggregatePartValid4_0104, oppositeHistoryChunk0104] at h4
  have h5 := oppositeAggregatePart5_0104
  simp only [oppositeAggregatePartValid5_0104, oppositeHistoryChunk0104] at h5
  have h6 := oppositeAggregatePart6_0104
  simp only [oppositeAggregatePartValid6_0104, oppositeHistoryChunk0104] at h6
  have h7 := oppositeAggregatePart7_0104
  simp only [oppositeAggregatePartValid7_0104, oppositeHistoryChunk0104] at h7
  unfold oppositeHistoryChunk0104
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 107520
  | _ => True

theorem oppositeAggregatePart0_0105 :
    oppositeAggregatePartValid0_0105 oppositeHistoryChunk0105 := by
  unfold oppositeAggregatePartValid0_0105 oppositeHistoryChunk0105
  decide

def oppositeAggregatePartValid1_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 107648
  | _ => True

theorem oppositeAggregatePart1_0105 :
    oppositeAggregatePartValid1_0105 oppositeHistoryChunk0105 := by
  unfold oppositeAggregatePartValid1_0105 oppositeHistoryChunk0105
  decide

def oppositeAggregatePartValid2_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 107776
  | _ => True

theorem oppositeAggregatePart2_0105 :
    oppositeAggregatePartValid2_0105 oppositeHistoryChunk0105 := by
  unfold oppositeAggregatePartValid2_0105 oppositeHistoryChunk0105
  decide

def oppositeAggregatePartValid3_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 107904
  | _ => True

theorem oppositeAggregatePart3_0105 :
    oppositeAggregatePartValid3_0105 oppositeHistoryChunk0105 := by
  unfold oppositeAggregatePartValid3_0105 oppositeHistoryChunk0105
  decide

def oppositeAggregatePartValid4_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 108032
  | _ => True

theorem oppositeAggregatePart4_0105 :
    oppositeAggregatePartValid4_0105 oppositeHistoryChunk0105 := by
  unfold oppositeAggregatePartValid4_0105 oppositeHistoryChunk0105
  decide

def oppositeAggregatePartValid5_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 108160
  | _ => True

theorem oppositeAggregatePart5_0105 :
    oppositeAggregatePartValid5_0105 oppositeHistoryChunk0105 := by
  unfold oppositeAggregatePartValid5_0105 oppositeHistoryChunk0105
  decide

def oppositeAggregatePartValid6_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 108288
  | _ => True

theorem oppositeAggregatePart6_0105 :
    oppositeAggregatePartValid6_0105 oppositeHistoryChunk0105 := by
  unfold oppositeAggregatePartValid6_0105 oppositeHistoryChunk0105
  decide

def oppositeAggregatePartValid7_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 108416
  | _ => True

theorem oppositeAggregatePart7_0105 :
    oppositeAggregatePartValid7_0105 oppositeHistoryChunk0105 := by
  unfold oppositeAggregatePartValid7_0105 oppositeHistoryChunk0105
  decide

theorem oppositeRange_0105 :
    oppositeHistoryChunk0105.ResidueIndexedValid anchorHistories 5000000 18 25 107520 := by
  have h0 := oppositeAggregatePart0_0105
  simp only [oppositeAggregatePartValid0_0105, oppositeHistoryChunk0105] at h0
  have h1 := oppositeAggregatePart1_0105
  simp only [oppositeAggregatePartValid1_0105, oppositeHistoryChunk0105] at h1
  have h2 := oppositeAggregatePart2_0105
  simp only [oppositeAggregatePartValid2_0105, oppositeHistoryChunk0105] at h2
  have h3 := oppositeAggregatePart3_0105
  simp only [oppositeAggregatePartValid3_0105, oppositeHistoryChunk0105] at h3
  have h4 := oppositeAggregatePart4_0105
  simp only [oppositeAggregatePartValid4_0105, oppositeHistoryChunk0105] at h4
  have h5 := oppositeAggregatePart5_0105
  simp only [oppositeAggregatePartValid5_0105, oppositeHistoryChunk0105] at h5
  have h6 := oppositeAggregatePart6_0105
  simp only [oppositeAggregatePartValid6_0105, oppositeHistoryChunk0105] at h6
  have h7 := oppositeAggregatePart7_0105
  simp only [oppositeAggregatePartValid7_0105, oppositeHistoryChunk0105] at h7
  unfold oppositeHistoryChunk0105
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 108544
  | _ => True

theorem oppositeAggregatePart0_0106 :
    oppositeAggregatePartValid0_0106 oppositeHistoryChunk0106 := by
  unfold oppositeAggregatePartValid0_0106 oppositeHistoryChunk0106
  decide

def oppositeAggregatePartValid1_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 108672
  | _ => True

theorem oppositeAggregatePart1_0106 :
    oppositeAggregatePartValid1_0106 oppositeHistoryChunk0106 := by
  unfold oppositeAggregatePartValid1_0106 oppositeHistoryChunk0106
  decide

def oppositeAggregatePartValid2_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 108800
  | _ => True

theorem oppositeAggregatePart2_0106 :
    oppositeAggregatePartValid2_0106 oppositeHistoryChunk0106 := by
  unfold oppositeAggregatePartValid2_0106 oppositeHistoryChunk0106
  decide

def oppositeAggregatePartValid3_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 108928
  | _ => True

theorem oppositeAggregatePart3_0106 :
    oppositeAggregatePartValid3_0106 oppositeHistoryChunk0106 := by
  unfold oppositeAggregatePartValid3_0106 oppositeHistoryChunk0106
  decide

def oppositeAggregatePartValid4_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 109056
  | _ => True

theorem oppositeAggregatePart4_0106 :
    oppositeAggregatePartValid4_0106 oppositeHistoryChunk0106 := by
  unfold oppositeAggregatePartValid4_0106 oppositeHistoryChunk0106
  decide

def oppositeAggregatePartValid5_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 109184
  | _ => True

theorem oppositeAggregatePart5_0106 :
    oppositeAggregatePartValid5_0106 oppositeHistoryChunk0106 := by
  unfold oppositeAggregatePartValid5_0106 oppositeHistoryChunk0106
  decide

def oppositeAggregatePartValid6_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 109312
  | _ => True

theorem oppositeAggregatePart6_0106 :
    oppositeAggregatePartValid6_0106 oppositeHistoryChunk0106 := by
  unfold oppositeAggregatePartValid6_0106 oppositeHistoryChunk0106
  decide

def oppositeAggregatePartValid7_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 109440
  | _ => True

theorem oppositeAggregatePart7_0106 :
    oppositeAggregatePartValid7_0106 oppositeHistoryChunk0106 := by
  unfold oppositeAggregatePartValid7_0106 oppositeHistoryChunk0106
  decide

theorem oppositeRange_0106 :
    oppositeHistoryChunk0106.ResidueIndexedValid anchorHistories 5000000 18 25 108544 := by
  have h0 := oppositeAggregatePart0_0106
  simp only [oppositeAggregatePartValid0_0106, oppositeHistoryChunk0106] at h0
  have h1 := oppositeAggregatePart1_0106
  simp only [oppositeAggregatePartValid1_0106, oppositeHistoryChunk0106] at h1
  have h2 := oppositeAggregatePart2_0106
  simp only [oppositeAggregatePartValid2_0106, oppositeHistoryChunk0106] at h2
  have h3 := oppositeAggregatePart3_0106
  simp only [oppositeAggregatePartValid3_0106, oppositeHistoryChunk0106] at h3
  have h4 := oppositeAggregatePart4_0106
  simp only [oppositeAggregatePartValid4_0106, oppositeHistoryChunk0106] at h4
  have h5 := oppositeAggregatePart5_0106
  simp only [oppositeAggregatePartValid5_0106, oppositeHistoryChunk0106] at h5
  have h6 := oppositeAggregatePart6_0106
  simp only [oppositeAggregatePartValid6_0106, oppositeHistoryChunk0106] at h6
  have h7 := oppositeAggregatePart7_0106
  simp only [oppositeAggregatePartValid7_0106, oppositeHistoryChunk0106] at h7
  unfold oppositeHistoryChunk0106
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 109568
  | _ => True

theorem oppositeAggregatePart0_0107 :
    oppositeAggregatePartValid0_0107 oppositeHistoryChunk0107 := by
  unfold oppositeAggregatePartValid0_0107 oppositeHistoryChunk0107
  decide

def oppositeAggregatePartValid1_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 109696
  | _ => True

theorem oppositeAggregatePart1_0107 :
    oppositeAggregatePartValid1_0107 oppositeHistoryChunk0107 := by
  unfold oppositeAggregatePartValid1_0107 oppositeHistoryChunk0107
  decide

def oppositeAggregatePartValid2_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 109824
  | _ => True

theorem oppositeAggregatePart2_0107 :
    oppositeAggregatePartValid2_0107 oppositeHistoryChunk0107 := by
  unfold oppositeAggregatePartValid2_0107 oppositeHistoryChunk0107
  decide

def oppositeAggregatePartValid3_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 109952
  | _ => True

theorem oppositeAggregatePart3_0107 :
    oppositeAggregatePartValid3_0107 oppositeHistoryChunk0107 := by
  unfold oppositeAggregatePartValid3_0107 oppositeHistoryChunk0107
  decide

def oppositeAggregatePartValid4_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 110080
  | _ => True

theorem oppositeAggregatePart4_0107 :
    oppositeAggregatePartValid4_0107 oppositeHistoryChunk0107 := by
  unfold oppositeAggregatePartValid4_0107 oppositeHistoryChunk0107
  decide

def oppositeAggregatePartValid5_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 110208
  | _ => True

theorem oppositeAggregatePart5_0107 :
    oppositeAggregatePartValid5_0107 oppositeHistoryChunk0107 := by
  unfold oppositeAggregatePartValid5_0107 oppositeHistoryChunk0107
  decide

def oppositeAggregatePartValid6_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 110336
  | _ => True

theorem oppositeAggregatePart6_0107 :
    oppositeAggregatePartValid6_0107 oppositeHistoryChunk0107 := by
  unfold oppositeAggregatePartValid6_0107 oppositeHistoryChunk0107
  decide

def oppositeAggregatePartValid7_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 110464
  | _ => True

theorem oppositeAggregatePart7_0107 :
    oppositeAggregatePartValid7_0107 oppositeHistoryChunk0107 := by
  unfold oppositeAggregatePartValid7_0107 oppositeHistoryChunk0107
  decide

theorem oppositeRange_0107 :
    oppositeHistoryChunk0107.ResidueIndexedValid anchorHistories 5000000 18 25 109568 := by
  have h0 := oppositeAggregatePart0_0107
  simp only [oppositeAggregatePartValid0_0107, oppositeHistoryChunk0107] at h0
  have h1 := oppositeAggregatePart1_0107
  simp only [oppositeAggregatePartValid1_0107, oppositeHistoryChunk0107] at h1
  have h2 := oppositeAggregatePart2_0107
  simp only [oppositeAggregatePartValid2_0107, oppositeHistoryChunk0107] at h2
  have h3 := oppositeAggregatePart3_0107
  simp only [oppositeAggregatePartValid3_0107, oppositeHistoryChunk0107] at h3
  have h4 := oppositeAggregatePart4_0107
  simp only [oppositeAggregatePartValid4_0107, oppositeHistoryChunk0107] at h4
  have h5 := oppositeAggregatePart5_0107
  simp only [oppositeAggregatePartValid5_0107, oppositeHistoryChunk0107] at h5
  have h6 := oppositeAggregatePart6_0107
  simp only [oppositeAggregatePartValid6_0107, oppositeHistoryChunk0107] at h6
  have h7 := oppositeAggregatePart7_0107
  simp only [oppositeAggregatePartValid7_0107, oppositeHistoryChunk0107] at h7
  unfold oppositeHistoryChunk0107
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
