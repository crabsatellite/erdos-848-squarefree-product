import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0060
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0061
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0062
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0063

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0060, 0061, 0062, 0063 -/

def oppositeAggregatePartValid0_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 61440
  | _ => True

theorem oppositeAggregatePart0_0060 :
    oppositeAggregatePartValid0_0060 oppositeHistoryChunk0060 := by
  unfold oppositeAggregatePartValid0_0060 oppositeHistoryChunk0060
  decide

def oppositeAggregatePartValid1_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 61568
  | _ => True

theorem oppositeAggregatePart1_0060 :
    oppositeAggregatePartValid1_0060 oppositeHistoryChunk0060 := by
  unfold oppositeAggregatePartValid1_0060 oppositeHistoryChunk0060
  decide

def oppositeAggregatePartValid2_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 61696
  | _ => True

theorem oppositeAggregatePart2_0060 :
    oppositeAggregatePartValid2_0060 oppositeHistoryChunk0060 := by
  unfold oppositeAggregatePartValid2_0060 oppositeHistoryChunk0060
  decide

def oppositeAggregatePartValid3_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 61824
  | _ => True

theorem oppositeAggregatePart3_0060 :
    oppositeAggregatePartValid3_0060 oppositeHistoryChunk0060 := by
  unfold oppositeAggregatePartValid3_0060 oppositeHistoryChunk0060
  decide

def oppositeAggregatePartValid4_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 61952
  | _ => True

theorem oppositeAggregatePart4_0060 :
    oppositeAggregatePartValid4_0060 oppositeHistoryChunk0060 := by
  unfold oppositeAggregatePartValid4_0060 oppositeHistoryChunk0060
  decide

def oppositeAggregatePartValid5_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 62080
  | _ => True

theorem oppositeAggregatePart5_0060 :
    oppositeAggregatePartValid5_0060 oppositeHistoryChunk0060 := by
  unfold oppositeAggregatePartValid5_0060 oppositeHistoryChunk0060
  decide

def oppositeAggregatePartValid6_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 62208
  | _ => True

theorem oppositeAggregatePart6_0060 :
    oppositeAggregatePartValid6_0060 oppositeHistoryChunk0060 := by
  unfold oppositeAggregatePartValid6_0060 oppositeHistoryChunk0060
  decide

def oppositeAggregatePartValid7_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 62336
  | _ => True

theorem oppositeAggregatePart7_0060 :
    oppositeAggregatePartValid7_0060 oppositeHistoryChunk0060 := by
  unfold oppositeAggregatePartValid7_0060 oppositeHistoryChunk0060
  decide

theorem oppositeRange_0060 :
    oppositeHistoryChunk0060.ResidueIndexedValid anchorHistories 5000000 18 25 61440 := by
  have h0 := oppositeAggregatePart0_0060
  simp only [oppositeAggregatePartValid0_0060, oppositeHistoryChunk0060] at h0
  have h1 := oppositeAggregatePart1_0060
  simp only [oppositeAggregatePartValid1_0060, oppositeHistoryChunk0060] at h1
  have h2 := oppositeAggregatePart2_0060
  simp only [oppositeAggregatePartValid2_0060, oppositeHistoryChunk0060] at h2
  have h3 := oppositeAggregatePart3_0060
  simp only [oppositeAggregatePartValid3_0060, oppositeHistoryChunk0060] at h3
  have h4 := oppositeAggregatePart4_0060
  simp only [oppositeAggregatePartValid4_0060, oppositeHistoryChunk0060] at h4
  have h5 := oppositeAggregatePart5_0060
  simp only [oppositeAggregatePartValid5_0060, oppositeHistoryChunk0060] at h5
  have h6 := oppositeAggregatePart6_0060
  simp only [oppositeAggregatePartValid6_0060, oppositeHistoryChunk0060] at h6
  have h7 := oppositeAggregatePart7_0060
  simp only [oppositeAggregatePartValid7_0060, oppositeHistoryChunk0060] at h7
  unfold oppositeHistoryChunk0060
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 62464
  | _ => True

