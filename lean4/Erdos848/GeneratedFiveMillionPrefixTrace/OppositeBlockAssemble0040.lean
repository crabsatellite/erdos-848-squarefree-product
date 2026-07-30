import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0040
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0041
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0042
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0043

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0040, 0041, 0042, 0043 -/

def oppositeAggregatePartValid0_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 40960
  | _ => True

theorem oppositeAggregatePart0_0040 :
    oppositeAggregatePartValid0_0040 oppositeHistoryChunk0040 := by
  unfold oppositeAggregatePartValid0_0040 oppositeHistoryChunk0040
  decide

def oppositeAggregatePartValid1_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 41088
  | _ => True

theorem oppositeAggregatePart1_0040 :
    oppositeAggregatePartValid1_0040 oppositeHistoryChunk0040 := by
  unfold oppositeAggregatePartValid1_0040 oppositeHistoryChunk0040
  decide

def oppositeAggregatePartValid2_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 41216
  | _ => True

theorem oppositeAggregatePart2_0040 :
    oppositeAggregatePartValid2_0040 oppositeHistoryChunk0040 := by
  unfold oppositeAggregatePartValid2_0040 oppositeHistoryChunk0040
  decide

def oppositeAggregatePartValid3_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 41344
  | _ => True

theorem oppositeAggregatePart3_0040 :
    oppositeAggregatePartValid3_0040 oppositeHistoryChunk0040 := by
  unfold oppositeAggregatePartValid3_0040 oppositeHistoryChunk0040
  decide

def oppositeAggregatePartValid4_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 41472
  | _ => True

theorem oppositeAggregatePart4_0040 :
    oppositeAggregatePartValid4_0040 oppositeHistoryChunk0040 := by
  unfold oppositeAggregatePartValid4_0040 oppositeHistoryChunk0040
  decide

def oppositeAggregatePartValid5_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 41600
  | _ => True

theorem oppositeAggregatePart5_0040 :
    oppositeAggregatePartValid5_0040 oppositeHistoryChunk0040 := by
  unfold oppositeAggregatePartValid5_0040 oppositeHistoryChunk0040
  decide

def oppositeAggregatePartValid6_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 41728
  | _ => True

theorem oppositeAggregatePart6_0040 :
    oppositeAggregatePartValid6_0040 oppositeHistoryChunk0040 := by
  unfold oppositeAggregatePartValid6_0040 oppositeHistoryChunk0040
  decide

def oppositeAggregatePartValid7_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 41856
  | _ => True

theorem oppositeAggregatePart7_0040 :
    oppositeAggregatePartValid7_0040 oppositeHistoryChunk0040 := by
  unfold oppositeAggregatePartValid7_0040 oppositeHistoryChunk0040
  decide

theorem oppositeRange_0040 :
    oppositeHistoryChunk0040.ResidueIndexedValid anchorHistories 5000000 18 25 40960 := by
  have h0 := oppositeAggregatePart0_0040
  simp only [oppositeAggregatePartValid0_0040, oppositeHistoryChunk0040] at h0
  have h1 := oppositeAggregatePart1_0040
  simp only [oppositeAggregatePartValid1_0040, oppositeHistoryChunk0040] at h1
  have h2 := oppositeAggregatePart2_0040
  simp only [oppositeAggregatePartValid2_0040, oppositeHistoryChunk0040] at h2
  have h3 := oppositeAggregatePart3_0040
  simp only [oppositeAggregatePartValid3_0040, oppositeHistoryChunk0040] at h3
  have h4 := oppositeAggregatePart4_0040
  simp only [oppositeAggregatePartValid4_0040, oppositeHistoryChunk0040] at h4
  have h5 := oppositeAggregatePart5_0040
  simp only [oppositeAggregatePartValid5_0040, oppositeHistoryChunk0040] at h5
  have h6 := oppositeAggregatePart6_0040
  simp only [oppositeAggregatePartValid6_0040, oppositeHistoryChunk0040] at h6
  have h7 := oppositeAggregatePart7_0040
  simp only [oppositeAggregatePartValid7_0040, oppositeHistoryChunk0040] at h7
  unfold oppositeHistoryChunk0040
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 41984
  | _ => True

