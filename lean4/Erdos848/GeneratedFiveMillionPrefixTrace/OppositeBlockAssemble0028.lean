import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0028
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0029
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0030
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0031

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0028, 0029, 0030, 0031 -/

def oppositeAggregatePartValid0_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 28672
  | _ => True

theorem oppositeAggregatePart0_0028 :
    oppositeAggregatePartValid0_0028 oppositeHistoryChunk0028 := by
  unfold oppositeAggregatePartValid0_0028 oppositeHistoryChunk0028
  decide

def oppositeAggregatePartValid1_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 28800
  | _ => True

theorem oppositeAggregatePart1_0028 :
    oppositeAggregatePartValid1_0028 oppositeHistoryChunk0028 := by
  unfold oppositeAggregatePartValid1_0028 oppositeHistoryChunk0028
  decide

def oppositeAggregatePartValid2_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 28928
  | _ => True

theorem oppositeAggregatePart2_0028 :
    oppositeAggregatePartValid2_0028 oppositeHistoryChunk0028 := by
  unfold oppositeAggregatePartValid2_0028 oppositeHistoryChunk0028
  decide

def oppositeAggregatePartValid3_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 29056
  | _ => True

theorem oppositeAggregatePart3_0028 :
    oppositeAggregatePartValid3_0028 oppositeHistoryChunk0028 := by
  unfold oppositeAggregatePartValid3_0028 oppositeHistoryChunk0028
  decide

def oppositeAggregatePartValid4_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 29184
  | _ => True

theorem oppositeAggregatePart4_0028 :
    oppositeAggregatePartValid4_0028 oppositeHistoryChunk0028 := by
  unfold oppositeAggregatePartValid4_0028 oppositeHistoryChunk0028
  decide

def oppositeAggregatePartValid5_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 29312
  | _ => True

theorem oppositeAggregatePart5_0028 :
    oppositeAggregatePartValid5_0028 oppositeHistoryChunk0028 := by
  unfold oppositeAggregatePartValid5_0028 oppositeHistoryChunk0028
  decide

def oppositeAggregatePartValid6_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 29440
  | _ => True

theorem oppositeAggregatePart6_0028 :
    oppositeAggregatePartValid6_0028 oppositeHistoryChunk0028 := by
  unfold oppositeAggregatePartValid6_0028 oppositeHistoryChunk0028
  decide

def oppositeAggregatePartValid7_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 29568
  | _ => True

theorem oppositeAggregatePart7_0028 :
    oppositeAggregatePartValid7_0028 oppositeHistoryChunk0028 := by
  unfold oppositeAggregatePartValid7_0028 oppositeHistoryChunk0028
  decide

theorem oppositeRange_0028 :
    oppositeHistoryChunk0028.ResidueIndexedValid anchorHistories 5000000 18 25 28672 := by
  have h0 := oppositeAggregatePart0_0028
  simp only [oppositeAggregatePartValid0_0028, oppositeHistoryChunk0028] at h0
  have h1 := oppositeAggregatePart1_0028
  simp only [oppositeAggregatePartValid1_0028, oppositeHistoryChunk0028] at h1
  have h2 := oppositeAggregatePart2_0028
  simp only [oppositeAggregatePartValid2_0028, oppositeHistoryChunk0028] at h2
  have h3 := oppositeAggregatePart3_0028
  simp only [oppositeAggregatePartValid3_0028, oppositeHistoryChunk0028] at h3
  have h4 := oppositeAggregatePart4_0028
  simp only [oppositeAggregatePartValid4_0028, oppositeHistoryChunk0028] at h4
  have h5 := oppositeAggregatePart5_0028
  simp only [oppositeAggregatePartValid5_0028, oppositeHistoryChunk0028] at h5
  have h6 := oppositeAggregatePart6_0028
  simp only [oppositeAggregatePartValid6_0028, oppositeHistoryChunk0028] at h6
  have h7 := oppositeAggregatePart7_0028
  simp only [oppositeAggregatePartValid7_0028, oppositeHistoryChunk0028] at h7
  unfold oppositeHistoryChunk0028
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 29696
  | _ => True

