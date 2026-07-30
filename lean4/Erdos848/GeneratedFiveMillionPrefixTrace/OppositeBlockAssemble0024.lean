import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0024
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0025
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0026
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0027

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0024, 0025, 0026, 0027 -/

def oppositeAggregatePartValid0_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 24576
  | _ => True

theorem oppositeAggregatePart0_0024 :
    oppositeAggregatePartValid0_0024 oppositeHistoryChunk0024 := by
  unfold oppositeAggregatePartValid0_0024 oppositeHistoryChunk0024
  decide

def oppositeAggregatePartValid1_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 24704
  | _ => True

theorem oppositeAggregatePart1_0024 :
    oppositeAggregatePartValid1_0024 oppositeHistoryChunk0024 := by
  unfold oppositeAggregatePartValid1_0024 oppositeHistoryChunk0024
  decide

def oppositeAggregatePartValid2_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 24832
  | _ => True

theorem oppositeAggregatePart2_0024 :
    oppositeAggregatePartValid2_0024 oppositeHistoryChunk0024 := by
  unfold oppositeAggregatePartValid2_0024 oppositeHistoryChunk0024
  decide

def oppositeAggregatePartValid3_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 24960
  | _ => True

theorem oppositeAggregatePart3_0024 :
    oppositeAggregatePartValid3_0024 oppositeHistoryChunk0024 := by
  unfold oppositeAggregatePartValid3_0024 oppositeHistoryChunk0024
  decide

def oppositeAggregatePartValid4_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 25088
  | _ => True

theorem oppositeAggregatePart4_0024 :
    oppositeAggregatePartValid4_0024 oppositeHistoryChunk0024 := by
  unfold oppositeAggregatePartValid4_0024 oppositeHistoryChunk0024
  decide

def oppositeAggregatePartValid5_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 25216
  | _ => True

theorem oppositeAggregatePart5_0024 :
    oppositeAggregatePartValid5_0024 oppositeHistoryChunk0024 := by
  unfold oppositeAggregatePartValid5_0024 oppositeHistoryChunk0024
  decide

def oppositeAggregatePartValid6_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 25344
  | _ => True

theorem oppositeAggregatePart6_0024 :
    oppositeAggregatePartValid6_0024 oppositeHistoryChunk0024 := by
  unfold oppositeAggregatePartValid6_0024 oppositeHistoryChunk0024
  decide

def oppositeAggregatePartValid7_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 25472
  | _ => True

theorem oppositeAggregatePart7_0024 :
    oppositeAggregatePartValid7_0024 oppositeHistoryChunk0024 := by
  unfold oppositeAggregatePartValid7_0024 oppositeHistoryChunk0024
  decide

theorem oppositeRange_0024 :
    oppositeHistoryChunk0024.ResidueIndexedValid anchorHistories 5000000 18 25 24576 := by
  have h0 := oppositeAggregatePart0_0024
  simp only [oppositeAggregatePartValid0_0024, oppositeHistoryChunk0024] at h0
  have h1 := oppositeAggregatePart1_0024
  simp only [oppositeAggregatePartValid1_0024, oppositeHistoryChunk0024] at h1
  have h2 := oppositeAggregatePart2_0024
  simp only [oppositeAggregatePartValid2_0024, oppositeHistoryChunk0024] at h2
  have h3 := oppositeAggregatePart3_0024
  simp only [oppositeAggregatePartValid3_0024, oppositeHistoryChunk0024] at h3
  have h4 := oppositeAggregatePart4_0024
  simp only [oppositeAggregatePartValid4_0024, oppositeHistoryChunk0024] at h4
  have h5 := oppositeAggregatePart5_0024
  simp only [oppositeAggregatePartValid5_0024, oppositeHistoryChunk0024] at h5
  have h6 := oppositeAggregatePart6_0024
  simp only [oppositeAggregatePartValid6_0024, oppositeHistoryChunk0024] at h6
  have h7 := oppositeAggregatePart7_0024
  simp only [oppositeAggregatePartValid7_0024, oppositeHistoryChunk0024] at h7
  unfold oppositeHistoryChunk0024
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 25600
  | _ => True

