import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0056
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0057
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0058
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0059

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0056, 0057, 0058, 0059 -/

def oppositeAggregatePartValid0_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 57344
  | _ => True

theorem oppositeAggregatePart0_0056 :
    oppositeAggregatePartValid0_0056 oppositeHistoryChunk0056 := by
  unfold oppositeAggregatePartValid0_0056 oppositeHistoryChunk0056
  decide

def oppositeAggregatePartValid1_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 57472
  | _ => True

theorem oppositeAggregatePart1_0056 :
    oppositeAggregatePartValid1_0056 oppositeHistoryChunk0056 := by
  unfold oppositeAggregatePartValid1_0056 oppositeHistoryChunk0056
  decide

def oppositeAggregatePartValid2_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 57600
  | _ => True

theorem oppositeAggregatePart2_0056 :
    oppositeAggregatePartValid2_0056 oppositeHistoryChunk0056 := by
  unfold oppositeAggregatePartValid2_0056 oppositeHistoryChunk0056
  decide

def oppositeAggregatePartValid3_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 57728
  | _ => True

theorem oppositeAggregatePart3_0056 :
    oppositeAggregatePartValid3_0056 oppositeHistoryChunk0056 := by
  unfold oppositeAggregatePartValid3_0056 oppositeHistoryChunk0056
  decide

def oppositeAggregatePartValid4_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 57856
  | _ => True

theorem oppositeAggregatePart4_0056 :
    oppositeAggregatePartValid4_0056 oppositeHistoryChunk0056 := by
  unfold oppositeAggregatePartValid4_0056 oppositeHistoryChunk0056
  decide

def oppositeAggregatePartValid5_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 57984
  | _ => True

theorem oppositeAggregatePart5_0056 :
    oppositeAggregatePartValid5_0056 oppositeHistoryChunk0056 := by
  unfold oppositeAggregatePartValid5_0056 oppositeHistoryChunk0056
  decide

def oppositeAggregatePartValid6_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 58112
  | _ => True

theorem oppositeAggregatePart6_0056 :
    oppositeAggregatePartValid6_0056 oppositeHistoryChunk0056 := by
  unfold oppositeAggregatePartValid6_0056 oppositeHistoryChunk0056
  decide

def oppositeAggregatePartValid7_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 58240
  | _ => True

theorem oppositeAggregatePart7_0056 :
    oppositeAggregatePartValid7_0056 oppositeHistoryChunk0056 := by
  unfold oppositeAggregatePartValid7_0056 oppositeHistoryChunk0056
  decide

theorem oppositeRange_0056 :
    oppositeHistoryChunk0056.ResidueIndexedValid anchorHistories 5000000 18 25 57344 := by
  have h0 := oppositeAggregatePart0_0056
  simp only [oppositeAggregatePartValid0_0056, oppositeHistoryChunk0056] at h0
  have h1 := oppositeAggregatePart1_0056
  simp only [oppositeAggregatePartValid1_0056, oppositeHistoryChunk0056] at h1
  have h2 := oppositeAggregatePart2_0056
  simp only [oppositeAggregatePartValid2_0056, oppositeHistoryChunk0056] at h2
  have h3 := oppositeAggregatePart3_0056
  simp only [oppositeAggregatePartValid3_0056, oppositeHistoryChunk0056] at h3
  have h4 := oppositeAggregatePart4_0056
  simp only [oppositeAggregatePartValid4_0056, oppositeHistoryChunk0056] at h4
  have h5 := oppositeAggregatePart5_0056
  simp only [oppositeAggregatePartValid5_0056, oppositeHistoryChunk0056] at h5
  have h6 := oppositeAggregatePart6_0056
  simp only [oppositeAggregatePartValid6_0056, oppositeHistoryChunk0056] at h6
  have h7 := oppositeAggregatePart7_0056
  simp only [oppositeAggregatePartValid7_0056, oppositeHistoryChunk0056] at h7
  unfold oppositeHistoryChunk0056
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 58368
  | _ => True

theorem oppositeAggregatePart0_0057 :
    oppositeAggregatePartValid0_0057 oppositeHistoryChunk0057 := by
  unfold oppositeAggregatePartValid0_0057 oppositeHistoryChunk0057
  decide

def oppositeAggregatePartValid1_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 58496
  | _ => True

theorem oppositeAggregatePart1_0057 :
    oppositeAggregatePartValid1_0057 oppositeHistoryChunk0057 := by
  unfold oppositeAggregatePartValid1_0057 oppositeHistoryChunk0057
  decide

def oppositeAggregatePartValid2_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 58624
  | _ => True

theorem oppositeAggregatePart2_0057 :
    oppositeAggregatePartValid2_0057 oppositeHistoryChunk0057 := by
  unfold oppositeAggregatePartValid2_0057 oppositeHistoryChunk0057
  decide

def oppositeAggregatePartValid3_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 58752
  | _ => True

theorem oppositeAggregatePart3_0057 :
    oppositeAggregatePartValid3_0057 oppositeHistoryChunk0057 := by
  unfold oppositeAggregatePartValid3_0057 oppositeHistoryChunk0057
  decide

