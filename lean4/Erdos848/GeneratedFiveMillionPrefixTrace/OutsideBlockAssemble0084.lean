import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0084
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0085
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0086
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0087

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0084, 0085, 0086, 0087 -/

def outsideAggregateLocalPartValid0_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0084 :
    outsideAggregateLocalPartValid0_0084 outsideHistoryChunk0084 := by
  unfold outsideAggregateLocalPartValid0_0084 outsideHistoryChunk0084
  decide

def outsideAggregateMarkerPartValid0_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 86016
  | _ => True

theorem outsideAggregateMarkerPart0_0084 :
    outsideAggregateMarkerPartValid0_0084 outsideHistoryChunk0084 := by
  unfold outsideAggregateMarkerPartValid0_0084 outsideHistoryChunk0084
  decide

def outsideAggregateLocalPartValid1_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0084 :
    outsideAggregateLocalPartValid1_0084 outsideHistoryChunk0084 := by
  unfold outsideAggregateLocalPartValid1_0084 outsideHistoryChunk0084
  decide

def outsideAggregateMarkerPartValid1_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 86144
  | _ => True

theorem outsideAggregateMarkerPart1_0084 :
    outsideAggregateMarkerPartValid1_0084 outsideHistoryChunk0084 := by
  unfold outsideAggregateMarkerPartValid1_0084 outsideHistoryChunk0084
  decide

def outsideAggregateLocalPartValid2_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0084 :
    outsideAggregateLocalPartValid2_0084 outsideHistoryChunk0084 := by
  unfold outsideAggregateLocalPartValid2_0084 outsideHistoryChunk0084
  decide

def outsideAggregateMarkerPartValid2_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 86272
  | _ => True

theorem outsideAggregateMarkerPart2_0084 :
    outsideAggregateMarkerPartValid2_0084 outsideHistoryChunk0084 := by
  unfold outsideAggregateMarkerPartValid2_0084 outsideHistoryChunk0084
  decide

def outsideAggregateLocalPartValid3_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0084 :
    outsideAggregateLocalPartValid3_0084 outsideHistoryChunk0084 := by
  unfold outsideAggregateLocalPartValid3_0084 outsideHistoryChunk0084
  decide

def outsideAggregateMarkerPartValid3_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 86400
  | _ => True

theorem outsideAggregateMarkerPart3_0084 :
    outsideAggregateMarkerPartValid3_0084 outsideHistoryChunk0084 := by
  unfold outsideAggregateMarkerPartValid3_0084 outsideHistoryChunk0084
  decide

def outsideAggregateLocalPartValid4_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0084 :
    outsideAggregateLocalPartValid4_0084 outsideHistoryChunk0084 := by
  unfold outsideAggregateLocalPartValid4_0084 outsideHistoryChunk0084
  decide

def outsideAggregateMarkerPartValid4_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 86528
  | _ => True

theorem outsideAggregateMarkerPart4_0084 :
    outsideAggregateMarkerPartValid4_0084 outsideHistoryChunk0084 := by
  unfold outsideAggregateMarkerPartValid4_0084 outsideHistoryChunk0084
  decide

def outsideAggregateLocalPartValid5_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0084 :
    outsideAggregateLocalPartValid5_0084 outsideHistoryChunk0084 := by
  unfold outsideAggregateLocalPartValid5_0084 outsideHistoryChunk0084
  decide

def outsideAggregateMarkerPartValid5_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 86656
  | _ => True

theorem outsideAggregateMarkerPart5_0084 :
    outsideAggregateMarkerPartValid5_0084 outsideHistoryChunk0084 := by
  unfold outsideAggregateMarkerPartValid5_0084 outsideHistoryChunk0084
  decide

def outsideAggregateLocalPartValid6_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0084 :
    outsideAggregateLocalPartValid6_0084 outsideHistoryChunk0084 := by
  unfold outsideAggregateLocalPartValid6_0084 outsideHistoryChunk0084
  decide

def outsideAggregateMarkerPartValid6_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 86784
  | _ => True

theorem outsideAggregateMarkerPart6_0084 :
    outsideAggregateMarkerPartValid6_0084 outsideHistoryChunk0084 := by
  unfold outsideAggregateMarkerPartValid6_0084 outsideHistoryChunk0084
  decide

