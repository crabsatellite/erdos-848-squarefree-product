import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0172
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0173
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0174
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0175

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0172, 0173, 0174, 0175 -/

def oppositeAggregatePartValid0_0172 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 176128
  | _ => True

theorem oppositeAggregatePart0_0172 :
    oppositeAggregatePartValid0_0172 oppositeHistoryChunk0172 := by
  unfold oppositeAggregatePartValid0_0172 oppositeHistoryChunk0172
  decide

def oppositeAggregatePartValid1_0172 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 176256
  | _ => True

theorem oppositeAggregatePart1_0172 :
    oppositeAggregatePartValid1_0172 oppositeHistoryChunk0172 := by
  unfold oppositeAggregatePartValid1_0172 oppositeHistoryChunk0172
  decide

def oppositeAggregatePartValid2_0172 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 176384
  | _ => True

theorem oppositeAggregatePart2_0172 :
    oppositeAggregatePartValid2_0172 oppositeHistoryChunk0172 := by
  unfold oppositeAggregatePartValid2_0172 oppositeHistoryChunk0172
  decide

def oppositeAggregatePartValid3_0172 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 176512
  | _ => True

theorem oppositeAggregatePart3_0172 :
    oppositeAggregatePartValid3_0172 oppositeHistoryChunk0172 := by
  unfold oppositeAggregatePartValid3_0172 oppositeHistoryChunk0172
  decide

def oppositeAggregatePartValid4_0172 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 176640
  | _ => True

theorem oppositeAggregatePart4_0172 :
    oppositeAggregatePartValid4_0172 oppositeHistoryChunk0172 := by
  unfold oppositeAggregatePartValid4_0172 oppositeHistoryChunk0172
  decide

def oppositeAggregatePartValid5_0172 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 176768
  | _ => True

theorem oppositeAggregatePart5_0172 :
    oppositeAggregatePartValid5_0172 oppositeHistoryChunk0172 := by
  unfold oppositeAggregatePartValid5_0172 oppositeHistoryChunk0172
  decide

def oppositeAggregatePartValid6_0172 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 176896
  | _ => True

theorem oppositeAggregatePart6_0172 :
    oppositeAggregatePartValid6_0172 oppositeHistoryChunk0172 := by
  unfold oppositeAggregatePartValid6_0172 oppositeHistoryChunk0172
  decide

def oppositeAggregatePartValid7_0172 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 177024
  | _ => True

theorem oppositeAggregatePart7_0172 :
    oppositeAggregatePartValid7_0172 oppositeHistoryChunk0172 := by
  unfold oppositeAggregatePartValid7_0172 oppositeHistoryChunk0172
  decide

theorem oppositeRange_0172 :
    oppositeHistoryChunk0172.ResidueIndexedValid anchorHistories 5000000 18 25 176128 := by
  have h0 := oppositeAggregatePart0_0172
  simp only [oppositeAggregatePartValid0_0172, oppositeHistoryChunk0172] at h0
  have h1 := oppositeAggregatePart1_0172
  simp only [oppositeAggregatePartValid1_0172, oppositeHistoryChunk0172] at h1
  have h2 := oppositeAggregatePart2_0172
  simp only [oppositeAggregatePartValid2_0172, oppositeHistoryChunk0172] at h2
  have h3 := oppositeAggregatePart3_0172
  simp only [oppositeAggregatePartValid3_0172, oppositeHistoryChunk0172] at h3
  have h4 := oppositeAggregatePart4_0172
  simp only [oppositeAggregatePartValid4_0172, oppositeHistoryChunk0172] at h4
  have h5 := oppositeAggregatePart5_0172
  simp only [oppositeAggregatePartValid5_0172, oppositeHistoryChunk0172] at h5
  have h6 := oppositeAggregatePart6_0172
  simp only [oppositeAggregatePartValid6_0172, oppositeHistoryChunk0172] at h6
  have h7 := oppositeAggregatePart7_0172
  simp only [oppositeAggregatePartValid7_0172, oppositeHistoryChunk0172] at h7
  unfold oppositeHistoryChunk0172
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0173 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 177152
  | _ => True

