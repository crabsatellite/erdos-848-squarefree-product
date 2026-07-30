import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0092
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0093
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0094
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0095

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0092, 0093, 0094, 0095 -/

def outsideAggregateLocalPartValid0_0092 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0092 :
    outsideAggregateLocalPartValid0_0092 outsideHistoryChunk0092 := by
  unfold outsideAggregateLocalPartValid0_0092 outsideHistoryChunk0092
  decide

def outsideAggregateMarkerPartValid0_0092 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 94208
  | _ => True

theorem outsideAggregateMarkerPart0_0092 :
    outsideAggregateMarkerPartValid0_0092 outsideHistoryChunk0092 := by
  unfold outsideAggregateMarkerPartValid0_0092 outsideHistoryChunk0092
  decide

def outsideAggregateLocalPartValid1_0092 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0092 :
    outsideAggregateLocalPartValid1_0092 outsideHistoryChunk0092 := by
  unfold outsideAggregateLocalPartValid1_0092 outsideHistoryChunk0092
  decide

def outsideAggregateMarkerPartValid1_0092 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 94336
  | _ => True

theorem outsideAggregateMarkerPart1_0092 :
    outsideAggregateMarkerPartValid1_0092 outsideHistoryChunk0092 := by
  unfold outsideAggregateMarkerPartValid1_0092 outsideHistoryChunk0092
  decide

def outsideAggregateLocalPartValid2_0092 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0092 :
    outsideAggregateLocalPartValid2_0092 outsideHistoryChunk0092 := by
  unfold outsideAggregateLocalPartValid2_0092 outsideHistoryChunk0092
  decide

def outsideAggregateMarkerPartValid2_0092 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 94464
  | _ => True

theorem outsideAggregateMarkerPart2_0092 :
    outsideAggregateMarkerPartValid2_0092 outsideHistoryChunk0092 := by
  unfold outsideAggregateMarkerPartValid2_0092 outsideHistoryChunk0092
  decide

def outsideAggregateLocalPartValid3_0092 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0092 :
    outsideAggregateLocalPartValid3_0092 outsideHistoryChunk0092 := by
  unfold outsideAggregateLocalPartValid3_0092 outsideHistoryChunk0092
  decide

def outsideAggregateMarkerPartValid3_0092 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 94592
  | _ => True

theorem outsideAggregateMarkerPart3_0092 :
    outsideAggregateMarkerPartValid3_0092 outsideHistoryChunk0092 := by
  unfold outsideAggregateMarkerPartValid3_0092 outsideHistoryChunk0092
  decide

def outsideAggregateLocalPartValid4_0092 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0092 :
    outsideAggregateLocalPartValid4_0092 outsideHistoryChunk0092 := by
  unfold outsideAggregateLocalPartValid4_0092 outsideHistoryChunk0092
  decide

def outsideAggregateMarkerPartValid4_0092 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 94720
  | _ => True

theorem outsideAggregateMarkerPart4_0092 :
    outsideAggregateMarkerPartValid4_0092 outsideHistoryChunk0092 := by
  unfold outsideAggregateMarkerPartValid4_0092 outsideHistoryChunk0092
  decide

def outsideAggregateLocalPartValid5_0092 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0092 :
    outsideAggregateLocalPartValid5_0092 outsideHistoryChunk0092 := by
  unfold outsideAggregateLocalPartValid5_0092 outsideHistoryChunk0092
  decide

def outsideAggregateMarkerPartValid5_0092 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 94848
  | _ => True

theorem outsideAggregateMarkerPart5_0092 :
    outsideAggregateMarkerPartValid5_0092 outsideHistoryChunk0092 := by
  unfold outsideAggregateMarkerPartValid5_0092 outsideHistoryChunk0092
  decide

def outsideAggregateLocalPartValid6_0092 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0092 :
    outsideAggregateLocalPartValid6_0092 outsideHistoryChunk0092 := by
  unfold outsideAggregateLocalPartValid6_0092 outsideHistoryChunk0092
  decide

def outsideAggregateMarkerPartValid6_0092 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 94976
  | _ => True

theorem outsideAggregateMarkerPart6_0092 :
    outsideAggregateMarkerPartValid6_0092 outsideHistoryChunk0092 := by
  unfold outsideAggregateMarkerPartValid6_0092 outsideHistoryChunk0092
  decide