def outsideAggregateLocalPartValid7_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0084 :
    outsideAggregateLocalPartValid7_0084 outsideHistoryChunk0084 := by
  unfold outsideAggregateLocalPartValid7_0084 outsideHistoryChunk0084
  decide

def outsideAggregateMarkerPartValid7_0084 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 86912
  | _ => True

theorem outsideAggregateMarkerPart7_0084 :
    outsideAggregateMarkerPartValid7_0084 outsideHistoryChunk0084 := by
  unfold outsideAggregateMarkerPartValid7_0084 outsideHistoryChunk0084
  decide

theorem outsideRange_0084 :
    outsideHistoryChunk0084.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 86016 := by
  have hl0 := outsideAggregateLocalPart0_0084
  simp only [outsideAggregateLocalPartValid0_0084, outsideHistoryChunk0084] at hl0
  have hl1 := outsideAggregateLocalPart1_0084
  simp only [outsideAggregateLocalPartValid1_0084, outsideHistoryChunk0084] at hl1
  have hl2 := outsideAggregateLocalPart2_0084
  simp only [outsideAggregateLocalPartValid2_0084, outsideHistoryChunk0084] at hl2
  have hl3 := outsideAggregateLocalPart3_0084
  simp only [outsideAggregateLocalPartValid3_0084, outsideHistoryChunk0084] at hl3
  have hl4 := outsideAggregateLocalPart4_0084
  simp only [outsideAggregateLocalPartValid4_0084, outsideHistoryChunk0084] at hl4
  have hl5 := outsideAggregateLocalPart5_0084
  simp only [outsideAggregateLocalPartValid5_0084, outsideHistoryChunk0084] at hl5
  have hl6 := outsideAggregateLocalPart6_0084
  simp only [outsideAggregateLocalPartValid6_0084, outsideHistoryChunk0084] at hl6
  have hl7 := outsideAggregateLocalPart7_0084
  simp only [outsideAggregateLocalPartValid7_0084, outsideHistoryChunk0084] at hl7
  have hm0 := outsideAggregateMarkerPart0_0084
  simp only [outsideAggregateMarkerPartValid0_0084, outsideHistoryChunk0084] at hm0
  have hm1 := outsideAggregateMarkerPart1_0084
  simp only [outsideAggregateMarkerPartValid1_0084, outsideHistoryChunk0084] at hm1
  have hm2 := outsideAggregateMarkerPart2_0084
  simp only [outsideAggregateMarkerPartValid2_0084, outsideHistoryChunk0084] at hm2
  have hm3 := outsideAggregateMarkerPart3_0084
  simp only [outsideAggregateMarkerPartValid3_0084, outsideHistoryChunk0084] at hm3
  have hm4 := outsideAggregateMarkerPart4_0084
  simp only [outsideAggregateMarkerPartValid4_0084, outsideHistoryChunk0084] at hm4
  have hm5 := outsideAggregateMarkerPart5_0084
  simp only [outsideAggregateMarkerPartValid5_0084, outsideHistoryChunk0084] at hm5
  have hm6 := outsideAggregateMarkerPart6_0084
  simp only [outsideAggregateMarkerPartValid6_0084, outsideHistoryChunk0084] at hm6
  have hm7 := outsideAggregateMarkerPart7_0084
  simp only [outsideAggregateMarkerPartValid7_0084, outsideHistoryChunk0084] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0084
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0084
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0085 :
    outsideAggregateLocalPartValid0_0085 outsideHistoryChunk0085 := by
  unfold outsideAggregateLocalPartValid0_0085 outsideHistoryChunk0085
  decide

def outsideAggregateMarkerPartValid0_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 87040
  | _ => True

theorem outsideAggregateMarkerPart0_0085 :
    outsideAggregateMarkerPartValid0_0085 outsideHistoryChunk0085 := by
  unfold outsideAggregateMarkerPartValid0_0085 outsideHistoryChunk0085
  decide

def outsideAggregateLocalPartValid1_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0085 :
    outsideAggregateLocalPartValid1_0085 outsideHistoryChunk0085 := by
  unfold outsideAggregateLocalPartValid1_0085 outsideHistoryChunk0085
  decide

def outsideAggregateMarkerPartValid1_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 87168
  | _ => True

