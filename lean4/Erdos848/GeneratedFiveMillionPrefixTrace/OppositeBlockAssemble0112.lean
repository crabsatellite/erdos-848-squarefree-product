import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0112
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0113
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0114
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0115

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0112, 0113, 0114, 0115 -/

def oppositeAggregatePartValid0_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 114688
  | _ => True

theorem oppositeAggregatePart0_0112 :
    oppositeAggregatePartValid0_0112 oppositeHistoryChunk0112 := by
  unfold oppositeAggregatePartValid0_0112 oppositeHistoryChunk0112
  decide

def oppositeAggregatePartValid1_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 114816
  | _ => True

theorem oppositeAggregatePart1_0112 :
    oppositeAggregatePartValid1_0112 oppositeHistoryChunk0112 := by
  unfold oppositeAggregatePartValid1_0112 oppositeHistoryChunk0112
  decide

def oppositeAggregatePartValid2_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 114944
  | _ => True

theorem oppositeAggregatePart2_0112 :
    oppositeAggregatePartValid2_0112 oppositeHistoryChunk0112 := by
  unfold oppositeAggregatePartValid2_0112 oppositeHistoryChunk0112
  decide

def oppositeAggregatePartValid3_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 115072
  | _ => True

theorem oppositeAggregatePart3_0112 :
    oppositeAggregatePartValid3_0112 oppositeHistoryChunk0112 := by
  unfold oppositeAggregatePartValid3_0112 oppositeHistoryChunk0112
  decide

def oppositeAggregatePartValid4_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 115200
  | _ => True

theorem oppositeAggregatePart4_0112 :
    oppositeAggregatePartValid4_0112 oppositeHistoryChunk0112 := by
  unfold oppositeAggregatePartValid4_0112 oppositeHistoryChunk0112
  decide

def oppositeAggregatePartValid5_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 115328
  | _ => True

theorem oppositeAggregatePart5_0112 :
    oppositeAggregatePartValid5_0112 oppositeHistoryChunk0112 := by
  unfold oppositeAggregatePartValid5_0112 oppositeHistoryChunk0112
  decide

def oppositeAggregatePartValid6_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 115456
  | _ => True

theorem oppositeAggregatePart6_0112 :
    oppositeAggregatePartValid6_0112 oppositeHistoryChunk0112 := by
  unfold oppositeAggregatePartValid6_0112 oppositeHistoryChunk0112
  decide

def oppositeAggregatePartValid7_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 115584
  | _ => True

theorem oppositeAggregatePart7_0112 :
    oppositeAggregatePartValid7_0112 oppositeHistoryChunk0112 := by
  unfold oppositeAggregatePartValid7_0112 oppositeHistoryChunk0112
  decide

theorem oppositeRange_0112 :
    oppositeHistoryChunk0112.ResidueIndexedValid anchorHistories 5000000 18 25 114688 := by
  have h0 := oppositeAggregatePart0_0112
  simp only [oppositeAggregatePartValid0_0112, oppositeHistoryChunk0112] at h0
  have h1 := oppositeAggregatePart1_0112
  simp only [oppositeAggregatePartValid1_0112, oppositeHistoryChunk0112] at h1
  have h2 := oppositeAggregatePart2_0112
  simp only [oppositeAggregatePartValid2_0112, oppositeHistoryChunk0112] at h2
  have h3 := oppositeAggregatePart3_0112
  simp only [oppositeAggregatePartValid3_0112, oppositeHistoryChunk0112] at h3
  have h4 := oppositeAggregatePart4_0112
  simp only [oppositeAggregatePartValid4_0112, oppositeHistoryChunk0112] at h4
  have h5 := oppositeAggregatePart5_0112
  simp only [oppositeAggregatePartValid5_0112, oppositeHistoryChunk0112] at h5
  have h6 := oppositeAggregatePart6_0112
  simp only [oppositeAggregatePartValid6_0112, oppositeHistoryChunk0112] at h6
  have h7 := oppositeAggregatePart7_0112
  simp only [oppositeAggregatePartValid7_0112, oppositeHistoryChunk0112] at h7
  unfold oppositeHistoryChunk0112
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 115712
  | _ => True