theorem oppositeAggregatePart0_0173 :
    oppositeAggregatePartValid0_0173 oppositeHistoryChunk0173 := by
  unfold oppositeAggregatePartValid0_0173 oppositeHistoryChunk0173
  decide

def oppositeAggregatePartValid1_0173 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 177280
  | _ => True

theorem oppositeAggregatePart1_0173 :
    oppositeAggregatePartValid1_0173 oppositeHistoryChunk0173 := by
  unfold oppositeAggregatePartValid1_0173 oppositeHistoryChunk0173
  decide

def oppositeAggregatePartValid2_0173 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 177408
  | _ => True

theorem oppositeAggregatePart2_0173 :
    oppositeAggregatePartValid2_0173 oppositeHistoryChunk0173 := by
  unfold oppositeAggregatePartValid2_0173 oppositeHistoryChunk0173
  decide

def oppositeAggregatePartValid3_0173 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 177536
  | _ => True

theorem oppositeAggregatePart3_0173 :
    oppositeAggregatePartValid3_0173 oppositeHistoryChunk0173 := by
  unfold oppositeAggregatePartValid3_0173 oppositeHistoryChunk0173
  decide

def oppositeAggregatePartValid4_0173 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 177664
  | _ => True

theorem oppositeAggregatePart4_0173 :
    oppositeAggregatePartValid4_0173 oppositeHistoryChunk0173 := by
  unfold oppositeAggregatePartValid4_0173 oppositeHistoryChunk0173
  decide

def oppositeAggregatePartValid5_0173 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 177792
  | _ => True

theorem oppositeAggregatePart5_0173 :
    oppositeAggregatePartValid5_0173 oppositeHistoryChunk0173 := by
  unfold oppositeAggregatePartValid5_0173 oppositeHistoryChunk0173
  decide

def oppositeAggregatePartValid6_0173 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 177920
  | _ => True

theorem oppositeAggregatePart6_0173 :
    oppositeAggregatePartValid6_0173 oppositeHistoryChunk0173 := by
  unfold oppositeAggregatePartValid6_0173 oppositeHistoryChunk0173
  decide

def oppositeAggregatePartValid7_0173 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 178048
  | _ => True

theorem oppositeAggregatePart7_0173 :
    oppositeAggregatePartValid7_0173 oppositeHistoryChunk0173 := by
  unfold oppositeAggregatePartValid7_0173 oppositeHistoryChunk0173
  decide

theorem oppositeRange_0173 :
    oppositeHistoryChunk0173.ResidueIndexedValid anchorHistories 5000000 18 25 177152 := by
  have h0 := oppositeAggregatePart0_0173
  simp only [oppositeAggregatePartValid0_0173, oppositeHistoryChunk0173] at h0
  have h1 := oppositeAggregatePart1_0173
  simp only [oppositeAggregatePartValid1_0173, oppositeHistoryChunk0173] at h1
  have h2 := oppositeAggregatePart2_0173
  simp only [oppositeAggregatePartValid2_0173, oppositeHistoryChunk0173] at h2
  have h3 := oppositeAggregatePart3_0173
  simp only [oppositeAggregatePartValid3_0173, oppositeHistoryChunk0173] at h3
  have h4 := oppositeAggregatePart4_0173
  simp only [oppositeAggregatePartValid4_0173, oppositeHistoryChunk0173] at h4
  have h5 := oppositeAggregatePart5_0173
  simp only [oppositeAggregatePartValid5_0173, oppositeHistoryChunk0173] at h5
  have h6 := oppositeAggregatePart6_0173
  simp only [oppositeAggregatePartValid6_0173, oppositeHistoryChunk0173] at h6
  have h7 := oppositeAggregatePart7_0173
  simp only [oppositeAggregatePartValid7_0173, oppositeHistoryChunk0173] at h7
  unfold oppositeHistoryChunk0173
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0174 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 178176
  | _ => True