theorem outsideAggregateMarkerPart1_0085 :
    outsideAggregateMarkerPartValid1_0085 outsideHistoryChunk0085 := by
  unfold outsideAggregateMarkerPartValid1_0085 outsideHistoryChunk0085
  decide

def outsideAggregateLocalPartValid2_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0085 :
    outsideAggregateLocalPartValid2_0085 outsideHistoryChunk0085 := by
  unfold outsideAggregateLocalPartValid2_0085 outsideHistoryChunk0085
  decide

def outsideAggregateMarkerPartValid2_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 87296
  | _ => True

theorem outsideAggregateMarkerPart2_0085 :
    outsideAggregateMarkerPartValid2_0085 outsideHistoryChunk0085 := by
  unfold outsideAggregateMarkerPartValid2_0085 outsideHistoryChunk0085
  decide

def outsideAggregateLocalPartValid3_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0085 :
    outsideAggregateLocalPartValid3_0085 outsideHistoryChunk0085 := by
  unfold outsideAggregateLocalPartValid3_0085 outsideHistoryChunk0085
  decide

def outsideAggregateMarkerPartValid3_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 87424
  | _ => True

theorem outsideAggregateMarkerPart3_0085 :
    outsideAggregateMarkerPartValid3_0085 outsideHistoryChunk0085 := by
  unfold outsideAggregateMarkerPartValid3_0085 outsideHistoryChunk0085
  decide

def outsideAggregateLocalPartValid4_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0085 :
    outsideAggregateLocalPartValid4_0085 outsideHistoryChunk0085 := by
  unfold outsideAggregateLocalPartValid4_0085 outsideHistoryChunk0085
  decide

def outsideAggregateMarkerPartValid4_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 87552
  | _ => True

theorem outsideAggregateMarkerPart4_0085 :
    outsideAggregateMarkerPartValid4_0085 outsideHistoryChunk0085 := by
  unfold outsideAggregateMarkerPartValid4_0085 outsideHistoryChunk0085
  decide

def outsideAggregateLocalPartValid5_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0085 :
    outsideAggregateLocalPartValid5_0085 outsideHistoryChunk0085 := by
  unfold outsideAggregateLocalPartValid5_0085 outsideHistoryChunk0085
  decide

def outsideAggregateMarkerPartValid5_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 87680
  | _ => True

theorem outsideAggregateMarkerPart5_0085 :
    outsideAggregateMarkerPartValid5_0085 outsideHistoryChunk0085 := by
  unfold outsideAggregateMarkerPartValid5_0085 outsideHistoryChunk0085
  decide

def outsideAggregateLocalPartValid6_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0085 :
    outsideAggregateLocalPartValid6_0085 outsideHistoryChunk0085 := by
  unfold outsideAggregateLocalPartValid6_0085 outsideHistoryChunk0085
  decide

def outsideAggregateMarkerPartValid6_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 87808
  | _ => True

theorem outsideAggregateMarkerPart6_0085 :
    outsideAggregateMarkerPartValid6_0085 outsideHistoryChunk0085 := by
  unfold outsideAggregateMarkerPartValid6_0085 outsideHistoryChunk0085
  decide

def outsideAggregateLocalPartValid7_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0085 :
    outsideAggregateLocalPartValid7_0085 outsideHistoryChunk0085 := by
  unfold outsideAggregateLocalPartValid7_0085 outsideHistoryChunk0085
  decide

def outsideAggregateMarkerPartValid7_0085 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 87936
  | _ => True

theorem outsideAggregateMarkerPart7_0085 :
    outsideAggregateMarkerPartValid7_0085 outsideHistoryChunk0085 := by
  unfold outsideAggregateMarkerPartValid7_0085 outsideHistoryChunk0085
  decide