theorem oppositeAggregatePart0_0029 :
    oppositeAggregatePartValid0_0029 oppositeHistoryChunk0029 := by
  unfold oppositeAggregatePartValid0_0029 oppositeHistoryChunk0029
  decide

def oppositeAggregatePartValid1_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 29824
  | _ => True

theorem oppositeAggregatePart1_0029 :
    oppositeAggregatePartValid1_0029 oppositeHistoryChunk0029 := by
  unfold oppositeAggregatePartValid1_0029 oppositeHistoryChunk0029
  decide

def oppositeAggregatePartValid2_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 29952
  | _ => True

theorem oppositeAggregatePart2_0029 :
    oppositeAggregatePartValid2_0029 oppositeHistoryChunk0029 := by
  unfold oppositeAggregatePartValid2_0029 oppositeHistoryChunk0029
  decide

def oppositeAggregatePartValid3_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 30080
  | _ => True

theorem oppositeAggregatePart3_0029 :
    oppositeAggregatePartValid3_0029 oppositeHistoryChunk0029 := by
  unfold oppositeAggregatePartValid3_0029 oppositeHistoryChunk0029
  decide

def oppositeAggregatePartValid4_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 30208
  | _ => True

theorem oppositeAggregatePart4_0029 :
    oppositeAggregatePartValid4_0029 oppositeHistoryChunk0029 := by
  unfold oppositeAggregatePartValid4_0029 oppositeHistoryChunk0029
  decide

def oppositeAggregatePartValid5_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 30336
  | _ => True

theorem oppositeAggregatePart5_0029 :
    oppositeAggregatePartValid5_0029 oppositeHistoryChunk0029 := by
  unfold oppositeAggregatePartValid5_0029 oppositeHistoryChunk0029
  decide

def oppositeAggregatePartValid6_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 30464
  | _ => True

theorem oppositeAggregatePart6_0029 :
    oppositeAggregatePartValid6_0029 oppositeHistoryChunk0029 := by
  unfold oppositeAggregatePartValid6_0029 oppositeHistoryChunk0029
  decide

def oppositeAggregatePartValid7_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 30592
  | _ => True

theorem oppositeAggregatePart7_0029 :
    oppositeAggregatePartValid7_0029 oppositeHistoryChunk0029 := by
  unfold oppositeAggregatePartValid7_0029 oppositeHistoryChunk0029
  decide

theorem oppositeRange_0029 :
    oppositeHistoryChunk0029.ResidueIndexedValid anchorHistories 5000000 18 25 29696 := by
  have h0 := oppositeAggregatePart0_0029
  simp only [oppositeAggregatePartValid0_0029, oppositeHistoryChunk0029] at h0
  have h1 := oppositeAggregatePart1_0029
  simp only [oppositeAggregatePartValid1_0029, oppositeHistoryChunk0029] at h1
  have h2 := oppositeAggregatePart2_0029
  simp only [oppositeAggregatePartValid2_0029, oppositeHistoryChunk0029] at h2
  have h3 := oppositeAggregatePart3_0029
  simp only [oppositeAggregatePartValid3_0029, oppositeHistoryChunk0029] at h3
  have h4 := oppositeAggregatePart4_0029
  simp only [oppositeAggregatePartValid4_0029, oppositeHistoryChunk0029] at h4
  have h5 := oppositeAggregatePart5_0029
  simp only [oppositeAggregatePartValid5_0029, oppositeHistoryChunk0029] at h5
  have h6 := oppositeAggregatePart6_0029
  simp only [oppositeAggregatePartValid6_0029, oppositeHistoryChunk0029] at h6
  have h7 := oppositeAggregatePart7_0029
  simp only [oppositeAggregatePartValid7_0029, oppositeHistoryChunk0029] at h7
  unfold oppositeHistoryChunk0029
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 30720
  | _ => True

