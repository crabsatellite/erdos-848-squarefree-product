import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0192
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0193
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0194
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0195

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0192, 0193, 0194, 0195 -/

def oppositeAggregatePartValid0_0192 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 196608
  | _ => True

theorem oppositeAggregatePart0_0192 :
    oppositeAggregatePartValid0_0192 oppositeHistoryChunk0192 := by
  unfold oppositeAggregatePartValid0_0192 oppositeHistoryChunk0192
  decide

def oppositeAggregatePartValid1_0192 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 196736
  | _ => True

theorem oppositeAggregatePart1_0192 :
    oppositeAggregatePartValid1_0192 oppositeHistoryChunk0192 := by
  unfold oppositeAggregatePartValid1_0192 oppositeHistoryChunk0192
  decide

def oppositeAggregatePartValid2_0192 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 196864
  | _ => True

theorem oppositeAggregatePart2_0192 :
    oppositeAggregatePartValid2_0192 oppositeHistoryChunk0192 := by
  unfold oppositeAggregatePartValid2_0192 oppositeHistoryChunk0192
  decide

def oppositeAggregatePartValid3_0192 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 196992
  | _ => True

theorem oppositeAggregatePart3_0192 :
    oppositeAggregatePartValid3_0192 oppositeHistoryChunk0192 := by
  unfold oppositeAggregatePartValid3_0192 oppositeHistoryChunk0192
  decide

def oppositeAggregatePartValid4_0192 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 197120
  | _ => True

theorem oppositeAggregatePart4_0192 :
    oppositeAggregatePartValid4_0192 oppositeHistoryChunk0192 := by
  unfold oppositeAggregatePartValid4_0192 oppositeHistoryChunk0192
  decide

def oppositeAggregatePartValid5_0192 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 197248
  | _ => True

theorem oppositeAggregatePart5_0192 :
    oppositeAggregatePartValid5_0192 oppositeHistoryChunk0192 := by
  unfold oppositeAggregatePartValid5_0192 oppositeHistoryChunk0192
  decide

def oppositeAggregatePartValid6_0192 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 197376
  | _ => True

theorem oppositeAggregatePart6_0192 :
    oppositeAggregatePartValid6_0192 oppositeHistoryChunk0192 := by
  unfold oppositeAggregatePartValid6_0192 oppositeHistoryChunk0192
  decide

def oppositeAggregatePartValid7_0192 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 197504
  | _ => True

theorem oppositeAggregatePart7_0192 :
    oppositeAggregatePartValid7_0192 oppositeHistoryChunk0192 := by
  unfold oppositeAggregatePartValid7_0192 oppositeHistoryChunk0192
  decide

theorem oppositeRange_0192 :
    oppositeHistoryChunk0192.ResidueIndexedValid anchorHistories 5000000 18 25 196608 := by
  have h0 := oppositeAggregatePart0_0192
  simp only [oppositeAggregatePartValid0_0192, oppositeHistoryChunk0192] at h0
  have h1 := oppositeAggregatePart1_0192
  simp only [oppositeAggregatePartValid1_0192, oppositeHistoryChunk0192] at h1
  have h2 := oppositeAggregatePart2_0192
  simp only [oppositeAggregatePartValid2_0192, oppositeHistoryChunk0192] at h2
  have h3 := oppositeAggregatePart3_0192
  simp only [oppositeAggregatePartValid3_0192, oppositeHistoryChunk0192] at h3
  have h4 := oppositeAggregatePart4_0192
  simp only [oppositeAggregatePartValid4_0192, oppositeHistoryChunk0192] at h4
  have h5 := oppositeAggregatePart5_0192
  simp only [oppositeAggregatePartValid5_0192, oppositeHistoryChunk0192] at h5
  have h6 := oppositeAggregatePart6_0192
  simp only [oppositeAggregatePartValid6_0192, oppositeHistoryChunk0192] at h6
  have h7 := oppositeAggregatePart7_0192
  simp only [oppositeAggregatePartValid7_0192, oppositeHistoryChunk0192] at h7
  unfold oppositeHistoryChunk0192
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0193 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 197632
  | _ => True

