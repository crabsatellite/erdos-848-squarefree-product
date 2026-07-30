import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0168
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0169
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0170
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0171

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0168, 0169, 0170, 0171 -/

def oppositeAggregatePartValid0_0168 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 172032
  | _ => True

theorem oppositeAggregatePart0_0168 :
    oppositeAggregatePartValid0_0168 oppositeHistoryChunk0168 := by
  unfold oppositeAggregatePartValid0_0168 oppositeHistoryChunk0168
  decide

def oppositeAggregatePartValid1_0168 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 172160
  | _ => True

theorem oppositeAggregatePart1_0168 :
    oppositeAggregatePartValid1_0168 oppositeHistoryChunk0168 := by
  unfold oppositeAggregatePartValid1_0168 oppositeHistoryChunk0168
  decide

def oppositeAggregatePartValid2_0168 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 172288
  | _ => True

theorem oppositeAggregatePart2_0168 :
    oppositeAggregatePartValid2_0168 oppositeHistoryChunk0168 := by
  unfold oppositeAggregatePartValid2_0168 oppositeHistoryChunk0168
  decide

def oppositeAggregatePartValid3_0168 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 172416
  | _ => True

theorem oppositeAggregatePart3_0168 :
    oppositeAggregatePartValid3_0168 oppositeHistoryChunk0168 := by
  unfold oppositeAggregatePartValid3_0168 oppositeHistoryChunk0168
  decide

def oppositeAggregatePartValid4_0168 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 172544
  | _ => True

theorem oppositeAggregatePart4_0168 :
    oppositeAggregatePartValid4_0168 oppositeHistoryChunk0168 := by
  unfold oppositeAggregatePartValid4_0168 oppositeHistoryChunk0168
  decide

def oppositeAggregatePartValid5_0168 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 172672
  | _ => True

theorem oppositeAggregatePart5_0168 :
    oppositeAggregatePartValid5_0168 oppositeHistoryChunk0168 := by
  unfold oppositeAggregatePartValid5_0168 oppositeHistoryChunk0168
  decide

def oppositeAggregatePartValid6_0168 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 172800
  | _ => True

theorem oppositeAggregatePart6_0168 :
    oppositeAggregatePartValid6_0168 oppositeHistoryChunk0168 := by
  unfold oppositeAggregatePartValid6_0168 oppositeHistoryChunk0168
  decide

def oppositeAggregatePartValid7_0168 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 172928
  | _ => True

theorem oppositeAggregatePart7_0168 :
    oppositeAggregatePartValid7_0168 oppositeHistoryChunk0168 := by
  unfold oppositeAggregatePartValid7_0168 oppositeHistoryChunk0168
  decide

theorem oppositeRange_0168 :
    oppositeHistoryChunk0168.ResidueIndexedValid anchorHistories 5000000 18 25 172032 := by
  have h0 := oppositeAggregatePart0_0168
  simp only [oppositeAggregatePartValid0_0168, oppositeHistoryChunk0168] at h0
  have h1 := oppositeAggregatePart1_0168
  simp only [oppositeAggregatePartValid1_0168, oppositeHistoryChunk0168] at h1
  have h2 := oppositeAggregatePart2_0168
  simp only [oppositeAggregatePartValid2_0168, oppositeHistoryChunk0168] at h2
  have h3 := oppositeAggregatePart3_0168
  simp only [oppositeAggregatePartValid3_0168, oppositeHistoryChunk0168] at h3
  have h4 := oppositeAggregatePart4_0168
  simp only [oppositeAggregatePartValid4_0168, oppositeHistoryChunk0168] at h4
  have h5 := oppositeAggregatePart5_0168
  simp only [oppositeAggregatePartValid5_0168, oppositeHistoryChunk0168] at h5
  have h6 := oppositeAggregatePart6_0168
  simp only [oppositeAggregatePartValid6_0168, oppositeHistoryChunk0168] at h6
  have h7 := oppositeAggregatePart7_0168
  simp only [oppositeAggregatePartValid7_0168, oppositeHistoryChunk0168] at h7
  unfold oppositeHistoryChunk0168
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0169 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 173056
  | _ => True

