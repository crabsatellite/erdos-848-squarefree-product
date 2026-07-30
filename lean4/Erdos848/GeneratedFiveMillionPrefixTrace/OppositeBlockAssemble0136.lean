import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0136
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0137
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0138
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0139

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0136, 0137, 0138, 0139 -/

def oppositeAggregatePartValid0_0136 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 139264
  | _ => True

theorem oppositeAggregatePart0_0136 :
    oppositeAggregatePartValid0_0136 oppositeHistoryChunk0136 := by
  unfold oppositeAggregatePartValid0_0136 oppositeHistoryChunk0136
  decide

def oppositeAggregatePartValid1_0136 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 139392
  | _ => True

theorem oppositeAggregatePart1_0136 :
    oppositeAggregatePartValid1_0136 oppositeHistoryChunk0136 := by
  unfold oppositeAggregatePartValid1_0136 oppositeHistoryChunk0136
  decide

def oppositeAggregatePartValid2_0136 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 139520
  | _ => True

theorem oppositeAggregatePart2_0136 :
    oppositeAggregatePartValid2_0136 oppositeHistoryChunk0136 := by
  unfold oppositeAggregatePartValid2_0136 oppositeHistoryChunk0136
  decide

def oppositeAggregatePartValid3_0136 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 139648
  | _ => True

theorem oppositeAggregatePart3_0136 :
    oppositeAggregatePartValid3_0136 oppositeHistoryChunk0136 := by
  unfold oppositeAggregatePartValid3_0136 oppositeHistoryChunk0136
  decide

def oppositeAggregatePartValid4_0136 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 139776
  | _ => True

theorem oppositeAggregatePart4_0136 :
    oppositeAggregatePartValid4_0136 oppositeHistoryChunk0136 := by
  unfold oppositeAggregatePartValid4_0136 oppositeHistoryChunk0136
  decide

def oppositeAggregatePartValid5_0136 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 139904
  | _ => True

theorem oppositeAggregatePart5_0136 :
    oppositeAggregatePartValid5_0136 oppositeHistoryChunk0136 := by
  unfold oppositeAggregatePartValid5_0136 oppositeHistoryChunk0136
  decide

def oppositeAggregatePartValid6_0136 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 140032
  | _ => True

theorem oppositeAggregatePart6_0136 :
    oppositeAggregatePartValid6_0136 oppositeHistoryChunk0136 := by
  unfold oppositeAggregatePartValid6_0136 oppositeHistoryChunk0136
  decide

def oppositeAggregatePartValid7_0136 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 140160
  | _ => True

theorem oppositeAggregatePart7_0136 :
    oppositeAggregatePartValid7_0136 oppositeHistoryChunk0136 := by
  unfold oppositeAggregatePartValid7_0136 oppositeHistoryChunk0136
  decide

theorem oppositeRange_0136 :
    oppositeHistoryChunk0136.ResidueIndexedValid anchorHistories 5000000 18 25 139264 := by
  have h0 := oppositeAggregatePart0_0136
  simp only [oppositeAggregatePartValid0_0136, oppositeHistoryChunk0136] at h0
  have h1 := oppositeAggregatePart1_0136
  simp only [oppositeAggregatePartValid1_0136, oppositeHistoryChunk0136] at h1
  have h2 := oppositeAggregatePart2_0136
  simp only [oppositeAggregatePartValid2_0136, oppositeHistoryChunk0136] at h2
  have h3 := oppositeAggregatePart3_0136
  simp only [oppositeAggregatePartValid3_0136, oppositeHistoryChunk0136] at h3
  have h4 := oppositeAggregatePart4_0136
  simp only [oppositeAggregatePartValid4_0136, oppositeHistoryChunk0136] at h4
  have h5 := oppositeAggregatePart5_0136
  simp only [oppositeAggregatePartValid5_0136, oppositeHistoryChunk0136] at h5
  have h6 := oppositeAggregatePart6_0136
  simp only [oppositeAggregatePartValid6_0136, oppositeHistoryChunk0136] at h6
  have h7 := oppositeAggregatePart7_0136
  simp only [oppositeAggregatePartValid7_0136, oppositeHistoryChunk0136] at h7
  unfold oppositeHistoryChunk0136
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0137 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 140288
  | _ => True