theorem oppositeAggregatePart0_0193 :
    oppositeAggregatePartValid0_0193 oppositeHistoryChunk0193 := by
  unfold oppositeAggregatePartValid0_0193 oppositeHistoryChunk0193
  decide

def oppositeAggregatePartValid1_0193 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 197760
  | _ => True

theorem oppositeAggregatePart1_0193 :
    oppositeAggregatePartValid1_0193 oppositeHistoryChunk0193 := by
  unfold oppositeAggregatePartValid1_0193 oppositeHistoryChunk0193
  decide

def oppositeAggregatePartValid2_0193 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 197888
  | _ => True

theorem oppositeAggregatePart2_0193 :
    oppositeAggregatePartValid2_0193 oppositeHistoryChunk0193 := by
  unfold oppositeAggregatePartValid2_0193 oppositeHistoryChunk0193
  decide

def oppositeAggregatePartValid3_0193 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 198016
  | _ => True

theorem oppositeAggregatePart3_0193 :
    oppositeAggregatePartValid3_0193 oppositeHistoryChunk0193 := by
  unfold oppositeAggregatePartValid3_0193 oppositeHistoryChunk0193
  decide

def oppositeAggregatePartValid4_0193 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 198144
  | _ => True

theorem oppositeAggregatePart4_0193 :
    oppositeAggregatePartValid4_0193 oppositeHistoryChunk0193 := by
  unfold oppositeAggregatePartValid4_0193 oppositeHistoryChunk0193
  decide

def oppositeAggregatePartValid5_0193 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 198272
  | _ => True

theorem oppositeAggregatePart5_0193 :
    oppositeAggregatePartValid5_0193 oppositeHistoryChunk0193 := by
  unfold oppositeAggregatePartValid5_0193 oppositeHistoryChunk0193
  decide

def oppositeAggregatePartValid6_0193 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 198400
  | _ => True

theorem oppositeAggregatePart6_0193 :
    oppositeAggregatePartValid6_0193 oppositeHistoryChunk0193 := by
  unfold oppositeAggregatePartValid6_0193 oppositeHistoryChunk0193
  decide

def oppositeAggregatePartValid7_0193 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 198528
  | _ => True

theorem oppositeAggregatePart7_0193 :
    oppositeAggregatePartValid7_0193 oppositeHistoryChunk0193 := by
  unfold oppositeAggregatePartValid7_0193 oppositeHistoryChunk0193
  decide

theorem oppositeRange_0193 :
    oppositeHistoryChunk0193.ResidueIndexedValid anchorHistories 5000000 18 25 197632 := by
  have h0 := oppositeAggregatePart0_0193
  simp only [oppositeAggregatePartValid0_0193, oppositeHistoryChunk0193] at h0
  have h1 := oppositeAggregatePart1_0193
  simp only [oppositeAggregatePartValid1_0193, oppositeHistoryChunk0193] at h1
  have h2 := oppositeAggregatePart2_0193
  simp only [oppositeAggregatePartValid2_0193, oppositeHistoryChunk0193] at h2
  have h3 := oppositeAggregatePart3_0193
  simp only [oppositeAggregatePartValid3_0193, oppositeHistoryChunk0193] at h3
  have h4 := oppositeAggregatePart4_0193
  simp only [oppositeAggregatePartValid4_0193, oppositeHistoryChunk0193] at h4
  have h5 := oppositeAggregatePart5_0193
  simp only [oppositeAggregatePartValid5_0193, oppositeHistoryChunk0193] at h5
  have h6 := oppositeAggregatePart6_0193
  simp only [oppositeAggregatePartValid6_0193, oppositeHistoryChunk0193] at h6
  have h7 := oppositeAggregatePart7_0193
  simp only [oppositeAggregatePartValid7_0193, oppositeHistoryChunk0193] at h7
  unfold oppositeHistoryChunk0193
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0194 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 198656
  | _ => True

