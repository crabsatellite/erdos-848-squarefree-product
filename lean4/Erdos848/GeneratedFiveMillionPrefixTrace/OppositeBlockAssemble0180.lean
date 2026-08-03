import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0180
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0181
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0182
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0183

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0180, 0181, 0182, 0183 -/

def oppositeAggregatePartValid0_0180 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 184320
  | _ => True

theorem oppositeAggregatePart0_0180 :
    oppositeAggregatePartValid0_0180 oppositeHistoryChunk0180 := by
  unfold oppositeAggregatePartValid0_0180 oppositeHistoryChunk0180
  decide

def oppositeAggregatePartValid1_0180 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 184448
  | _ => True

theorem oppositeAggregatePart1_0180 :
    oppositeAggregatePartValid1_0180 oppositeHistoryChunk0180 := by
  unfold oppositeAggregatePartValid1_0180 oppositeHistoryChunk0180
  decide

def oppositeAggregatePartValid2_0180 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 184576
  | _ => True

theorem oppositeAggregatePart2_0180 :
    oppositeAggregatePartValid2_0180 oppositeHistoryChunk0180 := by
  unfold oppositeAggregatePartValid2_0180 oppositeHistoryChunk0180
  decide

def oppositeAggregatePartValid3_0180 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 184704
  | _ => True

theorem oppositeAggregatePart3_0180 :
    oppositeAggregatePartValid3_0180 oppositeHistoryChunk0180 := by
  unfold oppositeAggregatePartValid3_0180 oppositeHistoryChunk0180
  decide

def oppositeAggregatePartValid4_0180 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 184832
  | _ => True

theorem oppositeAggregatePart4_0180 :
    oppositeAggregatePartValid4_0180 oppositeHistoryChunk0180 := by
  unfold oppositeAggregatePartValid4_0180 oppositeHistoryChunk0180
  decide

def oppositeAggregatePartValid5_0180 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 184960
  | _ => True

theorem oppositeAggregatePart5_0180 :
    oppositeAggregatePartValid5_0180 oppositeHistoryChunk0180 := by
  unfold oppositeAggregatePartValid5_0180 oppositeHistoryChunk0180
  decide

def oppositeAggregatePartValid6_0180 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 185088
  | _ => True

theorem oppositeAggregatePart6_0180 :
    oppositeAggregatePartValid6_0180 oppositeHistoryChunk0180 := by
  unfold oppositeAggregatePartValid6_0180 oppositeHistoryChunk0180
  decide

def oppositeAggregatePartValid7_0180 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 185216
  | _ => True

theorem oppositeAggregatePart7_0180 :
    oppositeAggregatePartValid7_0180 oppositeHistoryChunk0180 := by
  unfold oppositeAggregatePartValid7_0180 oppositeHistoryChunk0180
  decide

theorem oppositeRange_0180 :
    oppositeHistoryChunk0180.ResidueIndexedValid anchorHistories 5000000 18 25 184320 := by
  have h0 := oppositeAggregatePart0_0180
  simp only [oppositeAggregatePartValid0_0180, oppositeHistoryChunk0180] at h0
  have h1 := oppositeAggregatePart1_0180
  simp only [oppositeAggregatePartValid1_0180, oppositeHistoryChunk0180] at h1
  have h2 := oppositeAggregatePart2_0180
  simp only [oppositeAggregatePartValid2_0180, oppositeHistoryChunk0180] at h2
  have h3 := oppositeAggregatePart3_0180
  simp only [oppositeAggregatePartValid3_0180, oppositeHistoryChunk0180] at h3
  have h4 := oppositeAggregatePart4_0180
  simp only [oppositeAggregatePartValid4_0180, oppositeHistoryChunk0180] at h4
  have h5 := oppositeAggregatePart5_0180
  simp only [oppositeAggregatePartValid5_0180, oppositeHistoryChunk0180] at h5
  have h6 := oppositeAggregatePart6_0180
  simp only [oppositeAggregatePartValid6_0180, oppositeHistoryChunk0180] at h6
  have h7 := oppositeAggregatePart7_0180
  simp only [oppositeAggregatePartValid7_0180, oppositeHistoryChunk0180] at h7
  unfold oppositeHistoryChunk0180
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0181 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 185344
  | _ => True

