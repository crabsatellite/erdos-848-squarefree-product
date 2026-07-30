import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0064
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0065
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0066
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0067

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0064, 0065, 0066, 0067 -/

def oppositeAggregatePartValid0_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 65536
  | _ => True

theorem oppositeAggregatePart0_0064 :
    oppositeAggregatePartValid0_0064 oppositeHistoryChunk0064 := by
  unfold oppositeAggregatePartValid0_0064 oppositeHistoryChunk0064
  decide

def oppositeAggregatePartValid1_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 65664
  | _ => True

theorem oppositeAggregatePart1_0064 :
    oppositeAggregatePartValid1_0064 oppositeHistoryChunk0064 := by
  unfold oppositeAggregatePartValid1_0064 oppositeHistoryChunk0064
  decide

def oppositeAggregatePartValid2_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 65792
  | _ => True

theorem oppositeAggregatePart2_0064 :
    oppositeAggregatePartValid2_0064 oppositeHistoryChunk0064 := by
  unfold oppositeAggregatePartValid2_0064 oppositeHistoryChunk0064
  decide

def oppositeAggregatePartValid3_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 65920
  | _ => True

theorem oppositeAggregatePart3_0064 :
    oppositeAggregatePartValid3_0064 oppositeHistoryChunk0064 := by
  unfold oppositeAggregatePartValid3_0064 oppositeHistoryChunk0064
  decide

def oppositeAggregatePartValid4_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 66048
  | _ => True

theorem oppositeAggregatePart4_0064 :
    oppositeAggregatePartValid4_0064 oppositeHistoryChunk0064 := by
  unfold oppositeAggregatePartValid4_0064 oppositeHistoryChunk0064
  decide

def oppositeAggregatePartValid5_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 66176
  | _ => True

theorem oppositeAggregatePart5_0064 :
    oppositeAggregatePartValid5_0064 oppositeHistoryChunk0064 := by
  unfold oppositeAggregatePartValid5_0064 oppositeHistoryChunk0064
  decide

def oppositeAggregatePartValid6_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 66304
  | _ => True

theorem oppositeAggregatePart6_0064 :
    oppositeAggregatePartValid6_0064 oppositeHistoryChunk0064 := by
  unfold oppositeAggregatePartValid6_0064 oppositeHistoryChunk0064
  decide

def oppositeAggregatePartValid7_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 66432
  | _ => True

theorem oppositeAggregatePart7_0064 :
    oppositeAggregatePartValid7_0064 oppositeHistoryChunk0064 := by
  unfold oppositeAggregatePartValid7_0064 oppositeHistoryChunk0064
  decide

theorem oppositeRange_0064 :
    oppositeHistoryChunk0064.ResidueIndexedValid anchorHistories 5000000 18 25 65536 := by
  have h0 := oppositeAggregatePart0_0064
  simp only [oppositeAggregatePartValid0_0064, oppositeHistoryChunk0064] at h0
  have h1 := oppositeAggregatePart1_0064
  simp only [oppositeAggregatePartValid1_0064, oppositeHistoryChunk0064] at h1
  have h2 := oppositeAggregatePart2_0064
  simp only [oppositeAggregatePartValid2_0064, oppositeHistoryChunk0064] at h2
  have h3 := oppositeAggregatePart3_0064
  simp only [oppositeAggregatePartValid3_0064, oppositeHistoryChunk0064] at h3
  have h4 := oppositeAggregatePart4_0064
  simp only [oppositeAggregatePartValid4_0064, oppositeHistoryChunk0064] at h4
  have h5 := oppositeAggregatePart5_0064
  simp only [oppositeAggregatePartValid5_0064, oppositeHistoryChunk0064] at h5
  have h6 := oppositeAggregatePart6_0064
  simp only [oppositeAggregatePartValid6_0064, oppositeHistoryChunk0064] at h6
  have h7 := oppositeAggregatePart7_0064
  simp only [oppositeAggregatePartValid7_0064, oppositeHistoryChunk0064] at h7
  unfold oppositeHistoryChunk0064
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 66560
  | _ => True