theorem oppositeAggregatePart0_0061 :
    oppositeAggregatePartValid0_0061 oppositeHistoryChunk0061 := by
  unfold oppositeAggregatePartValid0_0061 oppositeHistoryChunk0061
  decide

def oppositeAggregatePartValid1_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 62592
  | _ => True

theorem oppositeAggregatePart1_0061 :
    oppositeAggregatePartValid1_0061 oppositeHistoryChunk0061 := by
  unfold oppositeAggregatePartValid1_0061 oppositeHistoryChunk0061
  decide

def oppositeAggregatePartValid2_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 62720
  | _ => True

theorem oppositeAggregatePart2_0061 :
    oppositeAggregatePartValid2_0061 oppositeHistoryChunk0061 := by
  unfold oppositeAggregatePartValid2_0061 oppositeHistoryChunk0061
  decide

def oppositeAggregatePartValid3_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 62848
  | _ => True

theorem oppositeAggregatePart3_0061 :
    oppositeAggregatePartValid3_0061 oppositeHistoryChunk0061 := by
  unfold oppositeAggregatePartValid3_0061 oppositeHistoryChunk0061
  decide

def oppositeAggregatePartValid4_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 62976
  | _ => True

theorem oppositeAggregatePart4_0061 :
    oppositeAggregatePartValid4_0061 oppositeHistoryChunk0061 := by
  unfold oppositeAggregatePartValid4_0061 oppositeHistoryChunk0061
  decide

def oppositeAggregatePartValid5_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 63104
  | _ => True

theorem oppositeAggregatePart5_0061 :
    oppositeAggregatePartValid5_0061 oppositeHistoryChunk0061 := by
  unfold oppositeAggregatePartValid5_0061 oppositeHistoryChunk0061
  decide

def oppositeAggregatePartValid6_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 63232
  | _ => True

theorem oppositeAggregatePart6_0061 :
    oppositeAggregatePartValid6_0061 oppositeHistoryChunk0061 := by
  unfold oppositeAggregatePartValid6_0061 oppositeHistoryChunk0061
  decide

def oppositeAggregatePartValid7_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 63360
  | _ => True

theorem oppositeAggregatePart7_0061 :
    oppositeAggregatePartValid7_0061 oppositeHistoryChunk0061 := by
  unfold oppositeAggregatePartValid7_0061 oppositeHistoryChunk0061
  decide

theorem oppositeRange_0061 :
    oppositeHistoryChunk0061.ResidueIndexedValid anchorHistories 5000000 18 25 62464 := by
  have h0 := oppositeAggregatePart0_0061
  simp only [oppositeAggregatePartValid0_0061, oppositeHistoryChunk0061] at h0
  have h1 := oppositeAggregatePart1_0061
  simp only [oppositeAggregatePartValid1_0061, oppositeHistoryChunk0061] at h1
  have h2 := oppositeAggregatePart2_0061
  simp only [oppositeAggregatePartValid2_0061, oppositeHistoryChunk0061] at h2
  have h3 := oppositeAggregatePart3_0061
  simp only [oppositeAggregatePartValid3_0061, oppositeHistoryChunk0061] at h3
  have h4 := oppositeAggregatePart4_0061
  simp only [oppositeAggregatePartValid4_0061, oppositeHistoryChunk0061] at h4
  have h5 := oppositeAggregatePart5_0061
  simp only [oppositeAggregatePartValid5_0061, oppositeHistoryChunk0061] at h5
  have h6 := oppositeAggregatePart6_0061
  simp only [oppositeAggregatePartValid6_0061, oppositeHistoryChunk0061] at h6
  have h7 := oppositeAggregatePart7_0061
  simp only [oppositeAggregatePartValid7_0061, oppositeHistoryChunk0061] at h7
  unfold oppositeHistoryChunk0061
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 63488
  | _ => True

