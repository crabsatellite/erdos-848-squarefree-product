import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0076
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0077
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0078
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0079

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0076, 0077, 0078, 0079 -/

def oppositeAggregatePartValid0_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 77824
  | _ => True

theorem oppositeAggregatePart0_0076 :
    oppositeAggregatePartValid0_0076 oppositeHistoryChunk0076 := by
  unfold oppositeAggregatePartValid0_0076 oppositeHistoryChunk0076
  decide

def oppositeAggregatePartValid1_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 77952
  | _ => True

theorem oppositeAggregatePart1_0076 :
    oppositeAggregatePartValid1_0076 oppositeHistoryChunk0076 := by
  unfold oppositeAggregatePartValid1_0076 oppositeHistoryChunk0076
  decide

def oppositeAggregatePartValid2_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 78080
  | _ => True

theorem oppositeAggregatePart2_0076 :
    oppositeAggregatePartValid2_0076 oppositeHistoryChunk0076 := by
  unfold oppositeAggregatePartValid2_0076 oppositeHistoryChunk0076
  decide

def oppositeAggregatePartValid3_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 78208
  | _ => True

theorem oppositeAggregatePart3_0076 :
    oppositeAggregatePartValid3_0076 oppositeHistoryChunk0076 := by
  unfold oppositeAggregatePartValid3_0076 oppositeHistoryChunk0076
  decide

def oppositeAggregatePartValid4_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 78336
  | _ => True

theorem oppositeAggregatePart4_0076 :
    oppositeAggregatePartValid4_0076 oppositeHistoryChunk0076 := by
  unfold oppositeAggregatePartValid4_0076 oppositeHistoryChunk0076
  decide

def oppositeAggregatePartValid5_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 78464
  | _ => True

theorem oppositeAggregatePart5_0076 :
    oppositeAggregatePartValid5_0076 oppositeHistoryChunk0076 := by
  unfold oppositeAggregatePartValid5_0076 oppositeHistoryChunk0076
  decide

def oppositeAggregatePartValid6_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 78592
  | _ => True

theorem oppositeAggregatePart6_0076 :
    oppositeAggregatePartValid6_0076 oppositeHistoryChunk0076 := by
  unfold oppositeAggregatePartValid6_0076 oppositeHistoryChunk0076
  decide

def oppositeAggregatePartValid7_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 78720
  | _ => True

theorem oppositeAggregatePart7_0076 :
    oppositeAggregatePartValid7_0076 oppositeHistoryChunk0076 := by
  unfold oppositeAggregatePartValid7_0076 oppositeHistoryChunk0076
  decide

theorem oppositeRange_0076 :
    oppositeHistoryChunk0076.ResidueIndexedValid anchorHistories 5000000 18 25 77824 := by
  have h0 := oppositeAggregatePart0_0076
  simp only [oppositeAggregatePartValid0_0076, oppositeHistoryChunk0076] at h0
  have h1 := oppositeAggregatePart1_0076
  simp only [oppositeAggregatePartValid1_0076, oppositeHistoryChunk0076] at h1
  have h2 := oppositeAggregatePart2_0076
  simp only [oppositeAggregatePartValid2_0076, oppositeHistoryChunk0076] at h2
  have h3 := oppositeAggregatePart3_0076
  simp only [oppositeAggregatePartValid3_0076, oppositeHistoryChunk0076] at h3
  have h4 := oppositeAggregatePart4_0076
  simp only [oppositeAggregatePartValid4_0076, oppositeHistoryChunk0076] at h4
  have h5 := oppositeAggregatePart5_0076
  simp only [oppositeAggregatePartValid5_0076, oppositeHistoryChunk0076] at h5
  have h6 := oppositeAggregatePart6_0076
  simp only [oppositeAggregatePartValid6_0076, oppositeHistoryChunk0076] at h6
  have h7 := oppositeAggregatePart7_0076
  simp only [oppositeAggregatePartValid7_0076, oppositeHistoryChunk0076] at h7
  unfold oppositeHistoryChunk0076
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 78848
  | _ => True