def outsideAggregateLocalPartValid7_0092 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0092 :
    outsideAggregateLocalPartValid7_0092 outsideHistoryChunk0092 := by
  unfold outsideAggregateLocalPartValid7_0092 outsideHistoryChunk0092
  decide

def outsideAggregateMarkerPartValid7_0092 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 95104
  | _ => True

theorem outsideAggregateMarkerPart7_0092 :
    outsideAggregateMarkerPartValid7_0092 outsideHistoryChunk0092 := by
  unfold outsideAggregateMarkerPartValid7_0092 outsideHistoryChunk0092
  decide

theorem outsideRange_0092 :
    outsideHistoryChunk0092.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 94208 := by
  have hl0 := outsideAggregateLocalPart0_0092
  simp only [outsideAggregateLocalPartValid0_0092, outsideHistoryChunk0092] at hl0
  have hl1 := outsideAggregateLocalPart1_0092
  simp only [outsideAggregateLocalPartValid1_0092, outsideHistoryChunk0092] at hl1
  have hl2 := outsideAggregateLocalPart2_0092
  simp only [outsideAggregateLocalPartValid2_0092, outsideHistoryChunk0092] at hl2
  have hl3 := outsideAggregateLocalPart3_0092
  simp only [outsideAggregateLocalPartValid3_0092, outsideHistoryChunk0092] at hl3
  have hl4 := outsideAggregateLocalPart4_0092
  simp only [outsideAggregateLocalPartValid4_0092, outsideHistoryChunk0092] at hl4
  have hl5 := outsideAggregateLocalPart5_0092
  simp only [outsideAggregateLocalPartValid5_0092, outsideHistoryChunk0092] at hl5
  have hl6 := outsideAggregateLocalPart6_0092
  simp only [outsideAggregateLocalPartValid6_0092, outsideHistoryChunk0092] at hl6
  have hl7 := outsideAggregateLocalPart7_0092
  simp only [outsideAggregateLocalPartValid7_0092, outsideHistoryChunk0092] at hl7
  have hm0 := outsideAggregateMarkerPart0_0092
  simp only [outsideAggregateMarkerPartValid0_0092, outsideHistoryChunk0092] at hm0
  have hm1 := outsideAggregateMarkerPart1_0092
  simp only [outsideAggregateMarkerPartValid1_0092, outsideHistoryChunk0092] at hm1
  have hm2 := outsideAggregateMarkerPart2_0092
  simp only [outsideAggregateMarkerPartValid2_0092, outsideHistoryChunk0092] at hm2
  have hm3 := outsideAggregateMarkerPart3_0092
  simp only [outsideAggregateMarkerPartValid3_0092, outsideHistoryChunk0092] at hm3
  have hm4 := outsideAggregateMarkerPart4_0092
  simp only [outsideAggregateMarkerPartValid4_0092, outsideHistoryChunk0092] at hm4
  have hm5 := outsideAggregateMarkerPart5_0092
  simp only [outsideAggregateMarkerPartValid5_0092, outsideHistoryChunk0092] at hm5
  have hm6 := outsideAggregateMarkerPart6_0092
  simp only [outsideAggregateMarkerPartValid6_0092, outsideHistoryChunk0092] at hm6
  have hm7 := outsideAggregateMarkerPart7_0092
  simp only [outsideAggregateMarkerPartValid7_0092, outsideHistoryChunk0092] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0092
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0092
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0093 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0093 :
    outsideAggregateLocalPartValid0_0093 outsideHistoryChunk0093 := by
  unfold outsideAggregateLocalPartValid0_0093 outsideHistoryChunk0093
  decide

def outsideAggregateMarkerPartValid0_0093 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 95232
  | _ => True

theorem outsideAggregateMarkerPart0_0093 :
    outsideAggregateMarkerPartValid0_0093 outsideHistoryChunk0093 := by
  unfold outsideAggregateMarkerPartValid0_0093 outsideHistoryChunk0093
  decide

def outsideAggregateLocalPartValid1_0093 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0093 :
    outsideAggregateLocalPartValid1_0093 outsideHistoryChunk0093 := by
  unfold outsideAggregateLocalPartValid1_0093 outsideHistoryChunk0093
  decide

def outsideAggregateMarkerPartValid1_0093 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 95360
  | _ => True

