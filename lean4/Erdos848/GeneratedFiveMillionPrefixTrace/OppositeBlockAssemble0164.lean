import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0164
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0165
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0166
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0167

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0164, 0165, 0166, 0167 -/

def oppositeAggregatePartValid0_0164 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 167936
  | _ => True

theorem oppositeAggregatePart0_0164 :
    oppositeAggregatePartValid0_0164 oppositeHistoryChunk0164 := by
  unfold oppositeAggregatePartValid0_0164 oppositeHistoryChunk0164
  decide

def oppositeAggregatePartValid1_0164 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 168064
  | _ => True

theorem oppositeAggregatePart1_0164 :
    oppositeAggregatePartValid1_0164 oppositeHistoryChunk0164 := by
  unfold oppositeAggregatePartValid1_0164 oppositeHistoryChunk0164
  decide

def oppositeAggregatePartValid2_0164 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 168192
  | _ => True

theorem oppositeAggregatePart2_0164 :
    oppositeAggregatePartValid2_0164 oppositeHistoryChunk0164 := by
  unfold oppositeAggregatePartValid2_0164 oppositeHistoryChunk0164
  decide

def oppositeAggregatePartValid3_0164 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 168320
  | _ => True

theorem oppositeAggregatePart3_0164 :
    oppositeAggregatePartValid3_0164 oppositeHistoryChunk0164 := by
  unfold oppositeAggregatePartValid3_0164 oppositeHistoryChunk0164
  decide

def oppositeAggregatePartValid4_0164 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 168448
  | _ => True

theorem oppositeAggregatePart4_0164 :
    oppositeAggregatePartValid4_0164 oppositeHistoryChunk0164 := by
  unfold oppositeAggregatePartValid4_0164 oppositeHistoryChunk0164
  decide

def oppositeAggregatePartValid5_0164 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 168576
  | _ => True

theorem oppositeAggregatePart5_0164 :
    oppositeAggregatePartValid5_0164 oppositeHistoryChunk0164 := by
  unfold oppositeAggregatePartValid5_0164 oppositeHistoryChunk0164
  decide

def oppositeAggregatePartValid6_0164 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 168704
  | _ => True

theorem oppositeAggregatePart6_0164 :
    oppositeAggregatePartValid6_0164 oppositeHistoryChunk0164 := by
  unfold oppositeAggregatePartValid6_0164 oppositeHistoryChunk0164
  decide

def oppositeAggregatePartValid7_0164 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 168832
  | _ => True

theorem oppositeAggregatePart7_0164 :
    oppositeAggregatePartValid7_0164 oppositeHistoryChunk0164 := by
  unfold oppositeAggregatePartValid7_0164 oppositeHistoryChunk0164
  decide

theorem oppositeRange_0164 :
    oppositeHistoryChunk0164.ResidueIndexedValid anchorHistories 5000000 18 25 167936 := by
  have h0 := oppositeAggregatePart0_0164
  simp only [oppositeAggregatePartValid0_0164, oppositeHistoryChunk0164] at h0
  have h1 := oppositeAggregatePart1_0164
  simp only [oppositeAggregatePartValid1_0164, oppositeHistoryChunk0164] at h1
  have h2 := oppositeAggregatePart2_0164
  simp only [oppositeAggregatePartValid2_0164, oppositeHistoryChunk0164] at h2
  have h3 := oppositeAggregatePart3_0164
  simp only [oppositeAggregatePartValid3_0164, oppositeHistoryChunk0164] at h3
  have h4 := oppositeAggregatePart4_0164
  simp only [oppositeAggregatePartValid4_0164, oppositeHistoryChunk0164] at h4
  have h5 := oppositeAggregatePart5_0164
  simp only [oppositeAggregatePartValid5_0164, oppositeHistoryChunk0164] at h5
  have h6 := oppositeAggregatePart6_0164
  simp only [oppositeAggregatePartValid6_0164, oppositeHistoryChunk0164] at h6
  have h7 := oppositeAggregatePart7_0164
  simp only [oppositeAggregatePartValid7_0164, oppositeHistoryChunk0164] at h7
  unfold oppositeHistoryChunk0164
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0165 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 168960
  | _ => True