theorem oppositeAggregatePart0_0181 :
    oppositeAggregatePartValid0_0181 oppositeHistoryChunk0181 := by
  unfold oppositeAggregatePartValid0_0181 oppositeHistoryChunk0181
  decide

def oppositeAggregatePartValid1_0181 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 185472
  | _ => True

theorem oppositeAggregatePart1_0181 :
    oppositeAggregatePartValid1_0181 oppositeHistoryChunk0181 := by
  unfold oppositeAggregatePartValid1_0181 oppositeHistoryChunk0181
  decide

def oppositeAggregatePartValid2_0181 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 185600
  | _ => True

theorem oppositeAggregatePart2_0181 :
    oppositeAggregatePartValid2_0181 oppositeHistoryChunk0181 := by
  unfold oppositeAggregatePartValid2_0181 oppositeHistoryChunk0181
  decide

def oppositeAggregatePartValid3_0181 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 185728
  | _ => True

theorem oppositeAggregatePart3_0181 :
    oppositeAggregatePartValid3_0181 oppositeHistoryChunk0181 := by
  unfold oppositeAggregatePartValid3_0181 oppositeHistoryChunk0181
  decide

def oppositeAggregatePartValid4_0181 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 185856
  | _ => True

theorem oppositeAggregatePart4_0181 :
    oppositeAggregatePartValid4_0181 oppositeHistoryChunk0181 := by
  unfold oppositeAggregatePartValid4_0181 oppositeHistoryChunk0181
  decide

def oppositeAggregatePartValid5_0181 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 185984
  | _ => True

theorem oppositeAggregatePart5_0181 :
    oppositeAggregatePartValid5_0181 oppositeHistoryChunk0181 := by
  unfold oppositeAggregatePartValid5_0181 oppositeHistoryChunk0181
  decide

def oppositeAggregatePartValid6_0181 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 186112
  | _ => True

theorem oppositeAggregatePart6_0181 :
    oppositeAggregatePartValid6_0181 oppositeHistoryChunk0181 := by
  unfold oppositeAggregatePartValid6_0181 oppositeHistoryChunk0181
  decide

def oppositeAggregatePartValid7_0181 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 186240
  | _ => True

theorem oppositeAggregatePart7_0181 :
    oppositeAggregatePartValid7_0181 oppositeHistoryChunk0181 := by
  unfold oppositeAggregatePartValid7_0181 oppositeHistoryChunk0181
  decide

theorem oppositeRange_0181 :
    oppositeHistoryChunk0181.ResidueIndexedValid anchorHistories 5000000 18 25 185344 := by
  have h0 := oppositeAggregatePart0_0181
  simp only [oppositeAggregatePartValid0_0181, oppositeHistoryChunk0181] at h0
  have h1 := oppositeAggregatePart1_0181
  simp only [oppositeAggregatePartValid1_0181, oppositeHistoryChunk0181] at h1
  have h2 := oppositeAggregatePart2_0181
  simp only [oppositeAggregatePartValid2_0181, oppositeHistoryChunk0181] at h2
  have h3 := oppositeAggregatePart3_0181
  simp only [oppositeAggregatePartValid3_0181, oppositeHistoryChunk0181] at h3
  have h4 := oppositeAggregatePart4_0181
  simp only [oppositeAggregatePartValid4_0181, oppositeHistoryChunk0181] at h4
  have h5 := oppositeAggregatePart5_0181
  simp only [oppositeAggregatePartValid5_0181, oppositeHistoryChunk0181] at h5
  have h6 := oppositeAggregatePart6_0181
  simp only [oppositeAggregatePartValid6_0181, oppositeHistoryChunk0181] at h6
  have h7 := oppositeAggregatePart7_0181
  simp only [oppositeAggregatePartValid7_0181, oppositeHistoryChunk0181] at h7
  unfold oppositeHistoryChunk0181
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0182 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 186368
  | _ => True

