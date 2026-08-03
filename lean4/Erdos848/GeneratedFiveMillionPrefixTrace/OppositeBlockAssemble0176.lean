import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0176
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0177
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0178
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0179

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0176, 0177, 0178, 0179 -/

def oppositeAggregatePartValid0_0176 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 180224
  | _ => True

theorem oppositeAggregatePart0_0176 :
    oppositeAggregatePartValid0_0176 oppositeHistoryChunk0176 := by
  unfold oppositeAggregatePartValid0_0176 oppositeHistoryChunk0176
  decide

def oppositeAggregatePartValid1_0176 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 180352
  | _ => True

theorem oppositeAggregatePart1_0176 :
    oppositeAggregatePartValid1_0176 oppositeHistoryChunk0176 := by
  unfold oppositeAggregatePartValid1_0176 oppositeHistoryChunk0176
  decide

def oppositeAggregatePartValid2_0176 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 180480
  | _ => True

theorem oppositeAggregatePart2_0176 :
    oppositeAggregatePartValid2_0176 oppositeHistoryChunk0176 := by
  unfold oppositeAggregatePartValid2_0176 oppositeHistoryChunk0176
  decide

def oppositeAggregatePartValid3_0176 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 180608
  | _ => True

theorem oppositeAggregatePart3_0176 :
    oppositeAggregatePartValid3_0176 oppositeHistoryChunk0176 := by
  unfold oppositeAggregatePartValid3_0176 oppositeHistoryChunk0176
  decide

def oppositeAggregatePartValid4_0176 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 180736
  | _ => True

theorem oppositeAggregatePart4_0176 :
    oppositeAggregatePartValid4_0176 oppositeHistoryChunk0176 := by
  unfold oppositeAggregatePartValid4_0176 oppositeHistoryChunk0176
  decide

def oppositeAggregatePartValid5_0176 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 180864
  | _ => True

theorem oppositeAggregatePart5_0176 :
    oppositeAggregatePartValid5_0176 oppositeHistoryChunk0176 := by
  unfold oppositeAggregatePartValid5_0176 oppositeHistoryChunk0176
  decide

def oppositeAggregatePartValid6_0176 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 180992
  | _ => True

theorem oppositeAggregatePart6_0176 :
    oppositeAggregatePartValid6_0176 oppositeHistoryChunk0176 := by
  unfold oppositeAggregatePartValid6_0176 oppositeHistoryChunk0176
  decide

def oppositeAggregatePartValid7_0176 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 181120
  | _ => True

theorem oppositeAggregatePart7_0176 :
    oppositeAggregatePartValid7_0176 oppositeHistoryChunk0176 := by
  unfold oppositeAggregatePartValid7_0176 oppositeHistoryChunk0176
  decide

theorem oppositeRange_0176 :
    oppositeHistoryChunk0176.ResidueIndexedValid anchorHistories 5000000 18 25 180224 := by
  have h0 := oppositeAggregatePart0_0176
  simp only [oppositeAggregatePartValid0_0176, oppositeHistoryChunk0176] at h0
  have h1 := oppositeAggregatePart1_0176
  simp only [oppositeAggregatePartValid1_0176, oppositeHistoryChunk0176] at h1
  have h2 := oppositeAggregatePart2_0176
  simp only [oppositeAggregatePartValid2_0176, oppositeHistoryChunk0176] at h2
  have h3 := oppositeAggregatePart3_0176
  simp only [oppositeAggregatePartValid3_0176, oppositeHistoryChunk0176] at h3
  have h4 := oppositeAggregatePart4_0176
  simp only [oppositeAggregatePartValid4_0176, oppositeHistoryChunk0176] at h4
  have h5 := oppositeAggregatePart5_0176
  simp only [oppositeAggregatePartValid5_0176, oppositeHistoryChunk0176] at h5
  have h6 := oppositeAggregatePart6_0176
  simp only [oppositeAggregatePartValid6_0176, oppositeHistoryChunk0176] at h6
  have h7 := oppositeAggregatePart7_0176
  simp only [oppositeAggregatePartValid7_0176, oppositeHistoryChunk0176] at h7
  unfold oppositeHistoryChunk0176
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0177 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 181248
  | _ => True

