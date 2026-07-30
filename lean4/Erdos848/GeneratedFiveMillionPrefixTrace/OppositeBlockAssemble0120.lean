import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0120
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0121
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0122
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0123

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0120, 0121, 0122, 0123 -/

def oppositeAggregatePartValid0_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 122880
  | _ => True

theorem oppositeAggregatePart0_0120 :
    oppositeAggregatePartValid0_0120 oppositeHistoryChunk0120 := by
  unfold oppositeAggregatePartValid0_0120 oppositeHistoryChunk0120
  decide

def oppositeAggregatePartValid1_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 123008
  | _ => True

theorem oppositeAggregatePart1_0120 :
    oppositeAggregatePartValid1_0120 oppositeHistoryChunk0120 := by
  unfold oppositeAggregatePartValid1_0120 oppositeHistoryChunk0120
  decide

def oppositeAggregatePartValid2_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 123136
  | _ => True

theorem oppositeAggregatePart2_0120 :
    oppositeAggregatePartValid2_0120 oppositeHistoryChunk0120 := by
  unfold oppositeAggregatePartValid2_0120 oppositeHistoryChunk0120
  decide

def oppositeAggregatePartValid3_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 123264
  | _ => True

theorem oppositeAggregatePart3_0120 :
    oppositeAggregatePartValid3_0120 oppositeHistoryChunk0120 := by
  unfold oppositeAggregatePartValid3_0120 oppositeHistoryChunk0120
  decide

def oppositeAggregatePartValid4_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 123392
  | _ => True

theorem oppositeAggregatePart4_0120 :
    oppositeAggregatePartValid4_0120 oppositeHistoryChunk0120 := by
  unfold oppositeAggregatePartValid4_0120 oppositeHistoryChunk0120
  decide

def oppositeAggregatePartValid5_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 123520
  | _ => True

theorem oppositeAggregatePart5_0120 :
    oppositeAggregatePartValid5_0120 oppositeHistoryChunk0120 := by
  unfold oppositeAggregatePartValid5_0120 oppositeHistoryChunk0120
  decide

def oppositeAggregatePartValid6_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 123648
  | _ => True

theorem oppositeAggregatePart6_0120 :
    oppositeAggregatePartValid6_0120 oppositeHistoryChunk0120 := by
  unfold oppositeAggregatePartValid6_0120 oppositeHistoryChunk0120
  decide

def oppositeAggregatePartValid7_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 123776
  | _ => True

theorem oppositeAggregatePart7_0120 :
    oppositeAggregatePartValid7_0120 oppositeHistoryChunk0120 := by
  unfold oppositeAggregatePartValid7_0120 oppositeHistoryChunk0120
  decide

theorem oppositeRange_0120 :
    oppositeHistoryChunk0120.ResidueIndexedValid anchorHistories 5000000 18 25 122880 := by
  have h0 := oppositeAggregatePart0_0120
  simp only [oppositeAggregatePartValid0_0120, oppositeHistoryChunk0120] at h0
  have h1 := oppositeAggregatePart1_0120
  simp only [oppositeAggregatePartValid1_0120, oppositeHistoryChunk0120] at h1
  have h2 := oppositeAggregatePart2_0120
  simp only [oppositeAggregatePartValid2_0120, oppositeHistoryChunk0120] at h2
  have h3 := oppositeAggregatePart3_0120
  simp only [oppositeAggregatePartValid3_0120, oppositeHistoryChunk0120] at h3
  have h4 := oppositeAggregatePart4_0120
  simp only [oppositeAggregatePartValid4_0120, oppositeHistoryChunk0120] at h4
  have h5 := oppositeAggregatePart5_0120
  simp only [oppositeAggregatePartValid5_0120, oppositeHistoryChunk0120] at h5
  have h6 := oppositeAggregatePart6_0120
  simp only [oppositeAggregatePartValid6_0120, oppositeHistoryChunk0120] at h6
  have h7 := oppositeAggregatePart7_0120
  simp only [oppositeAggregatePartValid7_0120, oppositeHistoryChunk0120] at h7
  unfold oppositeHistoryChunk0120
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 123904
  | _ => True