theorem outsideAggregateMarkerPart1_0093 :
    outsideAggregateMarkerPartValid1_0093 outsideHistoryChunk0093 := by
  unfold outsideAggregateMarkerPartValid1_0093 outsideHistoryChunk0093
  decide

def outsideAggregateLocalPartValid2_0093 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0093 :
    outsideAggregateLocalPartValid2_0093 outsideHistoryChunk0093 := by
  unfold outsideAggregateLocalPartValid2_0093 outsideHistoryChunk0093
  decide

def outsideAggregateMarkerPartValid2_0093 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 95488
  | _ => True

theorem outsideAggregateMarkerPart2_0093 :
    outsideAggregateMarkerPartValid2_0093 outsideHistoryChunk0093 := by
  unfold outsideAggregateMarkerPartValid2_0093 outsideHistoryChunk0093
  decide

def outsideAggregateLocalPartValid3_0093 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0093 :
    outsideAggregateLocalPartValid3_0093 outsideHistoryChunk0093 := by
  unfold outsideAggregateLocalPartValid3_0093 outsideHistoryChunk0093
  decide

def outsideAggregateMarkerPartValid3_0093 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 95616
  | _ => True

theorem outsideAggregateMarkerPart3_0093 :
    outsideAggregateMarkerPartValid3_0093 outsideHistoryChunk0093 := by
  unfold outsideAggregateMarkerPartValid3_0093 outsideHistoryChunk0093
  decide

def outsideAggregateLocalPartValid4_0093 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0093 :
    outsideAggregateLocalPartValid4_0093 outsideHistoryChunk0093 := by
  unfold outsideAggregateLocalPartValid4_0093 outsideHistoryChunk0093
  decide

def outsideAggregateMarkerPartValid4_0093 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 95744
  | _ => True

theorem outsideAggregateMarkerPart4_0093 :
    outsideAggregateMarkerPartValid4_0093 outsideHistoryChunk0093 := by
  unfold outsideAggregateMarkerPartValid4_0093 outsideHistoryChunk0093
  decide

def outsideAggregateLocalPartValid5_0093 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0093 :
    outsideAggregateLocalPartValid5_0093 outsideHistoryChunk0093 := by
  unfold outsideAggregateLocalPartValid5_0093 outsideHistoryChunk0093
  decide

def outsideAggregateMarkerPartValid5_0093 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 95872
  | _ => True

theorem outsideAggregateMarkerPart5_0093 :
    outsideAggregateMarkerPartValid5_0093 outsideHistoryChunk0093 := by
  unfold outsideAggregateMarkerPartValid5_0093 outsideHistoryChunk0093
  decide

def outsideAggregateLocalPartValid6_0093 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0093 :
    outsideAggregateLocalPartValid6_0093 outsideHistoryChunk0093 := by
  unfold outsideAggregateLocalPartValid6_0093 outsideHistoryChunk0093
  decide

def outsideAggregateMarkerPartValid6_0093 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 96000
  | _ => True

theorem outsideAggregateMarkerPart6_0093 :
    outsideAggregateMarkerPartValid6_0093 outsideHistoryChunk0093 := by
  unfold outsideAggregateMarkerPartValid6_0093 outsideHistoryChunk0093
  decide

def outsideAggregateLocalPartValid7_0093 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0093 :
    outsideAggregateLocalPartValid7_0093 outsideHistoryChunk0093 := by
  unfold outsideAggregateLocalPartValid7_0093 outsideHistoryChunk0093
  decide

def outsideAggregateMarkerPartValid7_0093 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 96128
  | _ => True

theorem outsideAggregateMarkerPart7_0093 :
    outsideAggregateMarkerPartValid7_0093 outsideHistoryChunk0093 := by
  unfold outsideAggregateMarkerPartValid7_0093 outsideHistoryChunk0093
  decide

