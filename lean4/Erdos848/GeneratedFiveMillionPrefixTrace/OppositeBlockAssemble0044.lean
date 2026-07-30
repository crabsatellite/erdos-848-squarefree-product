import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0044
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0045
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0046
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0047

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0044, 0045, 0046, 0047 -/

def oppositeAggregatePartValid0_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 45056
  | _ => True

theorem oppositeAggregatePart0_0044 :
    oppositeAggregatePartValid0_0044 oppositeHistoryChunk0044 := by
  unfold oppositeAggregatePartValid0_0044 oppositeHistoryChunk0044
  decide

def oppositeAggregatePartValid1_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 45184
  | _ => True

theorem oppositeAggregatePart1_0044 :
    oppositeAggregatePartValid1_0044 oppositeHistoryChunk0044 := by
  unfold oppositeAggregatePartValid1_0044 oppositeHistoryChunk0044
  decide

def oppositeAggregatePartValid2_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 45312
  | _ => True

theorem oppositeAggregatePart2_0044 :
    oppositeAggregatePartValid2_0044 oppositeHistoryChunk0044 := by
  unfold oppositeAggregatePartValid2_0044 oppositeHistoryChunk0044
  decide

def oppositeAggregatePartValid3_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 45440
  | _ => True

theorem oppositeAggregatePart3_0044 :
    oppositeAggregatePartValid3_0044 oppositeHistoryChunk0044 := by
  unfold oppositeAggregatePartValid3_0044 oppositeHistoryChunk0044
  decide

def oppositeAggregatePartValid4_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 45568
  | _ => True

theorem oppositeAggregatePart4_0044 :
    oppositeAggregatePartValid4_0044 oppositeHistoryChunk0044 := by
  unfold oppositeAggregatePartValid4_0044 oppositeHistoryChunk0044
  decide

def oppositeAggregatePartValid5_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 45696
  | _ => True

theorem oppositeAggregatePart5_0044 :
    oppositeAggregatePartValid5_0044 oppositeHistoryChunk0044 := by
  unfold oppositeAggregatePartValid5_0044 oppositeHistoryChunk0044
  decide

def oppositeAggregatePartValid6_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 45824
  | _ => True

theorem oppositeAggregatePart6_0044 :
    oppositeAggregatePartValid6_0044 oppositeHistoryChunk0044 := by
  unfold oppositeAggregatePartValid6_0044 oppositeHistoryChunk0044
  decide

def oppositeAggregatePartValid7_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 45952
  | _ => True

theorem oppositeAggregatePart7_0044 :
    oppositeAggregatePartValid7_0044 oppositeHistoryChunk0044 := by
  unfold oppositeAggregatePartValid7_0044 oppositeHistoryChunk0044
  decide

theorem oppositeRange_0044 :
    oppositeHistoryChunk0044.ResidueIndexedValid anchorHistories 5000000 18 25 45056 := by
  have h0 := oppositeAggregatePart0_0044
  simp only [oppositeAggregatePartValid0_0044, oppositeHistoryChunk0044] at h0
  have h1 := oppositeAggregatePart1_0044
  simp only [oppositeAggregatePartValid1_0044, oppositeHistoryChunk0044] at h1
  have h2 := oppositeAggregatePart2_0044
  simp only [oppositeAggregatePartValid2_0044, oppositeHistoryChunk0044] at h2
  have h3 := oppositeAggregatePart3_0044
  simp only [oppositeAggregatePartValid3_0044, oppositeHistoryChunk0044] at h3
  have h4 := oppositeAggregatePart4_0044
  simp only [oppositeAggregatePartValid4_0044, oppositeHistoryChunk0044] at h4
  have h5 := oppositeAggregatePart5_0044
  simp only [oppositeAggregatePartValid5_0044, oppositeHistoryChunk0044] at h5
  have h6 := oppositeAggregatePart6_0044
  simp only [oppositeAggregatePartValid6_0044, oppositeHistoryChunk0044] at h6
  have h7 := oppositeAggregatePart7_0044
  simp only [oppositeAggregatePartValid7_0044, oppositeHistoryChunk0044] at h7
  unfold oppositeHistoryChunk0044
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 46080
  | _ => True