theorem oppositeAggregatePart0_0062 :
    oppositeAggregatePartValid0_0062 oppositeHistoryChunk0062 := by
  unfold oppositeAggregatePartValid0_0062 oppositeHistoryChunk0062
  decide

def oppositeAggregatePartValid1_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 63616
  | _ => True

theorem oppositeAggregatePart1_0062 :
    oppositeAggregatePartValid1_0062 oppositeHistoryChunk0062 := by
  unfold oppositeAggregatePartValid1_0062 oppositeHistoryChunk0062
  decide

def oppositeAggregatePartValid2_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 63744
  | _ => True

theorem oppositeAggregatePart2_0062 :
    oppositeAggregatePartValid2_0062 oppositeHistoryChunk0062 := by
  unfold oppositeAggregatePartValid2_0062 oppositeHistoryChunk0062
  decide

def oppositeAggregatePartValid3_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 63872
  | _ => True

theorem oppositeAggregatePart3_0062 :
    oppositeAggregatePartValid3_0062 oppositeHistoryChunk0062 := by
  unfold oppositeAggregatePartValid3_0062 oppositeHistoryChunk0062
  decide

def oppositeAggregatePartValid4_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 64000
  | _ => True

theorem oppositeAggregatePart4_0062 :
    oppositeAggregatePartValid4_0062 oppositeHistoryChunk0062 := by
  unfold oppositeAggregatePartValid4_0062 oppositeHistoryChunk0062
  decide

def oppositeAggregatePartValid5_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 64128
  | _ => True

theorem oppositeAggregatePart5_0062 :
    oppositeAggregatePartValid5_0062 oppositeHistoryChunk0062 := by
  unfold oppositeAggregatePartValid5_0062 oppositeHistoryChunk0062
  decide

def oppositeAggregatePartValid6_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 64256
  | _ => True

theorem oppositeAggregatePart6_0062 :
    oppositeAggregatePartValid6_0062 oppositeHistoryChunk0062 := by
  unfold oppositeAggregatePartValid6_0062 oppositeHistoryChunk0062
  decide

def oppositeAggregatePartValid7_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 64384
  | _ => True

theorem oppositeAggregatePart7_0062 :
    oppositeAggregatePartValid7_0062 oppositeHistoryChunk0062 := by
  unfold oppositeAggregatePartValid7_0062 oppositeHistoryChunk0062
  decide

theorem oppositeRange_0062 :
    oppositeHistoryChunk0062.ResidueIndexedValid anchorHistories 5000000 18 25 63488 := by
  have h0 := oppositeAggregatePart0_0062
  simp only [oppositeAggregatePartValid0_0062, oppositeHistoryChunk0062] at h0
  have h1 := oppositeAggregatePart1_0062
  simp only [oppositeAggregatePartValid1_0062, oppositeHistoryChunk0062] at h1
  have h2 := oppositeAggregatePart2_0062
  simp only [oppositeAggregatePartValid2_0062, oppositeHistoryChunk0062] at h2
  have h3 := oppositeAggregatePart3_0062
  simp only [oppositeAggregatePartValid3_0062, oppositeHistoryChunk0062] at h3
  have h4 := oppositeAggregatePart4_0062
  simp only [oppositeAggregatePartValid4_0062, oppositeHistoryChunk0062] at h4
  have h5 := oppositeAggregatePart5_0062
  simp only [oppositeAggregatePartValid5_0062, oppositeHistoryChunk0062] at h5
  have h6 := oppositeAggregatePart6_0062
  simp only [oppositeAggregatePartValid6_0062, oppositeHistoryChunk0062] at h6
  have h7 := oppositeAggregatePart7_0062
  simp only [oppositeAggregatePartValid7_0062, oppositeHistoryChunk0062] at h7
  unfold oppositeHistoryChunk0062
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 64512
  | _ => True