theorem oppositeAggregatePart0_0113 :
    oppositeAggregatePartValid0_0113 oppositeHistoryChunk0113 := by
  unfold oppositeAggregatePartValid0_0113 oppositeHistoryChunk0113
  decide

def oppositeAggregatePartValid1_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 115840
  | _ => True

theorem oppositeAggregatePart1_0113 :
    oppositeAggregatePartValid1_0113 oppositeHistoryChunk0113 := by
  unfold oppositeAggregatePartValid1_0113 oppositeHistoryChunk0113
  decide

def oppositeAggregatePartValid2_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 115968
  | _ => True

theorem oppositeAggregatePart2_0113 :
    oppositeAggregatePartValid2_0113 oppositeHistoryChunk0113 := by
  unfold oppositeAggregatePartValid2_0113 oppositeHistoryChunk0113
  decide

def oppositeAggregatePartValid3_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 116096
  | _ => True

theorem oppositeAggregatePart3_0113 :
    oppositeAggregatePartValid3_0113 oppositeHistoryChunk0113 := by
  unfold oppositeAggregatePartValid3_0113 oppositeHistoryChunk0113
  decide

def oppositeAggregatePartValid4_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 116224
  | _ => True

theorem oppositeAggregatePart4_0113 :
    oppositeAggregatePartValid4_0113 oppositeHistoryChunk0113 := by
  unfold oppositeAggregatePartValid4_0113 oppositeHistoryChunk0113
  decide

def oppositeAggregatePartValid5_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 116352
  | _ => True

theorem oppositeAggregatePart5_0113 :
    oppositeAggregatePartValid5_0113 oppositeHistoryChunk0113 := by
  unfold oppositeAggregatePartValid5_0113 oppositeHistoryChunk0113
  decide

def oppositeAggregatePartValid6_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 116480
  | _ => True

theorem oppositeAggregatePart6_0113 :
    oppositeAggregatePartValid6_0113 oppositeHistoryChunk0113 := by
  unfold oppositeAggregatePartValid6_0113 oppositeHistoryChunk0113
  decide

def oppositeAggregatePartValid7_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 116608
  | _ => True

theorem oppositeAggregatePart7_0113 :
    oppositeAggregatePartValid7_0113 oppositeHistoryChunk0113 := by
  unfold oppositeAggregatePartValid7_0113 oppositeHistoryChunk0113
  decide

theorem oppositeRange_0113 :
    oppositeHistoryChunk0113.ResidueIndexedValid anchorHistories 5000000 18 25 115712 := by
  have h0 := oppositeAggregatePart0_0113
  simp only [oppositeAggregatePartValid0_0113, oppositeHistoryChunk0113] at h0
  have h1 := oppositeAggregatePart1_0113
  simp only [oppositeAggregatePartValid1_0113, oppositeHistoryChunk0113] at h1
  have h2 := oppositeAggregatePart2_0113
  simp only [oppositeAggregatePartValid2_0113, oppositeHistoryChunk0113] at h2
  have h3 := oppositeAggregatePart3_0113
  simp only [oppositeAggregatePartValid3_0113, oppositeHistoryChunk0113] at h3
  have h4 := oppositeAggregatePart4_0113
  simp only [oppositeAggregatePartValid4_0113, oppositeHistoryChunk0113] at h4
  have h5 := oppositeAggregatePart5_0113
  simp only [oppositeAggregatePartValid5_0113, oppositeHistoryChunk0113] at h5
  have h6 := oppositeAggregatePart6_0113
  simp only [oppositeAggregatePartValid6_0113, oppositeHistoryChunk0113] at h6
  have h7 := oppositeAggregatePart7_0113
  simp only [oppositeAggregatePartValid7_0113, oppositeHistoryChunk0113] at h7
  unfold oppositeHistoryChunk0113
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 116736
  | _ => True