theorem oppositeAggregatePart0_0194 :
    oppositeAggregatePartValid0_0194 oppositeHistoryChunk0194 := by
  unfold oppositeAggregatePartValid0_0194 oppositeHistoryChunk0194
  decide

def oppositeAggregatePartValid1_0194 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 198784
  | _ => True

theorem oppositeAggregatePart1_0194 :
    oppositeAggregatePartValid1_0194 oppositeHistoryChunk0194 := by
  unfold oppositeAggregatePartValid1_0194 oppositeHistoryChunk0194
  decide

def oppositeAggregatePartValid2_0194 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 198912
  | _ => True

theorem oppositeAggregatePart2_0194 :
    oppositeAggregatePartValid2_0194 oppositeHistoryChunk0194 := by
  unfold oppositeAggregatePartValid2_0194 oppositeHistoryChunk0194
  decide

def oppositeAggregatePartValid3_0194 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 199040
  | _ => True

theorem oppositeAggregatePart3_0194 :
    oppositeAggregatePartValid3_0194 oppositeHistoryChunk0194 := by
  unfold oppositeAggregatePartValid3_0194 oppositeHistoryChunk0194
  decide

def oppositeAggregatePartValid4_0194 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 199168
  | _ => True

theorem oppositeAggregatePart4_0194 :
    oppositeAggregatePartValid4_0194 oppositeHistoryChunk0194 := by
  unfold oppositeAggregatePartValid4_0194 oppositeHistoryChunk0194
  decide

def oppositeAggregatePartValid5_0194 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 199296
  | _ => True

theorem oppositeAggregatePart5_0194 :
    oppositeAggregatePartValid5_0194 oppositeHistoryChunk0194 := by
  unfold oppositeAggregatePartValid5_0194 oppositeHistoryChunk0194
  decide

def oppositeAggregatePartValid6_0194 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 199424
  | _ => True

theorem oppositeAggregatePart6_0194 :
    oppositeAggregatePartValid6_0194 oppositeHistoryChunk0194 := by
  unfold oppositeAggregatePartValid6_0194 oppositeHistoryChunk0194
  decide

def oppositeAggregatePartValid7_0194 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 199552
  | _ => True

theorem oppositeAggregatePart7_0194 :
    oppositeAggregatePartValid7_0194 oppositeHistoryChunk0194 := by
  unfold oppositeAggregatePartValid7_0194 oppositeHistoryChunk0194
  decide

theorem oppositeRange_0194 :
    oppositeHistoryChunk0194.ResidueIndexedValid anchorHistories 5000000 18 25 198656 := by
  have h0 := oppositeAggregatePart0_0194
  simp only [oppositeAggregatePartValid0_0194, oppositeHistoryChunk0194] at h0
  have h1 := oppositeAggregatePart1_0194
  simp only [oppositeAggregatePartValid1_0194, oppositeHistoryChunk0194] at h1
  have h2 := oppositeAggregatePart2_0194
  simp only [oppositeAggregatePartValid2_0194, oppositeHistoryChunk0194] at h2
  have h3 := oppositeAggregatePart3_0194
  simp only [oppositeAggregatePartValid3_0194, oppositeHistoryChunk0194] at h3
  have h4 := oppositeAggregatePart4_0194
  simp only [oppositeAggregatePartValid4_0194, oppositeHistoryChunk0194] at h4
  have h5 := oppositeAggregatePart5_0194
  simp only [oppositeAggregatePartValid5_0194, oppositeHistoryChunk0194] at h5
  have h6 := oppositeAggregatePart6_0194
  simp only [oppositeAggregatePartValid6_0194, oppositeHistoryChunk0194] at h6
  have h7 := oppositeAggregatePart7_0194
  simp only [oppositeAggregatePartValid7_0194, oppositeHistoryChunk0194] at h7
  unfold oppositeHistoryChunk0194
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0195 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 199680
  | _ => True

