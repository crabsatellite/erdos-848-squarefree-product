import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0088
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0089
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0090
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0091

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0088, 0089, 0090, 0091 -/

def oppositeAggregatePartValid0_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 90112
  | _ => True

theorem oppositeAggregatePart0_0088 :
    oppositeAggregatePartValid0_0088 oppositeHistoryChunk0088 := by
  unfold oppositeAggregatePartValid0_0088 oppositeHistoryChunk0088
  decide

def oppositeAggregatePartValid1_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 90240
  | _ => True

theorem oppositeAggregatePart1_0088 :
    oppositeAggregatePartValid1_0088 oppositeHistoryChunk0088 := by
  unfold oppositeAggregatePartValid1_0088 oppositeHistoryChunk0088
  decide

def oppositeAggregatePartValid2_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 90368
  | _ => True

theorem oppositeAggregatePart2_0088 :
    oppositeAggregatePartValid2_0088 oppositeHistoryChunk0088 := by
  unfold oppositeAggregatePartValid2_0088 oppositeHistoryChunk0088
  decide

def oppositeAggregatePartValid3_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 90496
  | _ => True

theorem oppositeAggregatePart3_0088 :
    oppositeAggregatePartValid3_0088 oppositeHistoryChunk0088 := by
  unfold oppositeAggregatePartValid3_0088 oppositeHistoryChunk0088
  decide

def oppositeAggregatePartValid4_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 90624
  | _ => True

theorem oppositeAggregatePart4_0088 :
    oppositeAggregatePartValid4_0088 oppositeHistoryChunk0088 := by
  unfold oppositeAggregatePartValid4_0088 oppositeHistoryChunk0088
  decide

def oppositeAggregatePartValid5_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 90752
  | _ => True

theorem oppositeAggregatePart5_0088 :
    oppositeAggregatePartValid5_0088 oppositeHistoryChunk0088 := by
  unfold oppositeAggregatePartValid5_0088 oppositeHistoryChunk0088
  decide

def oppositeAggregatePartValid6_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 90880
  | _ => True

theorem oppositeAggregatePart6_0088 :
    oppositeAggregatePartValid6_0088 oppositeHistoryChunk0088 := by
  unfold oppositeAggregatePartValid6_0088 oppositeHistoryChunk0088
  decide

def oppositeAggregatePartValid7_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 91008
  | _ => True

theorem oppositeAggregatePart7_0088 :
    oppositeAggregatePartValid7_0088 oppositeHistoryChunk0088 := by
  unfold oppositeAggregatePartValid7_0088 oppositeHistoryChunk0088
  decide

theorem oppositeRange_0088 :
    oppositeHistoryChunk0088.ResidueIndexedValid anchorHistories 5000000 18 25 90112 := by
  have h0 := oppositeAggregatePart0_0088
  simp only [oppositeAggregatePartValid0_0088, oppositeHistoryChunk0088] at h0
  have h1 := oppositeAggregatePart1_0088
  simp only [oppositeAggregatePartValid1_0088, oppositeHistoryChunk0088] at h1
  have h2 := oppositeAggregatePart2_0088
  simp only [oppositeAggregatePartValid2_0088, oppositeHistoryChunk0088] at h2
  have h3 := oppositeAggregatePart3_0088
  simp only [oppositeAggregatePartValid3_0088, oppositeHistoryChunk0088] at h3
  have h4 := oppositeAggregatePart4_0088
  simp only [oppositeAggregatePartValid4_0088, oppositeHistoryChunk0088] at h4
  have h5 := oppositeAggregatePart5_0088
  simp only [oppositeAggregatePartValid5_0088, oppositeHistoryChunk0088] at h5
  have h6 := oppositeAggregatePart6_0088
  simp only [oppositeAggregatePartValid6_0088, oppositeHistoryChunk0088] at h6
  have h7 := oppositeAggregatePart7_0088
  simp only [oppositeAggregatePartValid7_0088, oppositeHistoryChunk0088] at h7
  unfold oppositeHistoryChunk0088
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 91136
  | _ => True

