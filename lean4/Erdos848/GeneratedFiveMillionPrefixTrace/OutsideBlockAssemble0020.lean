import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0020
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0021
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0022
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0023

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0020, 0021, 0022, 0023 -/

def outsideAggregateLocalPartValid0_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0020 :
    outsideAggregateLocalPartValid0_0020 outsideHistoryChunk0020 := by
  unfold outsideAggregateLocalPartValid0_0020 outsideHistoryChunk0020
  decide

def outsideAggregateMarkerPartValid0_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 20480
  | _ => True

theorem outsideAggregateMarkerPart0_0020 :
    outsideAggregateMarkerPartValid0_0020 outsideHistoryChunk0020 := by
  unfold outsideAggregateMarkerPartValid0_0020 outsideHistoryChunk0020
  decide

def outsideAggregateLocalPartValid1_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0020 :
    outsideAggregateLocalPartValid1_0020 outsideHistoryChunk0020 := by
  unfold outsideAggregateLocalPartValid1_0020 outsideHistoryChunk0020
  decide

def outsideAggregateMarkerPartValid1_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 20608
  | _ => True

theorem outsideAggregateMarkerPart1_0020 :
    outsideAggregateMarkerPartValid1_0020 outsideHistoryChunk0020 := by
  unfold outsideAggregateMarkerPartValid1_0020 outsideHistoryChunk0020
  decide

def outsideAggregateLocalPartValid2_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0020 :
    outsideAggregateLocalPartValid2_0020 outsideHistoryChunk0020 := by
  unfold outsideAggregateLocalPartValid2_0020 outsideHistoryChunk0020
  decide

def outsideAggregateMarkerPartValid2_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 20736
  | _ => True

theorem outsideAggregateMarkerPart2_0020 :
    outsideAggregateMarkerPartValid2_0020 outsideHistoryChunk0020 := by
  unfold outsideAggregateMarkerPartValid2_0020 outsideHistoryChunk0020
  decide

def outsideAggregateLocalPartValid3_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0020 :
    outsideAggregateLocalPartValid3_0020 outsideHistoryChunk0020 := by
  unfold outsideAggregateLocalPartValid3_0020 outsideHistoryChunk0020
  decide

def outsideAggregateMarkerPartValid3_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 20864
  | _ => True

theorem outsideAggregateMarkerPart3_0020 :
    outsideAggregateMarkerPartValid3_0020 outsideHistoryChunk0020 := by
  unfold outsideAggregateMarkerPartValid3_0020 outsideHistoryChunk0020
  decide

def outsideAggregateLocalPartValid4_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0020 :
    outsideAggregateLocalPartValid4_0020 outsideHistoryChunk0020 := by
  unfold outsideAggregateLocalPartValid4_0020 outsideHistoryChunk0020
  decide

def outsideAggregateMarkerPartValid4_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 20992
  | _ => True

theorem outsideAggregateMarkerPart4_0020 :
    outsideAggregateMarkerPartValid4_0020 outsideHistoryChunk0020 := by
  unfold outsideAggregateMarkerPartValid4_0020 outsideHistoryChunk0020
  decide

def outsideAggregateLocalPartValid5_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0020 :
    outsideAggregateLocalPartValid5_0020 outsideHistoryChunk0020 := by
  unfold outsideAggregateLocalPartValid5_0020 outsideHistoryChunk0020
  decide

def outsideAggregateMarkerPartValid5_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 21120
  | _ => True

theorem outsideAggregateMarkerPart5_0020 :
    outsideAggregateMarkerPartValid5_0020 outsideHistoryChunk0020 := by
  unfold outsideAggregateMarkerPartValid5_0020 outsideHistoryChunk0020
  decide

def outsideAggregateLocalPartValid6_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0020 :
    outsideAggregateLocalPartValid6_0020 outsideHistoryChunk0020 := by
  unfold outsideAggregateLocalPartValid6_0020 outsideHistoryChunk0020
  decide

def outsideAggregateMarkerPartValid6_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 21248
  | _ => True

theorem outsideAggregateMarkerPart6_0020 :
    outsideAggregateMarkerPartValid6_0020 outsideHistoryChunk0020 := by
  unfold outsideAggregateMarkerPartValid6_0020 outsideHistoryChunk0020
  decide