def oppositeAggregatePartValid4_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 58880
  | _ => True

theorem oppositeAggregatePart4_0057 :
    oppositeAggregatePartValid4_0057 oppositeHistoryChunk0057 := by
  unfold oppositeAggregatePartValid4_0057 oppositeHistoryChunk0057
  decide

def oppositeAggregatePartValid5_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 59008
  | _ => True

theorem oppositeAggregatePart5_0057 :
    oppositeAggregatePartValid5_0057 oppositeHistoryChunk0057 := by
  unfold oppositeAggregatePartValid5_0057 oppositeHistoryChunk0057
  decide

def oppositeAggregatePartValid6_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 59136
  | _ => True

theorem oppositeAggregatePart6_0057 :
    oppositeAggregatePartValid6_0057 oppositeHistoryChunk0057 := by
  unfold oppositeAggregatePartValid6_0057 oppositeHistoryChunk0057
  decide

def oppositeAggregatePartValid7_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 59264
  | _ => True

theorem oppositeAggregatePart7_0057 :
    oppositeAggregatePartValid7_0057 oppositeHistoryChunk0057 := by
  unfold oppositeAggregatePartValid7_0057 oppositeHistoryChunk0057
  decide

theorem oppositeRange_0057 :
    oppositeHistoryChunk0057.ResidueIndexedValid anchorHistories 5000000 18 25 58368 := by
  have h0 := oppositeAggregatePart0_0057
  simp only [oppositeAggregatePartValid0_0057, oppositeHistoryChunk0057] at h0
  have h1 := oppositeAggregatePart1_0057
  simp only [oppositeAggregatePartValid1_0057, oppositeHistoryChunk0057] at h1
  have h2 := oppositeAggregatePart2_0057
  simp only [oppositeAggregatePartValid2_0057, oppositeHistoryChunk0057] at h2
  have h3 := oppositeAggregatePart3_0057
  simp only [oppositeAggregatePartValid3_0057, oppositeHistoryChunk0057] at h3
  have h4 := oppositeAggregatePart4_0057
  simp only [oppositeAggregatePartValid4_0057, oppositeHistoryChunk0057] at h4
  have h5 := oppositeAggregatePart5_0057
  simp only [oppositeAggregatePartValid5_0057, oppositeHistoryChunk0057] at h5
  have h6 := oppositeAggregatePart6_0057
  simp only [oppositeAggregatePartValid6_0057, oppositeHistoryChunk0057] at h6
  have h7 := oppositeAggregatePart7_0057
  simp only [oppositeAggregatePartValid7_0057, oppositeHistoryChunk0057] at h7
  unfold oppositeHistoryChunk0057
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 59392
  | _ => True

theorem oppositeAggregatePart0_0058 :
    oppositeAggregatePartValid0_0058 oppositeHistoryChunk0058 := by
  unfold oppositeAggregatePartValid0_0058 oppositeHistoryChunk0058
  decide

def oppositeAggregatePartValid1_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 59520
  | _ => True

theorem oppositeAggregatePart1_0058 :
    oppositeAggregatePartValid1_0058 oppositeHistoryChunk0058 := by
  unfold oppositeAggregatePartValid1_0058 oppositeHistoryChunk0058
  decide

def oppositeAggregatePartValid2_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 59648
  | _ => True

theorem oppositeAggregatePart2_0058 :
    oppositeAggregatePartValid2_0058 oppositeHistoryChunk0058 := by
  unfold oppositeAggregatePartValid2_0058 oppositeHistoryChunk0058
  decide

def oppositeAggregatePartValid3_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 59776
  | _ => True

theorem oppositeAggregatePart3_0058 :
    oppositeAggregatePartValid3_0058 oppositeHistoryChunk0058 := by
  unfold oppositeAggregatePartValid3_0058 oppositeHistoryChunk0058
  decide

def oppositeAggregatePartValid4_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 59904
  | _ => True

theorem oppositeAggregatePart4_0058 :
    oppositeAggregatePartValid4_0058 oppositeHistoryChunk0058 := by
  unfold oppositeAggregatePartValid4_0058 oppositeHistoryChunk0058
  decide

def oppositeAggregatePartValid5_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 60032
  | _ => True

theorem oppositeAggregatePart5_0058 :
    oppositeAggregatePartValid5_0058 oppositeHistoryChunk0058 := by
  unfold oppositeAggregatePartValid5_0058 oppositeHistoryChunk0058
  decide

def oppositeAggregatePartValid6_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 60160
  | _ => True

theorem oppositeAggregatePart6_0058 :
    oppositeAggregatePartValid6_0058 oppositeHistoryChunk0058 := by
  unfold oppositeAggregatePartValid6_0058 oppositeHistoryChunk0058
  decide

def oppositeAggregatePartValid7_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 60288
  | _ => True

theorem oppositeAggregatePart7_0058 :
    oppositeAggregatePartValid7_0058 oppositeHistoryChunk0058 := by
  unfold oppositeAggregatePartValid7_0058 oppositeHistoryChunk0058
  decide