theorem oppositeAggregatePart0_0089 :
    oppositeAggregatePartValid0_0089 oppositeHistoryChunk0089 := by
  unfold oppositeAggregatePartValid0_0089 oppositeHistoryChunk0089
  decide

def oppositeAggregatePartValid1_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 91264
  | _ => True

theorem oppositeAggregatePart1_0089 :
    oppositeAggregatePartValid1_0089 oppositeHistoryChunk0089 := by
  unfold oppositeAggregatePartValid1_0089 oppositeHistoryChunk0089
  decide

def oppositeAggregatePartValid2_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 91392
  | _ => True

theorem oppositeAggregatePart2_0089 :
    oppositeAggregatePartValid2_0089 oppositeHistoryChunk0089 := by
  unfold oppositeAggregatePartValid2_0089 oppositeHistoryChunk0089
  decide

def oppositeAggregatePartValid3_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 91520
  | _ => True

theorem oppositeAggregatePart3_0089 :
    oppositeAggregatePartValid3_0089 oppositeHistoryChunk0089 := by
  unfold oppositeAggregatePartValid3_0089 oppositeHistoryChunk0089
  decide

def oppositeAggregatePartValid4_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 91648
  | _ => True

theorem oppositeAggregatePart4_0089 :
    oppositeAggregatePartValid4_0089 oppositeHistoryChunk0089 := by
  unfold oppositeAggregatePartValid4_0089 oppositeHistoryChunk0089
  decide

def oppositeAggregatePartValid5_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 91776
  | _ => True

theorem oppositeAggregatePart5_0089 :
    oppositeAggregatePartValid5_0089 oppositeHistoryChunk0089 := by
  unfold oppositeAggregatePartValid5_0089 oppositeHistoryChunk0089
  decide

def oppositeAggregatePartValid6_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 91904
  | _ => True

theorem oppositeAggregatePart6_0089 :
    oppositeAggregatePartValid6_0089 oppositeHistoryChunk0089 := by
  unfold oppositeAggregatePartValid6_0089 oppositeHistoryChunk0089
  decide

def oppositeAggregatePartValid7_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 92032
  | _ => True

theorem oppositeAggregatePart7_0089 :
    oppositeAggregatePartValid7_0089 oppositeHistoryChunk0089 := by
  unfold oppositeAggregatePartValid7_0089 oppositeHistoryChunk0089
  decide

theorem oppositeRange_0089 :
    oppositeHistoryChunk0089.ResidueIndexedValid anchorHistories 5000000 18 25 91136 := by
  have h0 := oppositeAggregatePart0_0089
  simp only [oppositeAggregatePartValid0_0089, oppositeHistoryChunk0089] at h0
  have h1 := oppositeAggregatePart1_0089
  simp only [oppositeAggregatePartValid1_0089, oppositeHistoryChunk0089] at h1
  have h2 := oppositeAggregatePart2_0089
  simp only [oppositeAggregatePartValid2_0089, oppositeHistoryChunk0089] at h2
  have h3 := oppositeAggregatePart3_0089
  simp only [oppositeAggregatePartValid3_0089, oppositeHistoryChunk0089] at h3
  have h4 := oppositeAggregatePart4_0089
  simp only [oppositeAggregatePartValid4_0089, oppositeHistoryChunk0089] at h4
  have h5 := oppositeAggregatePart5_0089
  simp only [oppositeAggregatePartValid5_0089, oppositeHistoryChunk0089] at h5
  have h6 := oppositeAggregatePart6_0089
  simp only [oppositeAggregatePartValid6_0089, oppositeHistoryChunk0089] at h6
  have h7 := oppositeAggregatePart7_0089
  simp only [oppositeAggregatePartValid7_0089, oppositeHistoryChunk0089] at h7
  unfold oppositeHistoryChunk0089
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 92160
  | _ => True

