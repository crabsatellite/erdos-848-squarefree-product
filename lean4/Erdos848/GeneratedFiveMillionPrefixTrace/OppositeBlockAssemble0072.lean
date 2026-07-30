import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0072
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0073
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0074
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0075

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0072, 0073, 0074, 0075 -/

def oppositeAggregatePartValid0_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 73728
  | _ => True

theorem oppositeAggregatePart0_0072 :
    oppositeAggregatePartValid0_0072 oppositeHistoryChunk0072 := by
  unfold oppositeAggregatePartValid0_0072 oppositeHistoryChunk0072
  decide

def oppositeAggregatePartValid1_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 73856
  | _ => True

theorem oppositeAggregatePart1_0072 :
    oppositeAggregatePartValid1_0072 oppositeHistoryChunk0072 := by
  unfold oppositeAggregatePartValid1_0072 oppositeHistoryChunk0072
  decide

def oppositeAggregatePartValid2_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 73984
  | _ => True

theorem oppositeAggregatePart2_0072 :
    oppositeAggregatePartValid2_0072 oppositeHistoryChunk0072 := by
  unfold oppositeAggregatePartValid2_0072 oppositeHistoryChunk0072
  decide

def oppositeAggregatePartValid3_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 74112
  | _ => True

theorem oppositeAggregatePart3_0072 :
    oppositeAggregatePartValid3_0072 oppositeHistoryChunk0072 := by
  unfold oppositeAggregatePartValid3_0072 oppositeHistoryChunk0072
  decide

def oppositeAggregatePartValid4_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 74240
  | _ => True

theorem oppositeAggregatePart4_0072 :
    oppositeAggregatePartValid4_0072 oppositeHistoryChunk0072 := by
  unfold oppositeAggregatePartValid4_0072 oppositeHistoryChunk0072
  decide

def oppositeAggregatePartValid5_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 74368
  | _ => True

theorem oppositeAggregatePart5_0072 :
    oppositeAggregatePartValid5_0072 oppositeHistoryChunk0072 := by
  unfold oppositeAggregatePartValid5_0072 oppositeHistoryChunk0072
  decide

def oppositeAggregatePartValid6_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 74496
  | _ => True

theorem oppositeAggregatePart6_0072 :
    oppositeAggregatePartValid6_0072 oppositeHistoryChunk0072 := by
  unfold oppositeAggregatePartValid6_0072 oppositeHistoryChunk0072
  decide

def oppositeAggregatePartValid7_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 74624
  | _ => True

theorem oppositeAggregatePart7_0072 :
    oppositeAggregatePartValid7_0072 oppositeHistoryChunk0072 := by
  unfold oppositeAggregatePartValid7_0072 oppositeHistoryChunk0072
  decide

theorem oppositeRange_0072 :
    oppositeHistoryChunk0072.ResidueIndexedValid anchorHistories 5000000 18 25 73728 := by
  have h0 := oppositeAggregatePart0_0072
  simp only [oppositeAggregatePartValid0_0072, oppositeHistoryChunk0072] at h0
  have h1 := oppositeAggregatePart1_0072
  simp only [oppositeAggregatePartValid1_0072, oppositeHistoryChunk0072] at h1
  have h2 := oppositeAggregatePart2_0072
  simp only [oppositeAggregatePartValid2_0072, oppositeHistoryChunk0072] at h2
  have h3 := oppositeAggregatePart3_0072
  simp only [oppositeAggregatePartValid3_0072, oppositeHistoryChunk0072] at h3
  have h4 := oppositeAggregatePart4_0072
  simp only [oppositeAggregatePartValid4_0072, oppositeHistoryChunk0072] at h4
  have h5 := oppositeAggregatePart5_0072
  simp only [oppositeAggregatePartValid5_0072, oppositeHistoryChunk0072] at h5
  have h6 := oppositeAggregatePart6_0072
  simp only [oppositeAggregatePartValid6_0072, oppositeHistoryChunk0072] at h6
  have h7 := oppositeAggregatePart7_0072
  simp only [oppositeAggregatePartValid7_0072, oppositeHistoryChunk0072] at h7
  unfold oppositeHistoryChunk0072
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 74752
  | _ => True