theorem oppositeAggregatePart0_0137 :
    oppositeAggregatePartValid0_0137 oppositeHistoryChunk0137 := by
  unfold oppositeAggregatePartValid0_0137 oppositeHistoryChunk0137
  decide

def oppositeAggregatePartValid1_0137 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 140416
  | _ => True

theorem oppositeAggregatePart1_0137 :
    oppositeAggregatePartValid1_0137 oppositeHistoryChunk0137 := by
  unfold oppositeAggregatePartValid1_0137 oppositeHistoryChunk0137
  decide

def oppositeAggregatePartValid2_0137 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 140544
  | _ => True

theorem oppositeAggregatePart2_0137 :
    oppositeAggregatePartValid2_0137 oppositeHistoryChunk0137 := by
  unfold oppositeAggregatePartValid2_0137 oppositeHistoryChunk0137
  decide

def oppositeAggregatePartValid3_0137 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 140672
  | _ => True

theorem oppositeAggregatePart3_0137 :
    oppositeAggregatePartValid3_0137 oppositeHistoryChunk0137 := by
  unfold oppositeAggregatePartValid3_0137 oppositeHistoryChunk0137
  decide

def oppositeAggregatePartValid4_0137 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 140800
  | _ => True

theorem oppositeAggregatePart4_0137 :
    oppositeAggregatePartValid4_0137 oppositeHistoryChunk0137 := by
  unfold oppositeAggregatePartValid4_0137 oppositeHistoryChunk0137
  decide

def oppositeAggregatePartValid5_0137 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 140928
  | _ => True

theorem oppositeAggregatePart5_0137 :
    oppositeAggregatePartValid5_0137 oppositeHistoryChunk0137 := by
  unfold oppositeAggregatePartValid5_0137 oppositeHistoryChunk0137
  decide

def oppositeAggregatePartValid6_0137 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 141056
  | _ => True

theorem oppositeAggregatePart6_0137 :
    oppositeAggregatePartValid6_0137 oppositeHistoryChunk0137 := by
  unfold oppositeAggregatePartValid6_0137 oppositeHistoryChunk0137
  decide

def oppositeAggregatePartValid7_0137 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 141184
  | _ => True

theorem oppositeAggregatePart7_0137 :
    oppositeAggregatePartValid7_0137 oppositeHistoryChunk0137 := by
  unfold oppositeAggregatePartValid7_0137 oppositeHistoryChunk0137
  decide

theorem oppositeRange_0137 :
    oppositeHistoryChunk0137.ResidueIndexedValid anchorHistories 5000000 18 25 140288 := by
  have h0 := oppositeAggregatePart0_0137
  simp only [oppositeAggregatePartValid0_0137, oppositeHistoryChunk0137] at h0
  have h1 := oppositeAggregatePart1_0137
  simp only [oppositeAggregatePartValid1_0137, oppositeHistoryChunk0137] at h1
  have h2 := oppositeAggregatePart2_0137
  simp only [oppositeAggregatePartValid2_0137, oppositeHistoryChunk0137] at h2
  have h3 := oppositeAggregatePart3_0137
  simp only [oppositeAggregatePartValid3_0137, oppositeHistoryChunk0137] at h3
  have h4 := oppositeAggregatePart4_0137
  simp only [oppositeAggregatePartValid4_0137, oppositeHistoryChunk0137] at h4
  have h5 := oppositeAggregatePart5_0137
  simp only [oppositeAggregatePartValid5_0137, oppositeHistoryChunk0137] at h5
  have h6 := oppositeAggregatePart6_0137
  simp only [oppositeAggregatePartValid6_0137, oppositeHistoryChunk0137] at h6
  have h7 := oppositeAggregatePart7_0137
  simp only [oppositeAggregatePartValid7_0137, oppositeHistoryChunk0137] at h7
  unfold oppositeHistoryChunk0137
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0138 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 141312
  | _ => True

