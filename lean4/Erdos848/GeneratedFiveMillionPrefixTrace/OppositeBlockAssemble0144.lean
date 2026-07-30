import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0144
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0145
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0146
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0147

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0144, 0145, 0146, 0147 -/

def oppositeAggregatePartValid0_0144 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 147456
  | _ => True

theorem oppositeAggregatePart0_0144 :
    oppositeAggregatePartValid0_0144 oppositeHistoryChunk0144 := by
  unfold oppositeAggregatePartValid0_0144 oppositeHistoryChunk0144
  decide

def oppositeAggregatePartValid1_0144 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 147584
  | _ => True

theorem oppositeAggregatePart1_0144 :
    oppositeAggregatePartValid1_0144 oppositeHistoryChunk0144 := by
  unfold oppositeAggregatePartValid1_0144 oppositeHistoryChunk0144
  decide

def oppositeAggregatePartValid2_0144 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 147712
  | _ => True

theorem oppositeAggregatePart2_0144 :
    oppositeAggregatePartValid2_0144 oppositeHistoryChunk0144 := by
  unfold oppositeAggregatePartValid2_0144 oppositeHistoryChunk0144
  decide

def oppositeAggregatePartValid3_0144 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 147840
  | _ => True

theorem oppositeAggregatePart3_0144 :
    oppositeAggregatePartValid3_0144 oppositeHistoryChunk0144 := by
  unfold oppositeAggregatePartValid3_0144 oppositeHistoryChunk0144
  decide

def oppositeAggregatePartValid4_0144 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 147968
  | _ => True

theorem oppositeAggregatePart4_0144 :
    oppositeAggregatePartValid4_0144 oppositeHistoryChunk0144 := by
  unfold oppositeAggregatePartValid4_0144 oppositeHistoryChunk0144
  decide

def oppositeAggregatePartValid5_0144 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 148096
  | _ => True

theorem oppositeAggregatePart5_0144 :
    oppositeAggregatePartValid5_0144 oppositeHistoryChunk0144 := by
  unfold oppositeAggregatePartValid5_0144 oppositeHistoryChunk0144
  decide

def oppositeAggregatePartValid6_0144 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 148224
  | _ => True

theorem oppositeAggregatePart6_0144 :
    oppositeAggregatePartValid6_0144 oppositeHistoryChunk0144 := by
  unfold oppositeAggregatePartValid6_0144 oppositeHistoryChunk0144
  decide

def oppositeAggregatePartValid7_0144 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 148352
  | _ => True

theorem oppositeAggregatePart7_0144 :
    oppositeAggregatePartValid7_0144 oppositeHistoryChunk0144 := by
  unfold oppositeAggregatePartValid7_0144 oppositeHistoryChunk0144
  decide

theorem oppositeRange_0144 :
    oppositeHistoryChunk0144.ResidueIndexedValid anchorHistories 5000000 18 25 147456 := by
  have h0 := oppositeAggregatePart0_0144
  simp only [oppositeAggregatePartValid0_0144, oppositeHistoryChunk0144] at h0
  have h1 := oppositeAggregatePart1_0144
  simp only [oppositeAggregatePartValid1_0144, oppositeHistoryChunk0144] at h1
  have h2 := oppositeAggregatePart2_0144
  simp only [oppositeAggregatePartValid2_0144, oppositeHistoryChunk0144] at h2
  have h3 := oppositeAggregatePart3_0144
  simp only [oppositeAggregatePartValid3_0144, oppositeHistoryChunk0144] at h3
  have h4 := oppositeAggregatePart4_0144
  simp only [oppositeAggregatePartValid4_0144, oppositeHistoryChunk0144] at h4
  have h5 := oppositeAggregatePart5_0144
  simp only [oppositeAggregatePartValid5_0144, oppositeHistoryChunk0144] at h5
  have h6 := oppositeAggregatePart6_0144
  simp only [oppositeAggregatePartValid6_0144, oppositeHistoryChunk0144] at h6
  have h7 := oppositeAggregatePart7_0144
  simp only [oppositeAggregatePartValid7_0144, oppositeHistoryChunk0144] at h7
  unfold oppositeHistoryChunk0144
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0145 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 148480
  | _ => True