theorem oppositeAggregatePart0_0114 :
    oppositeAggregatePartValid0_0114 oppositeHistoryChunk0114 := by
  unfold oppositeAggregatePartValid0_0114 oppositeHistoryChunk0114
  decide

def oppositeAggregatePartValid1_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 116864
  | _ => True

theorem oppositeAggregatePart1_0114 :
    oppositeAggregatePartValid1_0114 oppositeHistoryChunk0114 := by
  unfold oppositeAggregatePartValid1_0114 oppositeHistoryChunk0114
  decide

def oppositeAggregatePartValid2_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 116992
  | _ => True

theorem oppositeAggregatePart2_0114 :
    oppositeAggregatePartValid2_0114 oppositeHistoryChunk0114 := by
  unfold oppositeAggregatePartValid2_0114 oppositeHistoryChunk0114
  decide

def oppositeAggregatePartValid3_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 117120
  | _ => True

theorem oppositeAggregatePart3_0114 :
    oppositeAggregatePartValid3_0114 oppositeHistoryChunk0114 := by
  unfold oppositeAggregatePartValid3_0114 oppositeHistoryChunk0114
  decide

def oppositeAggregatePartValid4_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 117248
  | _ => True

theorem oppositeAggregatePart4_0114 :
    oppositeAggregatePartValid4_0114 oppositeHistoryChunk0114 := by
  unfold oppositeAggregatePartValid4_0114 oppositeHistoryChunk0114
  decide

def oppositeAggregatePartValid5_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 117376
  | _ => True

theorem oppositeAggregatePart5_0114 :
    oppositeAggregatePartValid5_0114 oppositeHistoryChunk0114 := by
  unfold oppositeAggregatePartValid5_0114 oppositeHistoryChunk0114
  decide

def oppositeAggregatePartValid6_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 117504
  | _ => True

theorem oppositeAggregatePart6_0114 :
    oppositeAggregatePartValid6_0114 oppositeHistoryChunk0114 := by
  unfold oppositeAggregatePartValid6_0114 oppositeHistoryChunk0114
  decide

def oppositeAggregatePartValid7_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 117632
  | _ => True

theorem oppositeAggregatePart7_0114 :
    oppositeAggregatePartValid7_0114 oppositeHistoryChunk0114 := by
  unfold oppositeAggregatePartValid7_0114 oppositeHistoryChunk0114
  decide

theorem oppositeRange_0114 :
    oppositeHistoryChunk0114.ResidueIndexedValid anchorHistories 5000000 18 25 116736 := by
  have h0 := oppositeAggregatePart0_0114
  simp only [oppositeAggregatePartValid0_0114, oppositeHistoryChunk0114] at h0
  have h1 := oppositeAggregatePart1_0114
  simp only [oppositeAggregatePartValid1_0114, oppositeHistoryChunk0114] at h1
  have h2 := oppositeAggregatePart2_0114
  simp only [oppositeAggregatePartValid2_0114, oppositeHistoryChunk0114] at h2
  have h3 := oppositeAggregatePart3_0114
  simp only [oppositeAggregatePartValid3_0114, oppositeHistoryChunk0114] at h3
  have h4 := oppositeAggregatePart4_0114
  simp only [oppositeAggregatePartValid4_0114, oppositeHistoryChunk0114] at h4
  have h5 := oppositeAggregatePart5_0114
  simp only [oppositeAggregatePartValid5_0114, oppositeHistoryChunk0114] at h5
  have h6 := oppositeAggregatePart6_0114
  simp only [oppositeAggregatePartValid6_0114, oppositeHistoryChunk0114] at h6
  have h7 := oppositeAggregatePart7_0114
  simp only [oppositeAggregatePartValid7_0114, oppositeHistoryChunk0114] at h7
  unfold oppositeHistoryChunk0114
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 117760
  | _ => True

