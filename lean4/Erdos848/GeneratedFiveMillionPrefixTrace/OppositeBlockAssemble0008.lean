import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0008
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0009
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0010
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0011

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0008, 0009, 0010, 0011 -/

def oppositeAggregatePartValid0_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 8192
  | _ => True

theorem oppositeAggregatePart0_0008 :
    oppositeAggregatePartValid0_0008 oppositeHistoryChunk0008 := by
  unfold oppositeAggregatePartValid0_0008 oppositeHistoryChunk0008
  decide

def oppositeAggregatePartValid1_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 8320
  | _ => True

theorem oppositeAggregatePart1_0008 :
    oppositeAggregatePartValid1_0008 oppositeHistoryChunk0008 := by
  unfold oppositeAggregatePartValid1_0008 oppositeHistoryChunk0008
  decide

def oppositeAggregatePartValid2_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 8448
  | _ => True

theorem oppositeAggregatePart2_0008 :
    oppositeAggregatePartValid2_0008 oppositeHistoryChunk0008 := by
  unfold oppositeAggregatePartValid2_0008 oppositeHistoryChunk0008
  decide

def oppositeAggregatePartValid3_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 8576
  | _ => True

theorem oppositeAggregatePart3_0008 :
    oppositeAggregatePartValid3_0008 oppositeHistoryChunk0008 := by
  unfold oppositeAggregatePartValid3_0008 oppositeHistoryChunk0008
  decide

def oppositeAggregatePartValid4_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 8704
  | _ => True

theorem oppositeAggregatePart4_0008 :
    oppositeAggregatePartValid4_0008 oppositeHistoryChunk0008 := by
  unfold oppositeAggregatePartValid4_0008 oppositeHistoryChunk0008
  decide

def oppositeAggregatePartValid5_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 8832
  | _ => True

theorem oppositeAggregatePart5_0008 :
    oppositeAggregatePartValid5_0008 oppositeHistoryChunk0008 := by
  unfold oppositeAggregatePartValid5_0008 oppositeHistoryChunk0008
  decide

def oppositeAggregatePartValid6_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 8960
  | _ => True

theorem oppositeAggregatePart6_0008 :
    oppositeAggregatePartValid6_0008 oppositeHistoryChunk0008 := by
  unfold oppositeAggregatePartValid6_0008 oppositeHistoryChunk0008
  decide

def oppositeAggregatePartValid7_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 9088
  | _ => True

theorem oppositeAggregatePart7_0008 :
    oppositeAggregatePartValid7_0008 oppositeHistoryChunk0008 := by
  unfold oppositeAggregatePartValid7_0008 oppositeHistoryChunk0008
  decide

theorem oppositeRange_0008 :
    oppositeHistoryChunk0008.ResidueIndexedValid anchorHistories 5000000 18 25 8192 := by
  have h0 := oppositeAggregatePart0_0008
  simp only [oppositeAggregatePartValid0_0008, oppositeHistoryChunk0008] at h0
  have h1 := oppositeAggregatePart1_0008
  simp only [oppositeAggregatePartValid1_0008, oppositeHistoryChunk0008] at h1
  have h2 := oppositeAggregatePart2_0008
  simp only [oppositeAggregatePartValid2_0008, oppositeHistoryChunk0008] at h2
  have h3 := oppositeAggregatePart3_0008
  simp only [oppositeAggregatePartValid3_0008, oppositeHistoryChunk0008] at h3
  have h4 := oppositeAggregatePart4_0008
  simp only [oppositeAggregatePartValid4_0008, oppositeHistoryChunk0008] at h4
  have h5 := oppositeAggregatePart5_0008
  simp only [oppositeAggregatePartValid5_0008, oppositeHistoryChunk0008] at h5
  have h6 := oppositeAggregatePart6_0008
  simp only [oppositeAggregatePartValid6_0008, oppositeHistoryChunk0008] at h6
  have h7 := oppositeAggregatePart7_0008
  simp only [oppositeAggregatePartValid7_0008, oppositeHistoryChunk0008] at h7
  unfold oppositeHistoryChunk0008
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 9216
  | _ => True