theorem oppositeAggregatePart0_0073 :
    oppositeAggregatePartValid0_0073 oppositeHistoryChunk0073 := by
  unfold oppositeAggregatePartValid0_0073 oppositeHistoryChunk0073
  decide

def oppositeAggregatePartValid1_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 74880
  | _ => True

theorem oppositeAggregatePart1_0073 :
    oppositeAggregatePartValid1_0073 oppositeHistoryChunk0073 := by
  unfold oppositeAggregatePartValid1_0073 oppositeHistoryChunk0073
  decide

def oppositeAggregatePartValid2_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 75008
  | _ => True

theorem oppositeAggregatePart2_0073 :
    oppositeAggregatePartValid2_0073 oppositeHistoryChunk0073 := by
  unfold oppositeAggregatePartValid2_0073 oppositeHistoryChunk0073
  decide

def oppositeAggregatePartValid3_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 75136
  | _ => True

theorem oppositeAggregatePart3_0073 :
    oppositeAggregatePartValid3_0073 oppositeHistoryChunk0073 := by
  unfold oppositeAggregatePartValid3_0073 oppositeHistoryChunk0073
  decide

def oppositeAggregatePartValid4_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 75264
  | _ => True

theorem oppositeAggregatePart4_0073 :
    oppositeAggregatePartValid4_0073 oppositeHistoryChunk0073 := by
  unfold oppositeAggregatePartValid4_0073 oppositeHistoryChunk0073
  decide

def oppositeAggregatePartValid5_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 75392
  | _ => True

theorem oppositeAggregatePart5_0073 :
    oppositeAggregatePartValid5_0073 oppositeHistoryChunk0073 := by
  unfold oppositeAggregatePartValid5_0073 oppositeHistoryChunk0073
  decide

def oppositeAggregatePartValid6_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 75520
  | _ => True

theorem oppositeAggregatePart6_0073 :
    oppositeAggregatePartValid6_0073 oppositeHistoryChunk0073 := by
  unfold oppositeAggregatePartValid6_0073 oppositeHistoryChunk0073
  decide

def oppositeAggregatePartValid7_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 75648
  | _ => True

theorem oppositeAggregatePart7_0073 :
    oppositeAggregatePartValid7_0073 oppositeHistoryChunk0073 := by
  unfold oppositeAggregatePartValid7_0073 oppositeHistoryChunk0073
  decide

theorem oppositeRange_0073 :
    oppositeHistoryChunk0073.ResidueIndexedValid anchorHistories 5000000 18 25 74752 := by
  have h0 := oppositeAggregatePart0_0073
  simp only [oppositeAggregatePartValid0_0073, oppositeHistoryChunk0073] at h0
  have h1 := oppositeAggregatePart1_0073
  simp only [oppositeAggregatePartValid1_0073, oppositeHistoryChunk0073] at h1
  have h2 := oppositeAggregatePart2_0073
  simp only [oppositeAggregatePartValid2_0073, oppositeHistoryChunk0073] at h2
  have h3 := oppositeAggregatePart3_0073
  simp only [oppositeAggregatePartValid3_0073, oppositeHistoryChunk0073] at h3
  have h4 := oppositeAggregatePart4_0073
  simp only [oppositeAggregatePartValid4_0073, oppositeHistoryChunk0073] at h4
  have h5 := oppositeAggregatePart5_0073
  simp only [oppositeAggregatePartValid5_0073, oppositeHistoryChunk0073] at h5
  have h6 := oppositeAggregatePart6_0073
  simp only [oppositeAggregatePartValid6_0073, oppositeHistoryChunk0073] at h6
  have h7 := oppositeAggregatePart7_0073
  simp only [oppositeAggregatePartValid7_0073, oppositeHistoryChunk0073] at h7
  unfold oppositeHistoryChunk0073
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 75776
  | _ => True