def outsideAggregateLocalPartValid7_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0020 :
    outsideAggregateLocalPartValid7_0020 outsideHistoryChunk0020 := by
  unfold outsideAggregateLocalPartValid7_0020 outsideHistoryChunk0020
  decide

def outsideAggregateMarkerPartValid7_0020 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 21376
  | _ => True

theorem outsideAggregateMarkerPart7_0020 :
    outsideAggregateMarkerPartValid7_0020 outsideHistoryChunk0020 := by
  unfold outsideAggregateMarkerPartValid7_0020 outsideHistoryChunk0020
  decide

theorem outsideRange_0020 :
    outsideHistoryChunk0020.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 20480 := by
  have hl0 := outsideAggregateLocalPart0_0020
  simp only [outsideAggregateLocalPartValid0_0020, outsideHistoryChunk0020] at hl0
  have hl1 := outsideAggregateLocalPart1_0020
  simp only [outsideAggregateLocalPartValid1_0020, outsideHistoryChunk0020] at hl1
  have hl2 := outsideAggregateLocalPart2_0020
  simp only [outsideAggregateLocalPartValid2_0020, outsideHistoryChunk0020] at hl2
  have hl3 := outsideAggregateLocalPart3_0020
  simp only [outsideAggregateLocalPartValid3_0020, outsideHistoryChunk0020] at hl3
  have hl4 := outsideAggregateLocalPart4_0020
  simp only [outsideAggregateLocalPartValid4_0020, outsideHistoryChunk0020] at hl4
  have hl5 := outsideAggregateLocalPart5_0020
  simp only [outsideAggregateLocalPartValid5_0020, outsideHistoryChunk0020] at hl5
  have hl6 := outsideAggregateLocalPart6_0020
  simp only [outsideAggregateLocalPartValid6_0020, outsideHistoryChunk0020] at hl6
  have hl7 := outsideAggregateLocalPart7_0020
  simp only [outsideAggregateLocalPartValid7_0020, outsideHistoryChunk0020] at hl7
  have hm0 := outsideAggregateMarkerPart0_0020
  simp only [outsideAggregateMarkerPartValid0_0020, outsideHistoryChunk0020] at hm0
  have hm1 := outsideAggregateMarkerPart1_0020
  simp only [outsideAggregateMarkerPartValid1_0020, outsideHistoryChunk0020] at hm1
  have hm2 := outsideAggregateMarkerPart2_0020
  simp only [outsideAggregateMarkerPartValid2_0020, outsideHistoryChunk0020] at hm2
  have hm3 := outsideAggregateMarkerPart3_0020
  simp only [outsideAggregateMarkerPartValid3_0020, outsideHistoryChunk0020] at hm3
  have hm4 := outsideAggregateMarkerPart4_0020
  simp only [outsideAggregateMarkerPartValid4_0020, outsideHistoryChunk0020] at hm4
  have hm5 := outsideAggregateMarkerPart5_0020
  simp only [outsideAggregateMarkerPartValid5_0020, outsideHistoryChunk0020] at hm5
  have hm6 := outsideAggregateMarkerPart6_0020
  simp only [outsideAggregateMarkerPartValid6_0020, outsideHistoryChunk0020] at hm6
  have hm7 := outsideAggregateMarkerPart7_0020
  simp only [outsideAggregateMarkerPartValid7_0020, outsideHistoryChunk0020] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0020
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0020
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0021 :
    outsideAggregateLocalPartValid0_0021 outsideHistoryChunk0021 := by
  unfold outsideAggregateLocalPartValid0_0021 outsideHistoryChunk0021
  decide

def outsideAggregateMarkerPartValid0_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 21504
  | _ => True

theorem outsideAggregateMarkerPart0_0021 :
    outsideAggregateMarkerPartValid0_0021 outsideHistoryChunk0021 := by
  unfold outsideAggregateMarkerPartValid0_0021 outsideHistoryChunk0021
  decide

def outsideAggregateLocalPartValid1_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0021 :
    outsideAggregateLocalPartValid1_0021 outsideHistoryChunk0021 := by
  unfold outsideAggregateLocalPartValid1_0021 outsideHistoryChunk0021
  decide

def outsideAggregateMarkerPartValid1_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 21632
  | _ => True