theorem outsideRange_0085 :
    outsideHistoryChunk0085.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 87040 := by
  have hl0 := outsideAggregateLocalPart0_0085
  simp only [outsideAggregateLocalPartValid0_0085, outsideHistoryChunk0085] at hl0
  have hl1 := outsideAggregateLocalPart1_0085
  simp only [outsideAggregateLocalPartValid1_0085, outsideHistoryChunk0085] at hl1
  have hl2 := outsideAggregateLocalPart2_0085
  simp only [outsideAggregateLocalPartValid2_0085, outsideHistoryChunk0085] at hl2
  have hl3 := outsideAggregateLocalPart3_0085
  simp only [outsideAggregateLocalPartValid3_0085, outsideHistoryChunk0085] at hl3
  have hl4 := outsideAggregateLocalPart4_0085
  simp only [outsideAggregateLocalPartValid4_0085, outsideHistoryChunk0085] at hl4
  have hl5 := outsideAggregateLocalPart5_0085
  simp only [outsideAggregateLocalPartValid5_0085, outsideHistoryChunk0085] at hl5
  have hl6 := outsideAggregateLocalPart6_0085
  simp only [outsideAggregateLocalPartValid6_0085, outsideHistoryChunk0085] at hl6
  have hl7 := outsideAggregateLocalPart7_0085
  simp only [outsideAggregateLocalPartValid7_0085, outsideHistoryChunk0085] at hl7
  have hm0 := outsideAggregateMarkerPart0_0085
  simp only [outsideAggregateMarkerPartValid0_0085, outsideHistoryChunk0085] at hm0
  have hm1 := outsideAggregateMarkerPart1_0085
  simp only [outsideAggregateMarkerPartValid1_0085, outsideHistoryChunk0085] at hm1
  have hm2 := outsideAggregateMarkerPart2_0085
  simp only [outsideAggregateMarkerPartValid2_0085, outsideHistoryChunk0085] at hm2
  have hm3 := outsideAggregateMarkerPart3_0085
  simp only [outsideAggregateMarkerPartValid3_0085, outsideHistoryChunk0085] at hm3
  have hm4 := outsideAggregateMarkerPart4_0085
  simp only [outsideAggregateMarkerPartValid4_0085, outsideHistoryChunk0085] at hm4
  have hm5 := outsideAggregateMarkerPart5_0085
  simp only [outsideAggregateMarkerPartValid5_0085, outsideHistoryChunk0085] at hm5
  have hm6 := outsideAggregateMarkerPart6_0085
  simp only [outsideAggregateMarkerPartValid6_0085, outsideHistoryChunk0085] at hm6
  have hm7 := outsideAggregateMarkerPart7_0085
  simp only [outsideAggregateMarkerPartValid7_0085, outsideHistoryChunk0085] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0085
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0085
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0086 :
    outsideAggregateLocalPartValid0_0086 outsideHistoryChunk0086 := by
  unfold outsideAggregateLocalPartValid0_0086 outsideHistoryChunk0086
  decide

def outsideAggregateMarkerPartValid0_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 88064
  | _ => True

theorem outsideAggregateMarkerPart0_0086 :
    outsideAggregateMarkerPartValid0_0086 outsideHistoryChunk0086 := by
  unfold outsideAggregateMarkerPartValid0_0086 outsideHistoryChunk0086
  decide

def outsideAggregateLocalPartValid1_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0086 :
    outsideAggregateLocalPartValid1_0086 outsideHistoryChunk0086 := by
  unfold outsideAggregateLocalPartValid1_0086 outsideHistoryChunk0086
  decide

def outsideAggregateMarkerPartValid1_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 88192
  | _ => True

theorem outsideAggregateMarkerPart1_0086 :
    outsideAggregateMarkerPartValid1_0086 outsideHistoryChunk0086 := by
  unfold outsideAggregateMarkerPartValid1_0086 outsideHistoryChunk0086
  decide

def outsideAggregateLocalPartValid2_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0086 :
    outsideAggregateLocalPartValid2_0086 outsideHistoryChunk0086 := by
  unfold outsideAggregateLocalPartValid2_0086 outsideHistoryChunk0086
  decide

def outsideAggregateMarkerPartValid2_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 88320
  | _ => True

theorem outsideAggregateMarkerPart2_0086 :
    outsideAggregateMarkerPartValid2_0086 outsideHistoryChunk0086 := by
  unfold outsideAggregateMarkerPartValid2_0086 outsideHistoryChunk0086
  decide

def outsideAggregateLocalPartValid3_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0086 :
    outsideAggregateLocalPartValid3_0086 outsideHistoryChunk0086 := by
  unfold outsideAggregateLocalPartValid3_0086 outsideHistoryChunk0086
  decide

def outsideAggregateMarkerPartValid3_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 88448
  | _ => True