theorem oppositeAggregatePart0_0074 :
    oppositeAggregatePartValid0_0074 oppositeHistoryChunk0074 := by
  unfold oppositeAggregatePartValid0_0074 oppositeHistoryChunk0074
  decide

def oppositeAggregatePartValid1_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 75904
  | _ => True

theorem oppositeAggregatePart1_0074 :
    oppositeAggregatePartValid1_0074 oppositeHistoryChunk0074 := by
  unfold oppositeAggregatePartValid1_0074 oppositeHistoryChunk0074
  decide

def oppositeAggregatePartValid2_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 76032
  | _ => True

theorem oppositeAggregatePart2_0074 :
    oppositeAggregatePartValid2_0074 oppositeHistoryChunk0074 := by
  unfold oppositeAggregatePartValid2_0074 oppositeHistoryChunk0074
  decide

def oppositeAggregatePartValid3_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 76160
  | _ => True

theorem oppositeAggregatePart3_0074 :
    oppositeAggregatePartValid3_0074 oppositeHistoryChunk0074 := by
  unfold oppositeAggregatePartValid3_0074 oppositeHistoryChunk0074
  decide

def oppositeAggregatePartValid4_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 76288
  | _ => True

theorem oppositeAggregatePart4_0074 :
    oppositeAggregatePartValid4_0074 oppositeHistoryChunk0074 := by
  unfold oppositeAggregatePartValid4_0074 oppositeHistoryChunk0074
  decide

def oppositeAggregatePartValid5_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 76416
  | _ => True

theorem oppositeAggregatePart5_0074 :
    oppositeAggregatePartValid5_0074 oppositeHistoryChunk0074 := by
  unfold oppositeAggregatePartValid5_0074 oppositeHistoryChunk0074
  decide

def oppositeAggregatePartValid6_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 76544
  | _ => True

theorem oppositeAggregatePart6_0074 :
    oppositeAggregatePartValid6_0074 oppositeHistoryChunk0074 := by
  unfold oppositeAggregatePartValid6_0074 oppositeHistoryChunk0074
  decide

def oppositeAggregatePartValid7_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 76672
  | _ => True

theorem oppositeAggregatePart7_0074 :
    oppositeAggregatePartValid7_0074 oppositeHistoryChunk0074 := by
  unfold oppositeAggregatePartValid7_0074 oppositeHistoryChunk0074
  decide

theorem oppositeRange_0074 :
    oppositeHistoryChunk0074.ResidueIndexedValid anchorHistories 5000000 18 25 75776 := by
  have h0 := oppositeAggregatePart0_0074
  simp only [oppositeAggregatePartValid0_0074, oppositeHistoryChunk0074] at h0
  have h1 := oppositeAggregatePart1_0074
  simp only [oppositeAggregatePartValid1_0074, oppositeHistoryChunk0074] at h1
  have h2 := oppositeAggregatePart2_0074
  simp only [oppositeAggregatePartValid2_0074, oppositeHistoryChunk0074] at h2
  have h3 := oppositeAggregatePart3_0074
  simp only [oppositeAggregatePartValid3_0074, oppositeHistoryChunk0074] at h3
  have h4 := oppositeAggregatePart4_0074
  simp only [oppositeAggregatePartValid4_0074, oppositeHistoryChunk0074] at h4
  have h5 := oppositeAggregatePart5_0074
  simp only [oppositeAggregatePartValid5_0074, oppositeHistoryChunk0074] at h5
  have h6 := oppositeAggregatePart6_0074
  simp only [oppositeAggregatePartValid6_0074, oppositeHistoryChunk0074] at h6
  have h7 := oppositeAggregatePart7_0074
  simp only [oppositeAggregatePartValid7_0074, oppositeHistoryChunk0074] at h7
  unfold oppositeHistoryChunk0074
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 76800
  | _ => True