theorem outsideAggregateMarkerPart1_0021 :
    outsideAggregateMarkerPartValid1_0021 outsideHistoryChunk0021 := by
  unfold outsideAggregateMarkerPartValid1_0021 outsideHistoryChunk0021
  decide

def outsideAggregateLocalPartValid2_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0021 :
    outsideAggregateLocalPartValid2_0021 outsideHistoryChunk0021 := by
  unfold outsideAggregateLocalPartValid2_0021 outsideHistoryChunk0021
  decide

def outsideAggregateMarkerPartValid2_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 21760
  | _ => True

theorem outsideAggregateMarkerPart2_0021 :
    outsideAggregateMarkerPartValid2_0021 outsideHistoryChunk0021 := by
  unfold outsideAggregateMarkerPartValid2_0021 outsideHistoryChunk0021
  decide

def outsideAggregateLocalPartValid3_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0021 :
    outsideAggregateLocalPartValid3_0021 outsideHistoryChunk0021 := by
  unfold outsideAggregateLocalPartValid3_0021 outsideHistoryChunk0021
  decide

def outsideAggregateMarkerPartValid3_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 21888
  | _ => True

theorem outsideAggregateMarkerPart3_0021 :
    outsideAggregateMarkerPartValid3_0021 outsideHistoryChunk0021 := by
  unfold outsideAggregateMarkerPartValid3_0021 outsideHistoryChunk0021
  decide

def outsideAggregateLocalPartValid4_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0021 :
    outsideAggregateLocalPartValid4_0021 outsideHistoryChunk0021 := by
  unfold outsideAggregateLocalPartValid4_0021 outsideHistoryChunk0021
  decide

def outsideAggregateMarkerPartValid4_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 22016
  | _ => True

theorem outsideAggregateMarkerPart4_0021 :
    outsideAggregateMarkerPartValid4_0021 outsideHistoryChunk0021 := by
  unfold outsideAggregateMarkerPartValid4_0021 outsideHistoryChunk0021
  decide

def outsideAggregateLocalPartValid5_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0021 :
    outsideAggregateLocalPartValid5_0021 outsideHistoryChunk0021 := by
  unfold outsideAggregateLocalPartValid5_0021 outsideHistoryChunk0021
  decide

def outsideAggregateMarkerPartValid5_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 22144
  | _ => True

theorem outsideAggregateMarkerPart5_0021 :
    outsideAggregateMarkerPartValid5_0021 outsideHistoryChunk0021 := by
  unfold outsideAggregateMarkerPartValid5_0021 outsideHistoryChunk0021
  decide

def outsideAggregateLocalPartValid6_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0021 :
    outsideAggregateLocalPartValid6_0021 outsideHistoryChunk0021 := by
  unfold outsideAggregateLocalPartValid6_0021 outsideHistoryChunk0021
  decide

def outsideAggregateMarkerPartValid6_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 22272
  | _ => True

theorem outsideAggregateMarkerPart6_0021 :
    outsideAggregateMarkerPartValid6_0021 outsideHistoryChunk0021 := by
  unfold outsideAggregateMarkerPartValid6_0021 outsideHistoryChunk0021
  decide

def outsideAggregateLocalPartValid7_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0021 :
    outsideAggregateLocalPartValid7_0021 outsideHistoryChunk0021 := by
  unfold outsideAggregateLocalPartValid7_0021 outsideHistoryChunk0021
  decide

def outsideAggregateMarkerPartValid7_0021 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 22400
  | _ => True

theorem outsideAggregateMarkerPart7_0021 :
    outsideAggregateMarkerPartValid7_0021 outsideHistoryChunk0021 := by
  unfold outsideAggregateMarkerPartValid7_0021 outsideHistoryChunk0021
  decide

