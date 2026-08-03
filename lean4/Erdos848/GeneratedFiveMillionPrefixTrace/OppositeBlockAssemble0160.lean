import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0160
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0161
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0162
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0163

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0160, 0161, 0162, 0163 -/

def oppositeAggregatePartValid0_0160 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 163840
  | _ => True

theorem oppositeAggregatePart0_0160 :
    oppositeAggregatePartValid0_0160 oppositeHistoryChunk0160 := by
  unfold oppositeAggregatePartValid0_0160 oppositeHistoryChunk0160
  decide

def oppositeAggregatePartValid1_0160 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 163968
  | _ => True

theorem oppositeAggregatePart1_0160 :
    oppositeAggregatePartValid1_0160 oppositeHistoryChunk0160 := by
  unfold oppositeAggregatePartValid1_0160 oppositeHistoryChunk0160
  decide

def oppositeAggregatePartValid2_0160 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 164096
  | _ => True

theorem oppositeAggregatePart2_0160 :
    oppositeAggregatePartValid2_0160 oppositeHistoryChunk0160 := by
  unfold oppositeAggregatePartValid2_0160 oppositeHistoryChunk0160
  decide

def oppositeAggregatePartValid3_0160 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 164224
  | _ => True

theorem oppositeAggregatePart3_0160 :
    oppositeAggregatePartValid3_0160 oppositeHistoryChunk0160 := by
  unfold oppositeAggregatePartValid3_0160 oppositeHistoryChunk0160
  decide

def oppositeAggregatePartValid4_0160 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 164352
  | _ => True

theorem oppositeAggregatePart4_0160 :
    oppositeAggregatePartValid4_0160 oppositeHistoryChunk0160 := by
  unfold oppositeAggregatePartValid4_0160 oppositeHistoryChunk0160
  decide

def oppositeAggregatePartValid5_0160 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 164480
  | _ => True

theorem oppositeAggregatePart5_0160 :
    oppositeAggregatePartValid5_0160 oppositeHistoryChunk0160 := by
  unfold oppositeAggregatePartValid5_0160 oppositeHistoryChunk0160
  decide

def oppositeAggregatePartValid6_0160 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 164608
  | _ => True

theorem oppositeAggregatePart6_0160 :
    oppositeAggregatePartValid6_0160 oppositeHistoryChunk0160 := by
  unfold oppositeAggregatePartValid6_0160 oppositeHistoryChunk0160
  decide

def oppositeAggregatePartValid7_0160 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 164736
  | _ => True

theorem oppositeAggregatePart7_0160 :
    oppositeAggregatePartValid7_0160 oppositeHistoryChunk0160 := by
  unfold oppositeAggregatePartValid7_0160 oppositeHistoryChunk0160
  decide

theorem oppositeRange_0160 :
    oppositeHistoryChunk0160.ResidueIndexedValid anchorHistories 5000000 18 25 163840 := by
  have h0 := oppositeAggregatePart0_0160
  simp only [oppositeAggregatePartValid0_0160, oppositeHistoryChunk0160] at h0
  have h1 := oppositeAggregatePart1_0160
  simp only [oppositeAggregatePartValid1_0160, oppositeHistoryChunk0160] at h1
  have h2 := oppositeAggregatePart2_0160
  simp only [oppositeAggregatePartValid2_0160, oppositeHistoryChunk0160] at h2
  have h3 := oppositeAggregatePart3_0160
  simp only [oppositeAggregatePartValid3_0160, oppositeHistoryChunk0160] at h3
  have h4 := oppositeAggregatePart4_0160
  simp only [oppositeAggregatePartValid4_0160, oppositeHistoryChunk0160] at h4
  have h5 := oppositeAggregatePart5_0160
  simp only [oppositeAggregatePartValid5_0160, oppositeHistoryChunk0160] at h5
  have h6 := oppositeAggregatePart6_0160
  simp only [oppositeAggregatePartValid6_0160, oppositeHistoryChunk0160] at h6
  have h7 := oppositeAggregatePart7_0160
  simp only [oppositeAggregatePartValid7_0160, oppositeHistoryChunk0160] at h7
  unfold oppositeHistoryChunk0160
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0161 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 164864
  | _ => True