theorem oppositeAggregatePart0_0077 :
    oppositeAggregatePartValid0_0077 oppositeHistoryChunk0077 := by
  unfold oppositeAggregatePartValid0_0077 oppositeHistoryChunk0077
  decide

def oppositeAggregatePartValid1_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 78976
  | _ => True

theorem oppositeAggregatePart1_0077 :
    oppositeAggregatePartValid1_0077 oppositeHistoryChunk0077 := by
  unfold oppositeAggregatePartValid1_0077 oppositeHistoryChunk0077
  decide

def oppositeAggregatePartValid2_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 79104
  | _ => True

theorem oppositeAggregatePart2_0077 :
    oppositeAggregatePartValid2_0077 oppositeHistoryChunk0077 := by
  unfold oppositeAggregatePartValid2_0077 oppositeHistoryChunk0077
  decide

def oppositeAggregatePartValid3_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 79232
  | _ => True

theorem oppositeAggregatePart3_0077 :
    oppositeAggregatePartValid3_0077 oppositeHistoryChunk0077 := by
  unfold oppositeAggregatePartValid3_0077 oppositeHistoryChunk0077
  decide

def oppositeAggregatePartValid4_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 79360
  | _ => True

theorem oppositeAggregatePart4_0077 :
    oppositeAggregatePartValid4_0077 oppositeHistoryChunk0077 := by
  unfold oppositeAggregatePartValid4_0077 oppositeHistoryChunk0077
  decide

def oppositeAggregatePartValid5_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 79488
  | _ => True

theorem oppositeAggregatePart5_0077 :
    oppositeAggregatePartValid5_0077 oppositeHistoryChunk0077 := by
  unfold oppositeAggregatePartValid5_0077 oppositeHistoryChunk0077
  decide

def oppositeAggregatePartValid6_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 79616
  | _ => True

theorem oppositeAggregatePart6_0077 :
    oppositeAggregatePartValid6_0077 oppositeHistoryChunk0077 := by
  unfold oppositeAggregatePartValid6_0077 oppositeHistoryChunk0077
  decide

def oppositeAggregatePartValid7_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 79744
  | _ => True

theorem oppositeAggregatePart7_0077 :
    oppositeAggregatePartValid7_0077 oppositeHistoryChunk0077 := by
  unfold oppositeAggregatePartValid7_0077 oppositeHistoryChunk0077
  decide

theorem oppositeRange_0077 :
    oppositeHistoryChunk0077.ResidueIndexedValid anchorHistories 5000000 18 25 78848 := by
  have h0 := oppositeAggregatePart0_0077
  simp only [oppositeAggregatePartValid0_0077, oppositeHistoryChunk0077] at h0
  have h1 := oppositeAggregatePart1_0077
  simp only [oppositeAggregatePartValid1_0077, oppositeHistoryChunk0077] at h1
  have h2 := oppositeAggregatePart2_0077
  simp only [oppositeAggregatePartValid2_0077, oppositeHistoryChunk0077] at h2
  have h3 := oppositeAggregatePart3_0077
  simp only [oppositeAggregatePartValid3_0077, oppositeHistoryChunk0077] at h3
  have h4 := oppositeAggregatePart4_0077
  simp only [oppositeAggregatePartValid4_0077, oppositeHistoryChunk0077] at h4
  have h5 := oppositeAggregatePart5_0077
  simp only [oppositeAggregatePartValid5_0077, oppositeHistoryChunk0077] at h5
  have h6 := oppositeAggregatePart6_0077
  simp only [oppositeAggregatePartValid6_0077, oppositeHistoryChunk0077] at h6
  have h7 := oppositeAggregatePart7_0077
  simp only [oppositeAggregatePartValid7_0077, oppositeHistoryChunk0077] at h7
  unfold oppositeHistoryChunk0077
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 79872
  | _ => True