theorem oppositeAggregatePart0_0121 :
    oppositeAggregatePartValid0_0121 oppositeHistoryChunk0121 := by
  unfold oppositeAggregatePartValid0_0121 oppositeHistoryChunk0121
  decide

def oppositeAggregatePartValid1_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 124032
  | _ => True

theorem oppositeAggregatePart1_0121 :
    oppositeAggregatePartValid1_0121 oppositeHistoryChunk0121 := by
  unfold oppositeAggregatePartValid1_0121 oppositeHistoryChunk0121
  decide

def oppositeAggregatePartValid2_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 124160
  | _ => True

theorem oppositeAggregatePart2_0121 :
    oppositeAggregatePartValid2_0121 oppositeHistoryChunk0121 := by
  unfold oppositeAggregatePartValid2_0121 oppositeHistoryChunk0121
  decide

def oppositeAggregatePartValid3_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 124288
  | _ => True

theorem oppositeAggregatePart3_0121 :
    oppositeAggregatePartValid3_0121 oppositeHistoryChunk0121 := by
  unfold oppositeAggregatePartValid3_0121 oppositeHistoryChunk0121
  decide

def oppositeAggregatePartValid4_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 124416
  | _ => True

theorem oppositeAggregatePart4_0121 :
    oppositeAggregatePartValid4_0121 oppositeHistoryChunk0121 := by
  unfold oppositeAggregatePartValid4_0121 oppositeHistoryChunk0121
  decide

def oppositeAggregatePartValid5_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 124544
  | _ => True

theorem oppositeAggregatePart5_0121 :
    oppositeAggregatePartValid5_0121 oppositeHistoryChunk0121 := by
  unfold oppositeAggregatePartValid5_0121 oppositeHistoryChunk0121
  decide

def oppositeAggregatePartValid6_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 124672
  | _ => True

theorem oppositeAggregatePart6_0121 :
    oppositeAggregatePartValid6_0121 oppositeHistoryChunk0121 := by
  unfold oppositeAggregatePartValid6_0121 oppositeHistoryChunk0121
  decide

def oppositeAggregatePartValid7_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 124800
  | _ => True

theorem oppositeAggregatePart7_0121 :
    oppositeAggregatePartValid7_0121 oppositeHistoryChunk0121 := by
  unfold oppositeAggregatePartValid7_0121 oppositeHistoryChunk0121
  decide

theorem oppositeRange_0121 :
    oppositeHistoryChunk0121.ResidueIndexedValid anchorHistories 5000000 18 25 123904 := by
  have h0 := oppositeAggregatePart0_0121
  simp only [oppositeAggregatePartValid0_0121, oppositeHistoryChunk0121] at h0
  have h1 := oppositeAggregatePart1_0121
  simp only [oppositeAggregatePartValid1_0121, oppositeHistoryChunk0121] at h1
  have h2 := oppositeAggregatePart2_0121
  simp only [oppositeAggregatePartValid2_0121, oppositeHistoryChunk0121] at h2
  have h3 := oppositeAggregatePart3_0121
  simp only [oppositeAggregatePartValid3_0121, oppositeHistoryChunk0121] at h3
  have h4 := oppositeAggregatePart4_0121
  simp only [oppositeAggregatePartValid4_0121, oppositeHistoryChunk0121] at h4
  have h5 := oppositeAggregatePart5_0121
  simp only [oppositeAggregatePartValid5_0121, oppositeHistoryChunk0121] at h5
  have h6 := oppositeAggregatePart6_0121
  simp only [oppositeAggregatePartValid6_0121, oppositeHistoryChunk0121] at h6
  have h7 := oppositeAggregatePart7_0121
  simp only [oppositeAggregatePartValid7_0121, oppositeHistoryChunk0121] at h7
  unfold oppositeHistoryChunk0121
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 124928
  | _ => True

