import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0152
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0153
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0154
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0155

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0152, 0153, 0154, 0155 -/

def oppositeAggregatePartValid0_0152 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 155648
  | _ => True

theorem oppositeAggregatePart0_0152 :
    oppositeAggregatePartValid0_0152 oppositeHistoryChunk0152 := by
  unfold oppositeAggregatePartValid0_0152 oppositeHistoryChunk0152
  decide

def oppositeAggregatePartValid1_0152 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 155776
  | _ => True

theorem oppositeAggregatePart1_0152 :
    oppositeAggregatePartValid1_0152 oppositeHistoryChunk0152 := by
  unfold oppositeAggregatePartValid1_0152 oppositeHistoryChunk0152
  decide

def oppositeAggregatePartValid2_0152 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 155904
  | _ => True

theorem oppositeAggregatePart2_0152 :
    oppositeAggregatePartValid2_0152 oppositeHistoryChunk0152 := by
  unfold oppositeAggregatePartValid2_0152 oppositeHistoryChunk0152
  decide

def oppositeAggregatePartValid3_0152 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 156032
  | _ => True

theorem oppositeAggregatePart3_0152 :
    oppositeAggregatePartValid3_0152 oppositeHistoryChunk0152 := by
  unfold oppositeAggregatePartValid3_0152 oppositeHistoryChunk0152
  decide

def oppositeAggregatePartValid4_0152 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 156160
  | _ => True

theorem oppositeAggregatePart4_0152 :
    oppositeAggregatePartValid4_0152 oppositeHistoryChunk0152 := by
  unfold oppositeAggregatePartValid4_0152 oppositeHistoryChunk0152
  decide

def oppositeAggregatePartValid5_0152 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 156288
  | _ => True

theorem oppositeAggregatePart5_0152 :
    oppositeAggregatePartValid5_0152 oppositeHistoryChunk0152 := by
  unfold oppositeAggregatePartValid5_0152 oppositeHistoryChunk0152
  decide

def oppositeAggregatePartValid6_0152 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 156416
  | _ => True

theorem oppositeAggregatePart6_0152 :
    oppositeAggregatePartValid6_0152 oppositeHistoryChunk0152 := by
  unfold oppositeAggregatePartValid6_0152 oppositeHistoryChunk0152
  decide

def oppositeAggregatePartValid7_0152 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 156544
  | _ => True

theorem oppositeAggregatePart7_0152 :
    oppositeAggregatePartValid7_0152 oppositeHistoryChunk0152 := by
  unfold oppositeAggregatePartValid7_0152 oppositeHistoryChunk0152
  decide

theorem oppositeRange_0152 :
    oppositeHistoryChunk0152.ResidueIndexedValid anchorHistories 5000000 18 25 155648 := by
  have h0 := oppositeAggregatePart0_0152
  simp only [oppositeAggregatePartValid0_0152, oppositeHistoryChunk0152] at h0
  have h1 := oppositeAggregatePart1_0152
  simp only [oppositeAggregatePartValid1_0152, oppositeHistoryChunk0152] at h1
  have h2 := oppositeAggregatePart2_0152
  simp only [oppositeAggregatePartValid2_0152, oppositeHistoryChunk0152] at h2
  have h3 := oppositeAggregatePart3_0152
  simp only [oppositeAggregatePartValid3_0152, oppositeHistoryChunk0152] at h3
  have h4 := oppositeAggregatePart4_0152
  simp only [oppositeAggregatePartValid4_0152, oppositeHistoryChunk0152] at h4
  have h5 := oppositeAggregatePart5_0152
  simp only [oppositeAggregatePartValid5_0152, oppositeHistoryChunk0152] at h5
  have h6 := oppositeAggregatePart6_0152
  simp only [oppositeAggregatePartValid6_0152, oppositeHistoryChunk0152] at h6
  have h7 := oppositeAggregatePart7_0152
  simp only [oppositeAggregatePartValid7_0152, oppositeHistoryChunk0152] at h7
  unfold oppositeHistoryChunk0152
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0153 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 156672
  | _ => True