theorem oppositeAggregatePart0_0177 :
    oppositeAggregatePartValid0_0177 oppositeHistoryChunk0177 := by
  unfold oppositeAggregatePartValid0_0177 oppositeHistoryChunk0177
  decide

def oppositeAggregatePartValid1_0177 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 181376
  | _ => True

theorem oppositeAggregatePart1_0177 :
    oppositeAggregatePartValid1_0177 oppositeHistoryChunk0177 := by
  unfold oppositeAggregatePartValid1_0177 oppositeHistoryChunk0177
  decide

def oppositeAggregatePartValid2_0177 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 181504
  | _ => True

theorem oppositeAggregatePart2_0177 :
    oppositeAggregatePartValid2_0177 oppositeHistoryChunk0177 := by
  unfold oppositeAggregatePartValid2_0177 oppositeHistoryChunk0177
  decide

def oppositeAggregatePartValid3_0177 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 181632
  | _ => True

theorem oppositeAggregatePart3_0177 :
    oppositeAggregatePartValid3_0177 oppositeHistoryChunk0177 := by
  unfold oppositeAggregatePartValid3_0177 oppositeHistoryChunk0177
  decide

def oppositeAggregatePartValid4_0177 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 181760
  | _ => True

theorem oppositeAggregatePart4_0177 :
    oppositeAggregatePartValid4_0177 oppositeHistoryChunk0177 := by
  unfold oppositeAggregatePartValid4_0177 oppositeHistoryChunk0177
  decide

def oppositeAggregatePartValid5_0177 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 181888
  | _ => True

theorem oppositeAggregatePart5_0177 :
    oppositeAggregatePartValid5_0177 oppositeHistoryChunk0177 := by
  unfold oppositeAggregatePartValid5_0177 oppositeHistoryChunk0177
  decide

def oppositeAggregatePartValid6_0177 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 182016
  | _ => True

theorem oppositeAggregatePart6_0177 :
    oppositeAggregatePartValid6_0177 oppositeHistoryChunk0177 := by
  unfold oppositeAggregatePartValid6_0177 oppositeHistoryChunk0177
  decide

def oppositeAggregatePartValid7_0177 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 182144
  | _ => True

theorem oppositeAggregatePart7_0177 :
    oppositeAggregatePartValid7_0177 oppositeHistoryChunk0177 := by
  unfold oppositeAggregatePartValid7_0177 oppositeHistoryChunk0177
  decide

theorem oppositeRange_0177 :
    oppositeHistoryChunk0177.ResidueIndexedValid anchorHistories 5000000 18 25 181248 := by
  have h0 := oppositeAggregatePart0_0177
  simp only [oppositeAggregatePartValid0_0177, oppositeHistoryChunk0177] at h0
  have h1 := oppositeAggregatePart1_0177
  simp only [oppositeAggregatePartValid1_0177, oppositeHistoryChunk0177] at h1
  have h2 := oppositeAggregatePart2_0177
  simp only [oppositeAggregatePartValid2_0177, oppositeHistoryChunk0177] at h2
  have h3 := oppositeAggregatePart3_0177
  simp only [oppositeAggregatePartValid3_0177, oppositeHistoryChunk0177] at h3
  have h4 := oppositeAggregatePart4_0177
  simp only [oppositeAggregatePartValid4_0177, oppositeHistoryChunk0177] at h4
  have h5 := oppositeAggregatePart5_0177
  simp only [oppositeAggregatePartValid5_0177, oppositeHistoryChunk0177] at h5
  have h6 := oppositeAggregatePart6_0177
  simp only [oppositeAggregatePartValid6_0177, oppositeHistoryChunk0177] at h6
  have h7 := oppositeAggregatePart7_0177
  simp only [oppositeAggregatePartValid7_0177, oppositeHistoryChunk0177] at h7
  unfold oppositeHistoryChunk0177
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0178 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 182272
  | _ => True