theorem oppositeAggregatePart0_0065 :
    oppositeAggregatePartValid0_0065 oppositeHistoryChunk0065 := by
  unfold oppositeAggregatePartValid0_0065 oppositeHistoryChunk0065
  decide

def oppositeAggregatePartValid1_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 66688
  | _ => True

theorem oppositeAggregatePart1_0065 :
    oppositeAggregatePartValid1_0065 oppositeHistoryChunk0065 := by
  unfold oppositeAggregatePartValid1_0065 oppositeHistoryChunk0065
  decide

def oppositeAggregatePartValid2_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 66816
  | _ => True

theorem oppositeAggregatePart2_0065 :
    oppositeAggregatePartValid2_0065 oppositeHistoryChunk0065 := by
  unfold oppositeAggregatePartValid2_0065 oppositeHistoryChunk0065
  decide

def oppositeAggregatePartValid3_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 66944
  | _ => True

theorem oppositeAggregatePart3_0065 :
    oppositeAggregatePartValid3_0065 oppositeHistoryChunk0065 := by
  unfold oppositeAggregatePartValid3_0065 oppositeHistoryChunk0065
  decide

def oppositeAggregatePartValid4_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 67072
  | _ => True

theorem oppositeAggregatePart4_0065 :
    oppositeAggregatePartValid4_0065 oppositeHistoryChunk0065 := by
  unfold oppositeAggregatePartValid4_0065 oppositeHistoryChunk0065
  decide

def oppositeAggregatePartValid5_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 67200
  | _ => True

theorem oppositeAggregatePart5_0065 :
    oppositeAggregatePartValid5_0065 oppositeHistoryChunk0065 := by
  unfold oppositeAggregatePartValid5_0065 oppositeHistoryChunk0065
  decide

def oppositeAggregatePartValid6_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 67328
  | _ => True

theorem oppositeAggregatePart6_0065 :
    oppositeAggregatePartValid6_0065 oppositeHistoryChunk0065 := by
  unfold oppositeAggregatePartValid6_0065 oppositeHistoryChunk0065
  decide

def oppositeAggregatePartValid7_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 67456
  | _ => True

theorem oppositeAggregatePart7_0065 :
    oppositeAggregatePartValid7_0065 oppositeHistoryChunk0065 := by
  unfold oppositeAggregatePartValid7_0065 oppositeHistoryChunk0065
  decide

theorem oppositeRange_0065 :
    oppositeHistoryChunk0065.ResidueIndexedValid anchorHistories 5000000 18 25 66560 := by
  have h0 := oppositeAggregatePart0_0065
  simp only [oppositeAggregatePartValid0_0065, oppositeHistoryChunk0065] at h0
  have h1 := oppositeAggregatePart1_0065
  simp only [oppositeAggregatePartValid1_0065, oppositeHistoryChunk0065] at h1
  have h2 := oppositeAggregatePart2_0065
  simp only [oppositeAggregatePartValid2_0065, oppositeHistoryChunk0065] at h2
  have h3 := oppositeAggregatePart3_0065
  simp only [oppositeAggregatePartValid3_0065, oppositeHistoryChunk0065] at h3
  have h4 := oppositeAggregatePart4_0065
  simp only [oppositeAggregatePartValid4_0065, oppositeHistoryChunk0065] at h4
  have h5 := oppositeAggregatePart5_0065
  simp only [oppositeAggregatePartValid5_0065, oppositeHistoryChunk0065] at h5
  have h6 := oppositeAggregatePart6_0065
  simp only [oppositeAggregatePartValid6_0065, oppositeHistoryChunk0065] at h6
  have h7 := oppositeAggregatePart7_0065
  simp only [oppositeAggregatePartValid7_0065, oppositeHistoryChunk0065] at h7
  unfold oppositeHistoryChunk0065
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 67584
  | _ => True