theorem oppositeAggregatePart0_0025 :
    oppositeAggregatePartValid0_0025 oppositeHistoryChunk0025 := by
  unfold oppositeAggregatePartValid0_0025 oppositeHistoryChunk0025
  decide

def oppositeAggregatePartValid1_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 25728
  | _ => True

theorem oppositeAggregatePart1_0025 :
    oppositeAggregatePartValid1_0025 oppositeHistoryChunk0025 := by
  unfold oppositeAggregatePartValid1_0025 oppositeHistoryChunk0025
  decide

def oppositeAggregatePartValid2_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 25856
  | _ => True

theorem oppositeAggregatePart2_0025 :
    oppositeAggregatePartValid2_0025 oppositeHistoryChunk0025 := by
  unfold oppositeAggregatePartValid2_0025 oppositeHistoryChunk0025
  decide

def oppositeAggregatePartValid3_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 25984
  | _ => True

theorem oppositeAggregatePart3_0025 :
    oppositeAggregatePartValid3_0025 oppositeHistoryChunk0025 := by
  unfold oppositeAggregatePartValid3_0025 oppositeHistoryChunk0025
  decide

def oppositeAggregatePartValid4_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 26112
  | _ => True

theorem oppositeAggregatePart4_0025 :
    oppositeAggregatePartValid4_0025 oppositeHistoryChunk0025 := by
  unfold oppositeAggregatePartValid4_0025 oppositeHistoryChunk0025
  decide

def oppositeAggregatePartValid5_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 26240
  | _ => True

theorem oppositeAggregatePart5_0025 :
    oppositeAggregatePartValid5_0025 oppositeHistoryChunk0025 := by
  unfold oppositeAggregatePartValid5_0025 oppositeHistoryChunk0025
  decide

def oppositeAggregatePartValid6_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 26368
  | _ => True

theorem oppositeAggregatePart6_0025 :
    oppositeAggregatePartValid6_0025 oppositeHistoryChunk0025 := by
  unfold oppositeAggregatePartValid6_0025 oppositeHistoryChunk0025
  decide

def oppositeAggregatePartValid7_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 26496
  | _ => True

theorem oppositeAggregatePart7_0025 :
    oppositeAggregatePartValid7_0025 oppositeHistoryChunk0025 := by
  unfold oppositeAggregatePartValid7_0025 oppositeHistoryChunk0025
  decide

theorem oppositeRange_0025 :
    oppositeHistoryChunk0025.ResidueIndexedValid anchorHistories 5000000 18 25 25600 := by
  have h0 := oppositeAggregatePart0_0025
  simp only [oppositeAggregatePartValid0_0025, oppositeHistoryChunk0025] at h0
  have h1 := oppositeAggregatePart1_0025
  simp only [oppositeAggregatePartValid1_0025, oppositeHistoryChunk0025] at h1
  have h2 := oppositeAggregatePart2_0025
  simp only [oppositeAggregatePartValid2_0025, oppositeHistoryChunk0025] at h2
  have h3 := oppositeAggregatePart3_0025
  simp only [oppositeAggregatePartValid3_0025, oppositeHistoryChunk0025] at h3
  have h4 := oppositeAggregatePart4_0025
  simp only [oppositeAggregatePartValid4_0025, oppositeHistoryChunk0025] at h4
  have h5 := oppositeAggregatePart5_0025
  simp only [oppositeAggregatePartValid5_0025, oppositeHistoryChunk0025] at h5
  have h6 := oppositeAggregatePart6_0025
  simp only [oppositeAggregatePartValid6_0025, oppositeHistoryChunk0025] at h6
  have h7 := oppositeAggregatePart7_0025
  simp only [oppositeAggregatePartValid7_0025, oppositeHistoryChunk0025] at h7
  unfold oppositeHistoryChunk0025
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 26624
  | _ => True