theorem oppositeAggregatePart0_0165 :
    oppositeAggregatePartValid0_0165 oppositeHistoryChunk0165 := by
  unfold oppositeAggregatePartValid0_0165 oppositeHistoryChunk0165
  decide

def oppositeAggregatePartValid1_0165 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 169088
  | _ => True

theorem oppositeAggregatePart1_0165 :
    oppositeAggregatePartValid1_0165 oppositeHistoryChunk0165 := by
  unfold oppositeAggregatePartValid1_0165 oppositeHistoryChunk0165
  decide

def oppositeAggregatePartValid2_0165 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 169216
  | _ => True

theorem oppositeAggregatePart2_0165 :
    oppositeAggregatePartValid2_0165 oppositeHistoryChunk0165 := by
  unfold oppositeAggregatePartValid2_0165 oppositeHistoryChunk0165
  decide

def oppositeAggregatePartValid3_0165 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 169344
  | _ => True

theorem oppositeAggregatePart3_0165 :
    oppositeAggregatePartValid3_0165 oppositeHistoryChunk0165 := by
  unfold oppositeAggregatePartValid3_0165 oppositeHistoryChunk0165
  decide

def oppositeAggregatePartValid4_0165 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 169472
  | _ => True

theorem oppositeAggregatePart4_0165 :
    oppositeAggregatePartValid4_0165 oppositeHistoryChunk0165 := by
  unfold oppositeAggregatePartValid4_0165 oppositeHistoryChunk0165
  decide

def oppositeAggregatePartValid5_0165 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 169600
  | _ => True

theorem oppositeAggregatePart5_0165 :
    oppositeAggregatePartValid5_0165 oppositeHistoryChunk0165 := by
  unfold oppositeAggregatePartValid5_0165 oppositeHistoryChunk0165
  decide

def oppositeAggregatePartValid6_0165 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 169728
  | _ => True

theorem oppositeAggregatePart6_0165 :
    oppositeAggregatePartValid6_0165 oppositeHistoryChunk0165 := by
  unfold oppositeAggregatePartValid6_0165 oppositeHistoryChunk0165
  decide

def oppositeAggregatePartValid7_0165 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 169856
  | _ => True

theorem oppositeAggregatePart7_0165 :
    oppositeAggregatePartValid7_0165 oppositeHistoryChunk0165 := by
  unfold oppositeAggregatePartValid7_0165 oppositeHistoryChunk0165
  decide

theorem oppositeRange_0165 :
    oppositeHistoryChunk0165.ResidueIndexedValid anchorHistories 5000000 18 25 168960 := by
  have h0 := oppositeAggregatePart0_0165
  simp only [oppositeAggregatePartValid0_0165, oppositeHistoryChunk0165] at h0
  have h1 := oppositeAggregatePart1_0165
  simp only [oppositeAggregatePartValid1_0165, oppositeHistoryChunk0165] at h1
  have h2 := oppositeAggregatePart2_0165
  simp only [oppositeAggregatePartValid2_0165, oppositeHistoryChunk0165] at h2
  have h3 := oppositeAggregatePart3_0165
  simp only [oppositeAggregatePartValid3_0165, oppositeHistoryChunk0165] at h3
  have h4 := oppositeAggregatePart4_0165
  simp only [oppositeAggregatePartValid4_0165, oppositeHistoryChunk0165] at h4
  have h5 := oppositeAggregatePart5_0165
  simp only [oppositeAggregatePartValid5_0165, oppositeHistoryChunk0165] at h5
  have h6 := oppositeAggregatePart6_0165
  simp only [oppositeAggregatePartValid6_0165, oppositeHistoryChunk0165] at h6
  have h7 := oppositeAggregatePart7_0165
  simp only [oppositeAggregatePartValid7_0165, oppositeHistoryChunk0165] at h7
  unfold oppositeHistoryChunk0165
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0166 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 169984
  | _ => True