theorem oppositeAggregatePart0_0041 :
    oppositeAggregatePartValid0_0041 oppositeHistoryChunk0041 := by
  unfold oppositeAggregatePartValid0_0041 oppositeHistoryChunk0041
  decide

def oppositeAggregatePartValid1_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 42112
  | _ => True

theorem oppositeAggregatePart1_0041 :
    oppositeAggregatePartValid1_0041 oppositeHistoryChunk0041 := by
  unfold oppositeAggregatePartValid1_0041 oppositeHistoryChunk0041
  decide

def oppositeAggregatePartValid2_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 42240
  | _ => True

theorem oppositeAggregatePart2_0041 :
    oppositeAggregatePartValid2_0041 oppositeHistoryChunk0041 := by
  unfold oppositeAggregatePartValid2_0041 oppositeHistoryChunk0041
  decide

def oppositeAggregatePartValid3_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 42368
  | _ => True

theorem oppositeAggregatePart3_0041 :
    oppositeAggregatePartValid3_0041 oppositeHistoryChunk0041 := by
  unfold oppositeAggregatePartValid3_0041 oppositeHistoryChunk0041
  decide

def oppositeAggregatePartValid4_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 42496
  | _ => True

theorem oppositeAggregatePart4_0041 :
    oppositeAggregatePartValid4_0041 oppositeHistoryChunk0041 := by
  unfold oppositeAggregatePartValid4_0041 oppositeHistoryChunk0041
  decide

def oppositeAggregatePartValid5_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 42624
  | _ => True

theorem oppositeAggregatePart5_0041 :
    oppositeAggregatePartValid5_0041 oppositeHistoryChunk0041 := by
  unfold oppositeAggregatePartValid5_0041 oppositeHistoryChunk0041
  decide

def oppositeAggregatePartValid6_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 42752
  | _ => True

theorem oppositeAggregatePart6_0041 :
    oppositeAggregatePartValid6_0041 oppositeHistoryChunk0041 := by
  unfold oppositeAggregatePartValid6_0041 oppositeHistoryChunk0041
  decide

def oppositeAggregatePartValid7_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 42880
  | _ => True

theorem oppositeAggregatePart7_0041 :
    oppositeAggregatePartValid7_0041 oppositeHistoryChunk0041 := by
  unfold oppositeAggregatePartValid7_0041 oppositeHistoryChunk0041
  decide

theorem oppositeRange_0041 :
    oppositeHistoryChunk0041.ResidueIndexedValid anchorHistories 5000000 18 25 41984 := by
  have h0 := oppositeAggregatePart0_0041
  simp only [oppositeAggregatePartValid0_0041, oppositeHistoryChunk0041] at h0
  have h1 := oppositeAggregatePart1_0041
  simp only [oppositeAggregatePartValid1_0041, oppositeHistoryChunk0041] at h1
  have h2 := oppositeAggregatePart2_0041
  simp only [oppositeAggregatePartValid2_0041, oppositeHistoryChunk0041] at h2
  have h3 := oppositeAggregatePart3_0041
  simp only [oppositeAggregatePartValid3_0041, oppositeHistoryChunk0041] at h3
  have h4 := oppositeAggregatePart4_0041
  simp only [oppositeAggregatePartValid4_0041, oppositeHistoryChunk0041] at h4
  have h5 := oppositeAggregatePart5_0041
  simp only [oppositeAggregatePartValid5_0041, oppositeHistoryChunk0041] at h5
  have h6 := oppositeAggregatePart6_0041
  simp only [oppositeAggregatePartValid6_0041, oppositeHistoryChunk0041] at h6
  have h7 := oppositeAggregatePart7_0041
  simp only [oppositeAggregatePartValid7_0041, oppositeHistoryChunk0041] at h7
  unfold oppositeHistoryChunk0041
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 43008
  | _ => True