theorem oppositeAggregatePart0_0178 :
    oppositeAggregatePartValid0_0178 oppositeHistoryChunk0178 := by
  unfold oppositeAggregatePartValid0_0178 oppositeHistoryChunk0178
  decide

def oppositeAggregatePartValid1_0178 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 182400
  | _ => True

theorem oppositeAggregatePart1_0178 :
    oppositeAggregatePartValid1_0178 oppositeHistoryChunk0178 := by
  unfold oppositeAggregatePartValid1_0178 oppositeHistoryChunk0178
  decide

def oppositeAggregatePartValid2_0178 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 182528
  | _ => True

theorem oppositeAggregatePart2_0178 :
    oppositeAggregatePartValid2_0178 oppositeHistoryChunk0178 := by
  unfold oppositeAggregatePartValid2_0178 oppositeHistoryChunk0178
  decide

def oppositeAggregatePartValid3_0178 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 182656
  | _ => True

theorem oppositeAggregatePart3_0178 :
    oppositeAggregatePartValid3_0178 oppositeHistoryChunk0178 := by
  unfold oppositeAggregatePartValid3_0178 oppositeHistoryChunk0178
  decide

def oppositeAggregatePartValid4_0178 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 182784
  | _ => True

theorem oppositeAggregatePart4_0178 :
    oppositeAggregatePartValid4_0178 oppositeHistoryChunk0178 := by
  unfold oppositeAggregatePartValid4_0178 oppositeHistoryChunk0178
  decide

def oppositeAggregatePartValid5_0178 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 182912
  | _ => True

theorem oppositeAggregatePart5_0178 :
    oppositeAggregatePartValid5_0178 oppositeHistoryChunk0178 := by
  unfold oppositeAggregatePartValid5_0178 oppositeHistoryChunk0178
  decide

def oppositeAggregatePartValid6_0178 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 183040
  | _ => True

theorem oppositeAggregatePart6_0178 :
    oppositeAggregatePartValid6_0178 oppositeHistoryChunk0178 := by
  unfold oppositeAggregatePartValid6_0178 oppositeHistoryChunk0178
  decide

def oppositeAggregatePartValid7_0178 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 183168
  | _ => True

theorem oppositeAggregatePart7_0178 :
    oppositeAggregatePartValid7_0178 oppositeHistoryChunk0178 := by
  unfold oppositeAggregatePartValid7_0178 oppositeHistoryChunk0178
  decide

theorem oppositeRange_0178 :
    oppositeHistoryChunk0178.ResidueIndexedValid anchorHistories 5000000 18 25 182272 := by
  have h0 := oppositeAggregatePart0_0178
  simp only [oppositeAggregatePartValid0_0178, oppositeHistoryChunk0178] at h0
  have h1 := oppositeAggregatePart1_0178
  simp only [oppositeAggregatePartValid1_0178, oppositeHistoryChunk0178] at h1
  have h2 := oppositeAggregatePart2_0178
  simp only [oppositeAggregatePartValid2_0178, oppositeHistoryChunk0178] at h2
  have h3 := oppositeAggregatePart3_0178
  simp only [oppositeAggregatePartValid3_0178, oppositeHistoryChunk0178] at h3
  have h4 := oppositeAggregatePart4_0178
  simp only [oppositeAggregatePartValid4_0178, oppositeHistoryChunk0178] at h4
  have h5 := oppositeAggregatePart5_0178
  simp only [oppositeAggregatePartValid5_0178, oppositeHistoryChunk0178] at h5
  have h6 := oppositeAggregatePart6_0178
  simp only [oppositeAggregatePartValid6_0178, oppositeHistoryChunk0178] at h6
  have h7 := oppositeAggregatePart7_0178
  simp only [oppositeAggregatePartValid7_0178, oppositeHistoryChunk0178] at h7
  unfold oppositeHistoryChunk0178
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0179 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 183296
  | _ => True