theorem oppositeAggregatePart0_0161 :
    oppositeAggregatePartValid0_0161 oppositeHistoryChunk0161 := by
  unfold oppositeAggregatePartValid0_0161 oppositeHistoryChunk0161
  decide

def oppositeAggregatePartValid1_0161 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 164992
  | _ => True

theorem oppositeAggregatePart1_0161 :
    oppositeAggregatePartValid1_0161 oppositeHistoryChunk0161 := by
  unfold oppositeAggregatePartValid1_0161 oppositeHistoryChunk0161
  decide

def oppositeAggregatePartValid2_0161 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 165120
  | _ => True

theorem oppositeAggregatePart2_0161 :
    oppositeAggregatePartValid2_0161 oppositeHistoryChunk0161 := by
  unfold oppositeAggregatePartValid2_0161 oppositeHistoryChunk0161
  decide

def oppositeAggregatePartValid3_0161 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 165248
  | _ => True

theorem oppositeAggregatePart3_0161 :
    oppositeAggregatePartValid3_0161 oppositeHistoryChunk0161 := by
  unfold oppositeAggregatePartValid3_0161 oppositeHistoryChunk0161
  decide

def oppositeAggregatePartValid4_0161 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 165376
  | _ => True

theorem oppositeAggregatePart4_0161 :
    oppositeAggregatePartValid4_0161 oppositeHistoryChunk0161 := by
  unfold oppositeAggregatePartValid4_0161 oppositeHistoryChunk0161
  decide

def oppositeAggregatePartValid5_0161 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 165504
  | _ => True

theorem oppositeAggregatePart5_0161 :
    oppositeAggregatePartValid5_0161 oppositeHistoryChunk0161 := by
  unfold oppositeAggregatePartValid5_0161 oppositeHistoryChunk0161
  decide

def oppositeAggregatePartValid6_0161 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 165632
  | _ => True

theorem oppositeAggregatePart6_0161 :
    oppositeAggregatePartValid6_0161 oppositeHistoryChunk0161 := by
  unfold oppositeAggregatePartValid6_0161 oppositeHistoryChunk0161
  decide

def oppositeAggregatePartValid7_0161 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 165760
  | _ => True

theorem oppositeAggregatePart7_0161 :
    oppositeAggregatePartValid7_0161 oppositeHistoryChunk0161 := by
  unfold oppositeAggregatePartValid7_0161 oppositeHistoryChunk0161
  decide

theorem oppositeRange_0161 :
    oppositeHistoryChunk0161.ResidueIndexedValid anchorHistories 5000000 18 25 164864 := by
  have h0 := oppositeAggregatePart0_0161
  simp only [oppositeAggregatePartValid0_0161, oppositeHistoryChunk0161] at h0
  have h1 := oppositeAggregatePart1_0161
  simp only [oppositeAggregatePartValid1_0161, oppositeHistoryChunk0161] at h1
  have h2 := oppositeAggregatePart2_0161
  simp only [oppositeAggregatePartValid2_0161, oppositeHistoryChunk0161] at h2
  have h3 := oppositeAggregatePart3_0161
  simp only [oppositeAggregatePartValid3_0161, oppositeHistoryChunk0161] at h3
  have h4 := oppositeAggregatePart4_0161
  simp only [oppositeAggregatePartValid4_0161, oppositeHistoryChunk0161] at h4
  have h5 := oppositeAggregatePart5_0161
  simp only [oppositeAggregatePartValid5_0161, oppositeHistoryChunk0161] at h5
  have h6 := oppositeAggregatePart6_0161
  simp only [oppositeAggregatePartValid6_0161, oppositeHistoryChunk0161] at h6
  have h7 := oppositeAggregatePart7_0161
  simp only [oppositeAggregatePartValid7_0161, oppositeHistoryChunk0161] at h7
  unfold oppositeHistoryChunk0161
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0162 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 165888
  | _ => True