theorem oppositeAggregatePart0_0169 :
    oppositeAggregatePartValid0_0169 oppositeHistoryChunk0169 := by
  unfold oppositeAggregatePartValid0_0169 oppositeHistoryChunk0169
  decide

def oppositeAggregatePartValid1_0169 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 173184
  | _ => True

theorem oppositeAggregatePart1_0169 :
    oppositeAggregatePartValid1_0169 oppositeHistoryChunk0169 := by
  unfold oppositeAggregatePartValid1_0169 oppositeHistoryChunk0169
  decide

def oppositeAggregatePartValid2_0169 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 173312
  | _ => True

theorem oppositeAggregatePart2_0169 :
    oppositeAggregatePartValid2_0169 oppositeHistoryChunk0169 := by
  unfold oppositeAggregatePartValid2_0169 oppositeHistoryChunk0169
  decide

def oppositeAggregatePartValid3_0169 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 173440
  | _ => True

theorem oppositeAggregatePart3_0169 :
    oppositeAggregatePartValid3_0169 oppositeHistoryChunk0169 := by
  unfold oppositeAggregatePartValid3_0169 oppositeHistoryChunk0169
  decide

def oppositeAggregatePartValid4_0169 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 173568
  | _ => True

theorem oppositeAggregatePart4_0169 :
    oppositeAggregatePartValid4_0169 oppositeHistoryChunk0169 := by
  unfold oppositeAggregatePartValid4_0169 oppositeHistoryChunk0169
  decide

def oppositeAggregatePartValid5_0169 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 173696
  | _ => True

theorem oppositeAggregatePart5_0169 :
    oppositeAggregatePartValid5_0169 oppositeHistoryChunk0169 := by
  unfold oppositeAggregatePartValid5_0169 oppositeHistoryChunk0169
  decide

def oppositeAggregatePartValid6_0169 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 173824
  | _ => True

theorem oppositeAggregatePart6_0169 :
    oppositeAggregatePartValid6_0169 oppositeHistoryChunk0169 := by
  unfold oppositeAggregatePartValid6_0169 oppositeHistoryChunk0169
  decide

def oppositeAggregatePartValid7_0169 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 173952
  | _ => True

theorem oppositeAggregatePart7_0169 :
    oppositeAggregatePartValid7_0169 oppositeHistoryChunk0169 := by
  unfold oppositeAggregatePartValid7_0169 oppositeHistoryChunk0169
  decide

theorem oppositeRange_0169 :
    oppositeHistoryChunk0169.ResidueIndexedValid anchorHistories 5000000 18 25 173056 := by
  have h0 := oppositeAggregatePart0_0169
  simp only [oppositeAggregatePartValid0_0169, oppositeHistoryChunk0169] at h0
  have h1 := oppositeAggregatePart1_0169
  simp only [oppositeAggregatePartValid1_0169, oppositeHistoryChunk0169] at h1
  have h2 := oppositeAggregatePart2_0169
  simp only [oppositeAggregatePartValid2_0169, oppositeHistoryChunk0169] at h2
  have h3 := oppositeAggregatePart3_0169
  simp only [oppositeAggregatePartValid3_0169, oppositeHistoryChunk0169] at h3
  have h4 := oppositeAggregatePart4_0169
  simp only [oppositeAggregatePartValid4_0169, oppositeHistoryChunk0169] at h4
  have h5 := oppositeAggregatePart5_0169
  simp only [oppositeAggregatePartValid5_0169, oppositeHistoryChunk0169] at h5
  have h6 := oppositeAggregatePart6_0169
  simp only [oppositeAggregatePartValid6_0169, oppositeHistoryChunk0169] at h6
  have h7 := oppositeAggregatePart7_0169
  simp only [oppositeAggregatePartValid7_0169, oppositeHistoryChunk0169] at h7
  unfold oppositeHistoryChunk0169
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0170 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 174080
  | _ => True