theorem oppositeAggregatePart0_0122 :
    oppositeAggregatePartValid0_0122 oppositeHistoryChunk0122 := by
  unfold oppositeAggregatePartValid0_0122 oppositeHistoryChunk0122
  decide

def oppositeAggregatePartValid1_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 125056
  | _ => True

theorem oppositeAggregatePart1_0122 :
    oppositeAggregatePartValid1_0122 oppositeHistoryChunk0122 := by
  unfold oppositeAggregatePartValid1_0122 oppositeHistoryChunk0122
  decide

def oppositeAggregatePartValid2_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 125184
  | _ => True

theorem oppositeAggregatePart2_0122 :
    oppositeAggregatePartValid2_0122 oppositeHistoryChunk0122 := by
  unfold oppositeAggregatePartValid2_0122 oppositeHistoryChunk0122
  decide

def oppositeAggregatePartValid3_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 125312
  | _ => True

theorem oppositeAggregatePart3_0122 :
    oppositeAggregatePartValid3_0122 oppositeHistoryChunk0122 := by
  unfold oppositeAggregatePartValid3_0122 oppositeHistoryChunk0122
  decide

def oppositeAggregatePartValid4_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 125440
  | _ => True

theorem oppositeAggregatePart4_0122 :
    oppositeAggregatePartValid4_0122 oppositeHistoryChunk0122 := by
  unfold oppositeAggregatePartValid4_0122 oppositeHistoryChunk0122
  decide

def oppositeAggregatePartValid5_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 125568
  | _ => True

theorem oppositeAggregatePart5_0122 :
    oppositeAggregatePartValid5_0122 oppositeHistoryChunk0122 := by
  unfold oppositeAggregatePartValid5_0122 oppositeHistoryChunk0122
  decide

def oppositeAggregatePartValid6_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 125696
  | _ => True

theorem oppositeAggregatePart6_0122 :
    oppositeAggregatePartValid6_0122 oppositeHistoryChunk0122 := by
  unfold oppositeAggregatePartValid6_0122 oppositeHistoryChunk0122
  decide

def oppositeAggregatePartValid7_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 125824
  | _ => True

theorem oppositeAggregatePart7_0122 :
    oppositeAggregatePartValid7_0122 oppositeHistoryChunk0122 := by
  unfold oppositeAggregatePartValid7_0122 oppositeHistoryChunk0122
  decide

theorem oppositeRange_0122 :
    oppositeHistoryChunk0122.ResidueIndexedValid anchorHistories 5000000 18 25 124928 := by
  have h0 := oppositeAggregatePart0_0122
  simp only [oppositeAggregatePartValid0_0122, oppositeHistoryChunk0122] at h0
  have h1 := oppositeAggregatePart1_0122
  simp only [oppositeAggregatePartValid1_0122, oppositeHistoryChunk0122] at h1
  have h2 := oppositeAggregatePart2_0122
  simp only [oppositeAggregatePartValid2_0122, oppositeHistoryChunk0122] at h2
  have h3 := oppositeAggregatePart3_0122
  simp only [oppositeAggregatePartValid3_0122, oppositeHistoryChunk0122] at h3
  have h4 := oppositeAggregatePart4_0122
  simp only [oppositeAggregatePartValid4_0122, oppositeHistoryChunk0122] at h4
  have h5 := oppositeAggregatePart5_0122
  simp only [oppositeAggregatePartValid5_0122, oppositeHistoryChunk0122] at h5
  have h6 := oppositeAggregatePart6_0122
  simp only [oppositeAggregatePartValid6_0122, oppositeHistoryChunk0122] at h6
  have h7 := oppositeAggregatePart7_0122
  simp only [oppositeAggregatePartValid7_0122, oppositeHistoryChunk0122] at h7
  unfold oppositeHistoryChunk0122
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0123 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 125952
  | _ => True

