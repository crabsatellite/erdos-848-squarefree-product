import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0068
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0069
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0070
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0071

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0068, 0069, 0070, 0071 -/

def outsideAggregateLocalPartValid0_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0068 :
    outsideAggregateLocalPartValid0_0068 outsideHistoryChunk0068 := by
  unfold outsideAggregateLocalPartValid0_0068 outsideHistoryChunk0068
  decide

def outsideAggregateMarkerPartValid0_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 69632
  | _ => True

theorem outsideAggregateMarkerPart0_0068 :
    outsideAggregateMarkerPartValid0_0068 outsideHistoryChunk0068 := by
  unfold outsideAggregateMarkerPartValid0_0068 outsideHistoryChunk0068
  decide

def outsideAggregateLocalPartValid1_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0068 :
    outsideAggregateLocalPartValid1_0068 outsideHistoryChunk0068 := by
  unfold outsideAggregateLocalPartValid1_0068 outsideHistoryChunk0068
  decide

def outsideAggregateMarkerPartValid1_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 69760
  | _ => True

theorem outsideAggregateMarkerPart1_0068 :
    outsideAggregateMarkerPartValid1_0068 outsideHistoryChunk0068 := by
  unfold outsideAggregateMarkerPartValid1_0068 outsideHistoryChunk0068
  decide

def outsideAggregateLocalPartValid2_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0068 :
    outsideAggregateLocalPartValid2_0068 outsideHistoryChunk0068 := by
  unfold outsideAggregateLocalPartValid2_0068 outsideHistoryChunk0068
  decide

def outsideAggregateMarkerPartValid2_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 69888
  | _ => True

theorem outsideAggregateMarkerPart2_0068 :
    outsideAggregateMarkerPartValid2_0068 outsideHistoryChunk0068 := by
  unfold outsideAggregateMarkerPartValid2_0068 outsideHistoryChunk0068
  decide

def outsideAggregateLocalPartValid3_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0068 :
    outsideAggregateLocalPartValid3_0068 outsideHistoryChunk0068 := by
  unfold outsideAggregateLocalPartValid3_0068 outsideHistoryChunk0068
  decide

def outsideAggregateMarkerPartValid3_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 70016
  | _ => True

theorem outsideAggregateMarkerPart3_0068 :
    outsideAggregateMarkerPartValid3_0068 outsideHistoryChunk0068 := by
  unfold outsideAggregateMarkerPartValid3_0068 outsideHistoryChunk0068
  decide

def outsideAggregateLocalPartValid4_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0068 :
    outsideAggregateLocalPartValid4_0068 outsideHistoryChunk0068 := by
  unfold outsideAggregateLocalPartValid4_0068 outsideHistoryChunk0068
  decide

def outsideAggregateMarkerPartValid4_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 70144
  | _ => True

theorem outsideAggregateMarkerPart4_0068 :
    outsideAggregateMarkerPartValid4_0068 outsideHistoryChunk0068 := by
  unfold outsideAggregateMarkerPartValid4_0068 outsideHistoryChunk0068
  decide

def outsideAggregateLocalPartValid5_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0068 :
    outsideAggregateLocalPartValid5_0068 outsideHistoryChunk0068 := by
  unfold outsideAggregateLocalPartValid5_0068 outsideHistoryChunk0068
  decide

def outsideAggregateMarkerPartValid5_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 70272
  | _ => True

theorem outsideAggregateMarkerPart5_0068 :
    outsideAggregateMarkerPartValid5_0068 outsideHistoryChunk0068 := by
  unfold outsideAggregateMarkerPartValid5_0068 outsideHistoryChunk0068
  decide

def outsideAggregateLocalPartValid6_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0068 :
    outsideAggregateLocalPartValid6_0068 outsideHistoryChunk0068 := by
  unfold outsideAggregateLocalPartValid6_0068 outsideHistoryChunk0068
  decide

def outsideAggregateMarkerPartValid6_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 70400
  | _ => True

theorem outsideAggregateMarkerPart6_0068 :
    outsideAggregateMarkerPartValid6_0068 outsideHistoryChunk0068 := by
  unfold outsideAggregateMarkerPartValid6_0068 outsideHistoryChunk0068
  decide