theorem oppositeAggregatePart0_0138 :
    oppositeAggregatePartValid0_0138 oppositeHistoryChunk0138 := by
  unfold oppositeAggregatePartValid0_0138 oppositeHistoryChunk0138
  decide

def oppositeAggregatePartValid1_0138 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 141440
  | _ => True

theorem oppositeAggregatePart1_0138 :
    oppositeAggregatePartValid1_0138 oppositeHistoryChunk0138 := by
  unfold oppositeAggregatePartValid1_0138 oppositeHistoryChunk0138
  decide

def oppositeAggregatePartValid2_0138 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 141568
  | _ => True

theorem oppositeAggregatePart2_0138 :
    oppositeAggregatePartValid2_0138 oppositeHistoryChunk0138 := by
  unfold oppositeAggregatePartValid2_0138 oppositeHistoryChunk0138
  decide

def oppositeAggregatePartValid3_0138 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 141696
  | _ => True

theorem oppositeAggregatePart3_0138 :
    oppositeAggregatePartValid3_0138 oppositeHistoryChunk0138 := by
  unfold oppositeAggregatePartValid3_0138 oppositeHistoryChunk0138
  decide

def oppositeAggregatePartValid4_0138 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 141824
  | _ => True

theorem oppositeAggregatePart4_0138 :
    oppositeAggregatePartValid4_0138 oppositeHistoryChunk0138 := by
  unfold oppositeAggregatePartValid4_0138 oppositeHistoryChunk0138
  decide

def oppositeAggregatePartValid5_0138 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 141952
  | _ => True

theorem oppositeAggregatePart5_0138 :
    oppositeAggregatePartValid5_0138 oppositeHistoryChunk0138 := by
  unfold oppositeAggregatePartValid5_0138 oppositeHistoryChunk0138
  decide

def oppositeAggregatePartValid6_0138 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 142080
  | _ => True

theorem oppositeAggregatePart6_0138 :
    oppositeAggregatePartValid6_0138 oppositeHistoryChunk0138 := by
  unfold oppositeAggregatePartValid6_0138 oppositeHistoryChunk0138
  decide

def oppositeAggregatePartValid7_0138 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 142208
  | _ => True

theorem oppositeAggregatePart7_0138 :
    oppositeAggregatePartValid7_0138 oppositeHistoryChunk0138 := by
  unfold oppositeAggregatePartValid7_0138 oppositeHistoryChunk0138
  decide

theorem oppositeRange_0138 :
    oppositeHistoryChunk0138.ResidueIndexedValid anchorHistories 5000000 18 25 141312 := by
  have h0 := oppositeAggregatePart0_0138
  simp only [oppositeAggregatePartValid0_0138, oppositeHistoryChunk0138] at h0
  have h1 := oppositeAggregatePart1_0138
  simp only [oppositeAggregatePartValid1_0138, oppositeHistoryChunk0138] at h1
  have h2 := oppositeAggregatePart2_0138
  simp only [oppositeAggregatePartValid2_0138, oppositeHistoryChunk0138] at h2
  have h3 := oppositeAggregatePart3_0138
  simp only [oppositeAggregatePartValid3_0138, oppositeHistoryChunk0138] at h3
  have h4 := oppositeAggregatePart4_0138
  simp only [oppositeAggregatePartValid4_0138, oppositeHistoryChunk0138] at h4
  have h5 := oppositeAggregatePart5_0138
  simp only [oppositeAggregatePartValid5_0138, oppositeHistoryChunk0138] at h5
  have h6 := oppositeAggregatePart6_0138
  simp only [oppositeAggregatePartValid6_0138, oppositeHistoryChunk0138] at h6
  have h7 := oppositeAggregatePart7_0138
  simp only [oppositeAggregatePartValid7_0138, oppositeHistoryChunk0138] at h7
  unfold oppositeHistoryChunk0138
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0139 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 142336
  | _ => True