theorem outsideAggregateMarkerPart3_0086 :
    outsideAggregateMarkerPartValid3_0086 outsideHistoryChunk0086 := by
  unfold outsideAggregateMarkerPartValid3_0086 outsideHistoryChunk0086
  decide

def outsideAggregateLocalPartValid4_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0086 :
    outsideAggregateLocalPartValid4_0086 outsideHistoryChunk0086 := by
  unfold outsideAggregateLocalPartValid4_0086 outsideHistoryChunk0086
  decide

def outsideAggregateMarkerPartValid4_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 88576
  | _ => True

theorem outsideAggregateMarkerPart4_0086 :
    outsideAggregateMarkerPartValid4_0086 outsideHistoryChunk0086 := by
  unfold outsideAggregateMarkerPartValid4_0086 outsideHistoryChunk0086
  decide

def outsideAggregateLocalPartValid5_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0086 :
    outsideAggregateLocalPartValid5_0086 outsideHistoryChunk0086 := by
  unfold outsideAggregateLocalPartValid5_0086 outsideHistoryChunk0086
  decide

def outsideAggregateMarkerPartValid5_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 88704
  | _ => True

theorem outsideAggregateMarkerPart5_0086 :
    outsideAggregateMarkerPartValid5_0086 outsideHistoryChunk0086 := by
  unfold outsideAggregateMarkerPartValid5_0086 outsideHistoryChunk0086
  decide

def outsideAggregateLocalPartValid6_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0086 :
    outsideAggregateLocalPartValid6_0086 outsideHistoryChunk0086 := by
  unfold outsideAggregateLocalPartValid6_0086 outsideHistoryChunk0086
  decide

def outsideAggregateMarkerPartValid6_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 88832
  | _ => True

theorem outsideAggregateMarkerPart6_0086 :
    outsideAggregateMarkerPartValid6_0086 outsideHistoryChunk0086 := by
  unfold outsideAggregateMarkerPartValid6_0086 outsideHistoryChunk0086
  decide

def outsideAggregateLocalPartValid7_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0086 :
    outsideAggregateLocalPartValid7_0086 outsideHistoryChunk0086 := by
  unfold outsideAggregateLocalPartValid7_0086 outsideHistoryChunk0086
  decide

def outsideAggregateMarkerPartValid7_0086 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 88960
  | _ => True

theorem outsideAggregateMarkerPart7_0086 :
    outsideAggregateMarkerPartValid7_0086 outsideHistoryChunk0086 := by
  unfold outsideAggregateMarkerPartValid7_0086 outsideHistoryChunk0086
  decide

theorem outsideRange_0086 :
    outsideHistoryChunk0086.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 88064 := by
  have hl0 := outsideAggregateLocalPart0_0086
  simp only [outsideAggregateLocalPartValid0_0086, outsideHistoryChunk0086] at hl0
  have hl1 := outsideAggregateLocalPart1_0086
  simp only [outsideAggregateLocalPartValid1_0086, outsideHistoryChunk0086] at hl1
  have hl2 := outsideAggregateLocalPart2_0086
  simp only [outsideAggregateLocalPartValid2_0086, outsideHistoryChunk0086] at hl2
  have hl3 := outsideAggregateLocalPart3_0086
  simp only [outsideAggregateLocalPartValid3_0086, outsideHistoryChunk0086] at hl3
  have hl4 := outsideAggregateLocalPart4_0086
  simp only [outsideAggregateLocalPartValid4_0086, outsideHistoryChunk0086] at hl4
  have hl5 := outsideAggregateLocalPart5_0086
  simp only [outsideAggregateLocalPartValid5_0086, outsideHistoryChunk0086] at hl5
  have hl6 := outsideAggregateLocalPart6_0086
  simp only [outsideAggregateLocalPartValid6_0086, outsideHistoryChunk0086] at hl6
  have hl7 := outsideAggregateLocalPart7_0086
  simp only [outsideAggregateLocalPartValid7_0086, outsideHistoryChunk0086] at hl7
  have hm0 := outsideAggregateMarkerPart0_0086
  simp only [outsideAggregateMarkerPartValid0_0086, outsideHistoryChunk0086] at hm0
  have hm1 := outsideAggregateMarkerPart1_0086
  simp only [outsideAggregateMarkerPartValid1_0086, outsideHistoryChunk0086] at hm1
  have hm2 := outsideAggregateMarkerPart2_0086
  simp only [outsideAggregateMarkerPartValid2_0086, outsideHistoryChunk0086] at hm2
  have hm3 := outsideAggregateMarkerPart3_0086
  simp only [outsideAggregateMarkerPartValid3_0086, outsideHistoryChunk0086] at hm3
  have hm4 := outsideAggregateMarkerPart4_0086
  simp only [outsideAggregateMarkerPartValid4_0086, outsideHistoryChunk0086] at hm4
  have hm5 := outsideAggregateMarkerPart5_0086
  simp only [outsideAggregateMarkerPartValid5_0086, outsideHistoryChunk0086] at hm5
  have hm6 := outsideAggregateMarkerPart6_0086
  simp only [outsideAggregateMarkerPartValid6_0086, outsideHistoryChunk0086] at hm6
  have hm7 := outsideAggregateMarkerPart7_0086
  simp only [outsideAggregateMarkerPartValid7_0086, outsideHistoryChunk0086] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0086
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0086
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0087 :
    outsideAggregateLocalPartValid0_0087 outsideHistoryChunk0087 := by
  unfold outsideAggregateLocalPartValid0_0087 outsideHistoryChunk0087
  decide