theorem oppositeAggregatePart0_0170 :
    oppositeAggregatePartValid0_0170 oppositeHistoryChunk0170 := by
  unfold oppositeAggregatePartValid0_0170 oppositeHistoryChunk0170
  decide

def oppositeAggregatePartValid1_0170 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 174208
  | _ => True

theorem oppositeAggregatePart1_0170 :
    oppositeAggregatePartValid1_0170 oppositeHistoryChunk0170 := by
  unfold oppositeAggregatePartValid1_0170 oppositeHistoryChunk0170
  decide

def oppositeAggregatePartValid2_0170 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 174336
  | _ => True

theorem oppositeAggregatePart2_0170 :
    oppositeAggregatePartValid2_0170 oppositeHistoryChunk0170 := by
  unfold oppositeAggregatePartValid2_0170 oppositeHistoryChunk0170
  decide

def oppositeAggregatePartValid3_0170 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 174464
  | _ => True

theorem oppositeAggregatePart3_0170 :
    oppositeAggregatePartValid3_0170 oppositeHistoryChunk0170 := by
  unfold oppositeAggregatePartValid3_0170 oppositeHistoryChunk0170
  decide

def oppositeAggregatePartValid4_0170 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 174592
  | _ => True

theorem oppositeAggregatePart4_0170 :
    oppositeAggregatePartValid4_0170 oppositeHistoryChunk0170 := by
  unfold oppositeAggregatePartValid4_0170 oppositeHistoryChunk0170
  decide

def oppositeAggregatePartValid5_0170 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 174720
  | _ => True

theorem oppositeAggregatePart5_0170 :
    oppositeAggregatePartValid5_0170 oppositeHistoryChunk0170 := by
  unfold oppositeAggregatePartValid5_0170 oppositeHistoryChunk0170
  decide

def oppositeAggregatePartValid6_0170 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 174848
  | _ => True

theorem oppositeAggregatePart6_0170 :
    oppositeAggregatePartValid6_0170 oppositeHistoryChunk0170 := by
  unfold oppositeAggregatePartValid6_0170 oppositeHistoryChunk0170
  decide

def oppositeAggregatePartValid7_0170 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 174976
  | _ => True

theorem oppositeAggregatePart7_0170 :
    oppositeAggregatePartValid7_0170 oppositeHistoryChunk0170 := by
  unfold oppositeAggregatePartValid7_0170 oppositeHistoryChunk0170
  decide

theorem oppositeRange_0170 :
    oppositeHistoryChunk0170.ResidueIndexedValid anchorHistories 5000000 18 25 174080 := by
  have h0 := oppositeAggregatePart0_0170
  simp only [oppositeAggregatePartValid0_0170, oppositeHistoryChunk0170] at h0
  have h1 := oppositeAggregatePart1_0170
  simp only [oppositeAggregatePartValid1_0170, oppositeHistoryChunk0170] at h1
  have h2 := oppositeAggregatePart2_0170
  simp only [oppositeAggregatePartValid2_0170, oppositeHistoryChunk0170] at h2
  have h3 := oppositeAggregatePart3_0170
  simp only [oppositeAggregatePartValid3_0170, oppositeHistoryChunk0170] at h3
  have h4 := oppositeAggregatePart4_0170
  simp only [oppositeAggregatePartValid4_0170, oppositeHistoryChunk0170] at h4
  have h5 := oppositeAggregatePart5_0170
  simp only [oppositeAggregatePartValid5_0170, oppositeHistoryChunk0170] at h5
  have h6 := oppositeAggregatePart6_0170
  simp only [oppositeAggregatePartValid6_0170, oppositeHistoryChunk0170] at h6
  have h7 := oppositeAggregatePart7_0170
  simp only [oppositeAggregatePartValid7_0170, oppositeHistoryChunk0170] at h7
  unfold oppositeHistoryChunk0170
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0171 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 175104
  | _ => True