theorem oppositeAggregatePart0_0045 :
    oppositeAggregatePartValid0_0045 oppositeHistoryChunk0045 := by
  unfold oppositeAggregatePartValid0_0045 oppositeHistoryChunk0045
  decide

def oppositeAggregatePartValid1_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 46208
  | _ => True

theorem oppositeAggregatePart1_0045 :
    oppositeAggregatePartValid1_0045 oppositeHistoryChunk0045 := by
  unfold oppositeAggregatePartValid1_0045 oppositeHistoryChunk0045
  decide

def oppositeAggregatePartValid2_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 46336
  | _ => True

theorem oppositeAggregatePart2_0045 :
    oppositeAggregatePartValid2_0045 oppositeHistoryChunk0045 := by
  unfold oppositeAggregatePartValid2_0045 oppositeHistoryChunk0045
  decide

def oppositeAggregatePartValid3_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 46464
  | _ => True

theorem oppositeAggregatePart3_0045 :
    oppositeAggregatePartValid3_0045 oppositeHistoryChunk0045 := by
  unfold oppositeAggregatePartValid3_0045 oppositeHistoryChunk0045
  decide

def oppositeAggregatePartValid4_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 46592
  | _ => True

theorem oppositeAggregatePart4_0045 :
    oppositeAggregatePartValid4_0045 oppositeHistoryChunk0045 := by
  unfold oppositeAggregatePartValid4_0045 oppositeHistoryChunk0045
  decide

def oppositeAggregatePartValid5_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 46720
  | _ => True

theorem oppositeAggregatePart5_0045 :
    oppositeAggregatePartValid5_0045 oppositeHistoryChunk0045 := by
  unfold oppositeAggregatePartValid5_0045 oppositeHistoryChunk0045
  decide

def oppositeAggregatePartValid6_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 46848
  | _ => True

theorem oppositeAggregatePart6_0045 :
    oppositeAggregatePartValid6_0045 oppositeHistoryChunk0045 := by
  unfold oppositeAggregatePartValid6_0045 oppositeHistoryChunk0045
  decide

def oppositeAggregatePartValid7_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 46976
  | _ => True

theorem oppositeAggregatePart7_0045 :
    oppositeAggregatePartValid7_0045 oppositeHistoryChunk0045 := by
  unfold oppositeAggregatePartValid7_0045 oppositeHistoryChunk0045
  decide

theorem oppositeRange_0045 :
    oppositeHistoryChunk0045.ResidueIndexedValid anchorHistories 5000000 18 25 46080 := by
  have h0 := oppositeAggregatePart0_0045
  simp only [oppositeAggregatePartValid0_0045, oppositeHistoryChunk0045] at h0
  have h1 := oppositeAggregatePart1_0045
  simp only [oppositeAggregatePartValid1_0045, oppositeHistoryChunk0045] at h1
  have h2 := oppositeAggregatePart2_0045
  simp only [oppositeAggregatePartValid2_0045, oppositeHistoryChunk0045] at h2
  have h3 := oppositeAggregatePart3_0045
  simp only [oppositeAggregatePartValid3_0045, oppositeHistoryChunk0045] at h3
  have h4 := oppositeAggregatePart4_0045
  simp only [oppositeAggregatePartValid4_0045, oppositeHistoryChunk0045] at h4
  have h5 := oppositeAggregatePart5_0045
  simp only [oppositeAggregatePartValid5_0045, oppositeHistoryChunk0045] at h5
  have h6 := oppositeAggregatePart6_0045
  simp only [oppositeAggregatePartValid6_0045, oppositeHistoryChunk0045] at h6
  have h7 := oppositeAggregatePart7_0045
  simp only [oppositeAggregatePartValid7_0045, oppositeHistoryChunk0045] at h7
  unfold oppositeHistoryChunk0045
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 47104
  | _ => True