theorem oppositeAggregatePart0_0115 :
    oppositeAggregatePartValid0_0115 oppositeHistoryChunk0115 := by
  unfold oppositeAggregatePartValid0_0115 oppositeHistoryChunk0115
  decide

def oppositeAggregatePartValid1_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 117888
  | _ => True

theorem oppositeAggregatePart1_0115 :
    oppositeAggregatePartValid1_0115 oppositeHistoryChunk0115 := by
  unfold oppositeAggregatePartValid1_0115 oppositeHistoryChunk0115
  decide

def oppositeAggregatePartValid2_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 118016
  | _ => True

theorem oppositeAggregatePart2_0115 :
    oppositeAggregatePartValid2_0115 oppositeHistoryChunk0115 := by
  unfold oppositeAggregatePartValid2_0115 oppositeHistoryChunk0115
  decide

def oppositeAggregatePartValid3_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 118144
  | _ => True

theorem oppositeAggregatePart3_0115 :
    oppositeAggregatePartValid3_0115 oppositeHistoryChunk0115 := by
  unfold oppositeAggregatePartValid3_0115 oppositeHistoryChunk0115
  decide

def oppositeAggregatePartValid4_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 118272
  | _ => True

theorem oppositeAggregatePart4_0115 :
    oppositeAggregatePartValid4_0115 oppositeHistoryChunk0115 := by
  unfold oppositeAggregatePartValid4_0115 oppositeHistoryChunk0115
  decide

def oppositeAggregatePartValid5_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 118400
  | _ => True

theorem oppositeAggregatePart5_0115 :
    oppositeAggregatePartValid5_0115 oppositeHistoryChunk0115 := by
  unfold oppositeAggregatePartValid5_0115 oppositeHistoryChunk0115
  decide

def oppositeAggregatePartValid6_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 118528
  | _ => True

theorem oppositeAggregatePart6_0115 :
    oppositeAggregatePartValid6_0115 oppositeHistoryChunk0115 := by
  unfold oppositeAggregatePartValid6_0115 oppositeHistoryChunk0115
  decide

def oppositeAggregatePartValid7_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 118656
  | _ => True

theorem oppositeAggregatePart7_0115 :
    oppositeAggregatePartValid7_0115 oppositeHistoryChunk0115 := by
  unfold oppositeAggregatePartValid7_0115 oppositeHistoryChunk0115
  decide

theorem oppositeRange_0115 :
    oppositeHistoryChunk0115.ResidueIndexedValid anchorHistories 5000000 18 25 117760 := by
  have h0 := oppositeAggregatePart0_0115
  simp only [oppositeAggregatePartValid0_0115, oppositeHistoryChunk0115] at h0
  have h1 := oppositeAggregatePart1_0115
  simp only [oppositeAggregatePartValid1_0115, oppositeHistoryChunk0115] at h1
  have h2 := oppositeAggregatePart2_0115
  simp only [oppositeAggregatePartValid2_0115, oppositeHistoryChunk0115] at h2
  have h3 := oppositeAggregatePart3_0115
  simp only [oppositeAggregatePartValid3_0115, oppositeHistoryChunk0115] at h3
  have h4 := oppositeAggregatePart4_0115
  simp only [oppositeAggregatePartValid4_0115, oppositeHistoryChunk0115] at h4
  have h5 := oppositeAggregatePart5_0115
  simp only [oppositeAggregatePartValid5_0115, oppositeHistoryChunk0115] at h5
  have h6 := oppositeAggregatePart6_0115
  simp only [oppositeAggregatePartValid6_0115, oppositeHistoryChunk0115] at h6
  have h7 := oppositeAggregatePart7_0115
  simp only [oppositeAggregatePartValid7_0115, oppositeHistoryChunk0115] at h7
  unfold oppositeHistoryChunk0115
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
