import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0036
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0037
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0038
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0039

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0036, 0037, 0038, 0039 -/

def oppositeAggregatePartValid0_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 36864
  | _ => True

theorem oppositeAggregatePart0_0036 :
    oppositeAggregatePartValid0_0036 oppositeHistoryChunk0036 := by
  unfold oppositeAggregatePartValid0_0036 oppositeHistoryChunk0036
  decide

def oppositeAggregatePartValid1_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 36992
  | _ => True

theorem oppositeAggregatePart1_0036 :
    oppositeAggregatePartValid1_0036 oppositeHistoryChunk0036 := by
  unfold oppositeAggregatePartValid1_0036 oppositeHistoryChunk0036
  decide

def oppositeAggregatePartValid2_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 37120
  | _ => True

theorem oppositeAggregatePart2_0036 :
    oppositeAggregatePartValid2_0036 oppositeHistoryChunk0036 := by
  unfold oppositeAggregatePartValid2_0036 oppositeHistoryChunk0036
  decide

def oppositeAggregatePartValid3_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 37248
  | _ => True

theorem oppositeAggregatePart3_0036 :
    oppositeAggregatePartValid3_0036 oppositeHistoryChunk0036 := by
  unfold oppositeAggregatePartValid3_0036 oppositeHistoryChunk0036
  decide

def oppositeAggregatePartValid4_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 37376
  | _ => True

theorem oppositeAggregatePart4_0036 :
    oppositeAggregatePartValid4_0036 oppositeHistoryChunk0036 := by
  unfold oppositeAggregatePartValid4_0036 oppositeHistoryChunk0036
  decide

def oppositeAggregatePartValid5_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 37504
  | _ => True

theorem oppositeAggregatePart5_0036 :
    oppositeAggregatePartValid5_0036 oppositeHistoryChunk0036 := by
  unfold oppositeAggregatePartValid5_0036 oppositeHistoryChunk0036
  decide

def oppositeAggregatePartValid6_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 37632
  | _ => True

theorem oppositeAggregatePart6_0036 :
    oppositeAggregatePartValid6_0036 oppositeHistoryChunk0036 := by
  unfold oppositeAggregatePartValid6_0036 oppositeHistoryChunk0036
  decide

def oppositeAggregatePartValid7_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 37760
  | _ => True

theorem oppositeAggregatePart7_0036 :
    oppositeAggregatePartValid7_0036 oppositeHistoryChunk0036 := by
  unfold oppositeAggregatePartValid7_0036 oppositeHistoryChunk0036
  decide

theorem oppositeRange_0036 :
    oppositeHistoryChunk0036.ResidueIndexedValid anchorHistories 5000000 18 25 36864 := by
  have h0 := oppositeAggregatePart0_0036
  simp only [oppositeAggregatePartValid0_0036, oppositeHistoryChunk0036] at h0
  have h1 := oppositeAggregatePart1_0036
  simp only [oppositeAggregatePartValid1_0036, oppositeHistoryChunk0036] at h1
  have h2 := oppositeAggregatePart2_0036
  simp only [oppositeAggregatePartValid2_0036, oppositeHistoryChunk0036] at h2
  have h3 := oppositeAggregatePart3_0036
  simp only [oppositeAggregatePartValid3_0036, oppositeHistoryChunk0036] at h3
  have h4 := oppositeAggregatePart4_0036
  simp only [oppositeAggregatePartValid4_0036, oppositeHistoryChunk0036] at h4
  have h5 := oppositeAggregatePart5_0036
  simp only [oppositeAggregatePartValid5_0036, oppositeHistoryChunk0036] at h5
  have h6 := oppositeAggregatePart6_0036
  simp only [oppositeAggregatePartValid6_0036, oppositeHistoryChunk0036] at h6
  have h7 := oppositeAggregatePart7_0036
  simp only [oppositeAggregatePartValid7_0036, oppositeHistoryChunk0036] at h7
  unfold oppositeHistoryChunk0036
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 37888
  | _ => True

theorem oppositeAggregatePart0_0037 :
    oppositeAggregatePartValid0_0037 oppositeHistoryChunk0037 := by
  unfold oppositeAggregatePartValid0_0037 oppositeHistoryChunk0037
  decide

def oppositeAggregatePartValid1_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 38016
  | _ => True

theorem oppositeAggregatePart1_0037 :
    oppositeAggregatePartValid1_0037 oppositeHistoryChunk0037 := by
  unfold oppositeAggregatePartValid1_0037 oppositeHistoryChunk0037
  decide

def oppositeAggregatePartValid2_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 38144
  | _ => True

theorem oppositeAggregatePart2_0037 :
    oppositeAggregatePartValid2_0037 oppositeHistoryChunk0037 := by
  unfold oppositeAggregatePartValid2_0037 oppositeHistoryChunk0037
  decide

def oppositeAggregatePartValid3_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 38272
  | _ => True

theorem oppositeAggregatePart3_0037 :
    oppositeAggregatePartValid3_0037 oppositeHistoryChunk0037 := by
  unfold oppositeAggregatePartValid3_0037 oppositeHistoryChunk0037
  decide