theorem oppositeAggregatePart0_0026 :
    oppositeAggregatePartValid0_0026 oppositeHistoryChunk0026 := by
  unfold oppositeAggregatePartValid0_0026 oppositeHistoryChunk0026
  decide

def oppositeAggregatePartValid1_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 26752
  | _ => True

theorem oppositeAggregatePart1_0026 :
    oppositeAggregatePartValid1_0026 oppositeHistoryChunk0026 := by
  unfold oppositeAggregatePartValid1_0026 oppositeHistoryChunk0026
  decide

def oppositeAggregatePartValid2_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 26880
  | _ => True

theorem oppositeAggregatePart2_0026 :
    oppositeAggregatePartValid2_0026 oppositeHistoryChunk0026 := by
  unfold oppositeAggregatePartValid2_0026 oppositeHistoryChunk0026
  decide

def oppositeAggregatePartValid3_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 27008
  | _ => True

theorem oppositeAggregatePart3_0026 :
    oppositeAggregatePartValid3_0026 oppositeHistoryChunk0026 := by
  unfold oppositeAggregatePartValid3_0026 oppositeHistoryChunk0026
  decide

def oppositeAggregatePartValid4_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 27136
  | _ => True

theorem oppositeAggregatePart4_0026 :
    oppositeAggregatePartValid4_0026 oppositeHistoryChunk0026 := by
  unfold oppositeAggregatePartValid4_0026 oppositeHistoryChunk0026
  decide

def oppositeAggregatePartValid5_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 27264
  | _ => True

theorem oppositeAggregatePart5_0026 :
    oppositeAggregatePartValid5_0026 oppositeHistoryChunk0026 := by
  unfold oppositeAggregatePartValid5_0026 oppositeHistoryChunk0026
  decide

def oppositeAggregatePartValid6_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 27392
  | _ => True

theorem oppositeAggregatePart6_0026 :
    oppositeAggregatePartValid6_0026 oppositeHistoryChunk0026 := by
  unfold oppositeAggregatePartValid6_0026 oppositeHistoryChunk0026
  decide

def oppositeAggregatePartValid7_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 27520
  | _ => True

theorem oppositeAggregatePart7_0026 :
    oppositeAggregatePartValid7_0026 oppositeHistoryChunk0026 := by
  unfold oppositeAggregatePartValid7_0026 oppositeHistoryChunk0026
  decide

theorem oppositeRange_0026 :
    oppositeHistoryChunk0026.ResidueIndexedValid anchorHistories 5000000 18 25 26624 := by
  have h0 := oppositeAggregatePart0_0026
  simp only [oppositeAggregatePartValid0_0026, oppositeHistoryChunk0026] at h0
  have h1 := oppositeAggregatePart1_0026
  simp only [oppositeAggregatePartValid1_0026, oppositeHistoryChunk0026] at h1
  have h2 := oppositeAggregatePart2_0026
  simp only [oppositeAggregatePartValid2_0026, oppositeHistoryChunk0026] at h2
  have h3 := oppositeAggregatePart3_0026
  simp only [oppositeAggregatePartValid3_0026, oppositeHistoryChunk0026] at h3
  have h4 := oppositeAggregatePart4_0026
  simp only [oppositeAggregatePartValid4_0026, oppositeHistoryChunk0026] at h4
  have h5 := oppositeAggregatePart5_0026
  simp only [oppositeAggregatePartValid5_0026, oppositeHistoryChunk0026] at h5
  have h6 := oppositeAggregatePart6_0026
  simp only [oppositeAggregatePartValid6_0026, oppositeHistoryChunk0026] at h6
  have h7 := oppositeAggregatePart7_0026
  simp only [oppositeAggregatePartValid7_0026, oppositeHistoryChunk0026] at h7
  unfold oppositeHistoryChunk0026
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 27648
  | _ => True