theorem oppositeAggregatePart0_0145 :
    oppositeAggregatePartValid0_0145 oppositeHistoryChunk0145 := by
  unfold oppositeAggregatePartValid0_0145 oppositeHistoryChunk0145
  decide

def oppositeAggregatePartValid1_0145 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 148608
  | _ => True

theorem oppositeAggregatePart1_0145 :
    oppositeAggregatePartValid1_0145 oppositeHistoryChunk0145 := by
  unfold oppositeAggregatePartValid1_0145 oppositeHistoryChunk0145
  decide

def oppositeAggregatePartValid2_0145 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 148736
  | _ => True

theorem oppositeAggregatePart2_0145 :
    oppositeAggregatePartValid2_0145 oppositeHistoryChunk0145 := by
  unfold oppositeAggregatePartValid2_0145 oppositeHistoryChunk0145
  decide

def oppositeAggregatePartValid3_0145 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 148864
  | _ => True

theorem oppositeAggregatePart3_0145 :
    oppositeAggregatePartValid3_0145 oppositeHistoryChunk0145 := by
  unfold oppositeAggregatePartValid3_0145 oppositeHistoryChunk0145
  decide

def oppositeAggregatePartValid4_0145 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 148992
  | _ => True

theorem oppositeAggregatePart4_0145 :
    oppositeAggregatePartValid4_0145 oppositeHistoryChunk0145 := by
  unfold oppositeAggregatePartValid4_0145 oppositeHistoryChunk0145
  decide

def oppositeAggregatePartValid5_0145 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 149120
  | _ => True

theorem oppositeAggregatePart5_0145 :
    oppositeAggregatePartValid5_0145 oppositeHistoryChunk0145 := by
  unfold oppositeAggregatePartValid5_0145 oppositeHistoryChunk0145
  decide

def oppositeAggregatePartValid6_0145 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 149248
  | _ => True

theorem oppositeAggregatePart6_0145 :
    oppositeAggregatePartValid6_0145 oppositeHistoryChunk0145 := by
  unfold oppositeAggregatePartValid6_0145 oppositeHistoryChunk0145
  decide

def oppositeAggregatePartValid7_0145 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 149376
  | _ => True

theorem oppositeAggregatePart7_0145 :
    oppositeAggregatePartValid7_0145 oppositeHistoryChunk0145 := by
  unfold oppositeAggregatePartValid7_0145 oppositeHistoryChunk0145
  decide

theorem oppositeRange_0145 :
    oppositeHistoryChunk0145.ResidueIndexedValid anchorHistories 5000000 18 25 148480 := by
  have h0 := oppositeAggregatePart0_0145
  simp only [oppositeAggregatePartValid0_0145, oppositeHistoryChunk0145] at h0
  have h1 := oppositeAggregatePart1_0145
  simp only [oppositeAggregatePartValid1_0145, oppositeHistoryChunk0145] at h1
  have h2 := oppositeAggregatePart2_0145
  simp only [oppositeAggregatePartValid2_0145, oppositeHistoryChunk0145] at h2
  have h3 := oppositeAggregatePart3_0145
  simp only [oppositeAggregatePartValid3_0145, oppositeHistoryChunk0145] at h3
  have h4 := oppositeAggregatePart4_0145
  simp only [oppositeAggregatePartValid4_0145, oppositeHistoryChunk0145] at h4
  have h5 := oppositeAggregatePart5_0145
  simp only [oppositeAggregatePartValid5_0145, oppositeHistoryChunk0145] at h5
  have h6 := oppositeAggregatePart6_0145
  simp only [oppositeAggregatePartValid6_0145, oppositeHistoryChunk0145] at h6
  have h7 := oppositeAggregatePart7_0145
  simp only [oppositeAggregatePartValid7_0145, oppositeHistoryChunk0145] at h7
  unfold oppositeHistoryChunk0145
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0146 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 149504
  | _ => True