theorem oppositeAggregatePart0_0153 :
    oppositeAggregatePartValid0_0153 oppositeHistoryChunk0153 := by
  unfold oppositeAggregatePartValid0_0153 oppositeHistoryChunk0153
  decide

def oppositeAggregatePartValid1_0153 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 156800
  | _ => True

theorem oppositeAggregatePart1_0153 :
    oppositeAggregatePartValid1_0153 oppositeHistoryChunk0153 := by
  unfold oppositeAggregatePartValid1_0153 oppositeHistoryChunk0153
  decide

def oppositeAggregatePartValid2_0153 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 156928
  | _ => True

theorem oppositeAggregatePart2_0153 :
    oppositeAggregatePartValid2_0153 oppositeHistoryChunk0153 := by
  unfold oppositeAggregatePartValid2_0153 oppositeHistoryChunk0153
  decide

def oppositeAggregatePartValid3_0153 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 157056
  | _ => True

theorem oppositeAggregatePart3_0153 :
    oppositeAggregatePartValid3_0153 oppositeHistoryChunk0153 := by
  unfold oppositeAggregatePartValid3_0153 oppositeHistoryChunk0153
  decide

def oppositeAggregatePartValid4_0153 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 157184
  | _ => True

theorem oppositeAggregatePart4_0153 :
    oppositeAggregatePartValid4_0153 oppositeHistoryChunk0153 := by
  unfold oppositeAggregatePartValid4_0153 oppositeHistoryChunk0153
  decide

def oppositeAggregatePartValid5_0153 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 157312
  | _ => True

theorem oppositeAggregatePart5_0153 :
    oppositeAggregatePartValid5_0153 oppositeHistoryChunk0153 := by
  unfold oppositeAggregatePartValid5_0153 oppositeHistoryChunk0153
  decide

def oppositeAggregatePartValid6_0153 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 157440
  | _ => True

theorem oppositeAggregatePart6_0153 :
    oppositeAggregatePartValid6_0153 oppositeHistoryChunk0153 := by
  unfold oppositeAggregatePartValid6_0153 oppositeHistoryChunk0153
  decide

def oppositeAggregatePartValid7_0153 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 157568
  | _ => True

theorem oppositeAggregatePart7_0153 :
    oppositeAggregatePartValid7_0153 oppositeHistoryChunk0153 := by
  unfold oppositeAggregatePartValid7_0153 oppositeHistoryChunk0153
  decide

theorem oppositeRange_0153 :
    oppositeHistoryChunk0153.ResidueIndexedValid anchorHistories 5000000 18 25 156672 := by
  have h0 := oppositeAggregatePart0_0153
  simp only [oppositeAggregatePartValid0_0153, oppositeHistoryChunk0153] at h0
  have h1 := oppositeAggregatePart1_0153
  simp only [oppositeAggregatePartValid1_0153, oppositeHistoryChunk0153] at h1
  have h2 := oppositeAggregatePart2_0153
  simp only [oppositeAggregatePartValid2_0153, oppositeHistoryChunk0153] at h2
  have h3 := oppositeAggregatePart3_0153
  simp only [oppositeAggregatePartValid3_0153, oppositeHistoryChunk0153] at h3
  have h4 := oppositeAggregatePart4_0153
  simp only [oppositeAggregatePartValid4_0153, oppositeHistoryChunk0153] at h4
  have h5 := oppositeAggregatePart5_0153
  simp only [oppositeAggregatePartValid5_0153, oppositeHistoryChunk0153] at h5
  have h6 := oppositeAggregatePart6_0153
  simp only [oppositeAggregatePartValid6_0153, oppositeHistoryChunk0153] at h6
  have h7 := oppositeAggregatePart7_0153
  simp only [oppositeAggregatePartValid7_0153, oppositeHistoryChunk0153] at h7
  unfold oppositeHistoryChunk0153
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0154 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 157696
  | _ => True

