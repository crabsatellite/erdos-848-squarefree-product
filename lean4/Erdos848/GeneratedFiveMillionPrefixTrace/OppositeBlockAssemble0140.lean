import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0140
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0141
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0142
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0143

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0140, 0141, 0142, 0143 -/

def oppositeAggregatePartValid0_0140 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 143360
  | _ => True

theorem oppositeAggregatePart0_0140 :
    oppositeAggregatePartValid0_0140 oppositeHistoryChunk0140 := by
  unfold oppositeAggregatePartValid0_0140 oppositeHistoryChunk0140
  decide

def oppositeAggregatePartValid1_0140 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 143488
  | _ => True

theorem oppositeAggregatePart1_0140 :
    oppositeAggregatePartValid1_0140 oppositeHistoryChunk0140 := by
  unfold oppositeAggregatePartValid1_0140 oppositeHistoryChunk0140
  decide

def oppositeAggregatePartValid2_0140 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 143616
  | _ => True

theorem oppositeAggregatePart2_0140 :
    oppositeAggregatePartValid2_0140 oppositeHistoryChunk0140 := by
  unfold oppositeAggregatePartValid2_0140 oppositeHistoryChunk0140
  decide

def oppositeAggregatePartValid3_0140 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 143744
  | _ => True

theorem oppositeAggregatePart3_0140 :
    oppositeAggregatePartValid3_0140 oppositeHistoryChunk0140 := by
  unfold oppositeAggregatePartValid3_0140 oppositeHistoryChunk0140
  decide

def oppositeAggregatePartValid4_0140 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 143872
  | _ => True

theorem oppositeAggregatePart4_0140 :
    oppositeAggregatePartValid4_0140 oppositeHistoryChunk0140 := by
  unfold oppositeAggregatePartValid4_0140 oppositeHistoryChunk0140
  decide

def oppositeAggregatePartValid5_0140 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 144000
  | _ => True

theorem oppositeAggregatePart5_0140 :
    oppositeAggregatePartValid5_0140 oppositeHistoryChunk0140 := by
  unfold oppositeAggregatePartValid5_0140 oppositeHistoryChunk0140
  decide

def oppositeAggregatePartValid6_0140 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 144128
  | _ => True

theorem oppositeAggregatePart6_0140 :
    oppositeAggregatePartValid6_0140 oppositeHistoryChunk0140 := by
  unfold oppositeAggregatePartValid6_0140 oppositeHistoryChunk0140
  decide

def oppositeAggregatePartValid7_0140 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 144256
  | _ => True

theorem oppositeAggregatePart7_0140 :
    oppositeAggregatePartValid7_0140 oppositeHistoryChunk0140 := by
  unfold oppositeAggregatePartValid7_0140 oppositeHistoryChunk0140
  decide

theorem oppositeRange_0140 :
    oppositeHistoryChunk0140.ResidueIndexedValid anchorHistories 5000000 18 25 143360 := by
  have h0 := oppositeAggregatePart0_0140
  simp only [oppositeAggregatePartValid0_0140, oppositeHistoryChunk0140] at h0
  have h1 := oppositeAggregatePart1_0140
  simp only [oppositeAggregatePartValid1_0140, oppositeHistoryChunk0140] at h1
  have h2 := oppositeAggregatePart2_0140
  simp only [oppositeAggregatePartValid2_0140, oppositeHistoryChunk0140] at h2
  have h3 := oppositeAggregatePart3_0140
  simp only [oppositeAggregatePartValid3_0140, oppositeHistoryChunk0140] at h3
  have h4 := oppositeAggregatePart4_0140
  simp only [oppositeAggregatePartValid4_0140, oppositeHistoryChunk0140] at h4
  have h5 := oppositeAggregatePart5_0140
  simp only [oppositeAggregatePartValid5_0140, oppositeHistoryChunk0140] at h5
  have h6 := oppositeAggregatePart6_0140
  simp only [oppositeAggregatePartValid6_0140, oppositeHistoryChunk0140] at h6
  have h7 := oppositeAggregatePart7_0140
  simp only [oppositeAggregatePartValid7_0140, oppositeHistoryChunk0140] at h7
  unfold oppositeHistoryChunk0140
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0141 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 144384
  | _ => True