theorem oppositeAggregatePart0_0146 :
    oppositeAggregatePartValid0_0146 oppositeHistoryChunk0146 := by
  unfold oppositeAggregatePartValid0_0146 oppositeHistoryChunk0146
  decide

def oppositeAggregatePartValid1_0146 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 149632
  | _ => True

theorem oppositeAggregatePart1_0146 :
    oppositeAggregatePartValid1_0146 oppositeHistoryChunk0146 := by
  unfold oppositeAggregatePartValid1_0146 oppositeHistoryChunk0146
  decide

def oppositeAggregatePartValid2_0146 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 149760
  | _ => True

theorem oppositeAggregatePart2_0146 :
    oppositeAggregatePartValid2_0146 oppositeHistoryChunk0146 := by
  unfold oppositeAggregatePartValid2_0146 oppositeHistoryChunk0146
  decide

def oppositeAggregatePartValid3_0146 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 149888
  | _ => True

theorem oppositeAggregatePart3_0146 :
    oppositeAggregatePartValid3_0146 oppositeHistoryChunk0146 := by
  unfold oppositeAggregatePartValid3_0146 oppositeHistoryChunk0146
  decide

def oppositeAggregatePartValid4_0146 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 150016
  | _ => True

theorem oppositeAggregatePart4_0146 :
    oppositeAggregatePartValid4_0146 oppositeHistoryChunk0146 := by
  unfold oppositeAggregatePartValid4_0146 oppositeHistoryChunk0146
  decide

def oppositeAggregatePartValid5_0146 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 150144
  | _ => True

theorem oppositeAggregatePart5_0146 :
    oppositeAggregatePartValid5_0146 oppositeHistoryChunk0146 := by
  unfold oppositeAggregatePartValid5_0146 oppositeHistoryChunk0146
  decide

def oppositeAggregatePartValid6_0146 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 150272
  | _ => True

theorem oppositeAggregatePart6_0146 :
    oppositeAggregatePartValid6_0146 oppositeHistoryChunk0146 := by
  unfold oppositeAggregatePartValid6_0146 oppositeHistoryChunk0146
  decide

def oppositeAggregatePartValid7_0146 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 150400
  | _ => True

theorem oppositeAggregatePart7_0146 :
    oppositeAggregatePartValid7_0146 oppositeHistoryChunk0146 := by
  unfold oppositeAggregatePartValid7_0146 oppositeHistoryChunk0146
  decide

theorem oppositeRange_0146 :
    oppositeHistoryChunk0146.ResidueIndexedValid anchorHistories 5000000 18 25 149504 := by
  have h0 := oppositeAggregatePart0_0146
  simp only [oppositeAggregatePartValid0_0146, oppositeHistoryChunk0146] at h0
  have h1 := oppositeAggregatePart1_0146
  simp only [oppositeAggregatePartValid1_0146, oppositeHistoryChunk0146] at h1
  have h2 := oppositeAggregatePart2_0146
  simp only [oppositeAggregatePartValid2_0146, oppositeHistoryChunk0146] at h2
  have h3 := oppositeAggregatePart3_0146
  simp only [oppositeAggregatePartValid3_0146, oppositeHistoryChunk0146] at h3
  have h4 := oppositeAggregatePart4_0146
  simp only [oppositeAggregatePartValid4_0146, oppositeHistoryChunk0146] at h4
  have h5 := oppositeAggregatePart5_0146
  simp only [oppositeAggregatePartValid5_0146, oppositeHistoryChunk0146] at h5
  have h6 := oppositeAggregatePart6_0146
  simp only [oppositeAggregatePartValid6_0146, oppositeHistoryChunk0146] at h6
  have h7 := oppositeAggregatePart7_0146
  simp only [oppositeAggregatePartValid7_0146, oppositeHistoryChunk0146] at h7
  unfold oppositeHistoryChunk0146
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0147 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 150528
  | _ => True