theorem oppositeAggregatePart0_0030 :
    oppositeAggregatePartValid0_0030 oppositeHistoryChunk0030 := by
  unfold oppositeAggregatePartValid0_0030 oppositeHistoryChunk0030
  decide

def oppositeAggregatePartValid1_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 30848
  | _ => True

theorem oppositeAggregatePart1_0030 :
    oppositeAggregatePartValid1_0030 oppositeHistoryChunk0030 := by
  unfold oppositeAggregatePartValid1_0030 oppositeHistoryChunk0030
  decide

def oppositeAggregatePartValid2_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 30976
  | _ => True

theorem oppositeAggregatePart2_0030 :
    oppositeAggregatePartValid2_0030 oppositeHistoryChunk0030 := by
  unfold oppositeAggregatePartValid2_0030 oppositeHistoryChunk0030
  decide

def oppositeAggregatePartValid3_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 31104
  | _ => True

theorem oppositeAggregatePart3_0030 :
    oppositeAggregatePartValid3_0030 oppositeHistoryChunk0030 := by
  unfold oppositeAggregatePartValid3_0030 oppositeHistoryChunk0030
  decide

def oppositeAggregatePartValid4_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 31232
  | _ => True

theorem oppositeAggregatePart4_0030 :
    oppositeAggregatePartValid4_0030 oppositeHistoryChunk0030 := by
  unfold oppositeAggregatePartValid4_0030 oppositeHistoryChunk0030
  decide

def oppositeAggregatePartValid5_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 31360
  | _ => True

theorem oppositeAggregatePart5_0030 :
    oppositeAggregatePartValid5_0030 oppositeHistoryChunk0030 := by
  unfold oppositeAggregatePartValid5_0030 oppositeHistoryChunk0030
  decide

def oppositeAggregatePartValid6_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 31488
  | _ => True

theorem oppositeAggregatePart6_0030 :
    oppositeAggregatePartValid6_0030 oppositeHistoryChunk0030 := by
  unfold oppositeAggregatePartValid6_0030 oppositeHistoryChunk0030
  decide

def oppositeAggregatePartValid7_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 31616
  | _ => True

theorem oppositeAggregatePart7_0030 :
    oppositeAggregatePartValid7_0030 oppositeHistoryChunk0030 := by
  unfold oppositeAggregatePartValid7_0030 oppositeHistoryChunk0030
  decide

theorem oppositeRange_0030 :
    oppositeHistoryChunk0030.ResidueIndexedValid anchorHistories 5000000 18 25 30720 := by
  have h0 := oppositeAggregatePart0_0030
  simp only [oppositeAggregatePartValid0_0030, oppositeHistoryChunk0030] at h0
  have h1 := oppositeAggregatePart1_0030
  simp only [oppositeAggregatePartValid1_0030, oppositeHistoryChunk0030] at h1
  have h2 := oppositeAggregatePart2_0030
  simp only [oppositeAggregatePartValid2_0030, oppositeHistoryChunk0030] at h2
  have h3 := oppositeAggregatePart3_0030
  simp only [oppositeAggregatePartValid3_0030, oppositeHistoryChunk0030] at h3
  have h4 := oppositeAggregatePart4_0030
  simp only [oppositeAggregatePartValid4_0030, oppositeHistoryChunk0030] at h4
  have h5 := oppositeAggregatePart5_0030
  simp only [oppositeAggregatePartValid5_0030, oppositeHistoryChunk0030] at h5
  have h6 := oppositeAggregatePart6_0030
  simp only [oppositeAggregatePartValid6_0030, oppositeHistoryChunk0030] at h6
  have h7 := oppositeAggregatePart7_0030
  simp only [oppositeAggregatePartValid7_0030, oppositeHistoryChunk0030] at h7
  unfold oppositeHistoryChunk0030
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 31744
  | _ => True