def outsideAggregateLocalPartValid7_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0068 :
    outsideAggregateLocalPartValid7_0068 outsideHistoryChunk0068 := by
  unfold outsideAggregateLocalPartValid7_0068 outsideHistoryChunk0068
  decide

def outsideAggregateMarkerPartValid7_0068 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 70528
  | _ => True

theorem outsideAggregateMarkerPart7_0068 :
    outsideAggregateMarkerPartValid7_0068 outsideHistoryChunk0068 := by
  unfold outsideAggregateMarkerPartValid7_0068 outsideHistoryChunk0068
  decide

theorem outsideRange_0068 :
    outsideHistoryChunk0068.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 69632 := by
  have hl0 := outsideAggregateLocalPart0_0068
  simp only [outsideAggregateLocalPartValid0_0068, outsideHistoryChunk0068] at hl0
  have hl1 := outsideAggregateLocalPart1_0068
  simp only [outsideAggregateLocalPartValid1_0068, outsideHistoryChunk0068] at hl1
  have hl2 := outsideAggregateLocalPart2_0068
  simp only [outsideAggregateLocalPartValid2_0068, outsideHistoryChunk0068] at hl2
  have hl3 := outsideAggregateLocalPart3_0068
  simp only [outsideAggregateLocalPartValid3_0068, outsideHistoryChunk0068] at hl3
  have hl4 := outsideAggregateLocalPart4_0068
  simp only [outsideAggregateLocalPartValid4_0068, outsideHistoryChunk0068] at hl4
  have hl5 := outsideAggregateLocalPart5_0068
  simp only [outsideAggregateLocalPartValid5_0068, outsideHistoryChunk0068] at hl5
  have hl6 := outsideAggregateLocalPart6_0068
  simp only [outsideAggregateLocalPartValid6_0068, outsideHistoryChunk0068] at hl6
  have hl7 := outsideAggregateLocalPart7_0068
  simp only [outsideAggregateLocalPartValid7_0068, outsideHistoryChunk0068] at hl7
  have hm0 := outsideAggregateMarkerPart0_0068
  simp only [outsideAggregateMarkerPartValid0_0068, outsideHistoryChunk0068] at hm0
  have hm1 := outsideAggregateMarkerPart1_0068
  simp only [outsideAggregateMarkerPartValid1_0068, outsideHistoryChunk0068] at hm1
  have hm2 := outsideAggregateMarkerPart2_0068
  simp only [outsideAggregateMarkerPartValid2_0068, outsideHistoryChunk0068] at hm2
  have hm3 := outsideAggregateMarkerPart3_0068
  simp only [outsideAggregateMarkerPartValid3_0068, outsideHistoryChunk0068] at hm3
  have hm4 := outsideAggregateMarkerPart4_0068
  simp only [outsideAggregateMarkerPartValid4_0068, outsideHistoryChunk0068] at hm4
  have hm5 := outsideAggregateMarkerPart5_0068
  simp only [outsideAggregateMarkerPartValid5_0068, outsideHistoryChunk0068] at hm5
  have hm6 := outsideAggregateMarkerPart6_0068
  simp only [outsideAggregateMarkerPartValid6_0068, outsideHistoryChunk0068] at hm6
  have hm7 := outsideAggregateMarkerPart7_0068
  simp only [outsideAggregateMarkerPartValid7_0068, outsideHistoryChunk0068] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0068
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0068
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0069 :
    outsideAggregateLocalPartValid0_0069 outsideHistoryChunk0069 := by
  unfold outsideAggregateLocalPartValid0_0069 outsideHistoryChunk0069
  decide

def outsideAggregateMarkerPartValid0_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 70656
  | _ => True

theorem outsideAggregateMarkerPart0_0069 :
    outsideAggregateMarkerPartValid0_0069 outsideHistoryChunk0069 := by
  unfold outsideAggregateMarkerPartValid0_0069 outsideHistoryChunk0069
  decide

def outsideAggregateLocalPartValid1_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0069 :
    outsideAggregateLocalPartValid1_0069 outsideHistoryChunk0069 := by
  unfold outsideAggregateLocalPartValid1_0069 outsideHistoryChunk0069
  decide

def outsideAggregateMarkerPartValid1_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 70784
  | _ => True