theorem oppositeAggregatePart0_0063 :
    oppositeAggregatePartValid0_0063 oppositeHistoryChunk0063 := by
  unfold oppositeAggregatePartValid0_0063 oppositeHistoryChunk0063
  decide

def oppositeAggregatePartValid1_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 64640
  | _ => True

theorem oppositeAggregatePart1_0063 :
    oppositeAggregatePartValid1_0063 oppositeHistoryChunk0063 := by
  unfold oppositeAggregatePartValid1_0063 oppositeHistoryChunk0063
  decide

def oppositeAggregatePartValid2_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 64768
  | _ => True

theorem oppositeAggregatePart2_0063 :
    oppositeAggregatePartValid2_0063 oppositeHistoryChunk0063 := by
  unfold oppositeAggregatePartValid2_0063 oppositeHistoryChunk0063
  decide

def oppositeAggregatePartValid3_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 64896
  | _ => True

theorem oppositeAggregatePart3_0063 :
    oppositeAggregatePartValid3_0063 oppositeHistoryChunk0063 := by
  unfold oppositeAggregatePartValid3_0063 oppositeHistoryChunk0063
  decide

def oppositeAggregatePartValid4_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 65024
  | _ => True

theorem oppositeAggregatePart4_0063 :
    oppositeAggregatePartValid4_0063 oppositeHistoryChunk0063 := by
  unfold oppositeAggregatePartValid4_0063 oppositeHistoryChunk0063
  decide

def oppositeAggregatePartValid5_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 65152
  | _ => True

theorem oppositeAggregatePart5_0063 :
    oppositeAggregatePartValid5_0063 oppositeHistoryChunk0063 := by
  unfold oppositeAggregatePartValid5_0063 oppositeHistoryChunk0063
  decide

def oppositeAggregatePartValid6_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 65280
  | _ => True

theorem oppositeAggregatePart6_0063 :
    oppositeAggregatePartValid6_0063 oppositeHistoryChunk0063 := by
  unfold oppositeAggregatePartValid6_0063 oppositeHistoryChunk0063
  decide

def oppositeAggregatePartValid7_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 65408
  | _ => True

theorem oppositeAggregatePart7_0063 :
    oppositeAggregatePartValid7_0063 oppositeHistoryChunk0063 := by
  unfold oppositeAggregatePartValid7_0063 oppositeHistoryChunk0063
  decide

theorem oppositeRange_0063 :
    oppositeHistoryChunk0063.ResidueIndexedValid anchorHistories 5000000 18 25 64512 := by
  have h0 := oppositeAggregatePart0_0063
  simp only [oppositeAggregatePartValid0_0063, oppositeHistoryChunk0063] at h0
  have h1 := oppositeAggregatePart1_0063
  simp only [oppositeAggregatePartValid1_0063, oppositeHistoryChunk0063] at h1
  have h2 := oppositeAggregatePart2_0063
  simp only [oppositeAggregatePartValid2_0063, oppositeHistoryChunk0063] at h2
  have h3 := oppositeAggregatePart3_0063
  simp only [oppositeAggregatePartValid3_0063, oppositeHistoryChunk0063] at h3
  have h4 := oppositeAggregatePart4_0063
  simp only [oppositeAggregatePartValid4_0063, oppositeHistoryChunk0063] at h4
  have h5 := oppositeAggregatePart5_0063
  simp only [oppositeAggregatePartValid5_0063, oppositeHistoryChunk0063] at h5
  have h6 := oppositeAggregatePart6_0063
  simp only [oppositeAggregatePartValid6_0063, oppositeHistoryChunk0063] at h6
  have h7 := oppositeAggregatePart7_0063
  simp only [oppositeAggregatePartValid7_0063, oppositeHistoryChunk0063] at h7
  unfold oppositeHistoryChunk0063
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
