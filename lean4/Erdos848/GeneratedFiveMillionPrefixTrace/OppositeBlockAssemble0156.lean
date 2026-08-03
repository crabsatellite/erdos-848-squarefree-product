import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0156
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0157
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0158
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0159

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0156, 0157, 0158, 0159 -/

def oppositeAggregatePartValid0_0156 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 159744
  | _ => True

theorem oppositeAggregatePart0_0156 :
    oppositeAggregatePartValid0_0156 oppositeHistoryChunk0156 := by
  unfold oppositeAggregatePartValid0_0156 oppositeHistoryChunk0156
  decide

def oppositeAggregatePartValid1_0156 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 159872
  | _ => True

theorem oppositeAggregatePart1_0156 :
    oppositeAggregatePartValid1_0156 oppositeHistoryChunk0156 := by
  unfold oppositeAggregatePartValid1_0156 oppositeHistoryChunk0156
  decide

def oppositeAggregatePartValid2_0156 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 160000
  | _ => True

theorem oppositeAggregatePart2_0156 :
    oppositeAggregatePartValid2_0156 oppositeHistoryChunk0156 := by
  unfold oppositeAggregatePartValid2_0156 oppositeHistoryChunk0156
  decide

def oppositeAggregatePartValid3_0156 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 160128
  | _ => True

theorem oppositeAggregatePart3_0156 :
    oppositeAggregatePartValid3_0156 oppositeHistoryChunk0156 := by
  unfold oppositeAggregatePartValid3_0156 oppositeHistoryChunk0156
  decide

def oppositeAggregatePartValid4_0156 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 160256
  | _ => True

theorem oppositeAggregatePart4_0156 :
    oppositeAggregatePartValid4_0156 oppositeHistoryChunk0156 := by
  unfold oppositeAggregatePartValid4_0156 oppositeHistoryChunk0156
  decide

def oppositeAggregatePartValid5_0156 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 160384
  | _ => True

theorem oppositeAggregatePart5_0156 :
    oppositeAggregatePartValid5_0156 oppositeHistoryChunk0156 := by
  unfold oppositeAggregatePartValid5_0156 oppositeHistoryChunk0156
  decide

def oppositeAggregatePartValid6_0156 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 160512
  | _ => True

theorem oppositeAggregatePart6_0156 :
    oppositeAggregatePartValid6_0156 oppositeHistoryChunk0156 := by
  unfold oppositeAggregatePartValid6_0156 oppositeHistoryChunk0156
  decide

def oppositeAggregatePartValid7_0156 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 160640
  | _ => True

theorem oppositeAggregatePart7_0156 :
    oppositeAggregatePartValid7_0156 oppositeHistoryChunk0156 := by
  unfold oppositeAggregatePartValid7_0156 oppositeHistoryChunk0156
  decide

theorem oppositeRange_0156 :
    oppositeHistoryChunk0156.ResidueIndexedValid anchorHistories 5000000 18 25 159744 := by
  have h0 := oppositeAggregatePart0_0156
  simp only [oppositeAggregatePartValid0_0156, oppositeHistoryChunk0156] at h0
  have h1 := oppositeAggregatePart1_0156
  simp only [oppositeAggregatePartValid1_0156, oppositeHistoryChunk0156] at h1
  have h2 := oppositeAggregatePart2_0156
  simp only [oppositeAggregatePartValid2_0156, oppositeHistoryChunk0156] at h2
  have h3 := oppositeAggregatePart3_0156
  simp only [oppositeAggregatePartValid3_0156, oppositeHistoryChunk0156] at h3
  have h4 := oppositeAggregatePart4_0156
  simp only [oppositeAggregatePartValid4_0156, oppositeHistoryChunk0156] at h4
  have h5 := oppositeAggregatePart5_0156
  simp only [oppositeAggregatePartValid5_0156, oppositeHistoryChunk0156] at h5
  have h6 := oppositeAggregatePart6_0156
  simp only [oppositeAggregatePartValid6_0156, oppositeHistoryChunk0156] at h6
  have h7 := oppositeAggregatePart7_0156
  simp only [oppositeAggregatePartValid7_0156, oppositeHistoryChunk0156] at h7
  unfold oppositeHistoryChunk0156
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0157 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 160768
  | _ => True