theorem oppositeAggregatePart0_0141 :
    oppositeAggregatePartValid0_0141 oppositeHistoryChunk0141 := by
  unfold oppositeAggregatePartValid0_0141 oppositeHistoryChunk0141
  decide

def oppositeAggregatePartValid1_0141 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 144512
  | _ => True

theorem oppositeAggregatePart1_0141 :
    oppositeAggregatePartValid1_0141 oppositeHistoryChunk0141 := by
  unfold oppositeAggregatePartValid1_0141 oppositeHistoryChunk0141
  decide

def oppositeAggregatePartValid2_0141 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 144640
  | _ => True

theorem oppositeAggregatePart2_0141 :
    oppositeAggregatePartValid2_0141 oppositeHistoryChunk0141 := by
  unfold oppositeAggregatePartValid2_0141 oppositeHistoryChunk0141
  decide

def oppositeAggregatePartValid3_0141 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 144768
  | _ => True

theorem oppositeAggregatePart3_0141 :
    oppositeAggregatePartValid3_0141 oppositeHistoryChunk0141 := by
  unfold oppositeAggregatePartValid3_0141 oppositeHistoryChunk0141
  decide

def oppositeAggregatePartValid4_0141 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 144896
  | _ => True

theorem oppositeAggregatePart4_0141 :
    oppositeAggregatePartValid4_0141 oppositeHistoryChunk0141 := by
  unfold oppositeAggregatePartValid4_0141 oppositeHistoryChunk0141
  decide

def oppositeAggregatePartValid5_0141 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 145024
  | _ => True

theorem oppositeAggregatePart5_0141 :
    oppositeAggregatePartValid5_0141 oppositeHistoryChunk0141 := by
  unfold oppositeAggregatePartValid5_0141 oppositeHistoryChunk0141
  decide

def oppositeAggregatePartValid6_0141 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 145152
  | _ => True

theorem oppositeAggregatePart6_0141 :
    oppositeAggregatePartValid6_0141 oppositeHistoryChunk0141 := by
  unfold oppositeAggregatePartValid6_0141 oppositeHistoryChunk0141
  decide

def oppositeAggregatePartValid7_0141 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 145280
  | _ => True

theorem oppositeAggregatePart7_0141 :
    oppositeAggregatePartValid7_0141 oppositeHistoryChunk0141 := by
  unfold oppositeAggregatePartValid7_0141 oppositeHistoryChunk0141
  decide

theorem oppositeRange_0141 :
    oppositeHistoryChunk0141.ResidueIndexedValid anchorHistories 5000000 18 25 144384 := by
  have h0 := oppositeAggregatePart0_0141
  simp only [oppositeAggregatePartValid0_0141, oppositeHistoryChunk0141] at h0
  have h1 := oppositeAggregatePart1_0141
  simp only [oppositeAggregatePartValid1_0141, oppositeHistoryChunk0141] at h1
  have h2 := oppositeAggregatePart2_0141
  simp only [oppositeAggregatePartValid2_0141, oppositeHistoryChunk0141] at h2
  have h3 := oppositeAggregatePart3_0141
  simp only [oppositeAggregatePartValid3_0141, oppositeHistoryChunk0141] at h3
  have h4 := oppositeAggregatePart4_0141
  simp only [oppositeAggregatePartValid4_0141, oppositeHistoryChunk0141] at h4
  have h5 := oppositeAggregatePart5_0141
  simp only [oppositeAggregatePartValid5_0141, oppositeHistoryChunk0141] at h5
  have h6 := oppositeAggregatePart6_0141
  simp only [oppositeAggregatePartValid6_0141, oppositeHistoryChunk0141] at h6
  have h7 := oppositeAggregatePart7_0141
  simp only [oppositeAggregatePartValid7_0141, oppositeHistoryChunk0141] at h7
  unfold oppositeHistoryChunk0141
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0142 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 145408
  | _ => True