theorem oppositeAggregatePart0_0066 :
    oppositeAggregatePartValid0_0066 oppositeHistoryChunk0066 := by
  unfold oppositeAggregatePartValid0_0066 oppositeHistoryChunk0066
  decide

def oppositeAggregatePartValid1_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 67712
  | _ => True

theorem oppositeAggregatePart1_0066 :
    oppositeAggregatePartValid1_0066 oppositeHistoryChunk0066 := by
  unfold oppositeAggregatePartValid1_0066 oppositeHistoryChunk0066
  decide

def oppositeAggregatePartValid2_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 67840
  | _ => True

theorem oppositeAggregatePart2_0066 :
    oppositeAggregatePartValid2_0066 oppositeHistoryChunk0066 := by
  unfold oppositeAggregatePartValid2_0066 oppositeHistoryChunk0066
  decide

def oppositeAggregatePartValid3_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 67968
  | _ => True

theorem oppositeAggregatePart3_0066 :
    oppositeAggregatePartValid3_0066 oppositeHistoryChunk0066 := by
  unfold oppositeAggregatePartValid3_0066 oppositeHistoryChunk0066
  decide

def oppositeAggregatePartValid4_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 68096
  | _ => True

theorem oppositeAggregatePart4_0066 :
    oppositeAggregatePartValid4_0066 oppositeHistoryChunk0066 := by
  unfold oppositeAggregatePartValid4_0066 oppositeHistoryChunk0066
  decide

def oppositeAggregatePartValid5_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 68224
  | _ => True

theorem oppositeAggregatePart5_0066 :
    oppositeAggregatePartValid5_0066 oppositeHistoryChunk0066 := by
  unfold oppositeAggregatePartValid5_0066 oppositeHistoryChunk0066
  decide

def oppositeAggregatePartValid6_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 68352
  | _ => True

theorem oppositeAggregatePart6_0066 :
    oppositeAggregatePartValid6_0066 oppositeHistoryChunk0066 := by
  unfold oppositeAggregatePartValid6_0066 oppositeHistoryChunk0066
  decide

def oppositeAggregatePartValid7_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 68480
  | _ => True

theorem oppositeAggregatePart7_0066 :
    oppositeAggregatePartValid7_0066 oppositeHistoryChunk0066 := by
  unfold oppositeAggregatePartValid7_0066 oppositeHistoryChunk0066
  decide

theorem oppositeRange_0066 :
    oppositeHistoryChunk0066.ResidueIndexedValid anchorHistories 5000000 18 25 67584 := by
  have h0 := oppositeAggregatePart0_0066
  simp only [oppositeAggregatePartValid0_0066, oppositeHistoryChunk0066] at h0
  have h1 := oppositeAggregatePart1_0066
  simp only [oppositeAggregatePartValid1_0066, oppositeHistoryChunk0066] at h1
  have h2 := oppositeAggregatePart2_0066
  simp only [oppositeAggregatePartValid2_0066, oppositeHistoryChunk0066] at h2
  have h3 := oppositeAggregatePart3_0066
  simp only [oppositeAggregatePartValid3_0066, oppositeHistoryChunk0066] at h3
  have h4 := oppositeAggregatePart4_0066
  simp only [oppositeAggregatePartValid4_0066, oppositeHistoryChunk0066] at h4
  have h5 := oppositeAggregatePart5_0066
  simp only [oppositeAggregatePartValid5_0066, oppositeHistoryChunk0066] at h5
  have h6 := oppositeAggregatePart6_0066
  simp only [oppositeAggregatePartValid6_0066, oppositeHistoryChunk0066] at h6
  have h7 := oppositeAggregatePart7_0066
  simp only [oppositeAggregatePartValid7_0066, oppositeHistoryChunk0066] at h7
  unfold oppositeHistoryChunk0066
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 68608
  | _ => True

