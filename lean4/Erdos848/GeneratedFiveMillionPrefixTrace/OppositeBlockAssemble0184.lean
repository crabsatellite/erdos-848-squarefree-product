import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0184
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0185
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0186
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0187

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0184, 0185, 0186, 0187 -/

def oppositeAggregatePartValid0_0184 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 188416
  | _ => True

theorem oppositeAggregatePart0_0184 :
    oppositeAggregatePartValid0_0184 oppositeHistoryChunk0184 := by
  unfold oppositeAggregatePartValid0_0184 oppositeHistoryChunk0184
  decide

def oppositeAggregatePartValid1_0184 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 188544
  | _ => True

theorem oppositeAggregatePart1_0184 :
    oppositeAggregatePartValid1_0184 oppositeHistoryChunk0184 := by
  unfold oppositeAggregatePartValid1_0184 oppositeHistoryChunk0184
  decide

def oppositeAggregatePartValid2_0184 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 188672
  | _ => True

theorem oppositeAggregatePart2_0184 :
    oppositeAggregatePartValid2_0184 oppositeHistoryChunk0184 := by
  unfold oppositeAggregatePartValid2_0184 oppositeHistoryChunk0184
  decide

def oppositeAggregatePartValid3_0184 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 188800
  | _ => True

theorem oppositeAggregatePart3_0184 :
    oppositeAggregatePartValid3_0184 oppositeHistoryChunk0184 := by
  unfold oppositeAggregatePartValid3_0184 oppositeHistoryChunk0184
  decide

def oppositeAggregatePartValid4_0184 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 188928
  | _ => True

theorem oppositeAggregatePart4_0184 :
    oppositeAggregatePartValid4_0184 oppositeHistoryChunk0184 := by
  unfold oppositeAggregatePartValid4_0184 oppositeHistoryChunk0184
  decide

def oppositeAggregatePartValid5_0184 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 189056
  | _ => True

theorem oppositeAggregatePart5_0184 :
    oppositeAggregatePartValid5_0184 oppositeHistoryChunk0184 := by
  unfold oppositeAggregatePartValid5_0184 oppositeHistoryChunk0184
  decide

def oppositeAggregatePartValid6_0184 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 189184
  | _ => True

theorem oppositeAggregatePart6_0184 :
    oppositeAggregatePartValid6_0184 oppositeHistoryChunk0184 := by
  unfold oppositeAggregatePartValid6_0184 oppositeHistoryChunk0184
  decide

def oppositeAggregatePartValid7_0184 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 189312
  | _ => True

theorem oppositeAggregatePart7_0184 :
    oppositeAggregatePartValid7_0184 oppositeHistoryChunk0184 := by
  unfold oppositeAggregatePartValid7_0184 oppositeHistoryChunk0184
  decide

theorem oppositeRange_0184 :
    oppositeHistoryChunk0184.ResidueIndexedValid anchorHistories 5000000 18 25 188416 := by
  have h0 := oppositeAggregatePart0_0184
  simp only [oppositeAggregatePartValid0_0184, oppositeHistoryChunk0184] at h0
  have h1 := oppositeAggregatePart1_0184
  simp only [oppositeAggregatePartValid1_0184, oppositeHistoryChunk0184] at h1
  have h2 := oppositeAggregatePart2_0184
  simp only [oppositeAggregatePartValid2_0184, oppositeHistoryChunk0184] at h2
  have h3 := oppositeAggregatePart3_0184
  simp only [oppositeAggregatePartValid3_0184, oppositeHistoryChunk0184] at h3
  have h4 := oppositeAggregatePart4_0184
  simp only [oppositeAggregatePartValid4_0184, oppositeHistoryChunk0184] at h4
  have h5 := oppositeAggregatePart5_0184
  simp only [oppositeAggregatePartValid5_0184, oppositeHistoryChunk0184] at h5
  have h6 := oppositeAggregatePart6_0184
  simp only [oppositeAggregatePartValid6_0184, oppositeHistoryChunk0184] at h6
  have h7 := oppositeAggregatePart7_0184
  simp only [oppositeAggregatePartValid7_0184, oppositeHistoryChunk0184] at h7
  unfold oppositeHistoryChunk0184
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0185 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 189440
  | _ => True

