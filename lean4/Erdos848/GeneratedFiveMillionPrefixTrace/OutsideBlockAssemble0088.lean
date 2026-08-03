import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0088
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0089
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0090
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0091

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0088, 0089, 0090, 0091 -/

def outsideAggregateLocalPartValid0_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0088 :
    outsideAggregateLocalPartValid0_0088 outsideHistoryChunk0088 := by
  unfold outsideAggregateLocalPartValid0_0088 outsideHistoryChunk0088
  decide

def outsideAggregateMarkerPartValid0_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 90112
  | _ => True

theorem outsideAggregateMarkerPart0_0088 :
    outsideAggregateMarkerPartValid0_0088 outsideHistoryChunk0088 := by
  unfold outsideAggregateMarkerPartValid0_0088 outsideHistoryChunk0088
  decide

def outsideAggregateLocalPartValid1_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0088 :
    outsideAggregateLocalPartValid1_0088 outsideHistoryChunk0088 := by
  unfold outsideAggregateLocalPartValid1_0088 outsideHistoryChunk0088
  decide

def outsideAggregateMarkerPartValid1_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 90240
  | _ => True

theorem outsideAggregateMarkerPart1_0088 :
    outsideAggregateMarkerPartValid1_0088 outsideHistoryChunk0088 := by
  unfold outsideAggregateMarkerPartValid1_0088 outsideHistoryChunk0088
  decide

def outsideAggregateLocalPartValid2_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0088 :
    outsideAggregateLocalPartValid2_0088 outsideHistoryChunk0088 := by
  unfold outsideAggregateLocalPartValid2_0088 outsideHistoryChunk0088
  decide

def outsideAggregateMarkerPartValid2_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 90368
  | _ => True

theorem outsideAggregateMarkerPart2_0088 :
    outsideAggregateMarkerPartValid2_0088 outsideHistoryChunk0088 := by
  unfold outsideAggregateMarkerPartValid2_0088 outsideHistoryChunk0088
  decide

def outsideAggregateLocalPartValid3_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0088 :
    outsideAggregateLocalPartValid3_0088 outsideHistoryChunk0088 := by
  unfold outsideAggregateLocalPartValid3_0088 outsideHistoryChunk0088
  decide

def outsideAggregateMarkerPartValid3_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 90496
  | _ => True

theorem outsideAggregateMarkerPart3_0088 :
    outsideAggregateMarkerPartValid3_0088 outsideHistoryChunk0088 := by
  unfold outsideAggregateMarkerPartValid3_0088 outsideHistoryChunk0088
  decide

def outsideAggregateLocalPartValid4_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0088 :
    outsideAggregateLocalPartValid4_0088 outsideHistoryChunk0088 := by
  unfold outsideAggregateLocalPartValid4_0088 outsideHistoryChunk0088
  decide

def outsideAggregateMarkerPartValid4_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 90624
  | _ => True

theorem outsideAggregateMarkerPart4_0088 :
    outsideAggregateMarkerPartValid4_0088 outsideHistoryChunk0088 := by
  unfold outsideAggregateMarkerPartValid4_0088 outsideHistoryChunk0088
  decide

def outsideAggregateLocalPartValid5_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0088 :
    outsideAggregateLocalPartValid5_0088 outsideHistoryChunk0088 := by
  unfold outsideAggregateLocalPartValid5_0088 outsideHistoryChunk0088
  decide

def outsideAggregateMarkerPartValid5_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 90752
  | _ => True

theorem outsideAggregateMarkerPart5_0088 :
    outsideAggregateMarkerPartValid5_0088 outsideHistoryChunk0088 := by
  unfold outsideAggregateMarkerPartValid5_0088 outsideHistoryChunk0088
  decide

def outsideAggregateLocalPartValid6_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0088 :
    outsideAggregateLocalPartValid6_0088 outsideHistoryChunk0088 := by
  unfold outsideAggregateLocalPartValid6_0088 outsideHistoryChunk0088
  decide

def outsideAggregateMarkerPartValid6_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 90880
  | _ => True

theorem outsideAggregateMarkerPart6_0088 :
    outsideAggregateMarkerPartValid6_0088 outsideHistoryChunk0088 := by
  unfold outsideAggregateMarkerPartValid6_0088 outsideHistoryChunk0088
  decide