theorem oppositeAggregatePart0_0182 :
    oppositeAggregatePartValid0_0182 oppositeHistoryChunk0182 := by
  unfold oppositeAggregatePartValid0_0182 oppositeHistoryChunk0182
  decide

def oppositeAggregatePartValid1_0182 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 186496
  | _ => True

theorem oppositeAggregatePart1_0182 :
    oppositeAggregatePartValid1_0182 oppositeHistoryChunk0182 := by
  unfold oppositeAggregatePartValid1_0182 oppositeHistoryChunk0182
  decide

def oppositeAggregatePartValid2_0182 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 186624
  | _ => True

theorem oppositeAggregatePart2_0182 :
    oppositeAggregatePartValid2_0182 oppositeHistoryChunk0182 := by
  unfold oppositeAggregatePartValid2_0182 oppositeHistoryChunk0182
  decide

def oppositeAggregatePartValid3_0182 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 186752
  | _ => True

theorem oppositeAggregatePart3_0182 :
    oppositeAggregatePartValid3_0182 oppositeHistoryChunk0182 := by
  unfold oppositeAggregatePartValid3_0182 oppositeHistoryChunk0182
  decide

def oppositeAggregatePartValid4_0182 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 186880
  | _ => True

theorem oppositeAggregatePart4_0182 :
    oppositeAggregatePartValid4_0182 oppositeHistoryChunk0182 := by
  unfold oppositeAggregatePartValid4_0182 oppositeHistoryChunk0182
  decide

def oppositeAggregatePartValid5_0182 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 187008
  | _ => True

theorem oppositeAggregatePart5_0182 :
    oppositeAggregatePartValid5_0182 oppositeHistoryChunk0182 := by
  unfold oppositeAggregatePartValid5_0182 oppositeHistoryChunk0182
  decide

def oppositeAggregatePartValid6_0182 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 187136
  | _ => True

theorem oppositeAggregatePart6_0182 :
    oppositeAggregatePartValid6_0182 oppositeHistoryChunk0182 := by
  unfold oppositeAggregatePartValid6_0182 oppositeHistoryChunk0182
  decide

def oppositeAggregatePartValid7_0182 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 187264
  | _ => True

theorem oppositeAggregatePart7_0182 :
    oppositeAggregatePartValid7_0182 oppositeHistoryChunk0182 := by
  unfold oppositeAggregatePartValid7_0182 oppositeHistoryChunk0182
  decide

theorem oppositeRange_0182 :
    oppositeHistoryChunk0182.ResidueIndexedValid anchorHistories 5000000 18 25 186368 := by
  have h0 := oppositeAggregatePart0_0182
  simp only [oppositeAggregatePartValid0_0182, oppositeHistoryChunk0182] at h0
  have h1 := oppositeAggregatePart1_0182
  simp only [oppositeAggregatePartValid1_0182, oppositeHistoryChunk0182] at h1
  have h2 := oppositeAggregatePart2_0182
  simp only [oppositeAggregatePartValid2_0182, oppositeHistoryChunk0182] at h2
  have h3 := oppositeAggregatePart3_0182
  simp only [oppositeAggregatePartValid3_0182, oppositeHistoryChunk0182] at h3
  have h4 := oppositeAggregatePart4_0182
  simp only [oppositeAggregatePartValid4_0182, oppositeHistoryChunk0182] at h4
  have h5 := oppositeAggregatePart5_0182
  simp only [oppositeAggregatePartValid5_0182, oppositeHistoryChunk0182] at h5
  have h6 := oppositeAggregatePart6_0182
  simp only [oppositeAggregatePartValid6_0182, oppositeHistoryChunk0182] at h6
  have h7 := oppositeAggregatePart7_0182
  simp only [oppositeAggregatePartValid7_0182, oppositeHistoryChunk0182] at h7
  unfold oppositeHistoryChunk0182
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0183 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 187392
  | _ => True