theorem outsideRange_0021 :
    outsideHistoryChunk0021.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 21504 := by
  have hl0 := outsideAggregateLocalPart0_0021
  simp only [outsideAggregateLocalPartValid0_0021, outsideHistoryChunk0021] at hl0
  have hl1 := outsideAggregateLocalPart1_0021
  simp only [outsideAggregateLocalPartValid1_0021, outsideHistoryChunk0021] at hl1
  have hl2 := outsideAggregateLocalPart2_0021
  simp only [outsideAggregateLocalPartValid2_0021, outsideHistoryChunk0021] at hl2
  have hl3 := outsideAggregateLocalPart3_0021
  simp only [outsideAggregateLocalPartValid3_0021, outsideHistoryChunk0021] at hl3
  have hl4 := outsideAggregateLocalPart4_0021
  simp only [outsideAggregateLocalPartValid4_0021, outsideHistoryChunk0021] at hl4
  have hl5 := outsideAggregateLocalPart5_0021
  simp only [outsideAggregateLocalPartValid5_0021, outsideHistoryChunk0021] at hl5
  have hl6 := outsideAggregateLocalPart6_0021
  simp only [outsideAggregateLocalPartValid6_0021, outsideHistoryChunk0021] at hl6
  have hl7 := outsideAggregateLocalPart7_0021
  simp only [outsideAggregateLocalPartValid7_0021, outsideHistoryChunk0021] at hl7
  have hm0 := outsideAggregateMarkerPart0_0021
  simp only [outsideAggregateMarkerPartValid0_0021, outsideHistoryChunk0021] at hm0
  have hm1 := outsideAggregateMarkerPart1_0021
  simp only [outsideAggregateMarkerPartValid1_0021, outsideHistoryChunk0021] at hm1
  have hm2 := outsideAggregateMarkerPart2_0021
  simp only [outsideAggregateMarkerPartValid2_0021, outsideHistoryChunk0021] at hm2
  have hm3 := outsideAggregateMarkerPart3_0021
  simp only [outsideAggregateMarkerPartValid3_0021, outsideHistoryChunk0021] at hm3
  have hm4 := outsideAggregateMarkerPart4_0021
  simp only [outsideAggregateMarkerPartValid4_0021, outsideHistoryChunk0021] at hm4
  have hm5 := outsideAggregateMarkerPart5_0021
  simp only [outsideAggregateMarkerPartValid5_0021, outsideHistoryChunk0021] at hm5
  have hm6 := outsideAggregateMarkerPart6_0021
  simp only [outsideAggregateMarkerPartValid6_0021, outsideHistoryChunk0021] at hm6
  have hm7 := outsideAggregateMarkerPart7_0021
  simp only [outsideAggregateMarkerPartValid7_0021, outsideHistoryChunk0021] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0021
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0021
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0022 :
    outsideAggregateLocalPartValid0_0022 outsideHistoryChunk0022 := by
  unfold outsideAggregateLocalPartValid0_0022 outsideHistoryChunk0022
  decide

def outsideAggregateMarkerPartValid0_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 22528
  | _ => True

theorem outsideAggregateMarkerPart0_0022 :
    outsideAggregateMarkerPartValid0_0022 outsideHistoryChunk0022 := by
  unfold outsideAggregateMarkerPartValid0_0022 outsideHistoryChunk0022
  decide

def outsideAggregateLocalPartValid1_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0022 :
    outsideAggregateLocalPartValid1_0022 outsideHistoryChunk0022 := by
  unfold outsideAggregateLocalPartValid1_0022 outsideHistoryChunk0022
  decide

def outsideAggregateMarkerPartValid1_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 22656
  | _ => True

theorem outsideAggregateMarkerPart1_0022 :
    outsideAggregateMarkerPartValid1_0022 outsideHistoryChunk0022 := by
  unfold outsideAggregateMarkerPartValid1_0022 outsideHistoryChunk0022
  decide

def outsideAggregateLocalPartValid2_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0022 :
    outsideAggregateLocalPartValid2_0022 outsideHistoryChunk0022 := by
  unfold outsideAggregateLocalPartValid2_0022 outsideHistoryChunk0022
  decide

def outsideAggregateMarkerPartValid2_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 22784
  | _ => True

theorem outsideAggregateMarkerPart2_0022 :
    outsideAggregateMarkerPartValid2_0022 outsideHistoryChunk0022 := by
  unfold outsideAggregateMarkerPartValid2_0022 outsideHistoryChunk0022
  decide

def outsideAggregateLocalPartValid3_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0022 :
    outsideAggregateLocalPartValid3_0022 outsideHistoryChunk0022 := by
  unfold outsideAggregateLocalPartValid3_0022 outsideHistoryChunk0022
  decide

def outsideAggregateMarkerPartValid3_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 22912
  | _ => True