def outsideAggregateLocalPartValid7_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0088 :
    outsideAggregateLocalPartValid7_0088 outsideHistoryChunk0088 := by
  unfold outsideAggregateLocalPartValid7_0088 outsideHistoryChunk0088
  decide

def outsideAggregateMarkerPartValid7_0088 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 91008
  | _ => True

theorem outsideAggregateMarkerPart7_0088 :
    outsideAggregateMarkerPartValid7_0088 outsideHistoryChunk0088 := by
  unfold outsideAggregateMarkerPartValid7_0088 outsideHistoryChunk0088
  decide

theorem outsideRange_0088 :
    outsideHistoryChunk0088.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 90112 := by
  have hl0 := outsideAggregateLocalPart0_0088
  simp only [outsideAggregateLocalPartValid0_0088, outsideHistoryChunk0088] at hl0
  have hl1 := outsideAggregateLocalPart1_0088
  simp only [outsideAggregateLocalPartValid1_0088, outsideHistoryChunk0088] at hl1
  have hl2 := outsideAggregateLocalPart2_0088
  simp only [outsideAggregateLocalPartValid2_0088, outsideHistoryChunk0088] at hl2
  have hl3 := outsideAggregateLocalPart3_0088
  simp only [outsideAggregateLocalPartValid3_0088, outsideHistoryChunk0088] at hl3
  have hl4 := outsideAggregateLocalPart4_0088
  simp only [outsideAggregateLocalPartValid4_0088, outsideHistoryChunk0088] at hl4
  have hl5 := outsideAggregateLocalPart5_0088
  simp only [outsideAggregateLocalPartValid5_0088, outsideHistoryChunk0088] at hl5
  have hl6 := outsideAggregateLocalPart6_0088
  simp only [outsideAggregateLocalPartValid6_0088, outsideHistoryChunk0088] at hl6
  have hl7 := outsideAggregateLocalPart7_0088
  simp only [outsideAggregateLocalPartValid7_0088, outsideHistoryChunk0088] at hl7
  have hm0 := outsideAggregateMarkerPart0_0088
  simp only [outsideAggregateMarkerPartValid0_0088, outsideHistoryChunk0088] at hm0
  have hm1 := outsideAggregateMarkerPart1_0088
  simp only [outsideAggregateMarkerPartValid1_0088, outsideHistoryChunk0088] at hm1
  have hm2 := outsideAggregateMarkerPart2_0088
  simp only [outsideAggregateMarkerPartValid2_0088, outsideHistoryChunk0088] at hm2
  have hm3 := outsideAggregateMarkerPart3_0088
  simp only [outsideAggregateMarkerPartValid3_0088, outsideHistoryChunk0088] at hm3
  have hm4 := outsideAggregateMarkerPart4_0088
  simp only [outsideAggregateMarkerPartValid4_0088, outsideHistoryChunk0088] at hm4
  have hm5 := outsideAggregateMarkerPart5_0088
  simp only [outsideAggregateMarkerPartValid5_0088, outsideHistoryChunk0088] at hm5
  have hm6 := outsideAggregateMarkerPart6_0088
  simp only [outsideAggregateMarkerPartValid6_0088, outsideHistoryChunk0088] at hm6
  have hm7 := outsideAggregateMarkerPart7_0088
  simp only [outsideAggregateMarkerPartValid7_0088, outsideHistoryChunk0088] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0088
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0088
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0089 :
    outsideAggregateLocalPartValid0_0089 outsideHistoryChunk0089 := by
  unfold outsideAggregateLocalPartValid0_0089 outsideHistoryChunk0089
  decide

def outsideAggregateMarkerPartValid0_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 91136
  | _ => True

theorem outsideAggregateMarkerPart0_0089 :
    outsideAggregateMarkerPartValid0_0089 outsideHistoryChunk0089 := by
  unfold outsideAggregateMarkerPartValid0_0089 outsideHistoryChunk0089
  decide

def outsideAggregateLocalPartValid1_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0089 :
    outsideAggregateLocalPartValid1_0089 outsideHistoryChunk0089 := by
  unfold outsideAggregateLocalPartValid1_0089 outsideHistoryChunk0089
  decide

def outsideAggregateMarkerPartValid1_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 91264
  | _ => True