theorem oppositeAggregatePart0_0046 :
    oppositeAggregatePartValid0_0046 oppositeHistoryChunk0046 := by
  unfold oppositeAggregatePartValid0_0046 oppositeHistoryChunk0046
  decide

def oppositeAggregatePartValid1_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 47232
  | _ => True

theorem oppositeAggregatePart1_0046 :
    oppositeAggregatePartValid1_0046 oppositeHistoryChunk0046 := by
  unfold oppositeAggregatePartValid1_0046 oppositeHistoryChunk0046
  decide

def oppositeAggregatePartValid2_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 47360
  | _ => True

theorem oppositeAggregatePart2_0046 :
    oppositeAggregatePartValid2_0046 oppositeHistoryChunk0046 := by
  unfold oppositeAggregatePartValid2_0046 oppositeHistoryChunk0046
  decide

def oppositeAggregatePartValid3_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 47488
  | _ => True

theorem oppositeAggregatePart3_0046 :
    oppositeAggregatePartValid3_0046 oppositeHistoryChunk0046 := by
  unfold oppositeAggregatePartValid3_0046 oppositeHistoryChunk0046
  decide

def oppositeAggregatePartValid4_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 47616
  | _ => True

theorem oppositeAggregatePart4_0046 :
    oppositeAggregatePartValid4_0046 oppositeHistoryChunk0046 := by
  unfold oppositeAggregatePartValid4_0046 oppositeHistoryChunk0046
  decide

def oppositeAggregatePartValid5_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 47744
  | _ => True

theorem oppositeAggregatePart5_0046 :
    oppositeAggregatePartValid5_0046 oppositeHistoryChunk0046 := by
  unfold oppositeAggregatePartValid5_0046 oppositeHistoryChunk0046
  decide

def oppositeAggregatePartValid6_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 47872
  | _ => True

theorem oppositeAggregatePart6_0046 :
    oppositeAggregatePartValid6_0046 oppositeHistoryChunk0046 := by
  unfold oppositeAggregatePartValid6_0046 oppositeHistoryChunk0046
  decide

def oppositeAggregatePartValid7_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 48000
  | _ => True

theorem oppositeAggregatePart7_0046 :
    oppositeAggregatePartValid7_0046 oppositeHistoryChunk0046 := by
  unfold oppositeAggregatePartValid7_0046 oppositeHistoryChunk0046
  decide

theorem oppositeRange_0046 :
    oppositeHistoryChunk0046.ResidueIndexedValid anchorHistories 5000000 18 25 47104 := by
  have h0 := oppositeAggregatePart0_0046
  simp only [oppositeAggregatePartValid0_0046, oppositeHistoryChunk0046] at h0
  have h1 := oppositeAggregatePart1_0046
  simp only [oppositeAggregatePartValid1_0046, oppositeHistoryChunk0046] at h1
  have h2 := oppositeAggregatePart2_0046
  simp only [oppositeAggregatePartValid2_0046, oppositeHistoryChunk0046] at h2
  have h3 := oppositeAggregatePart3_0046
  simp only [oppositeAggregatePartValid3_0046, oppositeHistoryChunk0046] at h3
  have h4 := oppositeAggregatePart4_0046
  simp only [oppositeAggregatePartValid4_0046, oppositeHistoryChunk0046] at h4
  have h5 := oppositeAggregatePart5_0046
  simp only [oppositeAggregatePartValid5_0046, oppositeHistoryChunk0046] at h5
  have h6 := oppositeAggregatePart6_0046
  simp only [oppositeAggregatePartValid6_0046, oppositeHistoryChunk0046] at h6
  have h7 := oppositeAggregatePart7_0046
  simp only [oppositeAggregatePartValid7_0046, oppositeHistoryChunk0046] at h7
  unfold oppositeHistoryChunk0046
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 48128
  | _ => True