theorem oppositeAggregatePart0_0142 :
    oppositeAggregatePartValid0_0142 oppositeHistoryChunk0142 := by
  unfold oppositeAggregatePartValid0_0142 oppositeHistoryChunk0142
  decide

def oppositeAggregatePartValid1_0142 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 145536
  | _ => True

theorem oppositeAggregatePart1_0142 :
    oppositeAggregatePartValid1_0142 oppositeHistoryChunk0142 := by
  unfold oppositeAggregatePartValid1_0142 oppositeHistoryChunk0142
  decide

def oppositeAggregatePartValid2_0142 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 145664
  | _ => True

theorem oppositeAggregatePart2_0142 :
    oppositeAggregatePartValid2_0142 oppositeHistoryChunk0142 := by
  unfold oppositeAggregatePartValid2_0142 oppositeHistoryChunk0142
  decide

def oppositeAggregatePartValid3_0142 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 145792
  | _ => True

theorem oppositeAggregatePart3_0142 :
    oppositeAggregatePartValid3_0142 oppositeHistoryChunk0142 := by
  unfold oppositeAggregatePartValid3_0142 oppositeHistoryChunk0142
  decide

def oppositeAggregatePartValid4_0142 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 145920
  | _ => True

theorem oppositeAggregatePart4_0142 :
    oppositeAggregatePartValid4_0142 oppositeHistoryChunk0142 := by
  unfold oppositeAggregatePartValid4_0142 oppositeHistoryChunk0142
  decide

def oppositeAggregatePartValid5_0142 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 146048
  | _ => True

theorem oppositeAggregatePart5_0142 :
    oppositeAggregatePartValid5_0142 oppositeHistoryChunk0142 := by
  unfold oppositeAggregatePartValid5_0142 oppositeHistoryChunk0142
  decide

def oppositeAggregatePartValid6_0142 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 146176
  | _ => True

theorem oppositeAggregatePart6_0142 :
    oppositeAggregatePartValid6_0142 oppositeHistoryChunk0142 := by
  unfold oppositeAggregatePartValid6_0142 oppositeHistoryChunk0142
  decide

def oppositeAggregatePartValid7_0142 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 146304
  | _ => True

theorem oppositeAggregatePart7_0142 :
    oppositeAggregatePartValid7_0142 oppositeHistoryChunk0142 := by
  unfold oppositeAggregatePartValid7_0142 oppositeHistoryChunk0142
  decide

theorem oppositeRange_0142 :
    oppositeHistoryChunk0142.ResidueIndexedValid anchorHistories 5000000 18 25 145408 := by
  have h0 := oppositeAggregatePart0_0142
  simp only [oppositeAggregatePartValid0_0142, oppositeHistoryChunk0142] at h0
  have h1 := oppositeAggregatePart1_0142
  simp only [oppositeAggregatePartValid1_0142, oppositeHistoryChunk0142] at h1
  have h2 := oppositeAggregatePart2_0142
  simp only [oppositeAggregatePartValid2_0142, oppositeHistoryChunk0142] at h2
  have h3 := oppositeAggregatePart3_0142
  simp only [oppositeAggregatePartValid3_0142, oppositeHistoryChunk0142] at h3
  have h4 := oppositeAggregatePart4_0142
  simp only [oppositeAggregatePartValid4_0142, oppositeHistoryChunk0142] at h4
  have h5 := oppositeAggregatePart5_0142
  simp only [oppositeAggregatePartValid5_0142, oppositeHistoryChunk0142] at h5
  have h6 := oppositeAggregatePart6_0142
  simp only [oppositeAggregatePartValid6_0142, oppositeHistoryChunk0142] at h6
  have h7 := oppositeAggregatePart7_0142
  simp only [oppositeAggregatePartValid7_0142, oppositeHistoryChunk0142] at h7
  unfold oppositeHistoryChunk0142
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0143 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 146432
  | _ => True