theorem oppositeAggregatePart0_0090 :
    oppositeAggregatePartValid0_0090 oppositeHistoryChunk0090 := by
  unfold oppositeAggregatePartValid0_0090 oppositeHistoryChunk0090
  decide

def oppositeAggregatePartValid1_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 92288
  | _ => True

theorem oppositeAggregatePart1_0090 :
    oppositeAggregatePartValid1_0090 oppositeHistoryChunk0090 := by
  unfold oppositeAggregatePartValid1_0090 oppositeHistoryChunk0090
  decide

def oppositeAggregatePartValid2_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 92416
  | _ => True

theorem oppositeAggregatePart2_0090 :
    oppositeAggregatePartValid2_0090 oppositeHistoryChunk0090 := by
  unfold oppositeAggregatePartValid2_0090 oppositeHistoryChunk0090
  decide

def oppositeAggregatePartValid3_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 92544
  | _ => True

theorem oppositeAggregatePart3_0090 :
    oppositeAggregatePartValid3_0090 oppositeHistoryChunk0090 := by
  unfold oppositeAggregatePartValid3_0090 oppositeHistoryChunk0090
  decide

def oppositeAggregatePartValid4_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 92672
  | _ => True

theorem oppositeAggregatePart4_0090 :
    oppositeAggregatePartValid4_0090 oppositeHistoryChunk0090 := by
  unfold oppositeAggregatePartValid4_0090 oppositeHistoryChunk0090
  decide

def oppositeAggregatePartValid5_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 92800
  | _ => True

theorem oppositeAggregatePart5_0090 :
    oppositeAggregatePartValid5_0090 oppositeHistoryChunk0090 := by
  unfold oppositeAggregatePartValid5_0090 oppositeHistoryChunk0090
  decide

def oppositeAggregatePartValid6_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 92928
  | _ => True

theorem oppositeAggregatePart6_0090 :
    oppositeAggregatePartValid6_0090 oppositeHistoryChunk0090 := by
  unfold oppositeAggregatePartValid6_0090 oppositeHistoryChunk0090
  decide

def oppositeAggregatePartValid7_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 93056
  | _ => True

theorem oppositeAggregatePart7_0090 :
    oppositeAggregatePartValid7_0090 oppositeHistoryChunk0090 := by
  unfold oppositeAggregatePartValid7_0090 oppositeHistoryChunk0090
  decide

theorem oppositeRange_0090 :
    oppositeHistoryChunk0090.ResidueIndexedValid anchorHistories 5000000 18 25 92160 := by
  have h0 := oppositeAggregatePart0_0090
  simp only [oppositeAggregatePartValid0_0090, oppositeHistoryChunk0090] at h0
  have h1 := oppositeAggregatePart1_0090
  simp only [oppositeAggregatePartValid1_0090, oppositeHistoryChunk0090] at h1
  have h2 := oppositeAggregatePart2_0090
  simp only [oppositeAggregatePartValid2_0090, oppositeHistoryChunk0090] at h2
  have h3 := oppositeAggregatePart3_0090
  simp only [oppositeAggregatePartValid3_0090, oppositeHistoryChunk0090] at h3
  have h4 := oppositeAggregatePart4_0090
  simp only [oppositeAggregatePartValid4_0090, oppositeHistoryChunk0090] at h4
  have h5 := oppositeAggregatePart5_0090
  simp only [oppositeAggregatePartValid5_0090, oppositeHistoryChunk0090] at h5
  have h6 := oppositeAggregatePart6_0090
  simp only [oppositeAggregatePartValid6_0090, oppositeHistoryChunk0090] at h6
  have h7 := oppositeAggregatePart7_0090
  simp only [oppositeAggregatePartValid7_0090, oppositeHistoryChunk0090] at h7
  unfold oppositeHistoryChunk0090
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 93184
  | _ => True