theorem oppositeAggregatePart0_0185 :
    oppositeAggregatePartValid0_0185 oppositeHistoryChunk0185 := by
  unfold oppositeAggregatePartValid0_0185 oppositeHistoryChunk0185
  decide

def oppositeAggregatePartValid1_0185 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 189568
  | _ => True

theorem oppositeAggregatePart1_0185 :
    oppositeAggregatePartValid1_0185 oppositeHistoryChunk0185 := by
  unfold oppositeAggregatePartValid1_0185 oppositeHistoryChunk0185
  decide

def oppositeAggregatePartValid2_0185 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 189696
  | _ => True

theorem oppositeAggregatePart2_0185 :
    oppositeAggregatePartValid2_0185 oppositeHistoryChunk0185 := by
  unfold oppositeAggregatePartValid2_0185 oppositeHistoryChunk0185
  decide

def oppositeAggregatePartValid3_0185 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 189824
  | _ => True

theorem oppositeAggregatePart3_0185 :
    oppositeAggregatePartValid3_0185 oppositeHistoryChunk0185 := by
  unfold oppositeAggregatePartValid3_0185 oppositeHistoryChunk0185
  decide

def oppositeAggregatePartValid4_0185 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 189952
  | _ => True

theorem oppositeAggregatePart4_0185 :
    oppositeAggregatePartValid4_0185 oppositeHistoryChunk0185 := by
  unfold oppositeAggregatePartValid4_0185 oppositeHistoryChunk0185
  decide

def oppositeAggregatePartValid5_0185 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 190080
  | _ => True

theorem oppositeAggregatePart5_0185 :
    oppositeAggregatePartValid5_0185 oppositeHistoryChunk0185 := by
  unfold oppositeAggregatePartValid5_0185 oppositeHistoryChunk0185
  decide

def oppositeAggregatePartValid6_0185 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 190208
  | _ => True

theorem oppositeAggregatePart6_0185 :
    oppositeAggregatePartValid6_0185 oppositeHistoryChunk0185 := by
  unfold oppositeAggregatePartValid6_0185 oppositeHistoryChunk0185
  decide

def oppositeAggregatePartValid7_0185 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 190336
  | _ => True

theorem oppositeAggregatePart7_0185 :
    oppositeAggregatePartValid7_0185 oppositeHistoryChunk0185 := by
  unfold oppositeAggregatePartValid7_0185 oppositeHistoryChunk0185
  decide

theorem oppositeRange_0185 :
    oppositeHistoryChunk0185.ResidueIndexedValid anchorHistories 5000000 18 25 189440 := by
  have h0 := oppositeAggregatePart0_0185
  simp only [oppositeAggregatePartValid0_0185, oppositeHistoryChunk0185] at h0
  have h1 := oppositeAggregatePart1_0185
  simp only [oppositeAggregatePartValid1_0185, oppositeHistoryChunk0185] at h1
  have h2 := oppositeAggregatePart2_0185
  simp only [oppositeAggregatePartValid2_0185, oppositeHistoryChunk0185] at h2
  have h3 := oppositeAggregatePart3_0185
  simp only [oppositeAggregatePartValid3_0185, oppositeHistoryChunk0185] at h3
  have h4 := oppositeAggregatePart4_0185
  simp only [oppositeAggregatePartValid4_0185, oppositeHistoryChunk0185] at h4
  have h5 := oppositeAggregatePart5_0185
  simp only [oppositeAggregatePartValid5_0185, oppositeHistoryChunk0185] at h5
  have h6 := oppositeAggregatePart6_0185
  simp only [oppositeAggregatePartValid6_0185, oppositeHistoryChunk0185] at h6
  have h7 := oppositeAggregatePart7_0185
  simp only [oppositeAggregatePartValid7_0185, oppositeHistoryChunk0185] at h7
  unfold oppositeHistoryChunk0185
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0186 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 190464
  | _ => True