theorem outsideAggregateMarkerPart1_0089 :
    outsideAggregateMarkerPartValid1_0089 outsideHistoryChunk0089 := by
  unfold outsideAggregateMarkerPartValid1_0089 outsideHistoryChunk0089
  decide

def outsideAggregateLocalPartValid2_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0089 :
    outsideAggregateLocalPartValid2_0089 outsideHistoryChunk0089 := by
  unfold outsideAggregateLocalPartValid2_0089 outsideHistoryChunk0089
  decide

def outsideAggregateMarkerPartValid2_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 91392
  | _ => True

theorem outsideAggregateMarkerPart2_0089 :
    outsideAggregateMarkerPartValid2_0089 outsideHistoryChunk0089 := by
  unfold outsideAggregateMarkerPartValid2_0089 outsideHistoryChunk0089
  decide

def outsideAggregateLocalPartValid3_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0089 :
    outsideAggregateLocalPartValid3_0089 outsideHistoryChunk0089 := by
  unfold outsideAggregateLocalPartValid3_0089 outsideHistoryChunk0089
  decide

def outsideAggregateMarkerPartValid3_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 91520
  | _ => True

theorem outsideAggregateMarkerPart3_0089 :
    outsideAggregateMarkerPartValid3_0089 outsideHistoryChunk0089 := by
  unfold outsideAggregateMarkerPartValid3_0089 outsideHistoryChunk0089
  decide

def outsideAggregateLocalPartValid4_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0089 :
    outsideAggregateLocalPartValid4_0089 outsideHistoryChunk0089 := by
  unfold outsideAggregateLocalPartValid4_0089 outsideHistoryChunk0089
  decide

def outsideAggregateMarkerPartValid4_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 91648
  | _ => True

theorem outsideAggregateMarkerPart4_0089 :
    outsideAggregateMarkerPartValid4_0089 outsideHistoryChunk0089 := by
  unfold outsideAggregateMarkerPartValid4_0089 outsideHistoryChunk0089
  decide

def outsideAggregateLocalPartValid5_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0089 :
    outsideAggregateLocalPartValid5_0089 outsideHistoryChunk0089 := by
  unfold outsideAggregateLocalPartValid5_0089 outsideHistoryChunk0089
  decide

def outsideAggregateMarkerPartValid5_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 91776
  | _ => True

theorem outsideAggregateMarkerPart5_0089 :
    outsideAggregateMarkerPartValid5_0089 outsideHistoryChunk0089 := by
  unfold outsideAggregateMarkerPartValid5_0089 outsideHistoryChunk0089
  decide

def outsideAggregateLocalPartValid6_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0089 :
    outsideAggregateLocalPartValid6_0089 outsideHistoryChunk0089 := by
  unfold outsideAggregateLocalPartValid6_0089 outsideHistoryChunk0089
  decide

def outsideAggregateMarkerPartValid6_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 91904
  | _ => True

theorem outsideAggregateMarkerPart6_0089 :
    outsideAggregateMarkerPartValid6_0089 outsideHistoryChunk0089 := by
  unfold outsideAggregateMarkerPartValid6_0089 outsideHistoryChunk0089
  decide

def outsideAggregateLocalPartValid7_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0089 :
    outsideAggregateLocalPartValid7_0089 outsideHistoryChunk0089 := by
  unfold outsideAggregateLocalPartValid7_0089 outsideHistoryChunk0089
  decide

def outsideAggregateMarkerPartValid7_0089 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 92032
  | _ => True

theorem outsideAggregateMarkerPart7_0089 :
    outsideAggregateMarkerPartValid7_0089 outsideHistoryChunk0089 := by
  unfold outsideAggregateMarkerPartValid7_0089 outsideHistoryChunk0089
  decide