theorem outsideRange_0093 :
    outsideHistoryChunk0093.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 95232 := by
  have hl0 := outsideAggregateLocalPart0_0093
  simp only [outsideAggregateLocalPartValid0_0093, outsideHistoryChunk0093] at hl0
  have hl1 := outsideAggregateLocalPart1_0093
  simp only [outsideAggregateLocalPartValid1_0093, outsideHistoryChunk0093] at hl1
  have hl2 := outsideAggregateLocalPart2_0093
  simp only [outsideAggregateLocalPartValid2_0093, outsideHistoryChunk0093] at hl2
  have hl3 := outsideAggregateLocalPart3_0093
  simp only [outsideAggregateLocalPartValid3_0093, outsideHistoryChunk0093] at hl3
  have hl4 := outsideAggregateLocalPart4_0093
  simp only [outsideAggregateLocalPartValid4_0093, outsideHistoryChunk0093] at hl4
  have hl5 := outsideAggregateLocalPart5_0093
  simp only [outsideAggregateLocalPartValid5_0093, outsideHistoryChunk0093] at hl5
  have hl6 := outsideAggregateLocalPart6_0093
  simp only [outsideAggregateLocalPartValid6_0093, outsideHistoryChunk0093] at hl6
  have hl7 := outsideAggregateLocalPart7_0093
  simp only [outsideAggregateLocalPartValid7_0093, outsideHistoryChunk0093] at hl7
  have hm0 := outsideAggregateMarkerPart0_0093
  simp only [outsideAggregateMarkerPartValid0_0093, outsideHistoryChunk0093] at hm0
  have hm1 := outsideAggregateMarkerPart1_0093
  simp only [outsideAggregateMarkerPartValid1_0093, outsideHistoryChunk0093] at hm1
  have hm2 := outsideAggregateMarkerPart2_0093
  simp only [outsideAggregateMarkerPartValid2_0093, outsideHistoryChunk0093] at hm2
  have hm3 := outsideAggregateMarkerPart3_0093
  simp only [outsideAggregateMarkerPartValid3_0093, outsideHistoryChunk0093] at hm3
  have hm4 := outsideAggregateMarkerPart4_0093
  simp only [outsideAggregateMarkerPartValid4_0093, outsideHistoryChunk0093] at hm4
  have hm5 := outsideAggregateMarkerPart5_0093
  simp only [outsideAggregateMarkerPartValid5_0093, outsideHistoryChunk0093] at hm5
  have hm6 := outsideAggregateMarkerPart6_0093
  simp only [outsideAggregateMarkerPartValid6_0093, outsideHistoryChunk0093] at hm6
  have hm7 := outsideAggregateMarkerPart7_0093
  simp only [outsideAggregateMarkerPartValid7_0093, outsideHistoryChunk0093] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0093
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0093
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0094 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0094 :
    outsideAggregateLocalPartValid0_0094 outsideHistoryChunk0094 := by
  unfold outsideAggregateLocalPartValid0_0094 outsideHistoryChunk0094
  decide

def outsideAggregateMarkerPartValid0_0094 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 96256
  | _ => True

theorem outsideAggregateMarkerPart0_0094 :
    outsideAggregateMarkerPartValid0_0094 outsideHistoryChunk0094 := by
  unfold outsideAggregateMarkerPartValid0_0094 outsideHistoryChunk0094
  decide

def outsideAggregateLocalPartValid1_0094 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0094 :
    outsideAggregateLocalPartValid1_0094 outsideHistoryChunk0094 := by
  unfold outsideAggregateLocalPartValid1_0094 outsideHistoryChunk0094
  decide

def outsideAggregateMarkerPartValid1_0094 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 96384
  | _ => True

theorem outsideAggregateMarkerPart1_0094 :
    outsideAggregateMarkerPartValid1_0094 outsideHistoryChunk0094 := by
  unfold outsideAggregateMarkerPartValid1_0094 outsideHistoryChunk0094
  decide

def outsideAggregateLocalPartValid2_0094 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0094 :
    outsideAggregateLocalPartValid2_0094 outsideHistoryChunk0094 := by
  unfold outsideAggregateLocalPartValid2_0094 outsideHistoryChunk0094
  decide

def outsideAggregateMarkerPartValid2_0094 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 96512
  | _ => True

theorem outsideAggregateMarkerPart2_0094 :
    outsideAggregateMarkerPartValid2_0094 outsideHistoryChunk0094 := by
  unfold outsideAggregateMarkerPartValid2_0094 outsideHistoryChunk0094
  decide

def outsideAggregateLocalPartValid3_0094 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0094 :
    outsideAggregateLocalPartValid3_0094 outsideHistoryChunk0094 := by
  unfold outsideAggregateLocalPartValid3_0094 outsideHistoryChunk0094
  decide

def outsideAggregateMarkerPartValid3_0094 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 96640
  | _ => True