theorem outsideAggregateMarkerPart1_0069 :
    outsideAggregateMarkerPartValid1_0069 outsideHistoryChunk0069 := by
  unfold outsideAggregateMarkerPartValid1_0069 outsideHistoryChunk0069
  decide

def outsideAggregateLocalPartValid2_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0069 :
    outsideAggregateLocalPartValid2_0069 outsideHistoryChunk0069 := by
  unfold outsideAggregateLocalPartValid2_0069 outsideHistoryChunk0069
  decide

def outsideAggregateMarkerPartValid2_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 70912
  | _ => True

theorem outsideAggregateMarkerPart2_0069 :
    outsideAggregateMarkerPartValid2_0069 outsideHistoryChunk0069 := by
  unfold outsideAggregateMarkerPartValid2_0069 outsideHistoryChunk0069
  decide

def outsideAggregateLocalPartValid3_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0069 :
    outsideAggregateLocalPartValid3_0069 outsideHistoryChunk0069 := by
  unfold outsideAggregateLocalPartValid3_0069 outsideHistoryChunk0069
  decide

def outsideAggregateMarkerPartValid3_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 71040
  | _ => True

theorem outsideAggregateMarkerPart3_0069 :
    outsideAggregateMarkerPartValid3_0069 outsideHistoryChunk0069 := by
  unfold outsideAggregateMarkerPartValid3_0069 outsideHistoryChunk0069
  decide

def outsideAggregateLocalPartValid4_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0069 :
    outsideAggregateLocalPartValid4_0069 outsideHistoryChunk0069 := by
  unfold outsideAggregateLocalPartValid4_0069 outsideHistoryChunk0069
  decide

def outsideAggregateMarkerPartValid4_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 71168
  | _ => True

theorem outsideAggregateMarkerPart4_0069 :
    outsideAggregateMarkerPartValid4_0069 outsideHistoryChunk0069 := by
  unfold outsideAggregateMarkerPartValid4_0069 outsideHistoryChunk0069
  decide

def outsideAggregateLocalPartValid5_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0069 :
    outsideAggregateLocalPartValid5_0069 outsideHistoryChunk0069 := by
  unfold outsideAggregateLocalPartValid5_0069 outsideHistoryChunk0069
  decide

def outsideAggregateMarkerPartValid5_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 71296
  | _ => True

theorem outsideAggregateMarkerPart5_0069 :
    outsideAggregateMarkerPartValid5_0069 outsideHistoryChunk0069 := by
  unfold outsideAggregateMarkerPartValid5_0069 outsideHistoryChunk0069
  decide

def outsideAggregateLocalPartValid6_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0069 :
    outsideAggregateLocalPartValid6_0069 outsideHistoryChunk0069 := by
  unfold outsideAggregateLocalPartValid6_0069 outsideHistoryChunk0069
  decide

def outsideAggregateMarkerPartValid6_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 71424
  | _ => True

theorem outsideAggregateMarkerPart6_0069 :
    outsideAggregateMarkerPartValid6_0069 outsideHistoryChunk0069 := by
  unfold outsideAggregateMarkerPartValid6_0069 outsideHistoryChunk0069
  decide

def outsideAggregateLocalPartValid7_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0069 :
    outsideAggregateLocalPartValid7_0069 outsideHistoryChunk0069 := by
  unfold outsideAggregateLocalPartValid7_0069 outsideHistoryChunk0069
  decide

def outsideAggregateMarkerPartValid7_0069 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 71552
  | _ => True

theorem outsideAggregateMarkerPart7_0069 :
    outsideAggregateMarkerPartValid7_0069 outsideHistoryChunk0069 := by
  unfold outsideAggregateMarkerPartValid7_0069 outsideHistoryChunk0069
  decide