theorem outsideRange_0089 :
    outsideHistoryChunk0089.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 91136 := by
  have hl0 := outsideAggregateLocalPart0_0089
  simp only [outsideAggregateLocalPartValid0_0089, outsideHistoryChunk0089] at hl0
  have hl1 := outsideAggregateLocalPart1_0089
  simp only [outsideAggregateLocalPartValid1_0089, outsideHistoryChunk0089] at hl1
  have hl2 := outsideAggregateLocalPart2_0089
  simp only [outsideAggregateLocalPartValid2_0089, outsideHistoryChunk0089] at hl2
  have hl3 := outsideAggregateLocalPart3_0089
  simp only [outsideAggregateLocalPartValid3_0089, outsideHistoryChunk0089] at hl3
  have hl4 := outsideAggregateLocalPart4_0089
  simp only [outsideAggregateLocalPartValid4_0089, outsideHistoryChunk0089] at hl4
  have hl5 := outsideAggregateLocalPart5_0089
  simp only [outsideAggregateLocalPartValid5_0089, outsideHistoryChunk0089] at hl5
  have hl6 := outsideAggregateLocalPart6_0089
  simp only [outsideAggregateLocalPartValid6_0089, outsideHistoryChunk0089] at hl6
  have hl7 := outsideAggregateLocalPart7_0089
  simp only [outsideAggregateLocalPartValid7_0089, outsideHistoryChunk0089] at hl7
  have hm0 := outsideAggregateMarkerPart0_0089
  simp only [outsideAggregateMarkerPartValid0_0089, outsideHistoryChunk0089] at hm0
  have hm1 := outsideAggregateMarkerPart1_0089
  simp only [outsideAggregateMarkerPartValid1_0089, outsideHistoryChunk0089] at hm1
  have hm2 := outsideAggregateMarkerPart2_0089
  simp only [outsideAggregateMarkerPartValid2_0089, outsideHistoryChunk0089] at hm2
  have hm3 := outsideAggregateMarkerPart3_0089
  simp only [outsideAggregateMarkerPartValid3_0089, outsideHistoryChunk0089] at hm3
  have hm4 := outsideAggregateMarkerPart4_0089
  simp only [outsideAggregateMarkerPartValid4_0089, outsideHistoryChunk0089] at hm4
  have hm5 := outsideAggregateMarkerPart5_0089
  simp only [outsideAggregateMarkerPartValid5_0089, outsideHistoryChunk0089] at hm5
  have hm6 := outsideAggregateMarkerPart6_0089
  simp only [outsideAggregateMarkerPartValid6_0089, outsideHistoryChunk0089] at hm6
  have hm7 := outsideAggregateMarkerPart7_0089
  simp only [outsideAggregateMarkerPartValid7_0089, outsideHistoryChunk0089] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0089
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0089
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0090 :
    outsideAggregateLocalPartValid0_0090 outsideHistoryChunk0090 := by
  unfold outsideAggregateLocalPartValid0_0090 outsideHistoryChunk0090
  decide

def outsideAggregateMarkerPartValid0_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 92160
  | _ => True

theorem outsideAggregateMarkerPart0_0090 :
    outsideAggregateMarkerPartValid0_0090 outsideHistoryChunk0090 := by
  unfold outsideAggregateMarkerPartValid0_0090 outsideHistoryChunk0090
  decide

def outsideAggregateLocalPartValid1_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0090 :
    outsideAggregateLocalPartValid1_0090 outsideHistoryChunk0090 := by
  unfold outsideAggregateLocalPartValid1_0090 outsideHistoryChunk0090
  decide

def outsideAggregateMarkerPartValid1_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 92288
  | _ => True

theorem outsideAggregateMarkerPart1_0090 :
    outsideAggregateMarkerPartValid1_0090 outsideHistoryChunk0090 := by
  unfold outsideAggregateMarkerPartValid1_0090 outsideHistoryChunk0090
  decide

def outsideAggregateLocalPartValid2_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0090 :
    outsideAggregateLocalPartValid2_0090 outsideHistoryChunk0090 := by
  unfold outsideAggregateLocalPartValid2_0090 outsideHistoryChunk0090
  decide

def outsideAggregateMarkerPartValid2_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 92416
  | _ => True

theorem outsideAggregateMarkerPart2_0090 :
    outsideAggregateMarkerPartValid2_0090 outsideHistoryChunk0090 := by
  unfold outsideAggregateMarkerPartValid2_0090 outsideHistoryChunk0090
  decide

def outsideAggregateLocalPartValid3_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0090 :
    outsideAggregateLocalPartValid3_0090 outsideHistoryChunk0090 := by
  unfold outsideAggregateLocalPartValid3_0090 outsideHistoryChunk0090
  decide

def outsideAggregateMarkerPartValid3_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 92544
  | _ => True