theorem oppositeAggregatePart0_0157 :
    oppositeAggregatePartValid0_0157 oppositeHistoryChunk0157 := by
  unfold oppositeAggregatePartValid0_0157 oppositeHistoryChunk0157
  decide

def oppositeAggregatePartValid1_0157 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 160896
  | _ => True

theorem oppositeAggregatePart1_0157 :
    oppositeAggregatePartValid1_0157 oppositeHistoryChunk0157 := by
  unfold oppositeAggregatePartValid1_0157 oppositeHistoryChunk0157
  decide

def oppositeAggregatePartValid2_0157 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 161024
  | _ => True

theorem oppositeAggregatePart2_0157 :
    oppositeAggregatePartValid2_0157 oppositeHistoryChunk0157 := by
  unfold oppositeAggregatePartValid2_0157 oppositeHistoryChunk0157
  decide

def oppositeAggregatePartValid3_0157 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 161152
  | _ => True

theorem oppositeAggregatePart3_0157 :
    oppositeAggregatePartValid3_0157 oppositeHistoryChunk0157 := by
  unfold oppositeAggregatePartValid3_0157 oppositeHistoryChunk0157
  decide

def oppositeAggregatePartValid4_0157 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 161280
  | _ => True

theorem oppositeAggregatePart4_0157 :
    oppositeAggregatePartValid4_0157 oppositeHistoryChunk0157 := by
  unfold oppositeAggregatePartValid4_0157 oppositeHistoryChunk0157
  decide

def oppositeAggregatePartValid5_0157 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 161408
  | _ => True

theorem oppositeAggregatePart5_0157 :
    oppositeAggregatePartValid5_0157 oppositeHistoryChunk0157 := by
  unfold oppositeAggregatePartValid5_0157 oppositeHistoryChunk0157
  decide

def oppositeAggregatePartValid6_0157 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 161536
  | _ => True

theorem oppositeAggregatePart6_0157 :
    oppositeAggregatePartValid6_0157 oppositeHistoryChunk0157 := by
  unfold oppositeAggregatePartValid6_0157 oppositeHistoryChunk0157
  decide

def oppositeAggregatePartValid7_0157 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 161664
  | _ => True

theorem oppositeAggregatePart7_0157 :
    oppositeAggregatePartValid7_0157 oppositeHistoryChunk0157 := by
  unfold oppositeAggregatePartValid7_0157 oppositeHistoryChunk0157
  decide

theorem oppositeRange_0157 :
    oppositeHistoryChunk0157.ResidueIndexedValid anchorHistories 5000000 18 25 160768 := by
  have h0 := oppositeAggregatePart0_0157
  simp only [oppositeAggregatePartValid0_0157, oppositeHistoryChunk0157] at h0
  have h1 := oppositeAggregatePart1_0157
  simp only [oppositeAggregatePartValid1_0157, oppositeHistoryChunk0157] at h1
  have h2 := oppositeAggregatePart2_0157
  simp only [oppositeAggregatePartValid2_0157, oppositeHistoryChunk0157] at h2
  have h3 := oppositeAggregatePart3_0157
  simp only [oppositeAggregatePartValid3_0157, oppositeHistoryChunk0157] at h3
  have h4 := oppositeAggregatePart4_0157
  simp only [oppositeAggregatePartValid4_0157, oppositeHistoryChunk0157] at h4
  have h5 := oppositeAggregatePart5_0157
  simp only [oppositeAggregatePartValid5_0157, oppositeHistoryChunk0157] at h5
  have h6 := oppositeAggregatePart6_0157
  simp only [oppositeAggregatePartValid6_0157, oppositeHistoryChunk0157] at h6
  have h7 := oppositeAggregatePart7_0157
  simp only [oppositeAggregatePartValid7_0157, oppositeHistoryChunk0157] at h7
  unfold oppositeHistoryChunk0157
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0158 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 161792
  | _ => True