theorem oppositeAggregatePart0_0186 :
    oppositeAggregatePartValid0_0186 oppositeHistoryChunk0186 := by
  unfold oppositeAggregatePartValid0_0186 oppositeHistoryChunk0186
  decide

def oppositeAggregatePartValid1_0186 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 190592
  | _ => True

theorem oppositeAggregatePart1_0186 :
    oppositeAggregatePartValid1_0186 oppositeHistoryChunk0186 := by
  unfold oppositeAggregatePartValid1_0186 oppositeHistoryChunk0186
  decide

def oppositeAggregatePartValid2_0186 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 190720
  | _ => True

theorem oppositeAggregatePart2_0186 :
    oppositeAggregatePartValid2_0186 oppositeHistoryChunk0186 := by
  unfold oppositeAggregatePartValid2_0186 oppositeHistoryChunk0186
  decide

def oppositeAggregatePartValid3_0186 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 190848
  | _ => True

theorem oppositeAggregatePart3_0186 :
    oppositeAggregatePartValid3_0186 oppositeHistoryChunk0186 := by
  unfold oppositeAggregatePartValid3_0186 oppositeHistoryChunk0186
  decide

def oppositeAggregatePartValid4_0186 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 190976
  | _ => True

theorem oppositeAggregatePart4_0186 :
    oppositeAggregatePartValid4_0186 oppositeHistoryChunk0186 := by
  unfold oppositeAggregatePartValid4_0186 oppositeHistoryChunk0186
  decide

def oppositeAggregatePartValid5_0186 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 191104
  | _ => True

theorem oppositeAggregatePart5_0186 :
    oppositeAggregatePartValid5_0186 oppositeHistoryChunk0186 := by
  unfold oppositeAggregatePartValid5_0186 oppositeHistoryChunk0186
  decide

def oppositeAggregatePartValid6_0186 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 191232
  | _ => True

theorem oppositeAggregatePart6_0186 :
    oppositeAggregatePartValid6_0186 oppositeHistoryChunk0186 := by
  unfold oppositeAggregatePartValid6_0186 oppositeHistoryChunk0186
  decide

def oppositeAggregatePartValid7_0186 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 191360
  | _ => True

theorem oppositeAggregatePart7_0186 :
    oppositeAggregatePartValid7_0186 oppositeHistoryChunk0186 := by
  unfold oppositeAggregatePartValid7_0186 oppositeHistoryChunk0186
  decide

theorem oppositeRange_0186 :
    oppositeHistoryChunk0186.ResidueIndexedValid anchorHistories 5000000 18 25 190464 := by
  have h0 := oppositeAggregatePart0_0186
  simp only [oppositeAggregatePartValid0_0186, oppositeHistoryChunk0186] at h0
  have h1 := oppositeAggregatePart1_0186
  simp only [oppositeAggregatePartValid1_0186, oppositeHistoryChunk0186] at h1
  have h2 := oppositeAggregatePart2_0186
  simp only [oppositeAggregatePartValid2_0186, oppositeHistoryChunk0186] at h2
  have h3 := oppositeAggregatePart3_0186
  simp only [oppositeAggregatePartValid3_0186, oppositeHistoryChunk0186] at h3
  have h4 := oppositeAggregatePart4_0186
  simp only [oppositeAggregatePartValid4_0186, oppositeHistoryChunk0186] at h4
  have h5 := oppositeAggregatePart5_0186
  simp only [oppositeAggregatePartValid5_0186, oppositeHistoryChunk0186] at h5
  have h6 := oppositeAggregatePart6_0186
  simp only [oppositeAggregatePartValid6_0186, oppositeHistoryChunk0186] at h6
  have h7 := oppositeAggregatePart7_0186
  simp only [oppositeAggregatePartValid7_0186, oppositeHistoryChunk0186] at h7
  unfold oppositeHistoryChunk0186
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0187 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 191488
  | _ => True