theorem oppositeAggregatePart0_0179 :
    oppositeAggregatePartValid0_0179 oppositeHistoryChunk0179 := by
  unfold oppositeAggregatePartValid0_0179 oppositeHistoryChunk0179
  decide

def oppositeAggregatePartValid1_0179 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 183424
  | _ => True

theorem oppositeAggregatePart1_0179 :
    oppositeAggregatePartValid1_0179 oppositeHistoryChunk0179 := by
  unfold oppositeAggregatePartValid1_0179 oppositeHistoryChunk0179
  decide

def oppositeAggregatePartValid2_0179 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 183552
  | _ => True

theorem oppositeAggregatePart2_0179 :
    oppositeAggregatePartValid2_0179 oppositeHistoryChunk0179 := by
  unfold oppositeAggregatePartValid2_0179 oppositeHistoryChunk0179
  decide

def oppositeAggregatePartValid3_0179 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 183680
  | _ => True

theorem oppositeAggregatePart3_0179 :
    oppositeAggregatePartValid3_0179 oppositeHistoryChunk0179 := by
  unfold oppositeAggregatePartValid3_0179 oppositeHistoryChunk0179
  decide

def oppositeAggregatePartValid4_0179 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 183808
  | _ => True

theorem oppositeAggregatePart4_0179 :
    oppositeAggregatePartValid4_0179 oppositeHistoryChunk0179 := by
  unfold oppositeAggregatePartValid4_0179 oppositeHistoryChunk0179
  decide

def oppositeAggregatePartValid5_0179 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 183936
  | _ => True

theorem oppositeAggregatePart5_0179 :
    oppositeAggregatePartValid5_0179 oppositeHistoryChunk0179 := by
  unfold oppositeAggregatePartValid5_0179 oppositeHistoryChunk0179
  decide

def oppositeAggregatePartValid6_0179 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 184064
  | _ => True

theorem oppositeAggregatePart6_0179 :
    oppositeAggregatePartValid6_0179 oppositeHistoryChunk0179 := by
  unfold oppositeAggregatePartValid6_0179 oppositeHistoryChunk0179
  decide

def oppositeAggregatePartValid7_0179 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 184192
  | _ => True

theorem oppositeAggregatePart7_0179 :
    oppositeAggregatePartValid7_0179 oppositeHistoryChunk0179 := by
  unfold oppositeAggregatePartValid7_0179 oppositeHistoryChunk0179
  decide

theorem oppositeRange_0179 :
    oppositeHistoryChunk0179.ResidueIndexedValid anchorHistories 5000000 18 25 183296 := by
  have h0 := oppositeAggregatePart0_0179
  simp only [oppositeAggregatePartValid0_0179, oppositeHistoryChunk0179] at h0
  have h1 := oppositeAggregatePart1_0179
  simp only [oppositeAggregatePartValid1_0179, oppositeHistoryChunk0179] at h1
  have h2 := oppositeAggregatePart2_0179
  simp only [oppositeAggregatePartValid2_0179, oppositeHistoryChunk0179] at h2
  have h3 := oppositeAggregatePart3_0179
  simp only [oppositeAggregatePartValid3_0179, oppositeHistoryChunk0179] at h3
  have h4 := oppositeAggregatePart4_0179
  simp only [oppositeAggregatePartValid4_0179, oppositeHistoryChunk0179] at h4
  have h5 := oppositeAggregatePart5_0179
  simp only [oppositeAggregatePartValid5_0179, oppositeHistoryChunk0179] at h5
  have h6 := oppositeAggregatePart6_0179
  simp only [oppositeAggregatePartValid6_0179, oppositeHistoryChunk0179] at h6
  have h7 := oppositeAggregatePart7_0179
  simp only [oppositeAggregatePartValid7_0179, oppositeHistoryChunk0179] at h7
  unfold oppositeHistoryChunk0179
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