theorem oppositeAggregatePart0_0147 :
    oppositeAggregatePartValid0_0147 oppositeHistoryChunk0147 := by
  unfold oppositeAggregatePartValid0_0147 oppositeHistoryChunk0147
  decide

def oppositeAggregatePartValid1_0147 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 150656
  | _ => True

theorem oppositeAggregatePart1_0147 :
    oppositeAggregatePartValid1_0147 oppositeHistoryChunk0147 := by
  unfold oppositeAggregatePartValid1_0147 oppositeHistoryChunk0147
  decide

def oppositeAggregatePartValid2_0147 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 150784
  | _ => True

theorem oppositeAggregatePart2_0147 :
    oppositeAggregatePartValid2_0147 oppositeHistoryChunk0147 := by
  unfold oppositeAggregatePartValid2_0147 oppositeHistoryChunk0147
  decide

def oppositeAggregatePartValid3_0147 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 150912
  | _ => True

theorem oppositeAggregatePart3_0147 :
    oppositeAggregatePartValid3_0147 oppositeHistoryChunk0147 := by
  unfold oppositeAggregatePartValid3_0147 oppositeHistoryChunk0147
  decide

def oppositeAggregatePartValid4_0147 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 151040
  | _ => True

theorem oppositeAggregatePart4_0147 :
    oppositeAggregatePartValid4_0147 oppositeHistoryChunk0147 := by
  unfold oppositeAggregatePartValid4_0147 oppositeHistoryChunk0147
  decide

def oppositeAggregatePartValid5_0147 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 151168
  | _ => True

theorem oppositeAggregatePart5_0147 :
    oppositeAggregatePartValid5_0147 oppositeHistoryChunk0147 := by
  unfold oppositeAggregatePartValid5_0147 oppositeHistoryChunk0147
  decide

def oppositeAggregatePartValid6_0147 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 151296
  | _ => True

theorem oppositeAggregatePart6_0147 :
    oppositeAggregatePartValid6_0147 oppositeHistoryChunk0147 := by
  unfold oppositeAggregatePartValid6_0147 oppositeHistoryChunk0147
  decide

def oppositeAggregatePartValid7_0147 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 151424
  | _ => True

theorem oppositeAggregatePart7_0147 :
    oppositeAggregatePartValid7_0147 oppositeHistoryChunk0147 := by
  unfold oppositeAggregatePartValid7_0147 oppositeHistoryChunk0147
  decide

theorem oppositeRange_0147 :
    oppositeHistoryChunk0147.ResidueIndexedValid anchorHistories 5000000 18 25 150528 := by
  have h0 := oppositeAggregatePart0_0147
  simp only [oppositeAggregatePartValid0_0147, oppositeHistoryChunk0147] at h0
  have h1 := oppositeAggregatePart1_0147
  simp only [oppositeAggregatePartValid1_0147, oppositeHistoryChunk0147] at h1
  have h2 := oppositeAggregatePart2_0147
  simp only [oppositeAggregatePartValid2_0147, oppositeHistoryChunk0147] at h2
  have h3 := oppositeAggregatePart3_0147
  simp only [oppositeAggregatePartValid3_0147, oppositeHistoryChunk0147] at h3
  have h4 := oppositeAggregatePart4_0147
  simp only [oppositeAggregatePartValid4_0147, oppositeHistoryChunk0147] at h4
  have h5 := oppositeAggregatePart5_0147
  simp only [oppositeAggregatePartValid5_0147, oppositeHistoryChunk0147] at h5
  have h6 := oppositeAggregatePart6_0147
  simp only [oppositeAggregatePartValid6_0147, oppositeHistoryChunk0147] at h6
  have h7 := oppositeAggregatePart7_0147
  simp only [oppositeAggregatePartValid7_0147, oppositeHistoryChunk0147] at h7
  unfold oppositeHistoryChunk0147
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