theorem outsideAggregateMarkerPart3_0094 :
    outsideAggregateMarkerPartValid3_0094 outsideHistoryChunk0094 := by
  unfold outsideAggregateMarkerPartValid3_0094 outsideHistoryChunk0094
  decide

def outsideAggregateLocalPartValid4_0094 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0094 :
    outsideAggregateLocalPartValid4_0094 outsideHistoryChunk0094 := by
  unfold outsideAggregateLocalPartValid4_0094 outsideHistoryChunk0094
  decide

def outsideAggregateMarkerPartValid4_0094 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 96768
  | _ => True

theorem outsideAggregateMarkerPart4_0094 :
    outsideAggregateMarkerPartValid4_0094 outsideHistoryChunk0094 := by
  unfold outsideAggregateMarkerPartValid4_0094 outsideHistoryChunk0094
  decide

def outsideAggregateLocalPartValid5_0094 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0094 :
    outsideAggregateLocalPartValid5_0094 outsideHistoryChunk0094 := by
  unfold outsideAggregateLocalPartValid5_0094 outsideHistoryChunk0094
  decide

def outsideAggregateMarkerPartValid5_0094 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 96896
  | _ => True

theorem outsideAggregateMarkerPart5_0094 :
    outsideAggregateMarkerPartValid5_0094 outsideHistoryChunk0094 := by
  unfold outsideAggregateMarkerPartValid5_0094 outsideHistoryChunk0094
  decide

def outsideAggregateLocalPartValid6_0094 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0094 :
    outsideAggregateLocalPartValid6_0094 outsideHistoryChunk0094 := by
  unfold outsideAggregateLocalPartValid6_0094 outsideHistoryChunk0094
  decide

def outsideAggregateMarkerPartValid6_0094 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 97024
  | _ => True

theorem outsideAggregateMarkerPart6_0094 :
    outsideAggregateMarkerPartValid6_0094 outsideHistoryChunk0094 := by
  unfold outsideAggregateMarkerPartValid6_0094 outsideHistoryChunk0094
  decide

def outsideAggregateLocalPartValid7_0094 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0094 :
    outsideAggregateLocalPartValid7_0094 outsideHistoryChunk0094 := by
  unfold outsideAggregateLocalPartValid7_0094 outsideHistoryChunk0094
  decide

def outsideAggregateMarkerPartValid7_0094 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 97152
  | _ => True

theorem outsideAggregateMarkerPart7_0094 :
    outsideAggregateMarkerPartValid7_0094 outsideHistoryChunk0094 := by
  unfold outsideAggregateMarkerPartValid7_0094 outsideHistoryChunk0094
  decide

theorem outsideRange_0094 :
    outsideHistoryChunk0094.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 96256 := by
  have hl0 := outsideAggregateLocalPart0_0094
  simp only [outsideAggregateLocalPartValid0_0094, outsideHistoryChunk0094] at hl0
  have hl1 := outsideAggregateLocalPart1_0094
  simp only [outsideAggregateLocalPartValid1_0094, outsideHistoryChunk0094] at hl1
  have hl2 := outsideAggregateLocalPart2_0094
  simp only [outsideAggregateLocalPartValid2_0094, outsideHistoryChunk0094] at hl2
  have hl3 := outsideAggregateLocalPart3_0094
  simp only [outsideAggregateLocalPartValid3_0094, outsideHistoryChunk0094] at hl3
  have hl4 := outsideAggregateLocalPart4_0094
  simp only [outsideAggregateLocalPartValid4_0094, outsideHistoryChunk0094] at hl4
  have hl5 := outsideAggregateLocalPart5_0094
  simp only [outsideAggregateLocalPartValid5_0094, outsideHistoryChunk0094] at hl5
  have hl6 := outsideAggregateLocalPart6_0094
  simp only [outsideAggregateLocalPartValid6_0094, outsideHistoryChunk0094] at hl6
  have hl7 := outsideAggregateLocalPart7_0094
  simp only [outsideAggregateLocalPartValid7_0094, outsideHistoryChunk0094] at hl7
  have hm0 := outsideAggregateMarkerPart0_0094
  simp only [outsideAggregateMarkerPartValid0_0094, outsideHistoryChunk0094] at hm0
  have hm1 := outsideAggregateMarkerPart1_0094
  simp only [outsideAggregateMarkerPartValid1_0094, outsideHistoryChunk0094] at hm1
  have hm2 := outsideAggregateMarkerPart2_0094
  simp only [outsideAggregateMarkerPartValid2_0094, outsideHistoryChunk0094] at hm2
  have hm3 := outsideAggregateMarkerPart3_0094
  simp only [outsideAggregateMarkerPartValid3_0094, outsideHistoryChunk0094] at hm3
  have hm4 := outsideAggregateMarkerPart4_0094
  simp only [outsideAggregateMarkerPartValid4_0094, outsideHistoryChunk0094] at hm4
  have hm5 := outsideAggregateMarkerPart5_0094
  simp only [outsideAggregateMarkerPartValid5_0094, outsideHistoryChunk0094] at hm5
  have hm6 := outsideAggregateMarkerPart6_0094
  simp only [outsideAggregateMarkerPartValid6_0094, outsideHistoryChunk0094] at hm6
  have hm7 := outsideAggregateMarkerPart7_0094
  simp only [outsideAggregateMarkerPartValid7_0094, outsideHistoryChunk0094] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0094
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0094
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0095 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0095 :
    outsideAggregateLocalPartValid0_0095 outsideHistoryChunk0095 := by
  unfold outsideAggregateLocalPartValid0_0095 outsideHistoryChunk0095
  decide

