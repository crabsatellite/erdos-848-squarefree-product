import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0188
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0189
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0190
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0191

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0188, 0189, 0190, 0191 -/

def oppositeAggregatePartValid0_0188 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 192512
  | _ => True

theorem oppositeAggregatePart0_0188 :
    oppositeAggregatePartValid0_0188 oppositeHistoryChunk0188 := by
  unfold oppositeAggregatePartValid0_0188 oppositeHistoryChunk0188
  decide

def oppositeAggregatePartValid1_0188 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 192640
  | _ => True

theorem oppositeAggregatePart1_0188 :
    oppositeAggregatePartValid1_0188 oppositeHistoryChunk0188 := by
  unfold oppositeAggregatePartValid1_0188 oppositeHistoryChunk0188
  decide

def oppositeAggregatePartValid2_0188 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 192768
  | _ => True

theorem oppositeAggregatePart2_0188 :
    oppositeAggregatePartValid2_0188 oppositeHistoryChunk0188 := by
  unfold oppositeAggregatePartValid2_0188 oppositeHistoryChunk0188
  decide

def oppositeAggregatePartValid3_0188 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 192896
  | _ => True

theorem oppositeAggregatePart3_0188 :
    oppositeAggregatePartValid3_0188 oppositeHistoryChunk0188 := by
  unfold oppositeAggregatePartValid3_0188 oppositeHistoryChunk0188
  decide

def oppositeAggregatePartValid4_0188 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 193024
  | _ => True

theorem oppositeAggregatePart4_0188 :
    oppositeAggregatePartValid4_0188 oppositeHistoryChunk0188 := by
  unfold oppositeAggregatePartValid4_0188 oppositeHistoryChunk0188
  decide

def oppositeAggregatePartValid5_0188 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 193152
  | _ => True

theorem oppositeAggregatePart5_0188 :
    oppositeAggregatePartValid5_0188 oppositeHistoryChunk0188 := by
  unfold oppositeAggregatePartValid5_0188 oppositeHistoryChunk0188
  decide

def oppositeAggregatePartValid6_0188 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 193280
  | _ => True

theorem oppositeAggregatePart6_0188 :
    oppositeAggregatePartValid6_0188 oppositeHistoryChunk0188 := by
  unfold oppositeAggregatePartValid6_0188 oppositeHistoryChunk0188
  decide

def oppositeAggregatePartValid7_0188 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 193408
  | _ => True

theorem oppositeAggregatePart7_0188 :
    oppositeAggregatePartValid7_0188 oppositeHistoryChunk0188 := by
  unfold oppositeAggregatePartValid7_0188 oppositeHistoryChunk0188
  decide

theorem oppositeRange_0188 :
    oppositeHistoryChunk0188.ResidueIndexedValid anchorHistories 5000000 18 25 192512 := by
  have h0 := oppositeAggregatePart0_0188
  simp only [oppositeAggregatePartValid0_0188, oppositeHistoryChunk0188] at h0
  have h1 := oppositeAggregatePart1_0188
  simp only [oppositeAggregatePartValid1_0188, oppositeHistoryChunk0188] at h1
  have h2 := oppositeAggregatePart2_0188
  simp only [oppositeAggregatePartValid2_0188, oppositeHistoryChunk0188] at h2
  have h3 := oppositeAggregatePart3_0188
  simp only [oppositeAggregatePartValid3_0188, oppositeHistoryChunk0188] at h3
  have h4 := oppositeAggregatePart4_0188
  simp only [oppositeAggregatePartValid4_0188, oppositeHistoryChunk0188] at h4
  have h5 := oppositeAggregatePart5_0188
  simp only [oppositeAggregatePartValid5_0188, oppositeHistoryChunk0188] at h5
  have h6 := oppositeAggregatePart6_0188
  simp only [oppositeAggregatePartValid6_0188, oppositeHistoryChunk0188] at h6
  have h7 := oppositeAggregatePart7_0188
  simp only [oppositeAggregatePartValid7_0188, oppositeHistoryChunk0188] at h7
  unfold oppositeHistoryChunk0188
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0189 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 193536
  | _ => True