theorem outsideAggregateMarkerPart3_0090 :
    outsideAggregateMarkerPartValid3_0090 outsideHistoryChunk0090 := by
  unfold outsideAggregateMarkerPartValid3_0090 outsideHistoryChunk0090
  decide

def outsideAggregateLocalPartValid4_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0090 :
    outsideAggregateLocalPartValid4_0090 outsideHistoryChunk0090 := by
  unfold outsideAggregateLocalPartValid4_0090 outsideHistoryChunk0090
  decide

def outsideAggregateMarkerPartValid4_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 92672
  | _ => True

theorem outsideAggregateMarkerPart4_0090 :
    outsideAggregateMarkerPartValid4_0090 outsideHistoryChunk0090 := by
  unfold outsideAggregateMarkerPartValid4_0090 outsideHistoryChunk0090
  decide

def outsideAggregateLocalPartValid5_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0090 :
    outsideAggregateLocalPartValid5_0090 outsideHistoryChunk0090 := by
  unfold outsideAggregateLocalPartValid5_0090 outsideHistoryChunk0090
  decide

def outsideAggregateMarkerPartValid5_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 92800
  | _ => True

theorem outsideAggregateMarkerPart5_0090 :
    outsideAggregateMarkerPartValid5_0090 outsideHistoryChunk0090 := by
  unfold outsideAggregateMarkerPartValid5_0090 outsideHistoryChunk0090
  decide

def outsideAggregateLocalPartValid6_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0090 :
    outsideAggregateLocalPartValid6_0090 outsideHistoryChunk0090 := by
  unfold outsideAggregateLocalPartValid6_0090 outsideHistoryChunk0090
  decide

def outsideAggregateMarkerPartValid6_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 92928
  | _ => True

theorem outsideAggregateMarkerPart6_0090 :
    outsideAggregateMarkerPartValid6_0090 outsideHistoryChunk0090 := by
  unfold outsideAggregateMarkerPartValid6_0090 outsideHistoryChunk0090
  decide

def outsideAggregateLocalPartValid7_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0090 :
    outsideAggregateLocalPartValid7_0090 outsideHistoryChunk0090 := by
  unfold outsideAggregateLocalPartValid7_0090 outsideHistoryChunk0090
  decide

def outsideAggregateMarkerPartValid7_0090 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 93056
  | _ => True

theorem outsideAggregateMarkerPart7_0090 :
    outsideAggregateMarkerPartValid7_0090 outsideHistoryChunk0090 := by
  unfold outsideAggregateMarkerPartValid7_0090 outsideHistoryChunk0090
  decide

theorem outsideRange_0090 :
    outsideHistoryChunk0090.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 92160 := by
  have hl0 := outsideAggregateLocalPart0_0090
  simp only [outsideAggregateLocalPartValid0_0090, outsideHistoryChunk0090] at hl0
  have hl1 := outsideAggregateLocalPart1_0090
  simp only [outsideAggregateLocalPartValid1_0090, outsideHistoryChunk0090] at hl1
  have hl2 := outsideAggregateLocalPart2_0090
  simp only [outsideAggregateLocalPartValid2_0090, outsideHistoryChunk0090] at hl2
  have hl3 := outsideAggregateLocalPart3_0090
  simp only [outsideAggregateLocalPartValid3_0090, outsideHistoryChunk0090] at hl3
  have hl4 := outsideAggregateLocalPart4_0090
  simp only [outsideAggregateLocalPartValid4_0090, outsideHistoryChunk0090] at hl4
  have hl5 := outsideAggregateLocalPart5_0090
  simp only [outsideAggregateLocalPartValid5_0090, outsideHistoryChunk0090] at hl5
  have hl6 := outsideAggregateLocalPart6_0090
  simp only [outsideAggregateLocalPartValid6_0090, outsideHistoryChunk0090] at hl6
  have hl7 := outsideAggregateLocalPart7_0090
  simp only [outsideAggregateLocalPartValid7_0090, outsideHistoryChunk0090] at hl7
  have hm0 := outsideAggregateMarkerPart0_0090
  simp only [outsideAggregateMarkerPartValid0_0090, outsideHistoryChunk0090] at hm0
  have hm1 := outsideAggregateMarkerPart1_0090
  simp only [outsideAggregateMarkerPartValid1_0090, outsideHistoryChunk0090] at hm1
  have hm2 := outsideAggregateMarkerPart2_0090
  simp only [outsideAggregateMarkerPartValid2_0090, outsideHistoryChunk0090] at hm2
  have hm3 := outsideAggregateMarkerPart3_0090
  simp only [outsideAggregateMarkerPartValid3_0090, outsideHistoryChunk0090] at hm3
  have hm4 := outsideAggregateMarkerPart4_0090
  simp only [outsideAggregateMarkerPartValid4_0090, outsideHistoryChunk0090] at hm4
  have hm5 := outsideAggregateMarkerPart5_0090
  simp only [outsideAggregateMarkerPartValid5_0090, outsideHistoryChunk0090] at hm5
  have hm6 := outsideAggregateMarkerPart6_0090
  simp only [outsideAggregateMarkerPartValid6_0090, outsideHistoryChunk0090] at hm6
  have hm7 := outsideAggregateMarkerPart7_0090
  simp only [outsideAggregateMarkerPartValid7_0090, outsideHistoryChunk0090] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0090
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0090
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0091 :
    outsideAggregateLocalPartValid0_0091 outsideHistoryChunk0091 := by
  unfold outsideAggregateLocalPartValid0_0091 outsideHistoryChunk0091
  decide