theorem oppositeAggregatePart0_0042 :
    oppositeAggregatePartValid0_0042 oppositeHistoryChunk0042 := by
  unfold oppositeAggregatePartValid0_0042 oppositeHistoryChunk0042
  decide

def oppositeAggregatePartValid1_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 43136
  | _ => True

theorem oppositeAggregatePart1_0042 :
    oppositeAggregatePartValid1_0042 oppositeHistoryChunk0042 := by
  unfold oppositeAggregatePartValid1_0042 oppositeHistoryChunk0042
  decide

def oppositeAggregatePartValid2_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 43264
  | _ => True

theorem oppositeAggregatePart2_0042 :
    oppositeAggregatePartValid2_0042 oppositeHistoryChunk0042 := by
  unfold oppositeAggregatePartValid2_0042 oppositeHistoryChunk0042
  decide

def oppositeAggregatePartValid3_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 43392
  | _ => True

theorem oppositeAggregatePart3_0042 :
    oppositeAggregatePartValid3_0042 oppositeHistoryChunk0042 := by
  unfold oppositeAggregatePartValid3_0042 oppositeHistoryChunk0042
  decide

def oppositeAggregatePartValid4_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 43520
  | _ => True

theorem oppositeAggregatePart4_0042 :
    oppositeAggregatePartValid4_0042 oppositeHistoryChunk0042 := by
  unfold oppositeAggregatePartValid4_0042 oppositeHistoryChunk0042
  decide

def oppositeAggregatePartValid5_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 43648
  | _ => True

theorem oppositeAggregatePart5_0042 :
    oppositeAggregatePartValid5_0042 oppositeHistoryChunk0042 := by
  unfold oppositeAggregatePartValid5_0042 oppositeHistoryChunk0042
  decide

def oppositeAggregatePartValid6_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 43776
  | _ => True

theorem oppositeAggregatePart6_0042 :
    oppositeAggregatePartValid6_0042 oppositeHistoryChunk0042 := by
  unfold oppositeAggregatePartValid6_0042 oppositeHistoryChunk0042
  decide

def oppositeAggregatePartValid7_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 43904
  | _ => True

theorem oppositeAggregatePart7_0042 :
    oppositeAggregatePartValid7_0042 oppositeHistoryChunk0042 := by
  unfold oppositeAggregatePartValid7_0042 oppositeHistoryChunk0042
  decide

theorem oppositeRange_0042 :
    oppositeHistoryChunk0042.ResidueIndexedValid anchorHistories 5000000 18 25 43008 := by
  have h0 := oppositeAggregatePart0_0042
  simp only [oppositeAggregatePartValid0_0042, oppositeHistoryChunk0042] at h0
  have h1 := oppositeAggregatePart1_0042
  simp only [oppositeAggregatePartValid1_0042, oppositeHistoryChunk0042] at h1
  have h2 := oppositeAggregatePart2_0042
  simp only [oppositeAggregatePartValid2_0042, oppositeHistoryChunk0042] at h2
  have h3 := oppositeAggregatePart3_0042
  simp only [oppositeAggregatePartValid3_0042, oppositeHistoryChunk0042] at h3
  have h4 := oppositeAggregatePart4_0042
  simp only [oppositeAggregatePartValid4_0042, oppositeHistoryChunk0042] at h4
  have h5 := oppositeAggregatePart5_0042
  simp only [oppositeAggregatePartValid5_0042, oppositeHistoryChunk0042] at h5
  have h6 := oppositeAggregatePart6_0042
  simp only [oppositeAggregatePartValid6_0042, oppositeHistoryChunk0042] at h6
  have h7 := oppositeAggregatePart7_0042
  simp only [oppositeAggregatePartValid7_0042, oppositeHistoryChunk0042] at h7
  unfold oppositeHistoryChunk0042
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 44032
  | _ => True