def outsideAggregateMarkerPartValid0_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 89088
  | _ => True

theorem outsideAggregateMarkerPart0_0087 :
    outsideAggregateMarkerPartValid0_0087 outsideHistoryChunk0087 := by
  unfold outsideAggregateMarkerPartValid0_0087 outsideHistoryChunk0087
  decide

def outsideAggregateLocalPartValid1_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0087 :
    outsideAggregateLocalPartValid1_0087 outsideHistoryChunk0087 := by
  unfold outsideAggregateLocalPartValid1_0087 outsideHistoryChunk0087
  decide

def outsideAggregateMarkerPartValid1_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 89216
  | _ => True

theorem outsideAggregateMarkerPart1_0087 :
    outsideAggregateMarkerPartValid1_0087 outsideHistoryChunk0087 := by
  unfold outsideAggregateMarkerPartValid1_0087 outsideHistoryChunk0087
  decide

def outsideAggregateLocalPartValid2_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0087 :
    outsideAggregateLocalPartValid2_0087 outsideHistoryChunk0087 := by
  unfold outsideAggregateLocalPartValid2_0087 outsideHistoryChunk0087
  decide

def outsideAggregateMarkerPartValid2_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 89344
  | _ => True

theorem outsideAggregateMarkerPart2_0087 :
    outsideAggregateMarkerPartValid2_0087 outsideHistoryChunk0087 := by
  unfold outsideAggregateMarkerPartValid2_0087 outsideHistoryChunk0087
  decide

def outsideAggregateLocalPartValid3_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0087 :
    outsideAggregateLocalPartValid3_0087 outsideHistoryChunk0087 := by
  unfold outsideAggregateLocalPartValid3_0087 outsideHistoryChunk0087
  decide

def outsideAggregateMarkerPartValid3_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 89472
  | _ => True

theorem outsideAggregateMarkerPart3_0087 :
    outsideAggregateMarkerPartValid3_0087 outsideHistoryChunk0087 := by
  unfold outsideAggregateMarkerPartValid3_0087 outsideHistoryChunk0087
  decide

def outsideAggregateLocalPartValid4_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0087 :
    outsideAggregateLocalPartValid4_0087 outsideHistoryChunk0087 := by
  unfold outsideAggregateLocalPartValid4_0087 outsideHistoryChunk0087
  decide

def outsideAggregateMarkerPartValid4_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 89600
  | _ => True

theorem outsideAggregateMarkerPart4_0087 :
    outsideAggregateMarkerPartValid4_0087 outsideHistoryChunk0087 := by
  unfold outsideAggregateMarkerPartValid4_0087 outsideHistoryChunk0087
  decide

def outsideAggregateLocalPartValid5_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0087 :
    outsideAggregateLocalPartValid5_0087 outsideHistoryChunk0087 := by
  unfold outsideAggregateLocalPartValid5_0087 outsideHistoryChunk0087
  decide