theorem oppositeAggregatePart0_0158 :
    oppositeAggregatePartValid0_0158 oppositeHistoryChunk0158 := by
  unfold oppositeAggregatePartValid0_0158 oppositeHistoryChunk0158
  decide

def oppositeAggregatePartValid1_0158 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 161920
  | _ => True

theorem oppositeAggregatePart1_0158 :
    oppositeAggregatePartValid1_0158 oppositeHistoryChunk0158 := by
  unfold oppositeAggregatePartValid1_0158 oppositeHistoryChunk0158
  decide

def oppositeAggregatePartValid2_0158 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 162048
  | _ => True

theorem oppositeAggregatePart2_0158 :
    oppositeAggregatePartValid2_0158 oppositeHistoryChunk0158 := by
  unfold oppositeAggregatePartValid2_0158 oppositeHistoryChunk0158
  decide

def oppositeAggregatePartValid3_0158 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 162176
  | _ => True

theorem oppositeAggregatePart3_0158 :
    oppositeAggregatePartValid3_0158 oppositeHistoryChunk0158 := by
  unfold oppositeAggregatePartValid3_0158 oppositeHistoryChunk0158
  decide

def oppositeAggregatePartValid4_0158 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 162304
  | _ => True

theorem oppositeAggregatePart4_0158 :
    oppositeAggregatePartValid4_0158 oppositeHistoryChunk0158 := by
  unfold oppositeAggregatePartValid4_0158 oppositeHistoryChunk0158
  decide

def oppositeAggregatePartValid5_0158 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 162432
  | _ => True

theorem oppositeAggregatePart5_0158 :
    oppositeAggregatePartValid5_0158 oppositeHistoryChunk0158 := by
  unfold oppositeAggregatePartValid5_0158 oppositeHistoryChunk0158
  decide

def oppositeAggregatePartValid6_0158 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 162560
  | _ => True

theorem oppositeAggregatePart6_0158 :
    oppositeAggregatePartValid6_0158 oppositeHistoryChunk0158 := by
  unfold oppositeAggregatePartValid6_0158 oppositeHistoryChunk0158
  decide

def oppositeAggregatePartValid7_0158 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 162688
  | _ => True

theorem oppositeAggregatePart7_0158 :
    oppositeAggregatePartValid7_0158 oppositeHistoryChunk0158 := by
  unfold oppositeAggregatePartValid7_0158 oppositeHistoryChunk0158
  decide

theorem oppositeRange_0158 :
    oppositeHistoryChunk0158.ResidueIndexedValid anchorHistories 5000000 18 25 161792 := by
  have h0 := oppositeAggregatePart0_0158
  simp only [oppositeAggregatePartValid0_0158, oppositeHistoryChunk0158] at h0
  have h1 := oppositeAggregatePart1_0158
  simp only [oppositeAggregatePartValid1_0158, oppositeHistoryChunk0158] at h1
  have h2 := oppositeAggregatePart2_0158
  simp only [oppositeAggregatePartValid2_0158, oppositeHistoryChunk0158] at h2
  have h3 := oppositeAggregatePart3_0158
  simp only [oppositeAggregatePartValid3_0158, oppositeHistoryChunk0158] at h3
  have h4 := oppositeAggregatePart4_0158
  simp only [oppositeAggregatePartValid4_0158, oppositeHistoryChunk0158] at h4
  have h5 := oppositeAggregatePart5_0158
  simp only [oppositeAggregatePartValid5_0158, oppositeHistoryChunk0158] at h5
  have h6 := oppositeAggregatePart6_0158
  simp only [oppositeAggregatePartValid6_0158, oppositeHistoryChunk0158] at h6
  have h7 := oppositeAggregatePart7_0158
  simp only [oppositeAggregatePartValid7_0158, oppositeHistoryChunk0158] at h7
  unfold oppositeHistoryChunk0158
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0159 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 162816
  | _ => True