theorem oppositeAggregatePart0_0139 :
    oppositeAggregatePartValid0_0139 oppositeHistoryChunk0139 := by
  unfold oppositeAggregatePartValid0_0139 oppositeHistoryChunk0139
  decide

def oppositeAggregatePartValid1_0139 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 142464
  | _ => True

theorem oppositeAggregatePart1_0139 :
    oppositeAggregatePartValid1_0139 oppositeHistoryChunk0139 := by
  unfold oppositeAggregatePartValid1_0139 oppositeHistoryChunk0139
  decide

def oppositeAggregatePartValid2_0139 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 142592
  | _ => True

theorem oppositeAggregatePart2_0139 :
    oppositeAggregatePartValid2_0139 oppositeHistoryChunk0139 := by
  unfold oppositeAggregatePartValid2_0139 oppositeHistoryChunk0139
  decide

def oppositeAggregatePartValid3_0139 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 142720
  | _ => True

theorem oppositeAggregatePart3_0139 :
    oppositeAggregatePartValid3_0139 oppositeHistoryChunk0139 := by
  unfold oppositeAggregatePartValid3_0139 oppositeHistoryChunk0139
  decide

def oppositeAggregatePartValid4_0139 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 142848
  | _ => True

theorem oppositeAggregatePart4_0139 :
    oppositeAggregatePartValid4_0139 oppositeHistoryChunk0139 := by
  unfold oppositeAggregatePartValid4_0139 oppositeHistoryChunk0139
  decide

def oppositeAggregatePartValid5_0139 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 142976
  | _ => True

theorem oppositeAggregatePart5_0139 :
    oppositeAggregatePartValid5_0139 oppositeHistoryChunk0139 := by
  unfold oppositeAggregatePartValid5_0139 oppositeHistoryChunk0139
  decide

def oppositeAggregatePartValid6_0139 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 143104
  | _ => True

theorem oppositeAggregatePart6_0139 :
    oppositeAggregatePartValid6_0139 oppositeHistoryChunk0139 := by
  unfold oppositeAggregatePartValid6_0139 oppositeHistoryChunk0139
  decide

def oppositeAggregatePartValid7_0139 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 143232
  | _ => True

theorem oppositeAggregatePart7_0139 :
    oppositeAggregatePartValid7_0139 oppositeHistoryChunk0139 := by
  unfold oppositeAggregatePartValid7_0139 oppositeHistoryChunk0139
  decide

theorem oppositeRange_0139 :
    oppositeHistoryChunk0139.ResidueIndexedValid anchorHistories 5000000 18 25 142336 := by
  have h0 := oppositeAggregatePart0_0139
  simp only [oppositeAggregatePartValid0_0139, oppositeHistoryChunk0139] at h0
  have h1 := oppositeAggregatePart1_0139
  simp only [oppositeAggregatePartValid1_0139, oppositeHistoryChunk0139] at h1
  have h2 := oppositeAggregatePart2_0139
  simp only [oppositeAggregatePartValid2_0139, oppositeHistoryChunk0139] at h2
  have h3 := oppositeAggregatePart3_0139
  simp only [oppositeAggregatePartValid3_0139, oppositeHistoryChunk0139] at h3
  have h4 := oppositeAggregatePart4_0139
  simp only [oppositeAggregatePartValid4_0139, oppositeHistoryChunk0139] at h4
  have h5 := oppositeAggregatePart5_0139
  simp only [oppositeAggregatePartValid5_0139, oppositeHistoryChunk0139] at h5
  have h6 := oppositeAggregatePart6_0139
  simp only [oppositeAggregatePartValid6_0139, oppositeHistoryChunk0139] at h6
  have h7 := oppositeAggregatePart7_0139
  simp only [oppositeAggregatePartValid7_0139, oppositeHistoryChunk0139] at h7
  unfold oppositeHistoryChunk0139
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