def outsideAggregateMarkerPartValid0_0095 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 97280
  | _ => True

theorem outsideAggregateMarkerPart0_0095 :
    outsideAggregateMarkerPartValid0_0095 outsideHistoryChunk0095 := by
  unfold outsideAggregateMarkerPartValid0_0095 outsideHistoryChunk0095
  decide

def outsideAggregateLocalPartValid1_0095 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0095 :
    outsideAggregateLocalPartValid1_0095 outsideHistoryChunk0095 := by
  unfold outsideAggregateLocalPartValid1_0095 outsideHistoryChunk0095
  decide

def outsideAggregateMarkerPartValid1_0095 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 97408
  | _ => True

theorem outsideAggregateMarkerPart1_0095 :
    outsideAggregateMarkerPartValid1_0095 outsideHistoryChunk0095 := by
  unfold outsideAggregateMarkerPartValid1_0095 outsideHistoryChunk0095
  decide

def outsideAggregateLocalPartValid2_0095 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0095 :
    outsideAggregateLocalPartValid2_0095 outsideHistoryChunk0095 := by
  unfold outsideAggregateLocalPartValid2_0095 outsideHistoryChunk0095
  decide

def outsideAggregateMarkerPartValid2_0095 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 97536
  | _ => True

theorem outsideAggregateMarkerPart2_0095 :
    outsideAggregateMarkerPartValid2_0095 outsideHistoryChunk0095 := by
  unfold outsideAggregateMarkerPartValid2_0095 outsideHistoryChunk0095
  decide

def outsideAggregateLocalPartValid3_0095 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0095 :
    outsideAggregateLocalPartValid3_0095 outsideHistoryChunk0095 := by
  unfold outsideAggregateLocalPartValid3_0095 outsideHistoryChunk0095
  decide

def outsideAggregateMarkerPartValid3_0095 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 97664
  | _ => True

theorem outsideAggregateMarkerPart3_0095 :
    outsideAggregateMarkerPartValid3_0095 outsideHistoryChunk0095 := by
  unfold outsideAggregateMarkerPartValid3_0095 outsideHistoryChunk0095
  decide

def outsideAggregateLocalPartValid4_0095 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0095 :
    outsideAggregateLocalPartValid4_0095 outsideHistoryChunk0095 := by
  unfold outsideAggregateLocalPartValid4_0095 outsideHistoryChunk0095
  decide

def outsideAggregateMarkerPartValid4_0095 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 97792
  | _ => True

theorem outsideAggregateMarkerPart4_0095 :
    outsideAggregateMarkerPartValid4_0095 outsideHistoryChunk0095 := by
  unfold outsideAggregateMarkerPartValid4_0095 outsideHistoryChunk0095
  decide

def outsideAggregateLocalPartValid5_0095 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0095 :
    outsideAggregateLocalPartValid5_0095 outsideHistoryChunk0095 := by
  unfold outsideAggregateLocalPartValid5_0095 outsideHistoryChunk0095
  decide