theorem oppositeAggregatePart0_0123 :
    oppositeAggregatePartValid0_0123 oppositeHistoryChunk0123 := by
  unfold oppositeAggregatePartValid0_0123 oppositeHistoryChunk0123
  decide

def oppositeAggregatePartValid1_0123 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 126080
  | _ => True

theorem oppositeAggregatePart1_0123 :
    oppositeAggregatePartValid1_0123 oppositeHistoryChunk0123 := by
  unfold oppositeAggregatePartValid1_0123 oppositeHistoryChunk0123
  decide

def oppositeAggregatePartValid2_0123 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 126208
  | _ => True

theorem oppositeAggregatePart2_0123 :
    oppositeAggregatePartValid2_0123 oppositeHistoryChunk0123 := by
  unfold oppositeAggregatePartValid2_0123 oppositeHistoryChunk0123
  decide

def oppositeAggregatePartValid3_0123 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 126336
  | _ => True

theorem oppositeAggregatePart3_0123 :
    oppositeAggregatePartValid3_0123 oppositeHistoryChunk0123 := by
  unfold oppositeAggregatePartValid3_0123 oppositeHistoryChunk0123
  decide

def oppositeAggregatePartValid4_0123 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 126464
  | _ => True

theorem oppositeAggregatePart4_0123 :
    oppositeAggregatePartValid4_0123 oppositeHistoryChunk0123 := by
  unfold oppositeAggregatePartValid4_0123 oppositeHistoryChunk0123
  decide

def oppositeAggregatePartValid5_0123 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 126592
  | _ => True

theorem oppositeAggregatePart5_0123 :
    oppositeAggregatePartValid5_0123 oppositeHistoryChunk0123 := by
  unfold oppositeAggregatePartValid5_0123 oppositeHistoryChunk0123
  decide

def oppositeAggregatePartValid6_0123 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 126720
  | _ => True

theorem oppositeAggregatePart6_0123 :
    oppositeAggregatePartValid6_0123 oppositeHistoryChunk0123 := by
  unfold oppositeAggregatePartValid6_0123 oppositeHistoryChunk0123
  decide

def oppositeAggregatePartValid7_0123 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 126848
  | _ => True

theorem oppositeAggregatePart7_0123 :
    oppositeAggregatePartValid7_0123 oppositeHistoryChunk0123 := by
  unfold oppositeAggregatePartValid7_0123 oppositeHistoryChunk0123
  decide

theorem oppositeRange_0123 :
    oppositeHistoryChunk0123.ResidueIndexedValid anchorHistories 5000000 18 25 125952 := by
  have h0 := oppositeAggregatePart0_0123
  simp only [oppositeAggregatePartValid0_0123, oppositeHistoryChunk0123] at h0
  have h1 := oppositeAggregatePart1_0123
  simp only [oppositeAggregatePartValid1_0123, oppositeHistoryChunk0123] at h1
  have h2 := oppositeAggregatePart2_0123
  simp only [oppositeAggregatePartValid2_0123, oppositeHistoryChunk0123] at h2
  have h3 := oppositeAggregatePart3_0123
  simp only [oppositeAggregatePartValid3_0123, oppositeHistoryChunk0123] at h3
  have h4 := oppositeAggregatePart4_0123
  simp only [oppositeAggregatePartValid4_0123, oppositeHistoryChunk0123] at h4
  have h5 := oppositeAggregatePart5_0123
  simp only [oppositeAggregatePartValid5_0123, oppositeHistoryChunk0123] at h5
  have h6 := oppositeAggregatePart6_0123
  simp only [oppositeAggregatePartValid6_0123, oppositeHistoryChunk0123] at h6
  have h7 := oppositeAggregatePart7_0123
  simp only [oppositeAggregatePartValid7_0123, oppositeHistoryChunk0123] at h7
  unfold oppositeHistoryChunk0123
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