theorem oppositeAggregatePart0_0078 :
    oppositeAggregatePartValid0_0078 oppositeHistoryChunk0078 := by
  unfold oppositeAggregatePartValid0_0078 oppositeHistoryChunk0078
  decide

def oppositeAggregatePartValid1_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 80000
  | _ => True

theorem oppositeAggregatePart1_0078 :
    oppositeAggregatePartValid1_0078 oppositeHistoryChunk0078 := by
  unfold oppositeAggregatePartValid1_0078 oppositeHistoryChunk0078
  decide

def oppositeAggregatePartValid2_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 80128
  | _ => True

theorem oppositeAggregatePart2_0078 :
    oppositeAggregatePartValid2_0078 oppositeHistoryChunk0078 := by
  unfold oppositeAggregatePartValid2_0078 oppositeHistoryChunk0078
  decide

def oppositeAggregatePartValid3_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 80256
  | _ => True

theorem oppositeAggregatePart3_0078 :
    oppositeAggregatePartValid3_0078 oppositeHistoryChunk0078 := by
  unfold oppositeAggregatePartValid3_0078 oppositeHistoryChunk0078
  decide

def oppositeAggregatePartValid4_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 80384
  | _ => True

theorem oppositeAggregatePart4_0078 :
    oppositeAggregatePartValid4_0078 oppositeHistoryChunk0078 := by
  unfold oppositeAggregatePartValid4_0078 oppositeHistoryChunk0078
  decide

def oppositeAggregatePartValid5_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 80512
  | _ => True

theorem oppositeAggregatePart5_0078 :
    oppositeAggregatePartValid5_0078 oppositeHistoryChunk0078 := by
  unfold oppositeAggregatePartValid5_0078 oppositeHistoryChunk0078
  decide

def oppositeAggregatePartValid6_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 80640
  | _ => True

theorem oppositeAggregatePart6_0078 :
    oppositeAggregatePartValid6_0078 oppositeHistoryChunk0078 := by
  unfold oppositeAggregatePartValid6_0078 oppositeHistoryChunk0078
  decide

def oppositeAggregatePartValid7_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 80768
  | _ => True

theorem oppositeAggregatePart7_0078 :
    oppositeAggregatePartValid7_0078 oppositeHistoryChunk0078 := by
  unfold oppositeAggregatePartValid7_0078 oppositeHistoryChunk0078
  decide

theorem oppositeRange_0078 :
    oppositeHistoryChunk0078.ResidueIndexedValid anchorHistories 5000000 18 25 79872 := by
  have h0 := oppositeAggregatePart0_0078
  simp only [oppositeAggregatePartValid0_0078, oppositeHistoryChunk0078] at h0
  have h1 := oppositeAggregatePart1_0078
  simp only [oppositeAggregatePartValid1_0078, oppositeHistoryChunk0078] at h1
  have h2 := oppositeAggregatePart2_0078
  simp only [oppositeAggregatePartValid2_0078, oppositeHistoryChunk0078] at h2
  have h3 := oppositeAggregatePart3_0078
  simp only [oppositeAggregatePartValid3_0078, oppositeHistoryChunk0078] at h3
  have h4 := oppositeAggregatePart4_0078
  simp only [oppositeAggregatePartValid4_0078, oppositeHistoryChunk0078] at h4
  have h5 := oppositeAggregatePart5_0078
  simp only [oppositeAggregatePartValid5_0078, oppositeHistoryChunk0078] at h5
  have h6 := oppositeAggregatePart6_0078
  simp only [oppositeAggregatePartValid6_0078, oppositeHistoryChunk0078] at h6
  have h7 := oppositeAggregatePart7_0078
  simp only [oppositeAggregatePartValid7_0078, oppositeHistoryChunk0078] at h7
  unfold oppositeHistoryChunk0078
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 80896
  | _ => True