theorem oppositeAggregatePart0_0043 :
    oppositeAggregatePartValid0_0043 oppositeHistoryChunk0043 := by
  unfold oppositeAggregatePartValid0_0043 oppositeHistoryChunk0043
  decide

def oppositeAggregatePartValid1_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 44160
  | _ => True

theorem oppositeAggregatePart1_0043 :
    oppositeAggregatePartValid1_0043 oppositeHistoryChunk0043 := by
  unfold oppositeAggregatePartValid1_0043 oppositeHistoryChunk0043
  decide

def oppositeAggregatePartValid2_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 44288
  | _ => True

theorem oppositeAggregatePart2_0043 :
    oppositeAggregatePartValid2_0043 oppositeHistoryChunk0043 := by
  unfold oppositeAggregatePartValid2_0043 oppositeHistoryChunk0043
  decide

def oppositeAggregatePartValid3_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 44416
  | _ => True

theorem oppositeAggregatePart3_0043 :
    oppositeAggregatePartValid3_0043 oppositeHistoryChunk0043 := by
  unfold oppositeAggregatePartValid3_0043 oppositeHistoryChunk0043
  decide

def oppositeAggregatePartValid4_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 44544
  | _ => True

theorem oppositeAggregatePart4_0043 :
    oppositeAggregatePartValid4_0043 oppositeHistoryChunk0043 := by
  unfold oppositeAggregatePartValid4_0043 oppositeHistoryChunk0043
  decide

def oppositeAggregatePartValid5_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 44672
  | _ => True

theorem oppositeAggregatePart5_0043 :
    oppositeAggregatePartValid5_0043 oppositeHistoryChunk0043 := by
  unfold oppositeAggregatePartValid5_0043 oppositeHistoryChunk0043
  decide

def oppositeAggregatePartValid6_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 44800
  | _ => True

theorem oppositeAggregatePart6_0043 :
    oppositeAggregatePartValid6_0043 oppositeHistoryChunk0043 := by
  unfold oppositeAggregatePartValid6_0043 oppositeHistoryChunk0043
  decide

def oppositeAggregatePartValid7_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 44928
  | _ => True

theorem oppositeAggregatePart7_0043 :
    oppositeAggregatePartValid7_0043 oppositeHistoryChunk0043 := by
  unfold oppositeAggregatePartValid7_0043 oppositeHistoryChunk0043
  decide

theorem oppositeRange_0043 :
    oppositeHistoryChunk0043.ResidueIndexedValid anchorHistories 5000000 18 25 44032 := by
  have h0 := oppositeAggregatePart0_0043
  simp only [oppositeAggregatePartValid0_0043, oppositeHistoryChunk0043] at h0
  have h1 := oppositeAggregatePart1_0043
  simp only [oppositeAggregatePartValid1_0043, oppositeHistoryChunk0043] at h1
  have h2 := oppositeAggregatePart2_0043
  simp only [oppositeAggregatePartValid2_0043, oppositeHistoryChunk0043] at h2
  have h3 := oppositeAggregatePart3_0043
  simp only [oppositeAggregatePartValid3_0043, oppositeHistoryChunk0043] at h3
  have h4 := oppositeAggregatePart4_0043
  simp only [oppositeAggregatePartValid4_0043, oppositeHistoryChunk0043] at h4
  have h5 := oppositeAggregatePart5_0043
  simp only [oppositeAggregatePartValid5_0043, oppositeHistoryChunk0043] at h5
  have h6 := oppositeAggregatePart6_0043
  simp only [oppositeAggregatePartValid6_0043, oppositeHistoryChunk0043] at h6
  have h7 := oppositeAggregatePart7_0043
  simp only [oppositeAggregatePartValid7_0043, oppositeHistoryChunk0043] at h7
  unfold oppositeHistoryChunk0043
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