theorem oppositeAggregatePart0_0183 :
    oppositeAggregatePartValid0_0183 oppositeHistoryChunk0183 := by
  unfold oppositeAggregatePartValid0_0183 oppositeHistoryChunk0183
  decide

def oppositeAggregatePartValid1_0183 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 187520
  | _ => True

theorem oppositeAggregatePart1_0183 :
    oppositeAggregatePartValid1_0183 oppositeHistoryChunk0183 := by
  unfold oppositeAggregatePartValid1_0183 oppositeHistoryChunk0183
  decide

def oppositeAggregatePartValid2_0183 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 187648
  | _ => True

theorem oppositeAggregatePart2_0183 :
    oppositeAggregatePartValid2_0183 oppositeHistoryChunk0183 := by
  unfold oppositeAggregatePartValid2_0183 oppositeHistoryChunk0183
  decide

def oppositeAggregatePartValid3_0183 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 187776
  | _ => True

theorem oppositeAggregatePart3_0183 :
    oppositeAggregatePartValid3_0183 oppositeHistoryChunk0183 := by
  unfold oppositeAggregatePartValid3_0183 oppositeHistoryChunk0183
  decide

def oppositeAggregatePartValid4_0183 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 187904
  | _ => True

theorem oppositeAggregatePart4_0183 :
    oppositeAggregatePartValid4_0183 oppositeHistoryChunk0183 := by
  unfold oppositeAggregatePartValid4_0183 oppositeHistoryChunk0183
  decide

def oppositeAggregatePartValid5_0183 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 188032
  | _ => True

theorem oppositeAggregatePart5_0183 :
    oppositeAggregatePartValid5_0183 oppositeHistoryChunk0183 := by
  unfold oppositeAggregatePartValid5_0183 oppositeHistoryChunk0183
  decide

def oppositeAggregatePartValid6_0183 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 188160
  | _ => True

theorem oppositeAggregatePart6_0183 :
    oppositeAggregatePartValid6_0183 oppositeHistoryChunk0183 := by
  unfold oppositeAggregatePartValid6_0183 oppositeHistoryChunk0183
  decide

def oppositeAggregatePartValid7_0183 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 188288
  | _ => True

theorem oppositeAggregatePart7_0183 :
    oppositeAggregatePartValid7_0183 oppositeHistoryChunk0183 := by
  unfold oppositeAggregatePartValid7_0183 oppositeHistoryChunk0183
  decide

theorem oppositeRange_0183 :
    oppositeHistoryChunk0183.ResidueIndexedValid anchorHistories 5000000 18 25 187392 := by
  have h0 := oppositeAggregatePart0_0183
  simp only [oppositeAggregatePartValid0_0183, oppositeHistoryChunk0183] at h0
  have h1 := oppositeAggregatePart1_0183
  simp only [oppositeAggregatePartValid1_0183, oppositeHistoryChunk0183] at h1
  have h2 := oppositeAggregatePart2_0183
  simp only [oppositeAggregatePartValid2_0183, oppositeHistoryChunk0183] at h2
  have h3 := oppositeAggregatePart3_0183
  simp only [oppositeAggregatePartValid3_0183, oppositeHistoryChunk0183] at h3
  have h4 := oppositeAggregatePart4_0183
  simp only [oppositeAggregatePartValid4_0183, oppositeHistoryChunk0183] at h4
  have h5 := oppositeAggregatePart5_0183
  simp only [oppositeAggregatePartValid5_0183, oppositeHistoryChunk0183] at h5
  have h6 := oppositeAggregatePart6_0183
  simp only [oppositeAggregatePartValid6_0183, oppositeHistoryChunk0183] at h6
  have h7 := oppositeAggregatePart7_0183
  simp only [oppositeAggregatePartValid7_0183, oppositeHistoryChunk0183] at h7
  unfold oppositeHistoryChunk0183
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
