import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0020
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0021
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0022
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0023

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0020, 0021, 0022, 0023 -/

def oppositeAggregatePartValid0_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 20480
  | _ => True

theorem oppositeAggregatePart0_0020 :
    oppositeAggregatePartValid0_0020 oppositeHistoryChunk0020 := by
  unfold oppositeAggregatePartValid0_0020 oppositeHistoryChunk0020
  decide

def oppositeAggregatePartValid1_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 20608
  | _ => True

theorem oppositeAggregatePart1_0020 :
    oppositeAggregatePartValid1_0020 oppositeHistoryChunk0020 := by
  unfold oppositeAggregatePartValid1_0020 oppositeHistoryChunk0020
  decide

def oppositeAggregatePartValid2_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 20736
  | _ => True

theorem oppositeAggregatePart2_0020 :
    oppositeAggregatePartValid2_0020 oppositeHistoryChunk0020 := by
  unfold oppositeAggregatePartValid2_0020 oppositeHistoryChunk0020
  decide

def oppositeAggregatePartValid3_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 20864
  | _ => True

theorem oppositeAggregatePart3_0020 :
    oppositeAggregatePartValid3_0020 oppositeHistoryChunk0020 := by
  unfold oppositeAggregatePartValid3_0020 oppositeHistoryChunk0020
  decide

def oppositeAggregatePartValid4_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 20992
  | _ => True

theorem oppositeAggregatePart4_0020 :
    oppositeAggregatePartValid4_0020 oppositeHistoryChunk0020 := by
  unfold oppositeAggregatePartValid4_0020 oppositeHistoryChunk0020
  decide

def oppositeAggregatePartValid5_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 21120
  | _ => True

theorem oppositeAggregatePart5_0020 :
    oppositeAggregatePartValid5_0020 oppositeHistoryChunk0020 := by
  unfold oppositeAggregatePartValid5_0020 oppositeHistoryChunk0020
  decide

def oppositeAggregatePartValid6_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 21248
  | _ => True

theorem oppositeAggregatePart6_0020 :
    oppositeAggregatePartValid6_0020 oppositeHistoryChunk0020 := by
  unfold oppositeAggregatePartValid6_0020 oppositeHistoryChunk0020
  decide

def oppositeAggregatePartValid7_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 21376
  | _ => True

theorem oppositeAggregatePart7_0020 :
    oppositeAggregatePartValid7_0020 oppositeHistoryChunk0020 := by
  unfold oppositeAggregatePartValid7_0020 oppositeHistoryChunk0020
  decide

theorem oppositeRange_0020 :
    oppositeHistoryChunk0020.ResidueIndexedValid anchorHistories 5000000 18 25 20480 := by
  have h0 := oppositeAggregatePart0_0020
  simp only [oppositeAggregatePartValid0_0020, oppositeHistoryChunk0020] at h0
  have h1 := oppositeAggregatePart1_0020
  simp only [oppositeAggregatePartValid1_0020, oppositeHistoryChunk0020] at h1
  have h2 := oppositeAggregatePart2_0020
  simp only [oppositeAggregatePartValid2_0020, oppositeHistoryChunk0020] at h2
  have h3 := oppositeAggregatePart3_0020
  simp only [oppositeAggregatePartValid3_0020, oppositeHistoryChunk0020] at h3
  have h4 := oppositeAggregatePart4_0020
  simp only [oppositeAggregatePartValid4_0020, oppositeHistoryChunk0020] at h4
  have h5 := oppositeAggregatePart5_0020
  simp only [oppositeAggregatePartValid5_0020, oppositeHistoryChunk0020] at h5
  have h6 := oppositeAggregatePart6_0020
  simp only [oppositeAggregatePartValid6_0020, oppositeHistoryChunk0020] at h6
  have h7 := oppositeAggregatePart7_0020
  simp only [oppositeAggregatePartValid7_0020, oppositeHistoryChunk0020] at h7
  unfold oppositeHistoryChunk0020
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 21504
  | _ => True

theorem oppositeAggregatePart0_0021 :
    oppositeAggregatePartValid0_0021 oppositeHistoryChunk0021 := by
  unfold oppositeAggregatePartValid0_0021 oppositeHistoryChunk0021
  decide

def oppositeAggregatePartValid1_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 21632
  | _ => True

theorem oppositeAggregatePart1_0021 :
    oppositeAggregatePartValid1_0021 oppositeHistoryChunk0021 := by
  unfold oppositeAggregatePartValid1_0021 oppositeHistoryChunk0021
  decide

def oppositeAggregatePartValid2_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 21760
  | _ => True

theorem oppositeAggregatePart2_0021 :
    oppositeAggregatePartValid2_0021 oppositeHistoryChunk0021 := by
  unfold oppositeAggregatePartValid2_0021 oppositeHistoryChunk0021
  decide

def oppositeAggregatePartValid3_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 21888
  | _ => True

theorem oppositeAggregatePart3_0021 :
    oppositeAggregatePartValid3_0021 oppositeHistoryChunk0021 := by
  unfold oppositeAggregatePartValid3_0021 oppositeHistoryChunk0021
  decide