theorem oppositeAggregatePart0_0171 :
    oppositeAggregatePartValid0_0171 oppositeHistoryChunk0171 := by
  unfold oppositeAggregatePartValid0_0171 oppositeHistoryChunk0171
  decide

def oppositeAggregatePartValid1_0171 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 175232
  | _ => True

theorem oppositeAggregatePart1_0171 :
    oppositeAggregatePartValid1_0171 oppositeHistoryChunk0171 := by
  unfold oppositeAggregatePartValid1_0171 oppositeHistoryChunk0171
  decide

def oppositeAggregatePartValid2_0171 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 175360
  | _ => True

theorem oppositeAggregatePart2_0171 :
    oppositeAggregatePartValid2_0171 oppositeHistoryChunk0171 := by
  unfold oppositeAggregatePartValid2_0171 oppositeHistoryChunk0171
  decide

def oppositeAggregatePartValid3_0171 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 175488
  | _ => True

theorem oppositeAggregatePart3_0171 :
    oppositeAggregatePartValid3_0171 oppositeHistoryChunk0171 := by
  unfold oppositeAggregatePartValid3_0171 oppositeHistoryChunk0171
  decide

def oppositeAggregatePartValid4_0171 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 175616
  | _ => True

theorem oppositeAggregatePart4_0171 :
    oppositeAggregatePartValid4_0171 oppositeHistoryChunk0171 := by
  unfold oppositeAggregatePartValid4_0171 oppositeHistoryChunk0171
  decide

def oppositeAggregatePartValid5_0171 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 175744
  | _ => True

theorem oppositeAggregatePart5_0171 :
    oppositeAggregatePartValid5_0171 oppositeHistoryChunk0171 := by
  unfold oppositeAggregatePartValid5_0171 oppositeHistoryChunk0171
  decide

def oppositeAggregatePartValid6_0171 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 175872
  | _ => True

theorem oppositeAggregatePart6_0171 :
    oppositeAggregatePartValid6_0171 oppositeHistoryChunk0171 := by
  unfold oppositeAggregatePartValid6_0171 oppositeHistoryChunk0171
  decide

def oppositeAggregatePartValid7_0171 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 176000
  | _ => True

theorem oppositeAggregatePart7_0171 :
    oppositeAggregatePartValid7_0171 oppositeHistoryChunk0171 := by
  unfold oppositeAggregatePartValid7_0171 oppositeHistoryChunk0171
  decide

theorem oppositeRange_0171 :
    oppositeHistoryChunk0171.ResidueIndexedValid anchorHistories 5000000 18 25 175104 := by
  have h0 := oppositeAggregatePart0_0171
  simp only [oppositeAggregatePartValid0_0171, oppositeHistoryChunk0171] at h0
  have h1 := oppositeAggregatePart1_0171
  simp only [oppositeAggregatePartValid1_0171, oppositeHistoryChunk0171] at h1
  have h2 := oppositeAggregatePart2_0171
  simp only [oppositeAggregatePartValid2_0171, oppositeHistoryChunk0171] at h2
  have h3 := oppositeAggregatePart3_0171
  simp only [oppositeAggregatePartValid3_0171, oppositeHistoryChunk0171] at h3
  have h4 := oppositeAggregatePart4_0171
  simp only [oppositeAggregatePartValid4_0171, oppositeHistoryChunk0171] at h4
  have h5 := oppositeAggregatePart5_0171
  simp only [oppositeAggregatePartValid5_0171, oppositeHistoryChunk0171] at h5
  have h6 := oppositeAggregatePart6_0171
  simp only [oppositeAggregatePartValid6_0171, oppositeHistoryChunk0171] at h6
  have h7 := oppositeAggregatePart7_0171
  simp only [oppositeAggregatePartValid7_0171, oppositeHistoryChunk0171] at h7
  unfold oppositeHistoryChunk0171
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