theorem oppositeAggregatePart0_0009 :
    oppositeAggregatePartValid0_0009 oppositeHistoryChunk0009 := by
  unfold oppositeAggregatePartValid0_0009 oppositeHistoryChunk0009
  decide

def oppositeAggregatePartValid1_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 9344
  | _ => True

theorem oppositeAggregatePart1_0009 :
    oppositeAggregatePartValid1_0009 oppositeHistoryChunk0009 := by
  unfold oppositeAggregatePartValid1_0009 oppositeHistoryChunk0009
  decide

def oppositeAggregatePartValid2_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 9472
  | _ => True

theorem oppositeAggregatePart2_0009 :
    oppositeAggregatePartValid2_0009 oppositeHistoryChunk0009 := by
  unfold oppositeAggregatePartValid2_0009 oppositeHistoryChunk0009
  decide

def oppositeAggregatePartValid3_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 9600
  | _ => True

theorem oppositeAggregatePart3_0009 :
    oppositeAggregatePartValid3_0009 oppositeHistoryChunk0009 := by
  unfold oppositeAggregatePartValid3_0009 oppositeHistoryChunk0009
  decide

def oppositeAggregatePartValid4_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 9728
  | _ => True

theorem oppositeAggregatePart4_0009 :
    oppositeAggregatePartValid4_0009 oppositeHistoryChunk0009 := by
  unfold oppositeAggregatePartValid4_0009 oppositeHistoryChunk0009
  decide

def oppositeAggregatePartValid5_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 9856
  | _ => True

theorem oppositeAggregatePart5_0009 :
    oppositeAggregatePartValid5_0009 oppositeHistoryChunk0009 := by
  unfold oppositeAggregatePartValid5_0009 oppositeHistoryChunk0009
  decide

def oppositeAggregatePartValid6_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 9984
  | _ => True

theorem oppositeAggregatePart6_0009 :
    oppositeAggregatePartValid6_0009 oppositeHistoryChunk0009 := by
  unfold oppositeAggregatePartValid6_0009 oppositeHistoryChunk0009
  decide

def oppositeAggregatePartValid7_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 10112
  | _ => True

theorem oppositeAggregatePart7_0009 :
    oppositeAggregatePartValid7_0009 oppositeHistoryChunk0009 := by
  unfold oppositeAggregatePartValid7_0009 oppositeHistoryChunk0009
  decide

theorem oppositeRange_0009 :
    oppositeHistoryChunk0009.ResidueIndexedValid anchorHistories 5000000 18 25 9216 := by
  have h0 := oppositeAggregatePart0_0009
  simp only [oppositeAggregatePartValid0_0009, oppositeHistoryChunk0009] at h0
  have h1 := oppositeAggregatePart1_0009
  simp only [oppositeAggregatePartValid1_0009, oppositeHistoryChunk0009] at h1
  have h2 := oppositeAggregatePart2_0009
  simp only [oppositeAggregatePartValid2_0009, oppositeHistoryChunk0009] at h2
  have h3 := oppositeAggregatePart3_0009
  simp only [oppositeAggregatePartValid3_0009, oppositeHistoryChunk0009] at h3
  have h4 := oppositeAggregatePart4_0009
  simp only [oppositeAggregatePartValid4_0009, oppositeHistoryChunk0009] at h4
  have h5 := oppositeAggregatePart5_0009
  simp only [oppositeAggregatePartValid5_0009, oppositeHistoryChunk0009] at h5
  have h6 := oppositeAggregatePart6_0009
  simp only [oppositeAggregatePartValid6_0009, oppositeHistoryChunk0009] at h6
  have h7 := oppositeAggregatePart7_0009
  simp only [oppositeAggregatePartValid7_0009, oppositeHistoryChunk0009] at h7
  unfold oppositeHistoryChunk0009
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 10240
  | _ => True