theorem oppositeAggregatePart0_0079 :
    oppositeAggregatePartValid0_0079 oppositeHistoryChunk0079 := by
  unfold oppositeAggregatePartValid0_0079 oppositeHistoryChunk0079
  decide

def oppositeAggregatePartValid1_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 81024
  | _ => True

theorem oppositeAggregatePart1_0079 :
    oppositeAggregatePartValid1_0079 oppositeHistoryChunk0079 := by
  unfold oppositeAggregatePartValid1_0079 oppositeHistoryChunk0079
  decide

def oppositeAggregatePartValid2_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 81152
  | _ => True

theorem oppositeAggregatePart2_0079 :
    oppositeAggregatePartValid2_0079 oppositeHistoryChunk0079 := by
  unfold oppositeAggregatePartValid2_0079 oppositeHistoryChunk0079
  decide

def oppositeAggregatePartValid3_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 81280
  | _ => True

theorem oppositeAggregatePart3_0079 :
    oppositeAggregatePartValid3_0079 oppositeHistoryChunk0079 := by
  unfold oppositeAggregatePartValid3_0079 oppositeHistoryChunk0079
  decide

def oppositeAggregatePartValid4_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 81408
  | _ => True

theorem oppositeAggregatePart4_0079 :
    oppositeAggregatePartValid4_0079 oppositeHistoryChunk0079 := by
  unfold oppositeAggregatePartValid4_0079 oppositeHistoryChunk0079
  decide

def oppositeAggregatePartValid5_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 81536
  | _ => True

theorem oppositeAggregatePart5_0079 :
    oppositeAggregatePartValid5_0079 oppositeHistoryChunk0079 := by
  unfold oppositeAggregatePartValid5_0079 oppositeHistoryChunk0079
  decide

def oppositeAggregatePartValid6_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 81664
  | _ => True

theorem oppositeAggregatePart6_0079 :
    oppositeAggregatePartValid6_0079 oppositeHistoryChunk0079 := by
  unfold oppositeAggregatePartValid6_0079 oppositeHistoryChunk0079
  decide

def oppositeAggregatePartValid7_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 81792
  | _ => True

theorem oppositeAggregatePart7_0079 :
    oppositeAggregatePartValid7_0079 oppositeHistoryChunk0079 := by
  unfold oppositeAggregatePartValid7_0079 oppositeHistoryChunk0079
  decide

theorem oppositeRange_0079 :
    oppositeHistoryChunk0079.ResidueIndexedValid anchorHistories 5000000 18 25 80896 := by
  have h0 := oppositeAggregatePart0_0079
  simp only [oppositeAggregatePartValid0_0079, oppositeHistoryChunk0079] at h0
  have h1 := oppositeAggregatePart1_0079
  simp only [oppositeAggregatePartValid1_0079, oppositeHistoryChunk0079] at h1
  have h2 := oppositeAggregatePart2_0079
  simp only [oppositeAggregatePartValid2_0079, oppositeHistoryChunk0079] at h2
  have h3 := oppositeAggregatePart3_0079
  simp only [oppositeAggregatePartValid3_0079, oppositeHistoryChunk0079] at h3
  have h4 := oppositeAggregatePart4_0079
  simp only [oppositeAggregatePartValid4_0079, oppositeHistoryChunk0079] at h4
  have h5 := oppositeAggregatePart5_0079
  simp only [oppositeAggregatePartValid5_0079, oppositeHistoryChunk0079] at h5
  have h6 := oppositeAggregatePart6_0079
  simp only [oppositeAggregatePartValid6_0079, oppositeHistoryChunk0079] at h6
  have h7 := oppositeAggregatePart7_0079
  simp only [oppositeAggregatePartValid7_0079, oppositeHistoryChunk0079] at h7
  unfold oppositeHistoryChunk0079
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