theorem oppositeAggregatePart0_0189 :
    oppositeAggregatePartValid0_0189 oppositeHistoryChunk0189 := by
  unfold oppositeAggregatePartValid0_0189 oppositeHistoryChunk0189
  decide

def oppositeAggregatePartValid1_0189 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 193664
  | _ => True

theorem oppositeAggregatePart1_0189 :
    oppositeAggregatePartValid1_0189 oppositeHistoryChunk0189 := by
  unfold oppositeAggregatePartValid1_0189 oppositeHistoryChunk0189
  decide

def oppositeAggregatePartValid2_0189 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 193792
  | _ => True

theorem oppositeAggregatePart2_0189 :
    oppositeAggregatePartValid2_0189 oppositeHistoryChunk0189 := by
  unfold oppositeAggregatePartValid2_0189 oppositeHistoryChunk0189
  decide

def oppositeAggregatePartValid3_0189 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 193920
  | _ => True

theorem oppositeAggregatePart3_0189 :
    oppositeAggregatePartValid3_0189 oppositeHistoryChunk0189 := by
  unfold oppositeAggregatePartValid3_0189 oppositeHistoryChunk0189
  decide

def oppositeAggregatePartValid4_0189 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 194048
  | _ => True

theorem oppositeAggregatePart4_0189 :
    oppositeAggregatePartValid4_0189 oppositeHistoryChunk0189 := by
  unfold oppositeAggregatePartValid4_0189 oppositeHistoryChunk0189
  decide

def oppositeAggregatePartValid5_0189 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 194176
  | _ => True

theorem oppositeAggregatePart5_0189 :
    oppositeAggregatePartValid5_0189 oppositeHistoryChunk0189 := by
  unfold oppositeAggregatePartValid5_0189 oppositeHistoryChunk0189
  decide

def oppositeAggregatePartValid6_0189 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 194304
  | _ => True

theorem oppositeAggregatePart6_0189 :
    oppositeAggregatePartValid6_0189 oppositeHistoryChunk0189 := by
  unfold oppositeAggregatePartValid6_0189 oppositeHistoryChunk0189
  decide

def oppositeAggregatePartValid7_0189 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 194432
  | _ => True

theorem oppositeAggregatePart7_0189 :
    oppositeAggregatePartValid7_0189 oppositeHistoryChunk0189 := by
  unfold oppositeAggregatePartValid7_0189 oppositeHistoryChunk0189
  decide

theorem oppositeRange_0189 :
    oppositeHistoryChunk0189.ResidueIndexedValid anchorHistories 5000000 18 25 193536 := by
  have h0 := oppositeAggregatePart0_0189
  simp only [oppositeAggregatePartValid0_0189, oppositeHistoryChunk0189] at h0
  have h1 := oppositeAggregatePart1_0189
  simp only [oppositeAggregatePartValid1_0189, oppositeHistoryChunk0189] at h1
  have h2 := oppositeAggregatePart2_0189
  simp only [oppositeAggregatePartValid2_0189, oppositeHistoryChunk0189] at h2
  have h3 := oppositeAggregatePart3_0189
  simp only [oppositeAggregatePartValid3_0189, oppositeHistoryChunk0189] at h3
  have h4 := oppositeAggregatePart4_0189
  simp only [oppositeAggregatePartValid4_0189, oppositeHistoryChunk0189] at h4
  have h5 := oppositeAggregatePart5_0189
  simp only [oppositeAggregatePartValid5_0189, oppositeHistoryChunk0189] at h5
  have h6 := oppositeAggregatePart6_0189
  simp only [oppositeAggregatePartValid6_0189, oppositeHistoryChunk0189] at h6
  have h7 := oppositeAggregatePart7_0189
  simp only [oppositeAggregatePartValid7_0189, oppositeHistoryChunk0189] at h7
  unfold oppositeHistoryChunk0189
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0190 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 194560
  | _ => True