theorem oppositeAggregatePart0_0174 :
    oppositeAggregatePartValid0_0174 oppositeHistoryChunk0174 := by
  unfold oppositeAggregatePartValid0_0174 oppositeHistoryChunk0174
  decide

def oppositeAggregatePartValid1_0174 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 178304
  | _ => True

theorem oppositeAggregatePart1_0174 :
    oppositeAggregatePartValid1_0174 oppositeHistoryChunk0174 := by
  unfold oppositeAggregatePartValid1_0174 oppositeHistoryChunk0174
  decide

def oppositeAggregatePartValid2_0174 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 178432
  | _ => True

theorem oppositeAggregatePart2_0174 :
    oppositeAggregatePartValid2_0174 oppositeHistoryChunk0174 := by
  unfold oppositeAggregatePartValid2_0174 oppositeHistoryChunk0174
  decide

def oppositeAggregatePartValid3_0174 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 178560
  | _ => True

theorem oppositeAggregatePart3_0174 :
    oppositeAggregatePartValid3_0174 oppositeHistoryChunk0174 := by
  unfold oppositeAggregatePartValid3_0174 oppositeHistoryChunk0174
  decide

def oppositeAggregatePartValid4_0174 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 178688
  | _ => True

theorem oppositeAggregatePart4_0174 :
    oppositeAggregatePartValid4_0174 oppositeHistoryChunk0174 := by
  unfold oppositeAggregatePartValid4_0174 oppositeHistoryChunk0174
  decide

def oppositeAggregatePartValid5_0174 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 178816
  | _ => True

theorem oppositeAggregatePart5_0174 :
    oppositeAggregatePartValid5_0174 oppositeHistoryChunk0174 := by
  unfold oppositeAggregatePartValid5_0174 oppositeHistoryChunk0174
  decide

def oppositeAggregatePartValid6_0174 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 178944
  | _ => True

theorem oppositeAggregatePart6_0174 :
    oppositeAggregatePartValid6_0174 oppositeHistoryChunk0174 := by
  unfold oppositeAggregatePartValid6_0174 oppositeHistoryChunk0174
  decide

def oppositeAggregatePartValid7_0174 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 179072
  | _ => True

theorem oppositeAggregatePart7_0174 :
    oppositeAggregatePartValid7_0174 oppositeHistoryChunk0174 := by
  unfold oppositeAggregatePartValid7_0174 oppositeHistoryChunk0174
  decide

theorem oppositeRange_0174 :
    oppositeHistoryChunk0174.ResidueIndexedValid anchorHistories 5000000 18 25 178176 := by
  have h0 := oppositeAggregatePart0_0174
  simp only [oppositeAggregatePartValid0_0174, oppositeHistoryChunk0174] at h0
  have h1 := oppositeAggregatePart1_0174
  simp only [oppositeAggregatePartValid1_0174, oppositeHistoryChunk0174] at h1
  have h2 := oppositeAggregatePart2_0174
  simp only [oppositeAggregatePartValid2_0174, oppositeHistoryChunk0174] at h2
  have h3 := oppositeAggregatePart3_0174
  simp only [oppositeAggregatePartValid3_0174, oppositeHistoryChunk0174] at h3
  have h4 := oppositeAggregatePart4_0174
  simp only [oppositeAggregatePartValid4_0174, oppositeHistoryChunk0174] at h4
  have h5 := oppositeAggregatePart5_0174
  simp only [oppositeAggregatePartValid5_0174, oppositeHistoryChunk0174] at h5
  have h6 := oppositeAggregatePart6_0174
  simp only [oppositeAggregatePartValid6_0174, oppositeHistoryChunk0174] at h6
  have h7 := oppositeAggregatePart7_0174
  simp only [oppositeAggregatePartValid7_0174, oppositeHistoryChunk0174] at h7
  unfold oppositeHistoryChunk0174
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0175 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 179200
  | _ => True