def outsideAggregateMarkerPartValid0_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 93184
  | _ => True

theorem outsideAggregateMarkerPart0_0091 :
    outsideAggregateMarkerPartValid0_0091 outsideHistoryChunk0091 := by
  unfold outsideAggregateMarkerPartValid0_0091 outsideHistoryChunk0091
  decide

def outsideAggregateLocalPartValid1_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0091 :
    outsideAggregateLocalPartValid1_0091 outsideHistoryChunk0091 := by
  unfold outsideAggregateLocalPartValid1_0091 outsideHistoryChunk0091
  decide

def outsideAggregateMarkerPartValid1_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 93312
  | _ => True

theorem outsideAggregateMarkerPart1_0091 :
    outsideAggregateMarkerPartValid1_0091 outsideHistoryChunk0091 := by
  unfold outsideAggregateMarkerPartValid1_0091 outsideHistoryChunk0091
  decide

def outsideAggregateLocalPartValid2_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0091 :
    outsideAggregateLocalPartValid2_0091 outsideHistoryChunk0091 := by
  unfold outsideAggregateLocalPartValid2_0091 outsideHistoryChunk0091
  decide

def outsideAggregateMarkerPartValid2_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 93440
  | _ => True

theorem outsideAggregateMarkerPart2_0091 :
    outsideAggregateMarkerPartValid2_0091 outsideHistoryChunk0091 := by
  unfold outsideAggregateMarkerPartValid2_0091 outsideHistoryChunk0091
  decide

def outsideAggregateLocalPartValid3_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0091 :
    outsideAggregateLocalPartValid3_0091 outsideHistoryChunk0091 := by
  unfold outsideAggregateLocalPartValid3_0091 outsideHistoryChunk0091
  decide

def outsideAggregateMarkerPartValid3_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 93568
  | _ => True

theorem outsideAggregateMarkerPart3_0091 :
    outsideAggregateMarkerPartValid3_0091 outsideHistoryChunk0091 := by
  unfold outsideAggregateMarkerPartValid3_0091 outsideHistoryChunk0091
  decide

def outsideAggregateLocalPartValid4_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0091 :
    outsideAggregateLocalPartValid4_0091 outsideHistoryChunk0091 := by
  unfold outsideAggregateLocalPartValid4_0091 outsideHistoryChunk0091
  decide

def outsideAggregateMarkerPartValid4_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 93696
  | _ => True

theorem outsideAggregateMarkerPart4_0091 :
    outsideAggregateMarkerPartValid4_0091 outsideHistoryChunk0091 := by
  unfold outsideAggregateMarkerPartValid4_0091 outsideHistoryChunk0091
  decide

def outsideAggregateLocalPartValid5_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0091 :
    outsideAggregateLocalPartValid5_0091 outsideHistoryChunk0091 := by
  unfold outsideAggregateLocalPartValid5_0091 outsideHistoryChunk0091
  decide