def oppositeAggregatePartValid4_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 38400
  | _ => True

theorem oppositeAggregatePart4_0037 :
    oppositeAggregatePartValid4_0037 oppositeHistoryChunk0037 := by
  unfold oppositeAggregatePartValid4_0037 oppositeHistoryChunk0037
  decide

def oppositeAggregatePartValid5_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 38528
  | _ => True

theorem oppositeAggregatePart5_0037 :
    oppositeAggregatePartValid5_0037 oppositeHistoryChunk0037 := by
  unfold oppositeAggregatePartValid5_0037 oppositeHistoryChunk0037
  decide

def oppositeAggregatePartValid6_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 38656
  | _ => True

theorem oppositeAggregatePart6_0037 :
    oppositeAggregatePartValid6_0037 oppositeHistoryChunk0037 := by
  unfold oppositeAggregatePartValid6_0037 oppositeHistoryChunk0037
  decide

def oppositeAggregatePartValid7_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 38784
  | _ => True

theorem oppositeAggregatePart7_0037 :
    oppositeAggregatePartValid7_0037 oppositeHistoryChunk0037 := by
  unfold oppositeAggregatePartValid7_0037 oppositeHistoryChunk0037
  decide

theorem oppositeRange_0037 :
    oppositeHistoryChunk0037.ResidueIndexedValid anchorHistories 5000000 18 25 37888 := by
  have h0 := oppositeAggregatePart0_0037
  simp only [oppositeAggregatePartValid0_0037, oppositeHistoryChunk0037] at h0
  have h1 := oppositeAggregatePart1_0037
  simp only [oppositeAggregatePartValid1_0037, oppositeHistoryChunk0037] at h1
  have h2 := oppositeAggregatePart2_0037
  simp only [oppositeAggregatePartValid2_0037, oppositeHistoryChunk0037] at h2
  have h3 := oppositeAggregatePart3_0037
  simp only [oppositeAggregatePartValid3_0037, oppositeHistoryChunk0037] at h3
  have h4 := oppositeAggregatePart4_0037
  simp only [oppositeAggregatePartValid4_0037, oppositeHistoryChunk0037] at h4
  have h5 := oppositeAggregatePart5_0037
  simp only [oppositeAggregatePartValid5_0037, oppositeHistoryChunk0037] at h5
  have h6 := oppositeAggregatePart6_0037
  simp only [oppositeAggregatePartValid6_0037, oppositeHistoryChunk0037] at h6
  have h7 := oppositeAggregatePart7_0037
  simp only [oppositeAggregatePartValid7_0037, oppositeHistoryChunk0037] at h7
  unfold oppositeHistoryChunk0037
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 38912
  | _ => True

theorem oppositeAggregatePart0_0038 :
    oppositeAggregatePartValid0_0038 oppositeHistoryChunk0038 := by
  unfold oppositeAggregatePartValid0_0038 oppositeHistoryChunk0038
  decide

def oppositeAggregatePartValid1_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 39040
  | _ => True

theorem oppositeAggregatePart1_0038 :
    oppositeAggregatePartValid1_0038 oppositeHistoryChunk0038 := by
  unfold oppositeAggregatePartValid1_0038 oppositeHistoryChunk0038
  decide

def oppositeAggregatePartValid2_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 39168
  | _ => True

theorem oppositeAggregatePart2_0038 :
    oppositeAggregatePartValid2_0038 oppositeHistoryChunk0038 := by
  unfold oppositeAggregatePartValid2_0038 oppositeHistoryChunk0038
  decide

def oppositeAggregatePartValid3_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 39296
  | _ => True

theorem oppositeAggregatePart3_0038 :
    oppositeAggregatePartValid3_0038 oppositeHistoryChunk0038 := by
  unfold oppositeAggregatePartValid3_0038 oppositeHistoryChunk0038
  decide

def oppositeAggregatePartValid4_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 39424
  | _ => True

theorem oppositeAggregatePart4_0038 :
    oppositeAggregatePartValid4_0038 oppositeHistoryChunk0038 := by
  unfold oppositeAggregatePartValid4_0038 oppositeHistoryChunk0038
  decide

def oppositeAggregatePartValid5_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 39552
  | _ => True

theorem oppositeAggregatePart5_0038 :
    oppositeAggregatePartValid5_0038 oppositeHistoryChunk0038 := by
  unfold oppositeAggregatePartValid5_0038 oppositeHistoryChunk0038
  decide

def oppositeAggregatePartValid6_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 39680
  | _ => True

theorem oppositeAggregatePart6_0038 :
    oppositeAggregatePartValid6_0038 oppositeHistoryChunk0038 := by
  unfold oppositeAggregatePartValid6_0038 oppositeHistoryChunk0038
  decide

def oppositeAggregatePartValid7_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 39808
  | _ => True

theorem oppositeAggregatePart7_0038 :
    oppositeAggregatePartValid7_0038 oppositeHistoryChunk0038 := by
  unfold oppositeAggregatePartValid7_0038 oppositeHistoryChunk0038
  decide