theorem oppositeAggregatePart0_0159 :
    oppositeAggregatePartValid0_0159 oppositeHistoryChunk0159 := by
  unfold oppositeAggregatePartValid0_0159 oppositeHistoryChunk0159
  decide

def oppositeAggregatePartValid1_0159 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 162944
  | _ => True

theorem oppositeAggregatePart1_0159 :
    oppositeAggregatePartValid1_0159 oppositeHistoryChunk0159 := by
  unfold oppositeAggregatePartValid1_0159 oppositeHistoryChunk0159
  decide

def oppositeAggregatePartValid2_0159 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 163072
  | _ => True

theorem oppositeAggregatePart2_0159 :
    oppositeAggregatePartValid2_0159 oppositeHistoryChunk0159 := by
  unfold oppositeAggregatePartValid2_0159 oppositeHistoryChunk0159
  decide

def oppositeAggregatePartValid3_0159 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 163200
  | _ => True

theorem oppositeAggregatePart3_0159 :
    oppositeAggregatePartValid3_0159 oppositeHistoryChunk0159 := by
  unfold oppositeAggregatePartValid3_0159 oppositeHistoryChunk0159
  decide

def oppositeAggregatePartValid4_0159 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 163328
  | _ => True

theorem oppositeAggregatePart4_0159 :
    oppositeAggregatePartValid4_0159 oppositeHistoryChunk0159 := by
  unfold oppositeAggregatePartValid4_0159 oppositeHistoryChunk0159
  decide

def oppositeAggregatePartValid5_0159 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 163456
  | _ => True

theorem oppositeAggregatePart5_0159 :
    oppositeAggregatePartValid5_0159 oppositeHistoryChunk0159 := by
  unfold oppositeAggregatePartValid5_0159 oppositeHistoryChunk0159
  decide

def oppositeAggregatePartValid6_0159 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 163584
  | _ => True

theorem oppositeAggregatePart6_0159 :
    oppositeAggregatePartValid6_0159 oppositeHistoryChunk0159 := by
  unfold oppositeAggregatePartValid6_0159 oppositeHistoryChunk0159
  decide

def oppositeAggregatePartValid7_0159 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 163712
  | _ => True

theorem oppositeAggregatePart7_0159 :
    oppositeAggregatePartValid7_0159 oppositeHistoryChunk0159 := by
  unfold oppositeAggregatePartValid7_0159 oppositeHistoryChunk0159
  decide

theorem oppositeRange_0159 :
    oppositeHistoryChunk0159.ResidueIndexedValid anchorHistories 5000000 18 25 162816 := by
  have h0 := oppositeAggregatePart0_0159
  simp only [oppositeAggregatePartValid0_0159, oppositeHistoryChunk0159] at h0
  have h1 := oppositeAggregatePart1_0159
  simp only [oppositeAggregatePartValid1_0159, oppositeHistoryChunk0159] at h1
  have h2 := oppositeAggregatePart2_0159
  simp only [oppositeAggregatePartValid2_0159, oppositeHistoryChunk0159] at h2
  have h3 := oppositeAggregatePart3_0159
  simp only [oppositeAggregatePartValid3_0159, oppositeHistoryChunk0159] at h3
  have h4 := oppositeAggregatePart4_0159
  simp only [oppositeAggregatePartValid4_0159, oppositeHistoryChunk0159] at h4
  have h5 := oppositeAggregatePart5_0159
  simp only [oppositeAggregatePartValid5_0159, oppositeHistoryChunk0159] at h5
  have h6 := oppositeAggregatePart6_0159
  simp only [oppositeAggregatePartValid6_0159, oppositeHistoryChunk0159] at h6
  have h7 := oppositeAggregatePart7_0159
  simp only [oppositeAggregatePartValid7_0159, oppositeHistoryChunk0159] at h7
  unfold oppositeHistoryChunk0159
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