theorem oppositeAggregatePart0_0162 :
    oppositeAggregatePartValid0_0162 oppositeHistoryChunk0162 := by
  unfold oppositeAggregatePartValid0_0162 oppositeHistoryChunk0162
  decide

def oppositeAggregatePartValid1_0162 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 166016
  | _ => True

theorem oppositeAggregatePart1_0162 :
    oppositeAggregatePartValid1_0162 oppositeHistoryChunk0162 := by
  unfold oppositeAggregatePartValid1_0162 oppositeHistoryChunk0162
  decide

def oppositeAggregatePartValid2_0162 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 166144
  | _ => True

theorem oppositeAggregatePart2_0162 :
    oppositeAggregatePartValid2_0162 oppositeHistoryChunk0162 := by
  unfold oppositeAggregatePartValid2_0162 oppositeHistoryChunk0162
  decide

def oppositeAggregatePartValid3_0162 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 166272
  | _ => True

theorem oppositeAggregatePart3_0162 :
    oppositeAggregatePartValid3_0162 oppositeHistoryChunk0162 := by
  unfold oppositeAggregatePartValid3_0162 oppositeHistoryChunk0162
  decide

def oppositeAggregatePartValid4_0162 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 166400
  | _ => True

theorem oppositeAggregatePart4_0162 :
    oppositeAggregatePartValid4_0162 oppositeHistoryChunk0162 := by
  unfold oppositeAggregatePartValid4_0162 oppositeHistoryChunk0162
  decide

def oppositeAggregatePartValid5_0162 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 166528
  | _ => True

theorem oppositeAggregatePart5_0162 :
    oppositeAggregatePartValid5_0162 oppositeHistoryChunk0162 := by
  unfold oppositeAggregatePartValid5_0162 oppositeHistoryChunk0162
  decide

def oppositeAggregatePartValid6_0162 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 166656
  | _ => True

theorem oppositeAggregatePart6_0162 :
    oppositeAggregatePartValid6_0162 oppositeHistoryChunk0162 := by
  unfold oppositeAggregatePartValid6_0162 oppositeHistoryChunk0162
  decide

def oppositeAggregatePartValid7_0162 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 166784
  | _ => True

theorem oppositeAggregatePart7_0162 :
    oppositeAggregatePartValid7_0162 oppositeHistoryChunk0162 := by
  unfold oppositeAggregatePartValid7_0162 oppositeHistoryChunk0162
  decide

theorem oppositeRange_0162 :
    oppositeHistoryChunk0162.ResidueIndexedValid anchorHistories 5000000 18 25 165888 := by
  have h0 := oppositeAggregatePart0_0162
  simp only [oppositeAggregatePartValid0_0162, oppositeHistoryChunk0162] at h0
  have h1 := oppositeAggregatePart1_0162
  simp only [oppositeAggregatePartValid1_0162, oppositeHistoryChunk0162] at h1
  have h2 := oppositeAggregatePart2_0162
  simp only [oppositeAggregatePartValid2_0162, oppositeHistoryChunk0162] at h2
  have h3 := oppositeAggregatePart3_0162
  simp only [oppositeAggregatePartValid3_0162, oppositeHistoryChunk0162] at h3
  have h4 := oppositeAggregatePart4_0162
  simp only [oppositeAggregatePartValid4_0162, oppositeHistoryChunk0162] at h4
  have h5 := oppositeAggregatePart5_0162
  simp only [oppositeAggregatePartValid5_0162, oppositeHistoryChunk0162] at h5
  have h6 := oppositeAggregatePart6_0162
  simp only [oppositeAggregatePartValid6_0162, oppositeHistoryChunk0162] at h6
  have h7 := oppositeAggregatePart7_0162
  simp only [oppositeAggregatePartValid7_0162, oppositeHistoryChunk0162] at h7
  unfold oppositeHistoryChunk0162
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0163 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 166912
  | _ => True