def outsideAggregateMarkerPartValid5_0095 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 97920
  | _ => True

theorem outsideAggregateMarkerPart5_0095 :
    outsideAggregateMarkerPartValid5_0095 outsideHistoryChunk0095 := by
  unfold outsideAggregateMarkerPartValid5_0095 outsideHistoryChunk0095
  decide

def outsideAggregateLocalPartValid6_0095 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0095 :
    outsideAggregateLocalPartValid6_0095 outsideHistoryChunk0095 := by
  unfold outsideAggregateLocalPartValid6_0095 outsideHistoryChunk0095
  decide

def outsideAggregateMarkerPartValid6_0095 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 98048
  | _ => True

theorem outsideAggregateMarkerPart6_0095 :
    outsideAggregateMarkerPartValid6_0095 outsideHistoryChunk0095 := by
  unfold outsideAggregateMarkerPartValid6_0095 outsideHistoryChunk0095
  decide

def outsideAggregateLocalPartValid7_0095 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0095 :
    outsideAggregateLocalPartValid7_0095 outsideHistoryChunk0095 := by
  unfold outsideAggregateLocalPartValid7_0095 outsideHistoryChunk0095
  decide

def outsideAggregateMarkerPartValid7_0095 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 98176
  | _ => True

theorem outsideAggregateMarkerPart7_0095 :
    outsideAggregateMarkerPartValid7_0095 outsideHistoryChunk0095 := by
  unfold outsideAggregateMarkerPartValid7_0095 outsideHistoryChunk0095
  decide

theorem outsideRange_0095 :
    outsideHistoryChunk0095.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 97280 := by
  have hl0 := outsideAggregateLocalPart0_0095
  simp only [outsideAggregateLocalPartValid0_0095, outsideHistoryChunk0095] at hl0
  have hl1 := outsideAggregateLocalPart1_0095
  simp only [outsideAggregateLocalPartValid1_0095, outsideHistoryChunk0095] at hl1
  have hl2 := outsideAggregateLocalPart2_0095
  simp only [outsideAggregateLocalPartValid2_0095, outsideHistoryChunk0095] at hl2
  have hl3 := outsideAggregateLocalPart3_0095
  simp only [outsideAggregateLocalPartValid3_0095, outsideHistoryChunk0095] at hl3
  have hl4 := outsideAggregateLocalPart4_0095
  simp only [outsideAggregateLocalPartValid4_0095, outsideHistoryChunk0095] at hl4
  have hl5 := outsideAggregateLocalPart5_0095
  simp only [outsideAggregateLocalPartValid5_0095, outsideHistoryChunk0095] at hl5
  have hl6 := outsideAggregateLocalPart6_0095
  simp only [outsideAggregateLocalPartValid6_0095, outsideHistoryChunk0095] at hl6
  have hl7 := outsideAggregateLocalPart7_0095
  simp only [outsideAggregateLocalPartValid7_0095, outsideHistoryChunk0095] at hl7
  have hm0 := outsideAggregateMarkerPart0_0095
  simp only [outsideAggregateMarkerPartValid0_0095, outsideHistoryChunk0095] at hm0
  have hm1 := outsideAggregateMarkerPart1_0095
  simp only [outsideAggregateMarkerPartValid1_0095, outsideHistoryChunk0095] at hm1
  have hm2 := outsideAggregateMarkerPart2_0095
  simp only [outsideAggregateMarkerPartValid2_0095, outsideHistoryChunk0095] at hm2
  have hm3 := outsideAggregateMarkerPart3_0095
  simp only [outsideAggregateMarkerPartValid3_0095, outsideHistoryChunk0095] at hm3
  have hm4 := outsideAggregateMarkerPart4_0095
  simp only [outsideAggregateMarkerPartValid4_0095, outsideHistoryChunk0095] at hm4
  have hm5 := outsideAggregateMarkerPart5_0095
  simp only [outsideAggregateMarkerPartValid5_0095, outsideHistoryChunk0095] at hm5
  have hm6 := outsideAggregateMarkerPart6_0095
  simp only [outsideAggregateMarkerPartValid6_0095, outsideHistoryChunk0095] at hm6
  have hm7 := outsideAggregateMarkerPart7_0095
  simp only [outsideAggregateMarkerPartValid7_0095, outsideHistoryChunk0095] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0095
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0095
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