theorem oppositeAggregatePart0_0091 :
    oppositeAggregatePartValid0_0091 oppositeHistoryChunk0091 := by
  unfold oppositeAggregatePartValid0_0091 oppositeHistoryChunk0091
  decide

def oppositeAggregatePartValid1_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 93312
  | _ => True

theorem oppositeAggregatePart1_0091 :
    oppositeAggregatePartValid1_0091 oppositeHistoryChunk0091 := by
  unfold oppositeAggregatePartValid1_0091 oppositeHistoryChunk0091
  decide

def oppositeAggregatePartValid2_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 93440
  | _ => True

theorem oppositeAggregatePart2_0091 :
    oppositeAggregatePartValid2_0091 oppositeHistoryChunk0091 := by
  unfold oppositeAggregatePartValid2_0091 oppositeHistoryChunk0091
  decide

def oppositeAggregatePartValid3_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 93568
  | _ => True

theorem oppositeAggregatePart3_0091 :
    oppositeAggregatePartValid3_0091 oppositeHistoryChunk0091 := by
  unfold oppositeAggregatePartValid3_0091 oppositeHistoryChunk0091
  decide

def oppositeAggregatePartValid4_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 93696
  | _ => True

theorem oppositeAggregatePart4_0091 :
    oppositeAggregatePartValid4_0091 oppositeHistoryChunk0091 := by
  unfold oppositeAggregatePartValid4_0091 oppositeHistoryChunk0091
  decide

def oppositeAggregatePartValid5_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 93824
  | _ => True

theorem oppositeAggregatePart5_0091 :
    oppositeAggregatePartValid5_0091 oppositeHistoryChunk0091 := by
  unfold oppositeAggregatePartValid5_0091 oppositeHistoryChunk0091
  decide

def oppositeAggregatePartValid6_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 93952
  | _ => True

theorem oppositeAggregatePart6_0091 :
    oppositeAggregatePartValid6_0091 oppositeHistoryChunk0091 := by
  unfold oppositeAggregatePartValid6_0091 oppositeHistoryChunk0091
  decide

def oppositeAggregatePartValid7_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 94080
  | _ => True

theorem oppositeAggregatePart7_0091 :
    oppositeAggregatePartValid7_0091 oppositeHistoryChunk0091 := by
  unfold oppositeAggregatePartValid7_0091 oppositeHistoryChunk0091
  decide

theorem oppositeRange_0091 :
    oppositeHistoryChunk0091.ResidueIndexedValid anchorHistories 5000000 18 25 93184 := by
  have h0 := oppositeAggregatePart0_0091
  simp only [oppositeAggregatePartValid0_0091, oppositeHistoryChunk0091] at h0
  have h1 := oppositeAggregatePart1_0091
  simp only [oppositeAggregatePartValid1_0091, oppositeHistoryChunk0091] at h1
  have h2 := oppositeAggregatePart2_0091
  simp only [oppositeAggregatePartValid2_0091, oppositeHistoryChunk0091] at h2
  have h3 := oppositeAggregatePart3_0091
  simp only [oppositeAggregatePartValid3_0091, oppositeHistoryChunk0091] at h3
  have h4 := oppositeAggregatePart4_0091
  simp only [oppositeAggregatePartValid4_0091, oppositeHistoryChunk0091] at h4
  have h5 := oppositeAggregatePart5_0091
  simp only [oppositeAggregatePartValid5_0091, oppositeHistoryChunk0091] at h5
  have h6 := oppositeAggregatePart6_0091
  simp only [oppositeAggregatePartValid6_0091, oppositeHistoryChunk0091] at h6
  have h7 := oppositeAggregatePart7_0091
  simp only [oppositeAggregatePartValid7_0091, oppositeHistoryChunk0091] at h7
  unfold oppositeHistoryChunk0091
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