theorem oppositeAggregatePart0_0163 :
    oppositeAggregatePartValid0_0163 oppositeHistoryChunk0163 := by
  unfold oppositeAggregatePartValid0_0163 oppositeHistoryChunk0163
  decide

def oppositeAggregatePartValid1_0163 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 167040
  | _ => True

theorem oppositeAggregatePart1_0163 :
    oppositeAggregatePartValid1_0163 oppositeHistoryChunk0163 := by
  unfold oppositeAggregatePartValid1_0163 oppositeHistoryChunk0163
  decide

def oppositeAggregatePartValid2_0163 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 167168
  | _ => True

theorem oppositeAggregatePart2_0163 :
    oppositeAggregatePartValid2_0163 oppositeHistoryChunk0163 := by
  unfold oppositeAggregatePartValid2_0163 oppositeHistoryChunk0163
  decide

def oppositeAggregatePartValid3_0163 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 167296
  | _ => True

theorem oppositeAggregatePart3_0163 :
    oppositeAggregatePartValid3_0163 oppositeHistoryChunk0163 := by
  unfold oppositeAggregatePartValid3_0163 oppositeHistoryChunk0163
  decide

def oppositeAggregatePartValid4_0163 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 167424
  | _ => True

theorem oppositeAggregatePart4_0163 :
    oppositeAggregatePartValid4_0163 oppositeHistoryChunk0163 := by
  unfold oppositeAggregatePartValid4_0163 oppositeHistoryChunk0163
  decide

def oppositeAggregatePartValid5_0163 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 167552
  | _ => True

theorem oppositeAggregatePart5_0163 :
    oppositeAggregatePartValid5_0163 oppositeHistoryChunk0163 := by
  unfold oppositeAggregatePartValid5_0163 oppositeHistoryChunk0163
  decide

def oppositeAggregatePartValid6_0163 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 167680
  | _ => True

theorem oppositeAggregatePart6_0163 :
    oppositeAggregatePartValid6_0163 oppositeHistoryChunk0163 := by
  unfold oppositeAggregatePartValid6_0163 oppositeHistoryChunk0163
  decide

def oppositeAggregatePartValid7_0163 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 167808
  | _ => True

theorem oppositeAggregatePart7_0163 :
    oppositeAggregatePartValid7_0163 oppositeHistoryChunk0163 := by
  unfold oppositeAggregatePartValid7_0163 oppositeHistoryChunk0163
  decide

theorem oppositeRange_0163 :
    oppositeHistoryChunk0163.ResidueIndexedValid anchorHistories 5000000 18 25 166912 := by
  have h0 := oppositeAggregatePart0_0163
  simp only [oppositeAggregatePartValid0_0163, oppositeHistoryChunk0163] at h0
  have h1 := oppositeAggregatePart1_0163
  simp only [oppositeAggregatePartValid1_0163, oppositeHistoryChunk0163] at h1
  have h2 := oppositeAggregatePart2_0163
  simp only [oppositeAggregatePartValid2_0163, oppositeHistoryChunk0163] at h2
  have h3 := oppositeAggregatePart3_0163
  simp only [oppositeAggregatePartValid3_0163, oppositeHistoryChunk0163] at h3
  have h4 := oppositeAggregatePart4_0163
  simp only [oppositeAggregatePartValid4_0163, oppositeHistoryChunk0163] at h4
  have h5 := oppositeAggregatePart5_0163
  simp only [oppositeAggregatePartValid5_0163, oppositeHistoryChunk0163] at h5
  have h6 := oppositeAggregatePart6_0163
  simp only [oppositeAggregatePartValid6_0163, oppositeHistoryChunk0163] at h6
  have h7 := oppositeAggregatePart7_0163
  simp only [oppositeAggregatePartValid7_0163, oppositeHistoryChunk0163] at h7
  unfold oppositeHistoryChunk0163
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