theorem outsideRange_0069 :
    outsideHistoryChunk0069.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 70656 := by
  have hl0 := outsideAggregateLocalPart0_0069
  simp only [outsideAggregateLocalPartValid0_0069, outsideHistoryChunk0069] at hl0
  have hl1 := outsideAggregateLocalPart1_0069
  simp only [outsideAggregateLocalPartValid1_0069, outsideHistoryChunk0069] at hl1
  have hl2 := outsideAggregateLocalPart2_0069
  simp only [outsideAggregateLocalPartValid2_0069, outsideHistoryChunk0069] at hl2
  have hl3 := outsideAggregateLocalPart3_0069
  simp only [outsideAggregateLocalPartValid3_0069, outsideHistoryChunk0069] at hl3
  have hl4 := outsideAggregateLocalPart4_0069
  simp only [outsideAggregateLocalPartValid4_0069, outsideHistoryChunk0069] at hl4
  have hl5 := outsideAggregateLocalPart5_0069
  simp only [outsideAggregateLocalPartValid5_0069, outsideHistoryChunk0069] at hl5
  have hl6 := outsideAggregateLocalPart6_0069
  simp only [outsideAggregateLocalPartValid6_0069, outsideHistoryChunk0069] at hl6
  have hl7 := outsideAggregateLocalPart7_0069
  simp only [outsideAggregateLocalPartValid7_0069, outsideHistoryChunk0069] at hl7
  have hm0 := outsideAggregateMarkerPart0_0069
  simp only [outsideAggregateMarkerPartValid0_0069, outsideHistoryChunk0069] at hm0
  have hm1 := outsideAggregateMarkerPart1_0069
  simp only [outsideAggregateMarkerPartValid1_0069, outsideHistoryChunk0069] at hm1
  have hm2 := outsideAggregateMarkerPart2_0069
  simp only [outsideAggregateMarkerPartValid2_0069, outsideHistoryChunk0069] at hm2
  have hm3 := outsideAggregateMarkerPart3_0069
  simp only [outsideAggregateMarkerPartValid3_0069, outsideHistoryChunk0069] at hm3
  have hm4 := outsideAggregateMarkerPart4_0069
  simp only [outsideAggregateMarkerPartValid4_0069, outsideHistoryChunk0069] at hm4
  have hm5 := outsideAggregateMarkerPart5_0069
  simp only [outsideAggregateMarkerPartValid5_0069, outsideHistoryChunk0069] at hm5
  have hm6 := outsideAggregateMarkerPart6_0069
  simp only [outsideAggregateMarkerPartValid6_0069, outsideHistoryChunk0069] at hm6
  have hm7 := outsideAggregateMarkerPart7_0069
  simp only [outsideAggregateMarkerPartValid7_0069, outsideHistoryChunk0069] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0069
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0069
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0070 :
    outsideAggregateLocalPartValid0_0070 outsideHistoryChunk0070 := by
  unfold outsideAggregateLocalPartValid0_0070 outsideHistoryChunk0070
  decide

def outsideAggregateMarkerPartValid0_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 71680
  | _ => True

theorem outsideAggregateMarkerPart0_0070 :
    outsideAggregateMarkerPartValid0_0070 outsideHistoryChunk0070 := by
  unfold outsideAggregateMarkerPartValid0_0070 outsideHistoryChunk0070
  decide

def outsideAggregateLocalPartValid1_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0070 :
    outsideAggregateLocalPartValid1_0070 outsideHistoryChunk0070 := by
  unfold outsideAggregateLocalPartValid1_0070 outsideHistoryChunk0070
  decide

def outsideAggregateMarkerPartValid1_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 71808
  | _ => True

theorem outsideAggregateMarkerPart1_0070 :
    outsideAggregateMarkerPartValid1_0070 outsideHistoryChunk0070 := by
  unfold outsideAggregateMarkerPartValid1_0070 outsideHistoryChunk0070
  decide

def outsideAggregateLocalPartValid2_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0070 :
    outsideAggregateLocalPartValid2_0070 outsideHistoryChunk0070 := by
  unfold outsideAggregateLocalPartValid2_0070 outsideHistoryChunk0070
  decide

def outsideAggregateMarkerPartValid2_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 71936
  | _ => True

theorem outsideAggregateMarkerPart2_0070 :
    outsideAggregateMarkerPartValid2_0070 outsideHistoryChunk0070 := by
  unfold outsideAggregateMarkerPartValid2_0070 outsideHistoryChunk0070
  decide

def outsideAggregateLocalPartValid3_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0070 :
    outsideAggregateLocalPartValid3_0070 outsideHistoryChunk0070 := by
  unfold outsideAggregateLocalPartValid3_0070 outsideHistoryChunk0070
  decide

def outsideAggregateMarkerPartValid3_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 72064
  | _ => True