theorem oppositeAggregatePart0_0166 :
    oppositeAggregatePartValid0_0166 oppositeHistoryChunk0166 := by
  unfold oppositeAggregatePartValid0_0166 oppositeHistoryChunk0166
  decide

def oppositeAggregatePartValid1_0166 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 170112
  | _ => True

theorem oppositeAggregatePart1_0166 :
    oppositeAggregatePartValid1_0166 oppositeHistoryChunk0166 := by
  unfold oppositeAggregatePartValid1_0166 oppositeHistoryChunk0166
  decide

def oppositeAggregatePartValid2_0166 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 170240
  | _ => True

theorem oppositeAggregatePart2_0166 :
    oppositeAggregatePartValid2_0166 oppositeHistoryChunk0166 := by
  unfold oppositeAggregatePartValid2_0166 oppositeHistoryChunk0166
  decide

def oppositeAggregatePartValid3_0166 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 170368
  | _ => True

theorem oppositeAggregatePart3_0166 :
    oppositeAggregatePartValid3_0166 oppositeHistoryChunk0166 := by
  unfold oppositeAggregatePartValid3_0166 oppositeHistoryChunk0166
  decide

def oppositeAggregatePartValid4_0166 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 170496
  | _ => True

theorem oppositeAggregatePart4_0166 :
    oppositeAggregatePartValid4_0166 oppositeHistoryChunk0166 := by
  unfold oppositeAggregatePartValid4_0166 oppositeHistoryChunk0166
  decide

def oppositeAggregatePartValid5_0166 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 170624
  | _ => True

theorem oppositeAggregatePart5_0166 :
    oppositeAggregatePartValid5_0166 oppositeHistoryChunk0166 := by
  unfold oppositeAggregatePartValid5_0166 oppositeHistoryChunk0166
  decide

def oppositeAggregatePartValid6_0166 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 170752
  | _ => True

theorem oppositeAggregatePart6_0166 :
    oppositeAggregatePartValid6_0166 oppositeHistoryChunk0166 := by
  unfold oppositeAggregatePartValid6_0166 oppositeHistoryChunk0166
  decide

def oppositeAggregatePartValid7_0166 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 170880
  | _ => True

theorem oppositeAggregatePart7_0166 :
    oppositeAggregatePartValid7_0166 oppositeHistoryChunk0166 := by
  unfold oppositeAggregatePartValid7_0166 oppositeHistoryChunk0166
  decide

theorem oppositeRange_0166 :
    oppositeHistoryChunk0166.ResidueIndexedValid anchorHistories 5000000 18 25 169984 := by
  have h0 := oppositeAggregatePart0_0166
  simp only [oppositeAggregatePartValid0_0166, oppositeHistoryChunk0166] at h0
  have h1 := oppositeAggregatePart1_0166
  simp only [oppositeAggregatePartValid1_0166, oppositeHistoryChunk0166] at h1
  have h2 := oppositeAggregatePart2_0166
  simp only [oppositeAggregatePartValid2_0166, oppositeHistoryChunk0166] at h2
  have h3 := oppositeAggregatePart3_0166
  simp only [oppositeAggregatePartValid3_0166, oppositeHistoryChunk0166] at h3
  have h4 := oppositeAggregatePart4_0166
  simp only [oppositeAggregatePartValid4_0166, oppositeHistoryChunk0166] at h4
  have h5 := oppositeAggregatePart5_0166
  simp only [oppositeAggregatePartValid5_0166, oppositeHistoryChunk0166] at h5
  have h6 := oppositeAggregatePart6_0166
  simp only [oppositeAggregatePartValid6_0166, oppositeHistoryChunk0166] at h6
  have h7 := oppositeAggregatePart7_0166
  simp only [oppositeAggregatePartValid7_0166, oppositeHistoryChunk0166] at h7
  unfold oppositeHistoryChunk0166
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0167 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 171008
  | _ => True