theorem oppositeAggregatePart0_0154 :
    oppositeAggregatePartValid0_0154 oppositeHistoryChunk0154 := by
  unfold oppositeAggregatePartValid0_0154 oppositeHistoryChunk0154
  decide

def oppositeAggregatePartValid1_0154 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 157824
  | _ => True

theorem oppositeAggregatePart1_0154 :
    oppositeAggregatePartValid1_0154 oppositeHistoryChunk0154 := by
  unfold oppositeAggregatePartValid1_0154 oppositeHistoryChunk0154
  decide

def oppositeAggregatePartValid2_0154 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 157952
  | _ => True

theorem oppositeAggregatePart2_0154 :
    oppositeAggregatePartValid2_0154 oppositeHistoryChunk0154 := by
  unfold oppositeAggregatePartValid2_0154 oppositeHistoryChunk0154
  decide

def oppositeAggregatePartValid3_0154 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 158080
  | _ => True

theorem oppositeAggregatePart3_0154 :
    oppositeAggregatePartValid3_0154 oppositeHistoryChunk0154 := by
  unfold oppositeAggregatePartValid3_0154 oppositeHistoryChunk0154
  decide

def oppositeAggregatePartValid4_0154 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 158208
  | _ => True

theorem oppositeAggregatePart4_0154 :
    oppositeAggregatePartValid4_0154 oppositeHistoryChunk0154 := by
  unfold oppositeAggregatePartValid4_0154 oppositeHistoryChunk0154
  decide

def oppositeAggregatePartValid5_0154 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 158336
  | _ => True

theorem oppositeAggregatePart5_0154 :
    oppositeAggregatePartValid5_0154 oppositeHistoryChunk0154 := by
  unfold oppositeAggregatePartValid5_0154 oppositeHistoryChunk0154
  decide

def oppositeAggregatePartValid6_0154 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 158464
  | _ => True

theorem oppositeAggregatePart6_0154 :
    oppositeAggregatePartValid6_0154 oppositeHistoryChunk0154 := by
  unfold oppositeAggregatePartValid6_0154 oppositeHistoryChunk0154
  decide

def oppositeAggregatePartValid7_0154 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 158592
  | _ => True

theorem oppositeAggregatePart7_0154 :
    oppositeAggregatePartValid7_0154 oppositeHistoryChunk0154 := by
  unfold oppositeAggregatePartValid7_0154 oppositeHistoryChunk0154
  decide

theorem oppositeRange_0154 :
    oppositeHistoryChunk0154.ResidueIndexedValid anchorHistories 5000000 18 25 157696 := by
  have h0 := oppositeAggregatePart0_0154
  simp only [oppositeAggregatePartValid0_0154, oppositeHistoryChunk0154] at h0
  have h1 := oppositeAggregatePart1_0154
  simp only [oppositeAggregatePartValid1_0154, oppositeHistoryChunk0154] at h1
  have h2 := oppositeAggregatePart2_0154
  simp only [oppositeAggregatePartValid2_0154, oppositeHistoryChunk0154] at h2
  have h3 := oppositeAggregatePart3_0154
  simp only [oppositeAggregatePartValid3_0154, oppositeHistoryChunk0154] at h3
  have h4 := oppositeAggregatePart4_0154
  simp only [oppositeAggregatePartValid4_0154, oppositeHistoryChunk0154] at h4
  have h5 := oppositeAggregatePart5_0154
  simp only [oppositeAggregatePartValid5_0154, oppositeHistoryChunk0154] at h5
  have h6 := oppositeAggregatePart6_0154
  simp only [oppositeAggregatePartValid6_0154, oppositeHistoryChunk0154] at h6
  have h7 := oppositeAggregatePart7_0154
  simp only [oppositeAggregatePartValid7_0154, oppositeHistoryChunk0154] at h7
  unfold oppositeHistoryChunk0154
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0155 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 158720
  | _ => True