theorem outsideAggregateMarkerPart3_0022 :
    outsideAggregateMarkerPartValid3_0022 outsideHistoryChunk0022 := by
  unfold outsideAggregateMarkerPartValid3_0022 outsideHistoryChunk0022
  decide

def outsideAggregateLocalPartValid4_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0022 :
    outsideAggregateLocalPartValid4_0022 outsideHistoryChunk0022 := by
  unfold outsideAggregateLocalPartValid4_0022 outsideHistoryChunk0022
  decide

def outsideAggregateMarkerPartValid4_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 23040
  | _ => True

theorem outsideAggregateMarkerPart4_0022 :
    outsideAggregateMarkerPartValid4_0022 outsideHistoryChunk0022 := by
  unfold outsideAggregateMarkerPartValid4_0022 outsideHistoryChunk0022
  decide

def outsideAggregateLocalPartValid5_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0022 :
    outsideAggregateLocalPartValid5_0022 outsideHistoryChunk0022 := by
  unfold outsideAggregateLocalPartValid5_0022 outsideHistoryChunk0022
  decide

def outsideAggregateMarkerPartValid5_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 23168
  | _ => True

theorem outsideAggregateMarkerPart5_0022 :
    outsideAggregateMarkerPartValid5_0022 outsideHistoryChunk0022 := by
  unfold outsideAggregateMarkerPartValid5_0022 outsideHistoryChunk0022
  decide

def outsideAggregateLocalPartValid6_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0022 :
    outsideAggregateLocalPartValid6_0022 outsideHistoryChunk0022 := by
  unfold outsideAggregateLocalPartValid6_0022 outsideHistoryChunk0022
  decide

def outsideAggregateMarkerPartValid6_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 23296
  | _ => True

theorem outsideAggregateMarkerPart6_0022 :
    outsideAggregateMarkerPartValid6_0022 outsideHistoryChunk0022 := by
  unfold outsideAggregateMarkerPartValid6_0022 outsideHistoryChunk0022
  decide

def outsideAggregateLocalPartValid7_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0022 :
    outsideAggregateLocalPartValid7_0022 outsideHistoryChunk0022 := by
  unfold outsideAggregateLocalPartValid7_0022 outsideHistoryChunk0022
  decide

def outsideAggregateMarkerPartValid7_0022 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 23424
  | _ => True

theorem outsideAggregateMarkerPart7_0022 :
    outsideAggregateMarkerPartValid7_0022 outsideHistoryChunk0022 := by
  unfold outsideAggregateMarkerPartValid7_0022 outsideHistoryChunk0022
  decide

theorem outsideRange_0022 :
    outsideHistoryChunk0022.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 22528 := by
  have hl0 := outsideAggregateLocalPart0_0022
  simp only [outsideAggregateLocalPartValid0_0022, outsideHistoryChunk0022] at hl0
  have hl1 := outsideAggregateLocalPart1_0022
  simp only [outsideAggregateLocalPartValid1_0022, outsideHistoryChunk0022] at hl1
  have hl2 := outsideAggregateLocalPart2_0022
  simp only [outsideAggregateLocalPartValid2_0022, outsideHistoryChunk0022] at hl2
  have hl3 := outsideAggregateLocalPart3_0022
  simp only [outsideAggregateLocalPartValid3_0022, outsideHistoryChunk0022] at hl3
  have hl4 := outsideAggregateLocalPart4_0022
  simp only [outsideAggregateLocalPartValid4_0022, outsideHistoryChunk0022] at hl4
  have hl5 := outsideAggregateLocalPart5_0022
  simp only [outsideAggregateLocalPartValid5_0022, outsideHistoryChunk0022] at hl5
  have hl6 := outsideAggregateLocalPart6_0022
  simp only [outsideAggregateLocalPartValid6_0022, outsideHistoryChunk0022] at hl6
  have hl7 := outsideAggregateLocalPart7_0022
  simp only [outsideAggregateLocalPartValid7_0022, outsideHistoryChunk0022] at hl7
  have hm0 := outsideAggregateMarkerPart0_0022
  simp only [outsideAggregateMarkerPartValid0_0022, outsideHistoryChunk0022] at hm0
  have hm1 := outsideAggregateMarkerPart1_0022
  simp only [outsideAggregateMarkerPartValid1_0022, outsideHistoryChunk0022] at hm1
  have hm2 := outsideAggregateMarkerPart2_0022
  simp only [outsideAggregateMarkerPartValid2_0022, outsideHistoryChunk0022] at hm2
  have hm3 := outsideAggregateMarkerPart3_0022
  simp only [outsideAggregateMarkerPartValid3_0022, outsideHistoryChunk0022] at hm3
  have hm4 := outsideAggregateMarkerPart4_0022
  simp only [outsideAggregateMarkerPartValid4_0022, outsideHistoryChunk0022] at hm4
  have hm5 := outsideAggregateMarkerPart5_0022
  simp only [outsideAggregateMarkerPartValid5_0022, outsideHistoryChunk0022] at hm5
  have hm6 := outsideAggregateMarkerPart6_0022
  simp only [outsideAggregateMarkerPartValid6_0022, outsideHistoryChunk0022] at hm6
  have hm7 := outsideAggregateMarkerPart7_0022
  simp only [outsideAggregateMarkerPartValid7_0022, outsideHistoryChunk0022] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0022
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0022
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0023 :
    outsideAggregateLocalPartValid0_0023 outsideHistoryChunk0023 := by
  unfold outsideAggregateLocalPartValid0_0023 outsideHistoryChunk0023
  decide