theorem oppositeAggregatePart0_0190 :
    oppositeAggregatePartValid0_0190 oppositeHistoryChunk0190 := by
  unfold oppositeAggregatePartValid0_0190 oppositeHistoryChunk0190
  decide

def oppositeAggregatePartValid1_0190 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 194688
  | _ => True

theorem oppositeAggregatePart1_0190 :
    oppositeAggregatePartValid1_0190 oppositeHistoryChunk0190 := by
  unfold oppositeAggregatePartValid1_0190 oppositeHistoryChunk0190
  decide

def oppositeAggregatePartValid2_0190 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 194816
  | _ => True

theorem oppositeAggregatePart2_0190 :
    oppositeAggregatePartValid2_0190 oppositeHistoryChunk0190 := by
  unfold oppositeAggregatePartValid2_0190 oppositeHistoryChunk0190
  decide

def oppositeAggregatePartValid3_0190 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 194944
  | _ => True

theorem oppositeAggregatePart3_0190 :
    oppositeAggregatePartValid3_0190 oppositeHistoryChunk0190 := by
  unfold oppositeAggregatePartValid3_0190 oppositeHistoryChunk0190
  decide

def oppositeAggregatePartValid4_0190 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 195072
  | _ => True

theorem oppositeAggregatePart4_0190 :
    oppositeAggregatePartValid4_0190 oppositeHistoryChunk0190 := by
  unfold oppositeAggregatePartValid4_0190 oppositeHistoryChunk0190
  decide

def oppositeAggregatePartValid5_0190 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 195200
  | _ => True

theorem oppositeAggregatePart5_0190 :
    oppositeAggregatePartValid5_0190 oppositeHistoryChunk0190 := by
  unfold oppositeAggregatePartValid5_0190 oppositeHistoryChunk0190
  decide

def oppositeAggregatePartValid6_0190 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 195328
  | _ => True

theorem oppositeAggregatePart6_0190 :
    oppositeAggregatePartValid6_0190 oppositeHistoryChunk0190 := by
  unfold oppositeAggregatePartValid6_0190 oppositeHistoryChunk0190
  decide

def oppositeAggregatePartValid7_0190 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 195456
  | _ => True

theorem oppositeAggregatePart7_0190 :
    oppositeAggregatePartValid7_0190 oppositeHistoryChunk0190 := by
  unfold oppositeAggregatePartValid7_0190 oppositeHistoryChunk0190
  decide

theorem oppositeRange_0190 :
    oppositeHistoryChunk0190.ResidueIndexedValid anchorHistories 5000000 18 25 194560 := by
  have h0 := oppositeAggregatePart0_0190
  simp only [oppositeAggregatePartValid0_0190, oppositeHistoryChunk0190] at h0
  have h1 := oppositeAggregatePart1_0190
  simp only [oppositeAggregatePartValid1_0190, oppositeHistoryChunk0190] at h1
  have h2 := oppositeAggregatePart2_0190
  simp only [oppositeAggregatePartValid2_0190, oppositeHistoryChunk0190] at h2
  have h3 := oppositeAggregatePart3_0190
  simp only [oppositeAggregatePartValid3_0190, oppositeHistoryChunk0190] at h3
  have h4 := oppositeAggregatePart4_0190
  simp only [oppositeAggregatePartValid4_0190, oppositeHistoryChunk0190] at h4
  have h5 := oppositeAggregatePart5_0190
  simp only [oppositeAggregatePartValid5_0190, oppositeHistoryChunk0190] at h5
  have h6 := oppositeAggregatePart6_0190
  simp only [oppositeAggregatePartValid6_0190, oppositeHistoryChunk0190] at h6
  have h7 := oppositeAggregatePart7_0190
  simp only [oppositeAggregatePartValid7_0190, oppositeHistoryChunk0190] at h7
  unfold oppositeHistoryChunk0190
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0191 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 195584
  | _ => True