def oppositeAggregatePartValid4_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 22016
  | _ => True

theorem oppositeAggregatePart4_0021 :
    oppositeAggregatePartValid4_0021 oppositeHistoryChunk0021 := by
  unfold oppositeAggregatePartValid4_0021 oppositeHistoryChunk0021
  decide

def oppositeAggregatePartValid5_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 22144
  | _ => True

theorem oppositeAggregatePart5_0021 :
    oppositeAggregatePartValid5_0021 oppositeHistoryChunk0021 := by
  unfold oppositeAggregatePartValid5_0021 oppositeHistoryChunk0021
  decide

def oppositeAggregatePartValid6_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 22272
  | _ => True

theorem oppositeAggregatePart6_0021 :
    oppositeAggregatePartValid6_0021 oppositeHistoryChunk0021 := by
  unfold oppositeAggregatePartValid6_0021 oppositeHistoryChunk0021
  decide

def oppositeAggregatePartValid7_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 22400
  | _ => True

theorem oppositeAggregatePart7_0021 :
    oppositeAggregatePartValid7_0021 oppositeHistoryChunk0021 := by
  unfold oppositeAggregatePartValid7_0021 oppositeHistoryChunk0021
  decide

theorem oppositeRange_0021 :
    oppositeHistoryChunk0021.ResidueIndexedValid anchorHistories 5000000 18 25 21504 := by
  have h0 := oppositeAggregatePart0_0021
  simp only [oppositeAggregatePartValid0_0021, oppositeHistoryChunk0021] at h0
  have h1 := oppositeAggregatePart1_0021
  simp only [oppositeAggregatePartValid1_0021, oppositeHistoryChunk0021] at h1
  have h2 := oppositeAggregatePart2_0021
  simp only [oppositeAggregatePartValid2_0021, oppositeHistoryChunk0021] at h2
  have h3 := oppositeAggregatePart3_0021
  simp only [oppositeAggregatePartValid3_0021, oppositeHistoryChunk0021] at h3
  have h4 := oppositeAggregatePart4_0021
  simp only [oppositeAggregatePartValid4_0021, oppositeHistoryChunk0021] at h4
  have h5 := oppositeAggregatePart5_0021
  simp only [oppositeAggregatePartValid5_0021, oppositeHistoryChunk0021] at h5
  have h6 := oppositeAggregatePart6_0021
  simp only [oppositeAggregatePartValid6_0021, oppositeHistoryChunk0021] at h6
  have h7 := oppositeAggregatePart7_0021
  simp only [oppositeAggregatePartValid7_0021, oppositeHistoryChunk0021] at h7
  unfold oppositeHistoryChunk0021
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 22528
  | _ => True

theorem oppositeAggregatePart0_0022 :
    oppositeAggregatePartValid0_0022 oppositeHistoryChunk0022 := by
  unfold oppositeAggregatePartValid0_0022 oppositeHistoryChunk0022
  decide

def oppositeAggregatePartValid1_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 22656
  | _ => True

theorem oppositeAggregatePart1_0022 :
    oppositeAggregatePartValid1_0022 oppositeHistoryChunk0022 := by
  unfold oppositeAggregatePartValid1_0022 oppositeHistoryChunk0022
  decide

def oppositeAggregatePartValid2_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 22784
  | _ => True

theorem oppositeAggregatePart2_0022 :
    oppositeAggregatePartValid2_0022 oppositeHistoryChunk0022 := by
  unfold oppositeAggregatePartValid2_0022 oppositeHistoryChunk0022
  decide

def oppositeAggregatePartValid3_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 22912
  | _ => True

theorem oppositeAggregatePart3_0022 :
    oppositeAggregatePartValid3_0022 oppositeHistoryChunk0022 := by
  unfold oppositeAggregatePartValid3_0022 oppositeHistoryChunk0022
  decide

def oppositeAggregatePartValid4_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 23040
  | _ => True

theorem oppositeAggregatePart4_0022 :
    oppositeAggregatePartValid4_0022 oppositeHistoryChunk0022 := by
  unfold oppositeAggregatePartValid4_0022 oppositeHistoryChunk0022
  decide

def oppositeAggregatePartValid5_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 23168
  | _ => True

theorem oppositeAggregatePart5_0022 :
    oppositeAggregatePartValid5_0022 oppositeHistoryChunk0022 := by
  unfold oppositeAggregatePartValid5_0022 oppositeHistoryChunk0022
  decide

def oppositeAggregatePartValid6_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 23296
  | _ => True

theorem oppositeAggregatePart6_0022 :
    oppositeAggregatePartValid6_0022 oppositeHistoryChunk0022 := by
  unfold oppositeAggregatePartValid6_0022 oppositeHistoryChunk0022
  decide

def oppositeAggregatePartValid7_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 23424
  | _ => True

theorem oppositeAggregatePart7_0022 :
    oppositeAggregatePartValid7_0022 oppositeHistoryChunk0022 := by
  unfold oppositeAggregatePartValid7_0022 oppositeHistoryChunk0022
  decide