theorem oppositeAggregatePart0_0155 :
    oppositeAggregatePartValid0_0155 oppositeHistoryChunk0155 := by
  unfold oppositeAggregatePartValid0_0155 oppositeHistoryChunk0155
  decide

def oppositeAggregatePartValid1_0155 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 158848
  | _ => True

theorem oppositeAggregatePart1_0155 :
    oppositeAggregatePartValid1_0155 oppositeHistoryChunk0155 := by
  unfold oppositeAggregatePartValid1_0155 oppositeHistoryChunk0155
  decide

def oppositeAggregatePartValid2_0155 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 158976
  | _ => True

theorem oppositeAggregatePart2_0155 :
    oppositeAggregatePartValid2_0155 oppositeHistoryChunk0155 := by
  unfold oppositeAggregatePartValid2_0155 oppositeHistoryChunk0155
  decide

def oppositeAggregatePartValid3_0155 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 159104
  | _ => True

theorem oppositeAggregatePart3_0155 :
    oppositeAggregatePartValid3_0155 oppositeHistoryChunk0155 := by
  unfold oppositeAggregatePartValid3_0155 oppositeHistoryChunk0155
  decide

def oppositeAggregatePartValid4_0155 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 159232
  | _ => True

theorem oppositeAggregatePart4_0155 :
    oppositeAggregatePartValid4_0155 oppositeHistoryChunk0155 := by
  unfold oppositeAggregatePartValid4_0155 oppositeHistoryChunk0155
  decide

def oppositeAggregatePartValid5_0155 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 159360
  | _ => True

theorem oppositeAggregatePart5_0155 :
    oppositeAggregatePartValid5_0155 oppositeHistoryChunk0155 := by
  unfold oppositeAggregatePartValid5_0155 oppositeHistoryChunk0155
  decide

def oppositeAggregatePartValid6_0155 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 159488
  | _ => True

theorem oppositeAggregatePart6_0155 :
    oppositeAggregatePartValid6_0155 oppositeHistoryChunk0155 := by
  unfold oppositeAggregatePartValid6_0155 oppositeHistoryChunk0155
  decide

def oppositeAggregatePartValid7_0155 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 159616
  | _ => True

theorem oppositeAggregatePart7_0155 :
    oppositeAggregatePartValid7_0155 oppositeHistoryChunk0155 := by
  unfold oppositeAggregatePartValid7_0155 oppositeHistoryChunk0155
  decide

theorem oppositeRange_0155 :
    oppositeHistoryChunk0155.ResidueIndexedValid anchorHistories 5000000 18 25 158720 := by
  have h0 := oppositeAggregatePart0_0155
  simp only [oppositeAggregatePartValid0_0155, oppositeHistoryChunk0155] at h0
  have h1 := oppositeAggregatePart1_0155
  simp only [oppositeAggregatePartValid1_0155, oppositeHistoryChunk0155] at h1
  have h2 := oppositeAggregatePart2_0155
  simp only [oppositeAggregatePartValid2_0155, oppositeHistoryChunk0155] at h2
  have h3 := oppositeAggregatePart3_0155
  simp only [oppositeAggregatePartValid3_0155, oppositeHistoryChunk0155] at h3
  have h4 := oppositeAggregatePart4_0155
  simp only [oppositeAggregatePartValid4_0155, oppositeHistoryChunk0155] at h4
  have h5 := oppositeAggregatePart5_0155
  simp only [oppositeAggregatePartValid5_0155, oppositeHistoryChunk0155] at h5
  have h6 := oppositeAggregatePart6_0155
  simp only [oppositeAggregatePartValid6_0155, oppositeHistoryChunk0155] at h6
  have h7 := oppositeAggregatePart7_0155
  simp only [oppositeAggregatePartValid7_0155, oppositeHistoryChunk0155] at h7
  unfold oppositeHistoryChunk0155
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