theorem oppositeAggregatePart0_0167 :
    oppositeAggregatePartValid0_0167 oppositeHistoryChunk0167 := by
  unfold oppositeAggregatePartValid0_0167 oppositeHistoryChunk0167
  decide

def oppositeAggregatePartValid1_0167 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 171136
  | _ => True

theorem oppositeAggregatePart1_0167 :
    oppositeAggregatePartValid1_0167 oppositeHistoryChunk0167 := by
  unfold oppositeAggregatePartValid1_0167 oppositeHistoryChunk0167
  decide

def oppositeAggregatePartValid2_0167 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 171264
  | _ => True

theorem oppositeAggregatePart2_0167 :
    oppositeAggregatePartValid2_0167 oppositeHistoryChunk0167 := by
  unfold oppositeAggregatePartValid2_0167 oppositeHistoryChunk0167
  decide

def oppositeAggregatePartValid3_0167 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 171392
  | _ => True

theorem oppositeAggregatePart3_0167 :
    oppositeAggregatePartValid3_0167 oppositeHistoryChunk0167 := by
  unfold oppositeAggregatePartValid3_0167 oppositeHistoryChunk0167
  decide

def oppositeAggregatePartValid4_0167 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 171520
  | _ => True

theorem oppositeAggregatePart4_0167 :
    oppositeAggregatePartValid4_0167 oppositeHistoryChunk0167 := by
  unfold oppositeAggregatePartValid4_0167 oppositeHistoryChunk0167
  decide

def oppositeAggregatePartValid5_0167 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 171648
  | _ => True

theorem oppositeAggregatePart5_0167 :
    oppositeAggregatePartValid5_0167 oppositeHistoryChunk0167 := by
  unfold oppositeAggregatePartValid5_0167 oppositeHistoryChunk0167
  decide

def oppositeAggregatePartValid6_0167 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 171776
  | _ => True

theorem oppositeAggregatePart6_0167 :
    oppositeAggregatePartValid6_0167 oppositeHistoryChunk0167 := by
  unfold oppositeAggregatePartValid6_0167 oppositeHistoryChunk0167
  decide

def oppositeAggregatePartValid7_0167 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 171904
  | _ => True

theorem oppositeAggregatePart7_0167 :
    oppositeAggregatePartValid7_0167 oppositeHistoryChunk0167 := by
  unfold oppositeAggregatePartValid7_0167 oppositeHistoryChunk0167
  decide

theorem oppositeRange_0167 :
    oppositeHistoryChunk0167.ResidueIndexedValid anchorHistories 5000000 18 25 171008 := by
  have h0 := oppositeAggregatePart0_0167
  simp only [oppositeAggregatePartValid0_0167, oppositeHistoryChunk0167] at h0
  have h1 := oppositeAggregatePart1_0167
  simp only [oppositeAggregatePartValid1_0167, oppositeHistoryChunk0167] at h1
  have h2 := oppositeAggregatePart2_0167
  simp only [oppositeAggregatePartValid2_0167, oppositeHistoryChunk0167] at h2
  have h3 := oppositeAggregatePart3_0167
  simp only [oppositeAggregatePartValid3_0167, oppositeHistoryChunk0167] at h3
  have h4 := oppositeAggregatePart4_0167
  simp only [oppositeAggregatePartValid4_0167, oppositeHistoryChunk0167] at h4
  have h5 := oppositeAggregatePart5_0167
  simp only [oppositeAggregatePartValid5_0167, oppositeHistoryChunk0167] at h5
  have h6 := oppositeAggregatePart6_0167
  simp only [oppositeAggregatePartValid6_0167, oppositeHistoryChunk0167] at h6
  have h7 := oppositeAggregatePart7_0167
  simp only [oppositeAggregatePartValid7_0167, oppositeHistoryChunk0167] at h7
  unfold oppositeHistoryChunk0167
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