theorem oppositeAggregatePart0_0191 :
    oppositeAggregatePartValid0_0191 oppositeHistoryChunk0191 := by
  unfold oppositeAggregatePartValid0_0191 oppositeHistoryChunk0191
  decide

def oppositeAggregatePartValid1_0191 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 195712
  | _ => True

theorem oppositeAggregatePart1_0191 :
    oppositeAggregatePartValid1_0191 oppositeHistoryChunk0191 := by
  unfold oppositeAggregatePartValid1_0191 oppositeHistoryChunk0191
  decide

def oppositeAggregatePartValid2_0191 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 195840
  | _ => True

theorem oppositeAggregatePart2_0191 :
    oppositeAggregatePartValid2_0191 oppositeHistoryChunk0191 := by
  unfold oppositeAggregatePartValid2_0191 oppositeHistoryChunk0191
  decide

def oppositeAggregatePartValid3_0191 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 195968
  | _ => True

theorem oppositeAggregatePart3_0191 :
    oppositeAggregatePartValid3_0191 oppositeHistoryChunk0191 := by
  unfold oppositeAggregatePartValid3_0191 oppositeHistoryChunk0191
  decide

def oppositeAggregatePartValid4_0191 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 196096
  | _ => True

theorem oppositeAggregatePart4_0191 :
    oppositeAggregatePartValid4_0191 oppositeHistoryChunk0191 := by
  unfold oppositeAggregatePartValid4_0191 oppositeHistoryChunk0191
  decide

def oppositeAggregatePartValid5_0191 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 196224
  | _ => True

theorem oppositeAggregatePart5_0191 :
    oppositeAggregatePartValid5_0191 oppositeHistoryChunk0191 := by
  unfold oppositeAggregatePartValid5_0191 oppositeHistoryChunk0191
  decide

def oppositeAggregatePartValid6_0191 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 196352
  | _ => True

theorem oppositeAggregatePart6_0191 :
    oppositeAggregatePartValid6_0191 oppositeHistoryChunk0191 := by
  unfold oppositeAggregatePartValid6_0191 oppositeHistoryChunk0191
  decide

def oppositeAggregatePartValid7_0191 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 196480
  | _ => True

theorem oppositeAggregatePart7_0191 :
    oppositeAggregatePartValid7_0191 oppositeHistoryChunk0191 := by
  unfold oppositeAggregatePartValid7_0191 oppositeHistoryChunk0191
  decide

theorem oppositeRange_0191 :
    oppositeHistoryChunk0191.ResidueIndexedValid anchorHistories 5000000 18 25 195584 := by
  have h0 := oppositeAggregatePart0_0191
  simp only [oppositeAggregatePartValid0_0191, oppositeHistoryChunk0191] at h0
  have h1 := oppositeAggregatePart1_0191
  simp only [oppositeAggregatePartValid1_0191, oppositeHistoryChunk0191] at h1
  have h2 := oppositeAggregatePart2_0191
  simp only [oppositeAggregatePartValid2_0191, oppositeHistoryChunk0191] at h2
  have h3 := oppositeAggregatePart3_0191
  simp only [oppositeAggregatePartValid3_0191, oppositeHistoryChunk0191] at h3
  have h4 := oppositeAggregatePart4_0191
  simp only [oppositeAggregatePartValid4_0191, oppositeHistoryChunk0191] at h4
  have h5 := oppositeAggregatePart5_0191
  simp only [oppositeAggregatePartValid5_0191, oppositeHistoryChunk0191] at h5
  have h6 := oppositeAggregatePart6_0191
  simp only [oppositeAggregatePartValid6_0191, oppositeHistoryChunk0191] at h6
  have h7 := oppositeAggregatePart7_0191
  simp only [oppositeAggregatePartValid7_0191, oppositeHistoryChunk0191] at h7
  unfold oppositeHistoryChunk0191
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