theorem outsideAggregateMarkerPart3_0070 :
    outsideAggregateMarkerPartValid3_0070 outsideHistoryChunk0070 := by
  unfold outsideAggregateMarkerPartValid3_0070 outsideHistoryChunk0070
  decide

def outsideAggregateLocalPartValid4_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0070 :
    outsideAggregateLocalPartValid4_0070 outsideHistoryChunk0070 := by
  unfold outsideAggregateLocalPartValid4_0070 outsideHistoryChunk0070
  decide

def outsideAggregateMarkerPartValid4_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 72192
  | _ => True

theorem outsideAggregateMarkerPart4_0070 :
    outsideAggregateMarkerPartValid4_0070 outsideHistoryChunk0070 := by
  unfold outsideAggregateMarkerPartValid4_0070 outsideHistoryChunk0070
  decide

def outsideAggregateLocalPartValid5_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0070 :
    outsideAggregateLocalPartValid5_0070 outsideHistoryChunk0070 := by
  unfold outsideAggregateLocalPartValid5_0070 outsideHistoryChunk0070
  decide

def outsideAggregateMarkerPartValid5_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 72320
  | _ => True

theorem outsideAggregateMarkerPart5_0070 :
    outsideAggregateMarkerPartValid5_0070 outsideHistoryChunk0070 := by
  unfold outsideAggregateMarkerPartValid5_0070 outsideHistoryChunk0070
  decide

def outsideAggregateLocalPartValid6_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0070 :
    outsideAggregateLocalPartValid6_0070 outsideHistoryChunk0070 := by
  unfold outsideAggregateLocalPartValid6_0070 outsideHistoryChunk0070
  decide

def outsideAggregateMarkerPartValid6_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 72448
  | _ => True

theorem outsideAggregateMarkerPart6_0070 :
    outsideAggregateMarkerPartValid6_0070 outsideHistoryChunk0070 := by
  unfold outsideAggregateMarkerPartValid6_0070 outsideHistoryChunk0070
  decide

def outsideAggregateLocalPartValid7_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0070 :
    outsideAggregateLocalPartValid7_0070 outsideHistoryChunk0070 := by
  unfold outsideAggregateLocalPartValid7_0070 outsideHistoryChunk0070
  decide

def outsideAggregateMarkerPartValid7_0070 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 72576
  | _ => True

theorem outsideAggregateMarkerPart7_0070 :
    outsideAggregateMarkerPartValid7_0070 outsideHistoryChunk0070 := by
  unfold outsideAggregateMarkerPartValid7_0070 outsideHistoryChunk0070
  decide

theorem outsideRange_0070 :
    outsideHistoryChunk0070.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 71680 := by
  have hl0 := outsideAggregateLocalPart0_0070
  simp only [outsideAggregateLocalPartValid0_0070, outsideHistoryChunk0070] at hl0
  have hl1 := outsideAggregateLocalPart1_0070
  simp only [outsideAggregateLocalPartValid1_0070, outsideHistoryChunk0070] at hl1
  have hl2 := outsideAggregateLocalPart2_0070
  simp only [outsideAggregateLocalPartValid2_0070, outsideHistoryChunk0070] at hl2
  have hl3 := outsideAggregateLocalPart3_0070
  simp only [outsideAggregateLocalPartValid3_0070, outsideHistoryChunk0070] at hl3
  have hl4 := outsideAggregateLocalPart4_0070
  simp only [outsideAggregateLocalPartValid4_0070, outsideHistoryChunk0070] at hl4
  have hl5 := outsideAggregateLocalPart5_0070
  simp only [outsideAggregateLocalPartValid5_0070, outsideHistoryChunk0070] at hl5
  have hl6 := outsideAggregateLocalPart6_0070
  simp only [outsideAggregateLocalPartValid6_0070, outsideHistoryChunk0070] at hl6
  have hl7 := outsideAggregateLocalPart7_0070
  simp only [outsideAggregateLocalPartValid7_0070, outsideHistoryChunk0070] at hl7
  have hm0 := outsideAggregateMarkerPart0_0070
  simp only [outsideAggregateMarkerPartValid0_0070, outsideHistoryChunk0070] at hm0
  have hm1 := outsideAggregateMarkerPart1_0070
  simp only [outsideAggregateMarkerPartValid1_0070, outsideHistoryChunk0070] at hm1
  have hm2 := outsideAggregateMarkerPart2_0070
  simp only [outsideAggregateMarkerPartValid2_0070, outsideHistoryChunk0070] at hm2
  have hm3 := outsideAggregateMarkerPart3_0070
  simp only [outsideAggregateMarkerPartValid3_0070, outsideHistoryChunk0070] at hm3
  have hm4 := outsideAggregateMarkerPart4_0070
  simp only [outsideAggregateMarkerPartValid4_0070, outsideHistoryChunk0070] at hm4
  have hm5 := outsideAggregateMarkerPart5_0070
  simp only [outsideAggregateMarkerPartValid5_0070, outsideHistoryChunk0070] at hm5
  have hm6 := outsideAggregateMarkerPart6_0070
  simp only [outsideAggregateMarkerPartValid6_0070, outsideHistoryChunk0070] at hm6
  have hm7 := outsideAggregateMarkerPart7_0070
  simp only [outsideAggregateMarkerPartValid7_0070, outsideHistoryChunk0070] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0070
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0070
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0071 :
    outsideAggregateLocalPartValid0_0071 outsideHistoryChunk0071 := by
  unfold outsideAggregateLocalPartValid0_0071 outsideHistoryChunk0071
  decide