theorem oppositeAggregatePart0_0195 :
    oppositeAggregatePartValid0_0195 oppositeHistoryChunk0195 := by
  unfold oppositeAggregatePartValid0_0195 oppositeHistoryChunk0195
  decide

def oppositeAggregatePartValid1_0195 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 199720
  | _ => True

theorem oppositeAggregatePart1_0195 :
    oppositeAggregatePartValid1_0195 oppositeHistoryChunk0195 := by
  unfold oppositeAggregatePartValid1_0195 oppositeHistoryChunk0195
  decide

def oppositeAggregatePartValid2_0195 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 199760
  | _ => True

theorem oppositeAggregatePart2_0195 :
    oppositeAggregatePartValid2_0195 oppositeHistoryChunk0195 := by
  unfold oppositeAggregatePartValid2_0195 oppositeHistoryChunk0195
  decide

def oppositeAggregatePartValid3_0195 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 199800
  | _ => True

theorem oppositeAggregatePart3_0195 :
    oppositeAggregatePartValid3_0195 oppositeHistoryChunk0195 := by
  unfold oppositeAggregatePartValid3_0195 oppositeHistoryChunk0195
  decide

def oppositeAggregatePartValid4_0195 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 199840
  | _ => True

theorem oppositeAggregatePart4_0195 :
    oppositeAggregatePartValid4_0195 oppositeHistoryChunk0195 := by
  unfold oppositeAggregatePartValid4_0195 oppositeHistoryChunk0195
  decide

def oppositeAggregatePartValid5_0195 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 199880
  | _ => True

theorem oppositeAggregatePart5_0195 :
    oppositeAggregatePartValid5_0195 oppositeHistoryChunk0195 := by
  unfold oppositeAggregatePartValid5_0195 oppositeHistoryChunk0195
  decide

def oppositeAggregatePartValid6_0195 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 199920
  | _ => True

theorem oppositeAggregatePart6_0195 :
    oppositeAggregatePartValid6_0195 oppositeHistoryChunk0195 := by
  unfold oppositeAggregatePartValid6_0195 oppositeHistoryChunk0195
  decide

def oppositeAggregatePartValid7_0195 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 199960
  | _ => True

theorem oppositeAggregatePart7_0195 :
    oppositeAggregatePartValid7_0195 oppositeHistoryChunk0195 := by
  unfold oppositeAggregatePartValid7_0195 oppositeHistoryChunk0195
  decide

theorem oppositeRange_0195 :
    oppositeHistoryChunk0195.ResidueIndexedValid anchorHistories 5000000 18 25 199680 := by
  have h0 := oppositeAggregatePart0_0195
  simp only [oppositeAggregatePartValid0_0195, oppositeHistoryChunk0195] at h0
  have h1 := oppositeAggregatePart1_0195
  simp only [oppositeAggregatePartValid1_0195, oppositeHistoryChunk0195] at h1
  have h2 := oppositeAggregatePart2_0195
  simp only [oppositeAggregatePartValid2_0195, oppositeHistoryChunk0195] at h2
  have h3 := oppositeAggregatePart3_0195
  simp only [oppositeAggregatePartValid3_0195, oppositeHistoryChunk0195] at h3
  have h4 := oppositeAggregatePart4_0195
  simp only [oppositeAggregatePartValid4_0195, oppositeHistoryChunk0195] at h4
  have h5 := oppositeAggregatePart5_0195
  simp only [oppositeAggregatePartValid5_0195, oppositeHistoryChunk0195] at h5
  have h6 := oppositeAggregatePart6_0195
  simp only [oppositeAggregatePartValid6_0195, oppositeHistoryChunk0195] at h6
  have h7 := oppositeAggregatePart7_0195
  simp only [oppositeAggregatePartValid7_0195, oppositeHistoryChunk0195] at h7
  unfold oppositeHistoryChunk0195
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