theorem oppositeRange_0058 :
    oppositeHistoryChunk0058.ResidueIndexedValid anchorHistories 5000000 18 25 59392 := by
  have h0 := oppositeAggregatePart0_0058
  simp only [oppositeAggregatePartValid0_0058, oppositeHistoryChunk0058] at h0
  have h1 := oppositeAggregatePart1_0058
  simp only [oppositeAggregatePartValid1_0058, oppositeHistoryChunk0058] at h1
  have h2 := oppositeAggregatePart2_0058
  simp only [oppositeAggregatePartValid2_0058, oppositeHistoryChunk0058] at h2
  have h3 := oppositeAggregatePart3_0058
  simp only [oppositeAggregatePartValid3_0058, oppositeHistoryChunk0058] at h3
  have h4 := oppositeAggregatePart4_0058
  simp only [oppositeAggregatePartValid4_0058, oppositeHistoryChunk0058] at h4
  have h5 := oppositeAggregatePart5_0058
  simp only [oppositeAggregatePartValid5_0058, oppositeHistoryChunk0058] at h5
  have h6 := oppositeAggregatePart6_0058
  simp only [oppositeAggregatePartValid6_0058, oppositeHistoryChunk0058] at h6
  have h7 := oppositeAggregatePart7_0058
  simp only [oppositeAggregatePartValid7_0058, oppositeHistoryChunk0058] at h7
  unfold oppositeHistoryChunk0058
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 60416
  | _ => True

theorem oppositeAggregatePart0_0059 :
    oppositeAggregatePartValid0_0059 oppositeHistoryChunk0059 := by
  unfold oppositeAggregatePartValid0_0059 oppositeHistoryChunk0059
  decide

def oppositeAggregatePartValid1_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 60544
  | _ => True

theorem oppositeAggregatePart1_0059 :
    oppositeAggregatePartValid1_0059 oppositeHistoryChunk0059 := by
  unfold oppositeAggregatePartValid1_0059 oppositeHistoryChunk0059
  decide

def oppositeAggregatePartValid2_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 60672
  | _ => True

theorem oppositeAggregatePart2_0059 :
    oppositeAggregatePartValid2_0059 oppositeHistoryChunk0059 := by
  unfold oppositeAggregatePartValid2_0059 oppositeHistoryChunk0059
  decide

def oppositeAggregatePartValid3_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 60800
  | _ => True

theorem oppositeAggregatePart3_0059 :
    oppositeAggregatePartValid3_0059 oppositeHistoryChunk0059 := by
  unfold oppositeAggregatePartValid3_0059 oppositeHistoryChunk0059
  decide

def oppositeAggregatePartValid4_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 60928
  | _ => True

theorem oppositeAggregatePart4_0059 :
    oppositeAggregatePartValid4_0059 oppositeHistoryChunk0059 := by
  unfold oppositeAggregatePartValid4_0059 oppositeHistoryChunk0059
  decide

def oppositeAggregatePartValid5_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 61056
  | _ => True

theorem oppositeAggregatePart5_0059 :
    oppositeAggregatePartValid5_0059 oppositeHistoryChunk0059 := by
  unfold oppositeAggregatePartValid5_0059 oppositeHistoryChunk0059
  decide

def oppositeAggregatePartValid6_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 61184
  | _ => True

theorem oppositeAggregatePart6_0059 :
    oppositeAggregatePartValid6_0059 oppositeHistoryChunk0059 := by
  unfold oppositeAggregatePartValid6_0059 oppositeHistoryChunk0059
  decide

def oppositeAggregatePartValid7_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 61312
  | _ => True

theorem oppositeAggregatePart7_0059 :
    oppositeAggregatePartValid7_0059 oppositeHistoryChunk0059 := by
  unfold oppositeAggregatePartValid7_0059 oppositeHistoryChunk0059
  decide

theorem oppositeRange_0059 :
    oppositeHistoryChunk0059.ResidueIndexedValid anchorHistories 5000000 18 25 60416 := by
  have h0 := oppositeAggregatePart0_0059
  simp only [oppositeAggregatePartValid0_0059, oppositeHistoryChunk0059] at h0
  have h1 := oppositeAggregatePart1_0059
  simp only [oppositeAggregatePartValid1_0059, oppositeHistoryChunk0059] at h1
  have h2 := oppositeAggregatePart2_0059
  simp only [oppositeAggregatePartValid2_0059, oppositeHistoryChunk0059] at h2
  have h3 := oppositeAggregatePart3_0059
  simp only [oppositeAggregatePartValid3_0059, oppositeHistoryChunk0059] at h3
  have h4 := oppositeAggregatePart4_0059
  simp only [oppositeAggregatePartValid4_0059, oppositeHistoryChunk0059] at h4
  have h5 := oppositeAggregatePart5_0059
  simp only [oppositeAggregatePartValid5_0059, oppositeHistoryChunk0059] at h5
  have h6 := oppositeAggregatePart6_0059
  simp only [oppositeAggregatePartValid6_0059, oppositeHistoryChunk0059] at h6
  have h7 := oppositeAggregatePart7_0059
  simp only [oppositeAggregatePartValid7_0059, oppositeHistoryChunk0059] at h7
  unfold oppositeHistoryChunk0059
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