def outsideAggregateMarkerPartValid5_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 93824
  | _ => True

theorem outsideAggregateMarkerPart5_0091 :
    outsideAggregateMarkerPartValid5_0091 outsideHistoryChunk0091 := by
  unfold outsideAggregateMarkerPartValid5_0091 outsideHistoryChunk0091
  decide

def outsideAggregateLocalPartValid6_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0091 :
    outsideAggregateLocalPartValid6_0091 outsideHistoryChunk0091 := by
  unfold outsideAggregateLocalPartValid6_0091 outsideHistoryChunk0091
  decide

def outsideAggregateMarkerPartValid6_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 93952
  | _ => True

theorem outsideAggregateMarkerPart6_0091 :
    outsideAggregateMarkerPartValid6_0091 outsideHistoryChunk0091 := by
  unfold outsideAggregateMarkerPartValid6_0091 outsideHistoryChunk0091
  decide

def outsideAggregateLocalPartValid7_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0091 :
    outsideAggregateLocalPartValid7_0091 outsideHistoryChunk0091 := by
  unfold outsideAggregateLocalPartValid7_0091 outsideHistoryChunk0091
  decide

def outsideAggregateMarkerPartValid7_0091 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 94080
  | _ => True

theorem outsideAggregateMarkerPart7_0091 :
    outsideAggregateMarkerPartValid7_0091 outsideHistoryChunk0091 := by
  unfold outsideAggregateMarkerPartValid7_0091 outsideHistoryChunk0091
  decide

theorem outsideRange_0091 :
    outsideHistoryChunk0091.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 93184 := by
  have hl0 := outsideAggregateLocalPart0_0091
  simp only [outsideAggregateLocalPartValid0_0091, outsideHistoryChunk0091] at hl0
  have hl1 := outsideAggregateLocalPart1_0091
  simp only [outsideAggregateLocalPartValid1_0091, outsideHistoryChunk0091] at hl1
  have hl2 := outsideAggregateLocalPart2_0091
  simp only [outsideAggregateLocalPartValid2_0091, outsideHistoryChunk0091] at hl2
  have hl3 := outsideAggregateLocalPart3_0091
  simp only [outsideAggregateLocalPartValid3_0091, outsideHistoryChunk0091] at hl3
  have hl4 := outsideAggregateLocalPart4_0091
  simp only [outsideAggregateLocalPartValid4_0091, outsideHistoryChunk0091] at hl4
  have hl5 := outsideAggregateLocalPart5_0091
  simp only [outsideAggregateLocalPartValid5_0091, outsideHistoryChunk0091] at hl5
  have hl6 := outsideAggregateLocalPart6_0091
  simp only [outsideAggregateLocalPartValid6_0091, outsideHistoryChunk0091] at hl6
  have hl7 := outsideAggregateLocalPart7_0091
  simp only [outsideAggregateLocalPartValid7_0091, outsideHistoryChunk0091] at hl7
  have hm0 := outsideAggregateMarkerPart0_0091
  simp only [outsideAggregateMarkerPartValid0_0091, outsideHistoryChunk0091] at hm0
  have hm1 := outsideAggregateMarkerPart1_0091
  simp only [outsideAggregateMarkerPartValid1_0091, outsideHistoryChunk0091] at hm1
  have hm2 := outsideAggregateMarkerPart2_0091
  simp only [outsideAggregateMarkerPartValid2_0091, outsideHistoryChunk0091] at hm2
  have hm3 := outsideAggregateMarkerPart3_0091
  simp only [outsideAggregateMarkerPartValid3_0091, outsideHistoryChunk0091] at hm3
  have hm4 := outsideAggregateMarkerPart4_0091
  simp only [outsideAggregateMarkerPartValid4_0091, outsideHistoryChunk0091] at hm4
  have hm5 := outsideAggregateMarkerPart5_0091
  simp only [outsideAggregateMarkerPartValid5_0091, outsideHistoryChunk0091] at hm5
  have hm6 := outsideAggregateMarkerPart6_0091
  simp only [outsideAggregateMarkerPartValid6_0091, outsideHistoryChunk0091] at hm6
  have hm7 := outsideAggregateMarkerPart7_0091
  simp only [outsideAggregateMarkerPartValid7_0091, outsideHistoryChunk0091] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0091
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0091
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