theorem oppositeAggregatePart0_0175 :
    oppositeAggregatePartValid0_0175 oppositeHistoryChunk0175 := by
  unfold oppositeAggregatePartValid0_0175 oppositeHistoryChunk0175
  decide

def oppositeAggregatePartValid1_0175 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 179328
  | _ => True

theorem oppositeAggregatePart1_0175 :
    oppositeAggregatePartValid1_0175 oppositeHistoryChunk0175 := by
  unfold oppositeAggregatePartValid1_0175 oppositeHistoryChunk0175
  decide

def oppositeAggregatePartValid2_0175 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 179456
  | _ => True

theorem oppositeAggregatePart2_0175 :
    oppositeAggregatePartValid2_0175 oppositeHistoryChunk0175 := by
  unfold oppositeAggregatePartValid2_0175 oppositeHistoryChunk0175
  decide

def oppositeAggregatePartValid3_0175 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 179584
  | _ => True

theorem oppositeAggregatePart3_0175 :
    oppositeAggregatePartValid3_0175 oppositeHistoryChunk0175 := by
  unfold oppositeAggregatePartValid3_0175 oppositeHistoryChunk0175
  decide

def oppositeAggregatePartValid4_0175 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 179712
  | _ => True

theorem oppositeAggregatePart4_0175 :
    oppositeAggregatePartValid4_0175 oppositeHistoryChunk0175 := by
  unfold oppositeAggregatePartValid4_0175 oppositeHistoryChunk0175
  decide

def oppositeAggregatePartValid5_0175 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 179840
  | _ => True

theorem oppositeAggregatePart5_0175 :
    oppositeAggregatePartValid5_0175 oppositeHistoryChunk0175 := by
  unfold oppositeAggregatePartValid5_0175 oppositeHistoryChunk0175
  decide

def oppositeAggregatePartValid6_0175 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 179968
  | _ => True

theorem oppositeAggregatePart6_0175 :
    oppositeAggregatePartValid6_0175 oppositeHistoryChunk0175 := by
  unfold oppositeAggregatePartValid6_0175 oppositeHistoryChunk0175
  decide

def oppositeAggregatePartValid7_0175 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 180096
  | _ => True

theorem oppositeAggregatePart7_0175 :
    oppositeAggregatePartValid7_0175 oppositeHistoryChunk0175 := by
  unfold oppositeAggregatePartValid7_0175 oppositeHistoryChunk0175
  decide

theorem oppositeRange_0175 :
    oppositeHistoryChunk0175.ResidueIndexedValid anchorHistories 5000000 18 25 179200 := by
  have h0 := oppositeAggregatePart0_0175
  simp only [oppositeAggregatePartValid0_0175, oppositeHistoryChunk0175] at h0
  have h1 := oppositeAggregatePart1_0175
  simp only [oppositeAggregatePartValid1_0175, oppositeHistoryChunk0175] at h1
  have h2 := oppositeAggregatePart2_0175
  simp only [oppositeAggregatePartValid2_0175, oppositeHistoryChunk0175] at h2
  have h3 := oppositeAggregatePart3_0175
  simp only [oppositeAggregatePartValid3_0175, oppositeHistoryChunk0175] at h3
  have h4 := oppositeAggregatePart4_0175
  simp only [oppositeAggregatePartValid4_0175, oppositeHistoryChunk0175] at h4
  have h5 := oppositeAggregatePart5_0175
  simp only [oppositeAggregatePartValid5_0175, oppositeHistoryChunk0175] at h5
  have h6 := oppositeAggregatePart6_0175
  simp only [oppositeAggregatePartValid6_0175, oppositeHistoryChunk0175] at h6
  have h7 := oppositeAggregatePart7_0175
  simp only [oppositeAggregatePartValid7_0175, oppositeHistoryChunk0175] at h7
  unfold oppositeHistoryChunk0175
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