theorem oppositeRange_0038 :
    oppositeHistoryChunk0038.ResidueIndexedValid anchorHistories 5000000 18 25 38912 := by
  have h0 := oppositeAggregatePart0_0038
  simp only [oppositeAggregatePartValid0_0038, oppositeHistoryChunk0038] at h0
  have h1 := oppositeAggregatePart1_0038
  simp only [oppositeAggregatePartValid1_0038, oppositeHistoryChunk0038] at h1
  have h2 := oppositeAggregatePart2_0038
  simp only [oppositeAggregatePartValid2_0038, oppositeHistoryChunk0038] at h2
  have h3 := oppositeAggregatePart3_0038
  simp only [oppositeAggregatePartValid3_0038, oppositeHistoryChunk0038] at h3
  have h4 := oppositeAggregatePart4_0038
  simp only [oppositeAggregatePartValid4_0038, oppositeHistoryChunk0038] at h4
  have h5 := oppositeAggregatePart5_0038
  simp only [oppositeAggregatePartValid5_0038, oppositeHistoryChunk0038] at h5
  have h6 := oppositeAggregatePart6_0038
  simp only [oppositeAggregatePartValid6_0038, oppositeHistoryChunk0038] at h6
  have h7 := oppositeAggregatePart7_0038
  simp only [oppositeAggregatePartValid7_0038, oppositeHistoryChunk0038] at h7
  unfold oppositeHistoryChunk0038
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 39936
  | _ => True

theorem oppositeAggregatePart0_0039 :
    oppositeAggregatePartValid0_0039 oppositeHistoryChunk0039 := by
  unfold oppositeAggregatePartValid0_0039 oppositeHistoryChunk0039
  decide

def oppositeAggregatePartValid1_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 40064
  | _ => True

theorem oppositeAggregatePart1_0039 :
    oppositeAggregatePartValid1_0039 oppositeHistoryChunk0039 := by
  unfold oppositeAggregatePartValid1_0039 oppositeHistoryChunk0039
  decide

def oppositeAggregatePartValid2_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 40192
  | _ => True

theorem oppositeAggregatePart2_0039 :
    oppositeAggregatePartValid2_0039 oppositeHistoryChunk0039 := by
  unfold oppositeAggregatePartValid2_0039 oppositeHistoryChunk0039
  decide

def oppositeAggregatePartValid3_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 40320
  | _ => True

theorem oppositeAggregatePart3_0039 :
    oppositeAggregatePartValid3_0039 oppositeHistoryChunk0039 := by
  unfold oppositeAggregatePartValid3_0039 oppositeHistoryChunk0039
  decide

def oppositeAggregatePartValid4_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 40448
  | _ => True

theorem oppositeAggregatePart4_0039 :
    oppositeAggregatePartValid4_0039 oppositeHistoryChunk0039 := by
  unfold oppositeAggregatePartValid4_0039 oppositeHistoryChunk0039
  decide

def oppositeAggregatePartValid5_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 40576
  | _ => True

theorem oppositeAggregatePart5_0039 :
    oppositeAggregatePartValid5_0039 oppositeHistoryChunk0039 := by
  unfold oppositeAggregatePartValid5_0039 oppositeHistoryChunk0039
  decide

def oppositeAggregatePartValid6_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 40704
  | _ => True

theorem oppositeAggregatePart6_0039 :
    oppositeAggregatePartValid6_0039 oppositeHistoryChunk0039 := by
  unfold oppositeAggregatePartValid6_0039 oppositeHistoryChunk0039
  decide

def oppositeAggregatePartValid7_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 40832
  | _ => True

theorem oppositeAggregatePart7_0039 :
    oppositeAggregatePartValid7_0039 oppositeHistoryChunk0039 := by
  unfold oppositeAggregatePartValid7_0039 oppositeHistoryChunk0039
  decide

theorem oppositeRange_0039 :
    oppositeHistoryChunk0039.ResidueIndexedValid anchorHistories 5000000 18 25 39936 := by
  have h0 := oppositeAggregatePart0_0039
  simp only [oppositeAggregatePartValid0_0039, oppositeHistoryChunk0039] at h0
  have h1 := oppositeAggregatePart1_0039
  simp only [oppositeAggregatePartValid1_0039, oppositeHistoryChunk0039] at h1
  have h2 := oppositeAggregatePart2_0039
  simp only [oppositeAggregatePartValid2_0039, oppositeHistoryChunk0039] at h2
  have h3 := oppositeAggregatePart3_0039
  simp only [oppositeAggregatePartValid3_0039, oppositeHistoryChunk0039] at h3
  have h4 := oppositeAggregatePart4_0039
  simp only [oppositeAggregatePartValid4_0039, oppositeHistoryChunk0039] at h4
  have h5 := oppositeAggregatePart5_0039
  simp only [oppositeAggregatePartValid5_0039, oppositeHistoryChunk0039] at h5
  have h6 := oppositeAggregatePart6_0039
  simp only [oppositeAggregatePartValid6_0039, oppositeHistoryChunk0039] at h6
  have h7 := oppositeAggregatePart7_0039
  simp only [oppositeAggregatePartValid7_0039, oppositeHistoryChunk0039] at h7
  unfold oppositeHistoryChunk0039
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