theorem oppositeAggregatePart0_0075 :
    oppositeAggregatePartValid0_0075 oppositeHistoryChunk0075 := by
  unfold oppositeAggregatePartValid0_0075 oppositeHistoryChunk0075
  decide

def oppositeAggregatePartValid1_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 76928
  | _ => True

theorem oppositeAggregatePart1_0075 :
    oppositeAggregatePartValid1_0075 oppositeHistoryChunk0075 := by
  unfold oppositeAggregatePartValid1_0075 oppositeHistoryChunk0075
  decide

def oppositeAggregatePartValid2_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 77056
  | _ => True

theorem oppositeAggregatePart2_0075 :
    oppositeAggregatePartValid2_0075 oppositeHistoryChunk0075 := by
  unfold oppositeAggregatePartValid2_0075 oppositeHistoryChunk0075
  decide

def oppositeAggregatePartValid3_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 77184
  | _ => True

theorem oppositeAggregatePart3_0075 :
    oppositeAggregatePartValid3_0075 oppositeHistoryChunk0075 := by
  unfold oppositeAggregatePartValid3_0075 oppositeHistoryChunk0075
  decide

def oppositeAggregatePartValid4_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 77312
  | _ => True

theorem oppositeAggregatePart4_0075 :
    oppositeAggregatePartValid4_0075 oppositeHistoryChunk0075 := by
  unfold oppositeAggregatePartValid4_0075 oppositeHistoryChunk0075
  decide

def oppositeAggregatePartValid5_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 77440
  | _ => True

theorem oppositeAggregatePart5_0075 :
    oppositeAggregatePartValid5_0075 oppositeHistoryChunk0075 := by
  unfold oppositeAggregatePartValid5_0075 oppositeHistoryChunk0075
  decide

def oppositeAggregatePartValid6_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 77568
  | _ => True

theorem oppositeAggregatePart6_0075 :
    oppositeAggregatePartValid6_0075 oppositeHistoryChunk0075 := by
  unfold oppositeAggregatePartValid6_0075 oppositeHistoryChunk0075
  decide

def oppositeAggregatePartValid7_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 77696
  | _ => True

theorem oppositeAggregatePart7_0075 :
    oppositeAggregatePartValid7_0075 oppositeHistoryChunk0075 := by
  unfold oppositeAggregatePartValid7_0075 oppositeHistoryChunk0075
  decide

theorem oppositeRange_0075 :
    oppositeHistoryChunk0075.ResidueIndexedValid anchorHistories 5000000 18 25 76800 := by
  have h0 := oppositeAggregatePart0_0075
  simp only [oppositeAggregatePartValid0_0075, oppositeHistoryChunk0075] at h0
  have h1 := oppositeAggregatePart1_0075
  simp only [oppositeAggregatePartValid1_0075, oppositeHistoryChunk0075] at h1
  have h2 := oppositeAggregatePart2_0075
  simp only [oppositeAggregatePartValid2_0075, oppositeHistoryChunk0075] at h2
  have h3 := oppositeAggregatePart3_0075
  simp only [oppositeAggregatePartValid3_0075, oppositeHistoryChunk0075] at h3
  have h4 := oppositeAggregatePart4_0075
  simp only [oppositeAggregatePartValid4_0075, oppositeHistoryChunk0075] at h4
  have h5 := oppositeAggregatePart5_0075
  simp only [oppositeAggregatePartValid5_0075, oppositeHistoryChunk0075] at h5
  have h6 := oppositeAggregatePart6_0075
  simp only [oppositeAggregatePartValid6_0075, oppositeHistoryChunk0075] at h6
  have h7 := oppositeAggregatePart7_0075
  simp only [oppositeAggregatePartValid7_0075, oppositeHistoryChunk0075] at h7
  unfold oppositeHistoryChunk0075
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