theorem oppositeAggregatePart0_0010 :
    oppositeAggregatePartValid0_0010 oppositeHistoryChunk0010 := by
  unfold oppositeAggregatePartValid0_0010 oppositeHistoryChunk0010
  decide

def oppositeAggregatePartValid1_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 10368
  | _ => True

theorem oppositeAggregatePart1_0010 :
    oppositeAggregatePartValid1_0010 oppositeHistoryChunk0010 := by
  unfold oppositeAggregatePartValid1_0010 oppositeHistoryChunk0010
  decide

def oppositeAggregatePartValid2_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 10496
  | _ => True

theorem oppositeAggregatePart2_0010 :
    oppositeAggregatePartValid2_0010 oppositeHistoryChunk0010 := by
  unfold oppositeAggregatePartValid2_0010 oppositeHistoryChunk0010
  decide

def oppositeAggregatePartValid3_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 10624
  | _ => True

theorem oppositeAggregatePart3_0010 :
    oppositeAggregatePartValid3_0010 oppositeHistoryChunk0010 := by
  unfold oppositeAggregatePartValid3_0010 oppositeHistoryChunk0010
  decide

def oppositeAggregatePartValid4_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 10752
  | _ => True

theorem oppositeAggregatePart4_0010 :
    oppositeAggregatePartValid4_0010 oppositeHistoryChunk0010 := by
  unfold oppositeAggregatePartValid4_0010 oppositeHistoryChunk0010
  decide

def oppositeAggregatePartValid5_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 10880
  | _ => True

theorem oppositeAggregatePart5_0010 :
    oppositeAggregatePartValid5_0010 oppositeHistoryChunk0010 := by
  unfold oppositeAggregatePartValid5_0010 oppositeHistoryChunk0010
  decide

def oppositeAggregatePartValid6_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 11008
  | _ => True

theorem oppositeAggregatePart6_0010 :
    oppositeAggregatePartValid6_0010 oppositeHistoryChunk0010 := by
  unfold oppositeAggregatePartValid6_0010 oppositeHistoryChunk0010
  decide

def oppositeAggregatePartValid7_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 11136
  | _ => True

theorem oppositeAggregatePart7_0010 :
    oppositeAggregatePartValid7_0010 oppositeHistoryChunk0010 := by
  unfold oppositeAggregatePartValid7_0010 oppositeHistoryChunk0010
  decide

theorem oppositeRange_0010 :
    oppositeHistoryChunk0010.ResidueIndexedValid anchorHistories 5000000 18 25 10240 := by
  have h0 := oppositeAggregatePart0_0010
  simp only [oppositeAggregatePartValid0_0010, oppositeHistoryChunk0010] at h0
  have h1 := oppositeAggregatePart1_0010
  simp only [oppositeAggregatePartValid1_0010, oppositeHistoryChunk0010] at h1
  have h2 := oppositeAggregatePart2_0010
  simp only [oppositeAggregatePartValid2_0010, oppositeHistoryChunk0010] at h2
  have h3 := oppositeAggregatePart3_0010
  simp only [oppositeAggregatePartValid3_0010, oppositeHistoryChunk0010] at h3
  have h4 := oppositeAggregatePart4_0010
  simp only [oppositeAggregatePartValid4_0010, oppositeHistoryChunk0010] at h4
  have h5 := oppositeAggregatePart5_0010
  simp only [oppositeAggregatePartValid5_0010, oppositeHistoryChunk0010] at h5
  have h6 := oppositeAggregatePart6_0010
  simp only [oppositeAggregatePartValid6_0010, oppositeHistoryChunk0010] at h6
  have h7 := oppositeAggregatePart7_0010
  simp only [oppositeAggregatePartValid7_0010, oppositeHistoryChunk0010] at h7
  unfold oppositeHistoryChunk0010
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 11264
  | _ => True