def outsideAggregateMarkerPartValid5_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 89728
  | _ => True

theorem outsideAggregateMarkerPart5_0087 :
    outsideAggregateMarkerPartValid5_0087 outsideHistoryChunk0087 := by
  unfold outsideAggregateMarkerPartValid5_0087 outsideHistoryChunk0087
  decide

def outsideAggregateLocalPartValid6_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0087 :
    outsideAggregateLocalPartValid6_0087 outsideHistoryChunk0087 := by
  unfold outsideAggregateLocalPartValid6_0087 outsideHistoryChunk0087
  decide

def outsideAggregateMarkerPartValid6_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 89856
  | _ => True

theorem outsideAggregateMarkerPart6_0087 :
    outsideAggregateMarkerPartValid6_0087 outsideHistoryChunk0087 := by
  unfold outsideAggregateMarkerPartValid6_0087 outsideHistoryChunk0087
  decide

def outsideAggregateLocalPartValid7_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0087 :
    outsideAggregateLocalPartValid7_0087 outsideHistoryChunk0087 := by
  unfold outsideAggregateLocalPartValid7_0087 outsideHistoryChunk0087
  decide

def outsideAggregateMarkerPartValid7_0087 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 89984
  | _ => True

theorem outsideAggregateMarkerPart7_0087 :
    outsideAggregateMarkerPartValid7_0087 outsideHistoryChunk0087 := by
  unfold outsideAggregateMarkerPartValid7_0087 outsideHistoryChunk0087
  decide

theorem outsideRange_0087 :
    outsideHistoryChunk0087.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 89088 := by
  have hl0 := outsideAggregateLocalPart0_0087
  simp only [outsideAggregateLocalPartValid0_0087, outsideHistoryChunk0087] at hl0
  have hl1 := outsideAggregateLocalPart1_0087
  simp only [outsideAggregateLocalPartValid1_0087, outsideHistoryChunk0087] at hl1
  have hl2 := outsideAggregateLocalPart2_0087
  simp only [outsideAggregateLocalPartValid2_0087, outsideHistoryChunk0087] at hl2
  have hl3 := outsideAggregateLocalPart3_0087
  simp only [outsideAggregateLocalPartValid3_0087, outsideHistoryChunk0087] at hl3
  have hl4 := outsideAggregateLocalPart4_0087
  simp only [outsideAggregateLocalPartValid4_0087, outsideHistoryChunk0087] at hl4
  have hl5 := outsideAggregateLocalPart5_0087
  simp only [outsideAggregateLocalPartValid5_0087, outsideHistoryChunk0087] at hl5
  have hl6 := outsideAggregateLocalPart6_0087
  simp only [outsideAggregateLocalPartValid6_0087, outsideHistoryChunk0087] at hl6
  have hl7 := outsideAggregateLocalPart7_0087
  simp only [outsideAggregateLocalPartValid7_0087, outsideHistoryChunk0087] at hl7
  have hm0 := outsideAggregateMarkerPart0_0087
  simp only [outsideAggregateMarkerPartValid0_0087, outsideHistoryChunk0087] at hm0
  have hm1 := outsideAggregateMarkerPart1_0087
  simp only [outsideAggregateMarkerPartValid1_0087, outsideHistoryChunk0087] at hm1
  have hm2 := outsideAggregateMarkerPart2_0087
  simp only [outsideAggregateMarkerPartValid2_0087, outsideHistoryChunk0087] at hm2
  have hm3 := outsideAggregateMarkerPart3_0087
  simp only [outsideAggregateMarkerPartValid3_0087, outsideHistoryChunk0087] at hm3
  have hm4 := outsideAggregateMarkerPart4_0087
  simp only [outsideAggregateMarkerPartValid4_0087, outsideHistoryChunk0087] at hm4
  have hm5 := outsideAggregateMarkerPart5_0087
  simp only [outsideAggregateMarkerPartValid5_0087, outsideHistoryChunk0087] at hm5
  have hm6 := outsideAggregateMarkerPart6_0087
  simp only [outsideAggregateMarkerPartValid6_0087, outsideHistoryChunk0087] at hm6
  have hm7 := outsideAggregateMarkerPart7_0087
  simp only [outsideAggregateMarkerPartValid7_0087, outsideHistoryChunk0087] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0087
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0087
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