theorem oppositeAggregatePart0_0143 :
    oppositeAggregatePartValid0_0143 oppositeHistoryChunk0143 := by
  unfold oppositeAggregatePartValid0_0143 oppositeHistoryChunk0143
  decide

def oppositeAggregatePartValid1_0143 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 146560
  | _ => True

theorem oppositeAggregatePart1_0143 :
    oppositeAggregatePartValid1_0143 oppositeHistoryChunk0143 := by
  unfold oppositeAggregatePartValid1_0143 oppositeHistoryChunk0143
  decide

def oppositeAggregatePartValid2_0143 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 146688
  | _ => True

theorem oppositeAggregatePart2_0143 :
    oppositeAggregatePartValid2_0143 oppositeHistoryChunk0143 := by
  unfold oppositeAggregatePartValid2_0143 oppositeHistoryChunk0143
  decide

def oppositeAggregatePartValid3_0143 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 146816
  | _ => True

theorem oppositeAggregatePart3_0143 :
    oppositeAggregatePartValid3_0143 oppositeHistoryChunk0143 := by
  unfold oppositeAggregatePartValid3_0143 oppositeHistoryChunk0143
  decide

def oppositeAggregatePartValid4_0143 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 146944
  | _ => True

theorem oppositeAggregatePart4_0143 :
    oppositeAggregatePartValid4_0143 oppositeHistoryChunk0143 := by
  unfold oppositeAggregatePartValid4_0143 oppositeHistoryChunk0143
  decide

def oppositeAggregatePartValid5_0143 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 147072
  | _ => True

theorem oppositeAggregatePart5_0143 :
    oppositeAggregatePartValid5_0143 oppositeHistoryChunk0143 := by
  unfold oppositeAggregatePartValid5_0143 oppositeHistoryChunk0143
  decide

def oppositeAggregatePartValid6_0143 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 147200
  | _ => True

theorem oppositeAggregatePart6_0143 :
    oppositeAggregatePartValid6_0143 oppositeHistoryChunk0143 := by
  unfold oppositeAggregatePartValid6_0143 oppositeHistoryChunk0143
  decide

def oppositeAggregatePartValid7_0143 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 147328
  | _ => True

theorem oppositeAggregatePart7_0143 :
    oppositeAggregatePartValid7_0143 oppositeHistoryChunk0143 := by
  unfold oppositeAggregatePartValid7_0143 oppositeHistoryChunk0143
  decide

theorem oppositeRange_0143 :
    oppositeHistoryChunk0143.ResidueIndexedValid anchorHistories 5000000 18 25 146432 := by
  have h0 := oppositeAggregatePart0_0143
  simp only [oppositeAggregatePartValid0_0143, oppositeHistoryChunk0143] at h0
  have h1 := oppositeAggregatePart1_0143
  simp only [oppositeAggregatePartValid1_0143, oppositeHistoryChunk0143] at h1
  have h2 := oppositeAggregatePart2_0143
  simp only [oppositeAggregatePartValid2_0143, oppositeHistoryChunk0143] at h2
  have h3 := oppositeAggregatePart3_0143
  simp only [oppositeAggregatePartValid3_0143, oppositeHistoryChunk0143] at h3
  have h4 := oppositeAggregatePart4_0143
  simp only [oppositeAggregatePartValid4_0143, oppositeHistoryChunk0143] at h4
  have h5 := oppositeAggregatePart5_0143
  simp only [oppositeAggregatePartValid5_0143, oppositeHistoryChunk0143] at h5
  have h6 := oppositeAggregatePart6_0143
  simp only [oppositeAggregatePartValid6_0143, oppositeHistoryChunk0143] at h6
  have h7 := oppositeAggregatePart7_0143
  simp only [oppositeAggregatePartValid7_0143, oppositeHistoryChunk0143] at h7
  unfold oppositeHistoryChunk0143
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