theorem oppositeRange_0022 :
    oppositeHistoryChunk0022.ResidueIndexedValid anchorHistories 5000000 18 25 22528 := by
  have h0 := oppositeAggregatePart0_0022
  simp only [oppositeAggregatePartValid0_0022, oppositeHistoryChunk0022] at h0
  have h1 := oppositeAggregatePart1_0022
  simp only [oppositeAggregatePartValid1_0022, oppositeHistoryChunk0022] at h1
  have h2 := oppositeAggregatePart2_0022
  simp only [oppositeAggregatePartValid2_0022, oppositeHistoryChunk0022] at h2
  have h3 := oppositeAggregatePart3_0022
  simp only [oppositeAggregatePartValid3_0022, oppositeHistoryChunk0022] at h3
  have h4 := oppositeAggregatePart4_0022
  simp only [oppositeAggregatePartValid4_0022, oppositeHistoryChunk0022] at h4
  have h5 := oppositeAggregatePart5_0022
  simp only [oppositeAggregatePartValid5_0022, oppositeHistoryChunk0022] at h5
  have h6 := oppositeAggregatePart6_0022
  simp only [oppositeAggregatePartValid6_0022, oppositeHistoryChunk0022] at h6
  have h7 := oppositeAggregatePart7_0022
  simp only [oppositeAggregatePartValid7_0022, oppositeHistoryChunk0022] at h7
  unfold oppositeHistoryChunk0022
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 23552
  | _ => True

theorem oppositeAggregatePart0_0023 :
    oppositeAggregatePartValid0_0023 oppositeHistoryChunk0023 := by
  unfold oppositeAggregatePartValid0_0023 oppositeHistoryChunk0023
  decide

def oppositeAggregatePartValid1_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 23680
  | _ => True

theorem oppositeAggregatePart1_0023 :
    oppositeAggregatePartValid1_0023 oppositeHistoryChunk0023 := by
  unfold oppositeAggregatePartValid1_0023 oppositeHistoryChunk0023
  decide

def oppositeAggregatePartValid2_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 23808
  | _ => True

theorem oppositeAggregatePart2_0023 :
    oppositeAggregatePartValid2_0023 oppositeHistoryChunk0023 := by
  unfold oppositeAggregatePartValid2_0023 oppositeHistoryChunk0023
  decide

def oppositeAggregatePartValid3_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 23936
  | _ => True

theorem oppositeAggregatePart3_0023 :
    oppositeAggregatePartValid3_0023 oppositeHistoryChunk0023 := by
  unfold oppositeAggregatePartValid3_0023 oppositeHistoryChunk0023
  decide

def oppositeAggregatePartValid4_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 24064
  | _ => True

theorem oppositeAggregatePart4_0023 :
    oppositeAggregatePartValid4_0023 oppositeHistoryChunk0023 := by
  unfold oppositeAggregatePartValid4_0023 oppositeHistoryChunk0023
  decide

def oppositeAggregatePartValid5_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 24192
  | _ => True

theorem oppositeAggregatePart5_0023 :
    oppositeAggregatePartValid5_0023 oppositeHistoryChunk0023 := by
  unfold oppositeAggregatePartValid5_0023 oppositeHistoryChunk0023
  decide

def oppositeAggregatePartValid6_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 24320
  | _ => True

theorem oppositeAggregatePart6_0023 :
    oppositeAggregatePartValid6_0023 oppositeHistoryChunk0023 := by
  unfold oppositeAggregatePartValid6_0023 oppositeHistoryChunk0023
  decide

def oppositeAggregatePartValid7_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 24448
  | _ => True

theorem oppositeAggregatePart7_0023 :
    oppositeAggregatePartValid7_0023 oppositeHistoryChunk0023 := by
  unfold oppositeAggregatePartValid7_0023 oppositeHistoryChunk0023
  decide

theorem oppositeRange_0023 :
    oppositeHistoryChunk0023.ResidueIndexedValid anchorHistories 5000000 18 25 23552 := by
  have h0 := oppositeAggregatePart0_0023
  simp only [oppositeAggregatePartValid0_0023, oppositeHistoryChunk0023] at h0
  have h1 := oppositeAggregatePart1_0023
  simp only [oppositeAggregatePartValid1_0023, oppositeHistoryChunk0023] at h1
  have h2 := oppositeAggregatePart2_0023
  simp only [oppositeAggregatePartValid2_0023, oppositeHistoryChunk0023] at h2
  have h3 := oppositeAggregatePart3_0023
  simp only [oppositeAggregatePartValid3_0023, oppositeHistoryChunk0023] at h3
  have h4 := oppositeAggregatePart4_0023
  simp only [oppositeAggregatePartValid4_0023, oppositeHistoryChunk0023] at h4
  have h5 := oppositeAggregatePart5_0023
  simp only [oppositeAggregatePartValid5_0023, oppositeHistoryChunk0023] at h5
  have h6 := oppositeAggregatePart6_0023
  simp only [oppositeAggregatePartValid6_0023, oppositeHistoryChunk0023] at h6
  have h7 := oppositeAggregatePart7_0023
  simp only [oppositeAggregatePartValid7_0023, oppositeHistoryChunk0023] at h7
  unfold oppositeHistoryChunk0023
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