def outsideAggregateMarkerPartValid0_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 23552
  | _ => True

theorem outsideAggregateMarkerPart0_0023 :
    outsideAggregateMarkerPartValid0_0023 outsideHistoryChunk0023 := by
  unfold outsideAggregateMarkerPartValid0_0023 outsideHistoryChunk0023
  decide

def outsideAggregateLocalPartValid1_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0023 :
    outsideAggregateLocalPartValid1_0023 outsideHistoryChunk0023 := by
  unfold outsideAggregateLocalPartValid1_0023 outsideHistoryChunk0023
  decide

def outsideAggregateMarkerPartValid1_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 23680
  | _ => True

theorem outsideAggregateMarkerPart1_0023 :
    outsideAggregateMarkerPartValid1_0023 outsideHistoryChunk0023 := by
  unfold outsideAggregateMarkerPartValid1_0023 outsideHistoryChunk0023
  decide

def outsideAggregateLocalPartValid2_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0023 :
    outsideAggregateLocalPartValid2_0023 outsideHistoryChunk0023 := by
  unfold outsideAggregateLocalPartValid2_0023 outsideHistoryChunk0023
  decide

def outsideAggregateMarkerPartValid2_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 23808
  | _ => True

theorem outsideAggregateMarkerPart2_0023 :
    outsideAggregateMarkerPartValid2_0023 outsideHistoryChunk0023 := by
  unfold outsideAggregateMarkerPartValid2_0023 outsideHistoryChunk0023
  decide

def outsideAggregateLocalPartValid3_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0023 :
    outsideAggregateLocalPartValid3_0023 outsideHistoryChunk0023 := by
  unfold outsideAggregateLocalPartValid3_0023 outsideHistoryChunk0023
  decide

def outsideAggregateMarkerPartValid3_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 23936
  | _ => True

theorem outsideAggregateMarkerPart3_0023 :
    outsideAggregateMarkerPartValid3_0023 outsideHistoryChunk0023 := by
  unfold outsideAggregateMarkerPartValid3_0023 outsideHistoryChunk0023
  decide

def outsideAggregateLocalPartValid4_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0023 :
    outsideAggregateLocalPartValid4_0023 outsideHistoryChunk0023 := by
  unfold outsideAggregateLocalPartValid4_0023 outsideHistoryChunk0023
  decide

def outsideAggregateMarkerPartValid4_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 24064
  | _ => True

theorem outsideAggregateMarkerPart4_0023 :
    outsideAggregateMarkerPartValid4_0023 outsideHistoryChunk0023 := by
  unfold outsideAggregateMarkerPartValid4_0023 outsideHistoryChunk0023
  decide

def outsideAggregateLocalPartValid5_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0023 :
    outsideAggregateLocalPartValid5_0023 outsideHistoryChunk0023 := by
  unfold outsideAggregateLocalPartValid5_0023 outsideHistoryChunk0023
  decide