theorem oppositeAggregatePart0_0047 :
    oppositeAggregatePartValid0_0047 oppositeHistoryChunk0047 := by
  unfold oppositeAggregatePartValid0_0047 oppositeHistoryChunk0047
  decide

def oppositeAggregatePartValid1_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 48256
  | _ => True

theorem oppositeAggregatePart1_0047 :
    oppositeAggregatePartValid1_0047 oppositeHistoryChunk0047 := by
  unfold oppositeAggregatePartValid1_0047 oppositeHistoryChunk0047
  decide

def oppositeAggregatePartValid2_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 48384
  | _ => True

theorem oppositeAggregatePart2_0047 :
    oppositeAggregatePartValid2_0047 oppositeHistoryChunk0047 := by
  unfold oppositeAggregatePartValid2_0047 oppositeHistoryChunk0047
  decide

def oppositeAggregatePartValid3_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 48512
  | _ => True

theorem oppositeAggregatePart3_0047 :
    oppositeAggregatePartValid3_0047 oppositeHistoryChunk0047 := by
  unfold oppositeAggregatePartValid3_0047 oppositeHistoryChunk0047
  decide

def oppositeAggregatePartValid4_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 48640
  | _ => True

theorem oppositeAggregatePart4_0047 :
    oppositeAggregatePartValid4_0047 oppositeHistoryChunk0047 := by
  unfold oppositeAggregatePartValid4_0047 oppositeHistoryChunk0047
  decide

def oppositeAggregatePartValid5_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 48768
  | _ => True

theorem oppositeAggregatePart5_0047 :
    oppositeAggregatePartValid5_0047 oppositeHistoryChunk0047 := by
  unfold oppositeAggregatePartValid5_0047 oppositeHistoryChunk0047
  decide

def oppositeAggregatePartValid6_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 48896
  | _ => True

theorem oppositeAggregatePart6_0047 :
    oppositeAggregatePartValid6_0047 oppositeHistoryChunk0047 := by
  unfold oppositeAggregatePartValid6_0047 oppositeHistoryChunk0047
  decide

def oppositeAggregatePartValid7_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 49024
  | _ => True

theorem oppositeAggregatePart7_0047 :
    oppositeAggregatePartValid7_0047 oppositeHistoryChunk0047 := by
  unfold oppositeAggregatePartValid7_0047 oppositeHistoryChunk0047
  decide

theorem oppositeRange_0047 :
    oppositeHistoryChunk0047.ResidueIndexedValid anchorHistories 5000000 18 25 48128 := by
  have h0 := oppositeAggregatePart0_0047
  simp only [oppositeAggregatePartValid0_0047, oppositeHistoryChunk0047] at h0
  have h1 := oppositeAggregatePart1_0047
  simp only [oppositeAggregatePartValid1_0047, oppositeHistoryChunk0047] at h1
  have h2 := oppositeAggregatePart2_0047
  simp only [oppositeAggregatePartValid2_0047, oppositeHistoryChunk0047] at h2
  have h3 := oppositeAggregatePart3_0047
  simp only [oppositeAggregatePartValid3_0047, oppositeHistoryChunk0047] at h3
  have h4 := oppositeAggregatePart4_0047
  simp only [oppositeAggregatePartValid4_0047, oppositeHistoryChunk0047] at h4
  have h5 := oppositeAggregatePart5_0047
  simp only [oppositeAggregatePartValid5_0047, oppositeHistoryChunk0047] at h5
  have h6 := oppositeAggregatePart6_0047
  simp only [oppositeAggregatePartValid6_0047, oppositeHistoryChunk0047] at h6
  have h7 := oppositeAggregatePart7_0047
  simp only [oppositeAggregatePartValid7_0047, oppositeHistoryChunk0047] at h7
  unfold oppositeHistoryChunk0047
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