theorem oppositeAggregatePart0_0187 :
    oppositeAggregatePartValid0_0187 oppositeHistoryChunk0187 := by
  unfold oppositeAggregatePartValid0_0187 oppositeHistoryChunk0187
  decide

def oppositeAggregatePartValid1_0187 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 191616
  | _ => True

theorem oppositeAggregatePart1_0187 :
    oppositeAggregatePartValid1_0187 oppositeHistoryChunk0187 := by
  unfold oppositeAggregatePartValid1_0187 oppositeHistoryChunk0187
  decide

def oppositeAggregatePartValid2_0187 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 191744
  | _ => True

theorem oppositeAggregatePart2_0187 :
    oppositeAggregatePartValid2_0187 oppositeHistoryChunk0187 := by
  unfold oppositeAggregatePartValid2_0187 oppositeHistoryChunk0187
  decide

def oppositeAggregatePartValid3_0187 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 191872
  | _ => True

theorem oppositeAggregatePart3_0187 :
    oppositeAggregatePartValid3_0187 oppositeHistoryChunk0187 := by
  unfold oppositeAggregatePartValid3_0187 oppositeHistoryChunk0187
  decide

def oppositeAggregatePartValid4_0187 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 192000
  | _ => True

theorem oppositeAggregatePart4_0187 :
    oppositeAggregatePartValid4_0187 oppositeHistoryChunk0187 := by
  unfold oppositeAggregatePartValid4_0187 oppositeHistoryChunk0187
  decide

def oppositeAggregatePartValid5_0187 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 192128
  | _ => True

theorem oppositeAggregatePart5_0187 :
    oppositeAggregatePartValid5_0187 oppositeHistoryChunk0187 := by
  unfold oppositeAggregatePartValid5_0187 oppositeHistoryChunk0187
  decide

def oppositeAggregatePartValid6_0187 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 192256
  | _ => True

theorem oppositeAggregatePart6_0187 :
    oppositeAggregatePartValid6_0187 oppositeHistoryChunk0187 := by
  unfold oppositeAggregatePartValid6_0187 oppositeHistoryChunk0187
  decide

def oppositeAggregatePartValid7_0187 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 192384
  | _ => True

theorem oppositeAggregatePart7_0187 :
    oppositeAggregatePartValid7_0187 oppositeHistoryChunk0187 := by
  unfold oppositeAggregatePartValid7_0187 oppositeHistoryChunk0187
  decide

theorem oppositeRange_0187 :
    oppositeHistoryChunk0187.ResidueIndexedValid anchorHistories 5000000 18 25 191488 := by
  have h0 := oppositeAggregatePart0_0187
  simp only [oppositeAggregatePartValid0_0187, oppositeHistoryChunk0187] at h0
  have h1 := oppositeAggregatePart1_0187
  simp only [oppositeAggregatePartValid1_0187, oppositeHistoryChunk0187] at h1
  have h2 := oppositeAggregatePart2_0187
  simp only [oppositeAggregatePartValid2_0187, oppositeHistoryChunk0187] at h2
  have h3 := oppositeAggregatePart3_0187
  simp only [oppositeAggregatePartValid3_0187, oppositeHistoryChunk0187] at h3
  have h4 := oppositeAggregatePart4_0187
  simp only [oppositeAggregatePartValid4_0187, oppositeHistoryChunk0187] at h4
  have h5 := oppositeAggregatePart5_0187
  simp only [oppositeAggregatePartValid5_0187, oppositeHistoryChunk0187] at h5
  have h6 := oppositeAggregatePart6_0187
  simp only [oppositeAggregatePartValid6_0187, oppositeHistoryChunk0187] at h6
  have h7 := oppositeAggregatePart7_0187
  simp only [oppositeAggregatePartValid7_0187, oppositeHistoryChunk0187] at h7
  unfold oppositeHistoryChunk0187
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