def outsideAggregateMarkerPartValid5_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 24192
  | _ => True

theorem outsideAggregateMarkerPart5_0023 :
    outsideAggregateMarkerPartValid5_0023 outsideHistoryChunk0023 := by
  unfold outsideAggregateMarkerPartValid5_0023 outsideHistoryChunk0023
  decide

def outsideAggregateLocalPartValid6_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0023 :
    outsideAggregateLocalPartValid6_0023 outsideHistoryChunk0023 := by
  unfold outsideAggregateLocalPartValid6_0023 outsideHistoryChunk0023
  decide

def outsideAggregateMarkerPartValid6_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 24320
  | _ => True

theorem outsideAggregateMarkerPart6_0023 :
    outsideAggregateMarkerPartValid6_0023 outsideHistoryChunk0023 := by
  unfold outsideAggregateMarkerPartValid6_0023 outsideHistoryChunk0023
  decide

def outsideAggregateLocalPartValid7_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0023 :
    outsideAggregateLocalPartValid7_0023 outsideHistoryChunk0023 := by
  unfold outsideAggregateLocalPartValid7_0023 outsideHistoryChunk0023
  decide

def outsideAggregateMarkerPartValid7_0023 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 24448
  | _ => True

theorem outsideAggregateMarkerPart7_0023 :
    outsideAggregateMarkerPartValid7_0023 outsideHistoryChunk0023 := by
  unfold outsideAggregateMarkerPartValid7_0023 outsideHistoryChunk0023
  decide

theorem outsideRange_0023 :
    outsideHistoryChunk0023.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 23552 := by
  have hl0 := outsideAggregateLocalPart0_0023
  simp only [outsideAggregateLocalPartValid0_0023, outsideHistoryChunk0023] at hl0
  have hl1 := outsideAggregateLocalPart1_0023
  simp only [outsideAggregateLocalPartValid1_0023, outsideHistoryChunk0023] at hl1
  have hl2 := outsideAggregateLocalPart2_0023
  simp only [outsideAggregateLocalPartValid2_0023, outsideHistoryChunk0023] at hl2
  have hl3 := outsideAggregateLocalPart3_0023
  simp only [outsideAggregateLocalPartValid3_0023, outsideHistoryChunk0023] at hl3
  have hl4 := outsideAggregateLocalPart4_0023
  simp only [outsideAggregateLocalPartValid4_0023, outsideHistoryChunk0023] at hl4
  have hl5 := outsideAggregateLocalPart5_0023
  simp only [outsideAggregateLocalPartValid5_0023, outsideHistoryChunk0023] at hl5
  have hl6 := outsideAggregateLocalPart6_0023
  simp only [outsideAggregateLocalPartValid6_0023, outsideHistoryChunk0023] at hl6
  have hl7 := outsideAggregateLocalPart7_0023
  simp only [outsideAggregateLocalPartValid7_0023, outsideHistoryChunk0023] at hl7
  have hm0 := outsideAggregateMarkerPart0_0023
  simp only [outsideAggregateMarkerPartValid0_0023, outsideHistoryChunk0023] at hm0
  have hm1 := outsideAggregateMarkerPart1_0023
  simp only [outsideAggregateMarkerPartValid1_0023, outsideHistoryChunk0023] at hm1
  have hm2 := outsideAggregateMarkerPart2_0023
  simp only [outsideAggregateMarkerPartValid2_0023, outsideHistoryChunk0023] at hm2
  have hm3 := outsideAggregateMarkerPart3_0023
  simp only [outsideAggregateMarkerPartValid3_0023, outsideHistoryChunk0023] at hm3
  have hm4 := outsideAggregateMarkerPart4_0023
  simp only [outsideAggregateMarkerPartValid4_0023, outsideHistoryChunk0023] at hm4
  have hm5 := outsideAggregateMarkerPart5_0023
  simp only [outsideAggregateMarkerPartValid5_0023, outsideHistoryChunk0023] at hm5
  have hm6 := outsideAggregateMarkerPart6_0023
  simp only [outsideAggregateMarkerPartValid6_0023, outsideHistoryChunk0023] at hm6
  have hm7 := outsideAggregateMarkerPart7_0023
  simp only [outsideAggregateMarkerPartValid7_0023, outsideHistoryChunk0023] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0023
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0023
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