theorem oppositeAggregatePart0_0011 :
    oppositeAggregatePartValid0_0011 oppositeHistoryChunk0011 := by
  unfold oppositeAggregatePartValid0_0011 oppositeHistoryChunk0011
  decide

def oppositeAggregatePartValid1_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 11392
  | _ => True

theorem oppositeAggregatePart1_0011 :
    oppositeAggregatePartValid1_0011 oppositeHistoryChunk0011 := by
  unfold oppositeAggregatePartValid1_0011 oppositeHistoryChunk0011
  decide

def oppositeAggregatePartValid2_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 11520
  | _ => True

theorem oppositeAggregatePart2_0011 :
    oppositeAggregatePartValid2_0011 oppositeHistoryChunk0011 := by
  unfold oppositeAggregatePartValid2_0011 oppositeHistoryChunk0011
  decide

def oppositeAggregatePartValid3_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 11648
  | _ => True

theorem oppositeAggregatePart3_0011 :
    oppositeAggregatePartValid3_0011 oppositeHistoryChunk0011 := by
  unfold oppositeAggregatePartValid3_0011 oppositeHistoryChunk0011
  decide

def oppositeAggregatePartValid4_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 11776
  | _ => True

theorem oppositeAggregatePart4_0011 :
    oppositeAggregatePartValid4_0011 oppositeHistoryChunk0011 := by
  unfold oppositeAggregatePartValid4_0011 oppositeHistoryChunk0011
  decide

def oppositeAggregatePartValid5_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 11904
  | _ => True

theorem oppositeAggregatePart5_0011 :
    oppositeAggregatePartValid5_0011 oppositeHistoryChunk0011 := by
  unfold oppositeAggregatePartValid5_0011 oppositeHistoryChunk0011
  decide

def oppositeAggregatePartValid6_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 12032
  | _ => True

theorem oppositeAggregatePart6_0011 :
    oppositeAggregatePartValid6_0011 oppositeHistoryChunk0011 := by
  unfold oppositeAggregatePartValid6_0011 oppositeHistoryChunk0011
  decide

def oppositeAggregatePartValid7_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 12160
  | _ => True

theorem oppositeAggregatePart7_0011 :
    oppositeAggregatePartValid7_0011 oppositeHistoryChunk0011 := by
  unfold oppositeAggregatePartValid7_0011 oppositeHistoryChunk0011
  decide

theorem oppositeRange_0011 :
    oppositeHistoryChunk0011.ResidueIndexedValid anchorHistories 5000000 18 25 11264 := by
  have h0 := oppositeAggregatePart0_0011
  simp only [oppositeAggregatePartValid0_0011, oppositeHistoryChunk0011] at h0
  have h1 := oppositeAggregatePart1_0011
  simp only [oppositeAggregatePartValid1_0011, oppositeHistoryChunk0011] at h1
  have h2 := oppositeAggregatePart2_0011
  simp only [oppositeAggregatePartValid2_0011, oppositeHistoryChunk0011] at h2
  have h3 := oppositeAggregatePart3_0011
  simp only [oppositeAggregatePartValid3_0011, oppositeHistoryChunk0011] at h3
  have h4 := oppositeAggregatePart4_0011
  simp only [oppositeAggregatePartValid4_0011, oppositeHistoryChunk0011] at h4
  have h5 := oppositeAggregatePart5_0011
  simp only [oppositeAggregatePartValid5_0011, oppositeHistoryChunk0011] at h5
  have h6 := oppositeAggregatePart6_0011
  simp only [oppositeAggregatePartValid6_0011, oppositeHistoryChunk0011] at h6
  have h7 := oppositeAggregatePart7_0011
  simp only [oppositeAggregatePartValid7_0011, oppositeHistoryChunk0011] at h7
  unfold oppositeHistoryChunk0011
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