def outsideAggregateMarkerPartValid0_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 72704
  | _ => True

theorem outsideAggregateMarkerPart0_0071 :
    outsideAggregateMarkerPartValid0_0071 outsideHistoryChunk0071 := by
  unfold outsideAggregateMarkerPartValid0_0071 outsideHistoryChunk0071
  decide

def outsideAggregateLocalPartValid1_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0071 :
    outsideAggregateLocalPartValid1_0071 outsideHistoryChunk0071 := by
  unfold outsideAggregateLocalPartValid1_0071 outsideHistoryChunk0071
  decide

def outsideAggregateMarkerPartValid1_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 72832
  | _ => True

theorem outsideAggregateMarkerPart1_0071 :
    outsideAggregateMarkerPartValid1_0071 outsideHistoryChunk0071 := by
  unfold outsideAggregateMarkerPartValid1_0071 outsideHistoryChunk0071
  decide

def outsideAggregateLocalPartValid2_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0071 :
    outsideAggregateLocalPartValid2_0071 outsideHistoryChunk0071 := by
  unfold outsideAggregateLocalPartValid2_0071 outsideHistoryChunk0071
  decide

def outsideAggregateMarkerPartValid2_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 72960
  | _ => True

theorem outsideAggregateMarkerPart2_0071 :
    outsideAggregateMarkerPartValid2_0071 outsideHistoryChunk0071 := by
  unfold outsideAggregateMarkerPartValid2_0071 outsideHistoryChunk0071
  decide

def outsideAggregateLocalPartValid3_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0071 :
    outsideAggregateLocalPartValid3_0071 outsideHistoryChunk0071 := by
  unfold outsideAggregateLocalPartValid3_0071 outsideHistoryChunk0071
  decide

def outsideAggregateMarkerPartValid3_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 73088
  | _ => True

theorem outsideAggregateMarkerPart3_0071 :
    outsideAggregateMarkerPartValid3_0071 outsideHistoryChunk0071 := by
  unfold outsideAggregateMarkerPartValid3_0071 outsideHistoryChunk0071
  decide

def outsideAggregateLocalPartValid4_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0071 :
    outsideAggregateLocalPartValid4_0071 outsideHistoryChunk0071 := by
  unfold outsideAggregateLocalPartValid4_0071 outsideHistoryChunk0071
  decide

def outsideAggregateMarkerPartValid4_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 73216
  | _ => True

theorem outsideAggregateMarkerPart4_0071 :
    outsideAggregateMarkerPartValid4_0071 outsideHistoryChunk0071 := by
  unfold outsideAggregateMarkerPartValid4_0071 outsideHistoryChunk0071
  decide

def outsideAggregateLocalPartValid5_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0071 :
    outsideAggregateLocalPartValid5_0071 outsideHistoryChunk0071 := by
  unfold outsideAggregateLocalPartValid5_0071 outsideHistoryChunk0071
  decide

def outsideAggregateMarkerPartValid5_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 73344
  | _ => True