theorem oppositeAggregatePart0_0027 :
    oppositeAggregatePartValid0_0027 oppositeHistoryChunk0027 := by
  unfold oppositeAggregatePartValid0_0027 oppositeHistoryChunk0027
  decide

def oppositeAggregatePartValid1_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 27776
  | _ => True

theorem oppositeAggregatePart1_0027 :
    oppositeAggregatePartValid1_0027 oppositeHistoryChunk0027 := by
  unfold oppositeAggregatePartValid1_0027 oppositeHistoryChunk0027
  decide

def oppositeAggregatePartValid2_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 27904
  | _ => True

theorem oppositeAggregatePart2_0027 :
    oppositeAggregatePartValid2_0027 oppositeHistoryChunk0027 := by
  unfold oppositeAggregatePartValid2_0027 oppositeHistoryChunk0027
  decide

def oppositeAggregatePartValid3_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 28032
  | _ => True

theorem oppositeAggregatePart3_0027 :
    oppositeAggregatePartValid3_0027 oppositeHistoryChunk0027 := by
  unfold oppositeAggregatePartValid3_0027 oppositeHistoryChunk0027
  decide

def oppositeAggregatePartValid4_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 28160
  | _ => True

theorem oppositeAggregatePart4_0027 :
    oppositeAggregatePartValid4_0027 oppositeHistoryChunk0027 := by
  unfold oppositeAggregatePartValid4_0027 oppositeHistoryChunk0027
  decide

def oppositeAggregatePartValid5_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 28288
  | _ => True

theorem oppositeAggregatePart5_0027 :
    oppositeAggregatePartValid5_0027 oppositeHistoryChunk0027 := by
  unfold oppositeAggregatePartValid5_0027 oppositeHistoryChunk0027
  decide

def oppositeAggregatePartValid6_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 28416
  | _ => True

theorem oppositeAggregatePart6_0027 :
    oppositeAggregatePartValid6_0027 oppositeHistoryChunk0027 := by
  unfold oppositeAggregatePartValid6_0027 oppositeHistoryChunk0027
  decide

def oppositeAggregatePartValid7_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 28544
  | _ => True

theorem oppositeAggregatePart7_0027 :
    oppositeAggregatePartValid7_0027 oppositeHistoryChunk0027 := by
  unfold oppositeAggregatePartValid7_0027 oppositeHistoryChunk0027
  decide

theorem oppositeRange_0027 :
    oppositeHistoryChunk0027.ResidueIndexedValid anchorHistories 5000000 18 25 27648 := by
  have h0 := oppositeAggregatePart0_0027
  simp only [oppositeAggregatePartValid0_0027, oppositeHistoryChunk0027] at h0
  have h1 := oppositeAggregatePart1_0027
  simp only [oppositeAggregatePartValid1_0027, oppositeHistoryChunk0027] at h1
  have h2 := oppositeAggregatePart2_0027
  simp only [oppositeAggregatePartValid2_0027, oppositeHistoryChunk0027] at h2
  have h3 := oppositeAggregatePart3_0027
  simp only [oppositeAggregatePartValid3_0027, oppositeHistoryChunk0027] at h3
  have h4 := oppositeAggregatePart4_0027
  simp only [oppositeAggregatePartValid4_0027, oppositeHistoryChunk0027] at h4
  have h5 := oppositeAggregatePart5_0027
  simp only [oppositeAggregatePartValid5_0027, oppositeHistoryChunk0027] at h5
  have h6 := oppositeAggregatePart6_0027
  simp only [oppositeAggregatePartValid6_0027, oppositeHistoryChunk0027] at h6
  have h7 := oppositeAggregatePart7_0027
  simp only [oppositeAggregatePartValid7_0027, oppositeHistoryChunk0027] at h7
  unfold oppositeHistoryChunk0027
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