theorem oppositeAggregatePart0_0031 :
    oppositeAggregatePartValid0_0031 oppositeHistoryChunk0031 := by
  unfold oppositeAggregatePartValid0_0031 oppositeHistoryChunk0031
  decide

def oppositeAggregatePartValid1_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 31872
  | _ => True

theorem oppositeAggregatePart1_0031 :
    oppositeAggregatePartValid1_0031 oppositeHistoryChunk0031 := by
  unfold oppositeAggregatePartValid1_0031 oppositeHistoryChunk0031
  decide

def oppositeAggregatePartValid2_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 32000
  | _ => True

theorem oppositeAggregatePart2_0031 :
    oppositeAggregatePartValid2_0031 oppositeHistoryChunk0031 := by
  unfold oppositeAggregatePartValid2_0031 oppositeHistoryChunk0031
  decide

def oppositeAggregatePartValid3_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 32128
  | _ => True

theorem oppositeAggregatePart3_0031 :
    oppositeAggregatePartValid3_0031 oppositeHistoryChunk0031 := by
  unfold oppositeAggregatePartValid3_0031 oppositeHistoryChunk0031
  decide

def oppositeAggregatePartValid4_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 32256
  | _ => True

theorem oppositeAggregatePart4_0031 :
    oppositeAggregatePartValid4_0031 oppositeHistoryChunk0031 := by
  unfold oppositeAggregatePartValid4_0031 oppositeHistoryChunk0031
  decide

def oppositeAggregatePartValid5_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 32384
  | _ => True

theorem oppositeAggregatePart5_0031 :
    oppositeAggregatePartValid5_0031 oppositeHistoryChunk0031 := by
  unfold oppositeAggregatePartValid5_0031 oppositeHistoryChunk0031
  decide

def oppositeAggregatePartValid6_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 32512
  | _ => True

theorem oppositeAggregatePart6_0031 :
    oppositeAggregatePartValid6_0031 oppositeHistoryChunk0031 := by
  unfold oppositeAggregatePartValid6_0031 oppositeHistoryChunk0031
  decide

def oppositeAggregatePartValid7_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 32640
  | _ => True

theorem oppositeAggregatePart7_0031 :
    oppositeAggregatePartValid7_0031 oppositeHistoryChunk0031 := by
  unfold oppositeAggregatePartValid7_0031 oppositeHistoryChunk0031
  decide

theorem oppositeRange_0031 :
    oppositeHistoryChunk0031.ResidueIndexedValid anchorHistories 5000000 18 25 31744 := by
  have h0 := oppositeAggregatePart0_0031
  simp only [oppositeAggregatePartValid0_0031, oppositeHistoryChunk0031] at h0
  have h1 := oppositeAggregatePart1_0031
  simp only [oppositeAggregatePartValid1_0031, oppositeHistoryChunk0031] at h1
  have h2 := oppositeAggregatePart2_0031
  simp only [oppositeAggregatePartValid2_0031, oppositeHistoryChunk0031] at h2
  have h3 := oppositeAggregatePart3_0031
  simp only [oppositeAggregatePartValid3_0031, oppositeHistoryChunk0031] at h3
  have h4 := oppositeAggregatePart4_0031
  simp only [oppositeAggregatePartValid4_0031, oppositeHistoryChunk0031] at h4
  have h5 := oppositeAggregatePart5_0031
  simp only [oppositeAggregatePartValid5_0031, oppositeHistoryChunk0031] at h5
  have h6 := oppositeAggregatePart6_0031
  simp only [oppositeAggregatePartValid6_0031, oppositeHistoryChunk0031] at h6
  have h7 := oppositeAggregatePart7_0031
  simp only [oppositeAggregatePartValid7_0031, oppositeHistoryChunk0031] at h7
  unfold oppositeHistoryChunk0031
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