theorem outsideAggregateMarkerPart5_0071 :
    outsideAggregateMarkerPartValid5_0071 outsideHistoryChunk0071 := by
  unfold outsideAggregateMarkerPartValid5_0071 outsideHistoryChunk0071
  decide

def outsideAggregateLocalPartValid6_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0071 :
    outsideAggregateLocalPartValid6_0071 outsideHistoryChunk0071 := by
  unfold outsideAggregateLocalPartValid6_0071 outsideHistoryChunk0071
  decide

def outsideAggregateMarkerPartValid6_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 73472
  | _ => True

theorem outsideAggregateMarkerPart6_0071 :
    outsideAggregateMarkerPartValid6_0071 outsideHistoryChunk0071 := by
  unfold outsideAggregateMarkerPartValid6_0071 outsideHistoryChunk0071
  decide

def outsideAggregateLocalPartValid7_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0071 :
    outsideAggregateLocalPartValid7_0071 outsideHistoryChunk0071 := by
  unfold outsideAggregateLocalPartValid7_0071 outsideHistoryChunk0071
  decide

def outsideAggregateMarkerPartValid7_0071 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 73600
  | _ => True

theorem outsideAggregateMarkerPart7_0071 :
    outsideAggregateMarkerPartValid7_0071 outsideHistoryChunk0071 := by
  unfold outsideAggregateMarkerPartValid7_0071 outsideHistoryChunk0071
  decide

theorem outsideRange_0071 :
    outsideHistoryChunk0071.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 72704 := by
  have hl0 := outsideAggregateLocalPart0_0071
  simp only [outsideAggregateLocalPartValid0_0071, outsideHistoryChunk0071] at hl0
  have hl1 := outsideAggregateLocalPart1_0071
  simp only [outsideAggregateLocalPartValid1_0071, outsideHistoryChunk0071] at hl1
  have hl2 := outsideAggregateLocalPart2_0071
  simp only [outsideAggregateLocalPartValid2_0071, outsideHistoryChunk0071] at hl2
  have hl3 := outsideAggregateLocalPart3_0071
  simp only [outsideAggregateLocalPartValid3_0071, outsideHistoryChunk0071] at hl3
  have hl4 := outsideAggregateLocalPart4_0071
  simp only [outsideAggregateLocalPartValid4_0071, outsideHistoryChunk0071] at hl4
  have hl5 := outsideAggregateLocalPart5_0071
  simp only [outsideAggregateLocalPartValid5_0071, outsideHistoryChunk0071] at hl5
  have hl6 := outsideAggregateLocalPart6_0071
  simp only [outsideAggregateLocalPartValid6_0071, outsideHistoryChunk0071] at hl6
  have hl7 := outsideAggregateLocalPart7_0071
  simp only [outsideAggregateLocalPartValid7_0071, outsideHistoryChunk0071] at hl7
  have hm0 := outsideAggregateMarkerPart0_0071
  simp only [outsideAggregateMarkerPartValid0_0071, outsideHistoryChunk0071] at hm0
  have hm1 := outsideAggregateMarkerPart1_0071
  simp only [outsideAggregateMarkerPartValid1_0071, outsideHistoryChunk0071] at hm1
  have hm2 := outsideAggregateMarkerPart2_0071
  simp only [outsideAggregateMarkerPartValid2_0071, outsideHistoryChunk0071] at hm2
  have hm3 := outsideAggregateMarkerPart3_0071
  simp only [outsideAggregateMarkerPartValid3_0071, outsideHistoryChunk0071] at hm3
  have hm4 := outsideAggregateMarkerPart4_0071
  simp only [outsideAggregateMarkerPartValid4_0071, outsideHistoryChunk0071] at hm4
  have hm5 := outsideAggregateMarkerPart5_0071
  simp only [outsideAggregateMarkerPartValid5_0071, outsideHistoryChunk0071] at hm5
  have hm6 := outsideAggregateMarkerPart6_0071
  simp only [outsideAggregateMarkerPartValid6_0071, outsideHistoryChunk0071] at hm6
  have hm7 := outsideAggregateMarkerPart7_0071
  simp only [outsideAggregateMarkerPartValid7_0071, outsideHistoryChunk0071] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0071
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0071
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