theorem oppositeAggregatePart0_0067 :
    oppositeAggregatePartValid0_0067 oppositeHistoryChunk0067 := by
  unfold oppositeAggregatePartValid0_0067 oppositeHistoryChunk0067
  decide

def oppositeAggregatePartValid1_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 68736
  | _ => True

theorem oppositeAggregatePart1_0067 :
    oppositeAggregatePartValid1_0067 oppositeHistoryChunk0067 := by
  unfold oppositeAggregatePartValid1_0067 oppositeHistoryChunk0067
  decide

def oppositeAggregatePartValid2_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 68864
  | _ => True

theorem oppositeAggregatePart2_0067 :
    oppositeAggregatePartValid2_0067 oppositeHistoryChunk0067 := by
  unfold oppositeAggregatePartValid2_0067 oppositeHistoryChunk0067
  decide

def oppositeAggregatePartValid3_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 68992
  | _ => True

theorem oppositeAggregatePart3_0067 :
    oppositeAggregatePartValid3_0067 oppositeHistoryChunk0067 := by
  unfold oppositeAggregatePartValid3_0067 oppositeHistoryChunk0067
  decide

def oppositeAggregatePartValid4_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 69120
  | _ => True

theorem oppositeAggregatePart4_0067 :
    oppositeAggregatePartValid4_0067 oppositeHistoryChunk0067 := by
  unfold oppositeAggregatePartValid4_0067 oppositeHistoryChunk0067
  decide

def oppositeAggregatePartValid5_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 69248
  | _ => True

theorem oppositeAggregatePart5_0067 :
    oppositeAggregatePartValid5_0067 oppositeHistoryChunk0067 := by
  unfold oppositeAggregatePartValid5_0067 oppositeHistoryChunk0067
  decide

def oppositeAggregatePartValid6_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 69376
  | _ => True

theorem oppositeAggregatePart6_0067 :
    oppositeAggregatePartValid6_0067 oppositeHistoryChunk0067 := by
  unfold oppositeAggregatePartValid6_0067 oppositeHistoryChunk0067
  decide

def oppositeAggregatePartValid7_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 69504
  | _ => True

theorem oppositeAggregatePart7_0067 :
    oppositeAggregatePartValid7_0067 oppositeHistoryChunk0067 := by
  unfold oppositeAggregatePartValid7_0067 oppositeHistoryChunk0067
  decide

theorem oppositeRange_0067 :
    oppositeHistoryChunk0067.ResidueIndexedValid anchorHistories 5000000 18 25 68608 := by
  have h0 := oppositeAggregatePart0_0067
  simp only [oppositeAggregatePartValid0_0067, oppositeHistoryChunk0067] at h0
  have h1 := oppositeAggregatePart1_0067
  simp only [oppositeAggregatePartValid1_0067, oppositeHistoryChunk0067] at h1
  have h2 := oppositeAggregatePart2_0067
  simp only [oppositeAggregatePartValid2_0067, oppositeHistoryChunk0067] at h2
  have h3 := oppositeAggregatePart3_0067
  simp only [oppositeAggregatePartValid3_0067, oppositeHistoryChunk0067] at h3
  have h4 := oppositeAggregatePart4_0067
  simp only [oppositeAggregatePartValid4_0067, oppositeHistoryChunk0067] at h4
  have h5 := oppositeAggregatePart5_0067
  simp only [oppositeAggregatePartValid5_0067, oppositeHistoryChunk0067] at h5
  have h6 := oppositeAggregatePart6_0067
  simp only [oppositeAggregatePartValid6_0067, oppositeHistoryChunk0067] at h6
  have h7 := oppositeAggregatePart7_0067
  simp only [oppositeAggregatePartValid7_0067, oppositeHistoryChunk0067] at h7
  unfold oppositeHistoryChunk0067
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
