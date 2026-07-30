import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0120
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0121
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0122

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0120, 0121, 0122 -/

def outsideAggregateLocalPartValid0_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0120 :
    outsideAggregateLocalPartValid0_0120 outsideHistoryChunk0120 := by
  unfold outsideAggregateLocalPartValid0_0120 outsideHistoryChunk0120
  decide

def outsideAggregateMarkerPartValid0_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 122880
  | _ => True

theorem outsideAggregateMarkerPart0_0120 :
    outsideAggregateMarkerPartValid0_0120 outsideHistoryChunk0120 := by
  unfold outsideAggregateMarkerPartValid0_0120 outsideHistoryChunk0120
  decide

def outsideAggregateLocalPartValid1_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0120 :
    outsideAggregateLocalPartValid1_0120 outsideHistoryChunk0120 := by
  unfold outsideAggregateLocalPartValid1_0120 outsideHistoryChunk0120
  decide

def outsideAggregateMarkerPartValid1_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 123008
  | _ => True

theorem outsideAggregateMarkerPart1_0120 :
    outsideAggregateMarkerPartValid1_0120 outsideHistoryChunk0120 := by
  unfold outsideAggregateMarkerPartValid1_0120 outsideHistoryChunk0120
  decide

def outsideAggregateLocalPartValid2_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0120 :
    outsideAggregateLocalPartValid2_0120 outsideHistoryChunk0120 := by
  unfold outsideAggregateLocalPartValid2_0120 outsideHistoryChunk0120
  decide

def outsideAggregateMarkerPartValid2_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 123136
  | _ => True

theorem outsideAggregateMarkerPart2_0120 :
    outsideAggregateMarkerPartValid2_0120 outsideHistoryChunk0120 := by
  unfold outsideAggregateMarkerPartValid2_0120 outsideHistoryChunk0120
  decide

def outsideAggregateLocalPartValid3_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0120 :
    outsideAggregateLocalPartValid3_0120 outsideHistoryChunk0120 := by
  unfold outsideAggregateLocalPartValid3_0120 outsideHistoryChunk0120
  decide

def outsideAggregateMarkerPartValid3_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 123264
  | _ => True

theorem outsideAggregateMarkerPart3_0120 :
    outsideAggregateMarkerPartValid3_0120 outsideHistoryChunk0120 := by
  unfold outsideAggregateMarkerPartValid3_0120 outsideHistoryChunk0120
  decide

def outsideAggregateLocalPartValid4_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0120 :
    outsideAggregateLocalPartValid4_0120 outsideHistoryChunk0120 := by
  unfold outsideAggregateLocalPartValid4_0120 outsideHistoryChunk0120
  decide

def outsideAggregateMarkerPartValid4_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 123392
  | _ => True

theorem outsideAggregateMarkerPart4_0120 :
    outsideAggregateMarkerPartValid4_0120 outsideHistoryChunk0120 := by
  unfold outsideAggregateMarkerPartValid4_0120 outsideHistoryChunk0120
  decide

def outsideAggregateLocalPartValid5_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0120 :
    outsideAggregateLocalPartValid5_0120 outsideHistoryChunk0120 := by
  unfold outsideAggregateLocalPartValid5_0120 outsideHistoryChunk0120
  decide

def outsideAggregateMarkerPartValid5_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 123520
  | _ => True

theorem outsideAggregateMarkerPart5_0120 :
    outsideAggregateMarkerPartValid5_0120 outsideHistoryChunk0120 := by
  unfold outsideAggregateMarkerPartValid5_0120 outsideHistoryChunk0120
  decide

def outsideAggregateLocalPartValid6_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0120 :
    outsideAggregateLocalPartValid6_0120 outsideHistoryChunk0120 := by
  unfold outsideAggregateLocalPartValid6_0120 outsideHistoryChunk0120
  decide

def outsideAggregateMarkerPartValid6_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 123648
  | _ => True

theorem outsideAggregateMarkerPart6_0120 :
    outsideAggregateMarkerPartValid6_0120 outsideHistoryChunk0120 := by
  unfold outsideAggregateMarkerPartValid6_0120 outsideHistoryChunk0120
  decide

def outsideAggregateLocalPartValid7_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0120 :
    outsideAggregateLocalPartValid7_0120 outsideHistoryChunk0120 := by
  unfold outsideAggregateLocalPartValid7_0120 outsideHistoryChunk0120
  decide

def outsideAggregateMarkerPartValid7_0120 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 123776
  | _ => True

theorem outsideAggregateMarkerPart7_0120 :
    outsideAggregateMarkerPartValid7_0120 outsideHistoryChunk0120 := by
  unfold outsideAggregateMarkerPartValid7_0120 outsideHistoryChunk0120
  decide

theorem outsideRange_0120 :
    outsideHistoryChunk0120.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 122880 := by
  have hl0 := outsideAggregateLocalPart0_0120
  simp only [outsideAggregateLocalPartValid0_0120, outsideHistoryChunk0120] at hl0
  have hl1 := outsideAggregateLocalPart1_0120
  simp only [outsideAggregateLocalPartValid1_0120, outsideHistoryChunk0120] at hl1
  have hl2 := outsideAggregateLocalPart2_0120
  simp only [outsideAggregateLocalPartValid2_0120, outsideHistoryChunk0120] at hl2
  have hl3 := outsideAggregateLocalPart3_0120
  simp only [outsideAggregateLocalPartValid3_0120, outsideHistoryChunk0120] at hl3
  have hl4 := outsideAggregateLocalPart4_0120
  simp only [outsideAggregateLocalPartValid4_0120, outsideHistoryChunk0120] at hl4
  have hl5 := outsideAggregateLocalPart5_0120
  simp only [outsideAggregateLocalPartValid5_0120, outsideHistoryChunk0120] at hl5
  have hl6 := outsideAggregateLocalPart6_0120
  simp only [outsideAggregateLocalPartValid6_0120, outsideHistoryChunk0120] at hl6
  have hl7 := outsideAggregateLocalPart7_0120
  simp only [outsideAggregateLocalPartValid7_0120, outsideHistoryChunk0120] at hl7
  have hm0 := outsideAggregateMarkerPart0_0120
  simp only [outsideAggregateMarkerPartValid0_0120, outsideHistoryChunk0120] at hm0
  have hm1 := outsideAggregateMarkerPart1_0120
  simp only [outsideAggregateMarkerPartValid1_0120, outsideHistoryChunk0120] at hm1
  have hm2 := outsideAggregateMarkerPart2_0120
  simp only [outsideAggregateMarkerPartValid2_0120, outsideHistoryChunk0120] at hm2
  have hm3 := outsideAggregateMarkerPart3_0120
  simp only [outsideAggregateMarkerPartValid3_0120, outsideHistoryChunk0120] at hm3
  have hm4 := outsideAggregateMarkerPart4_0120
  simp only [outsideAggregateMarkerPartValid4_0120, outsideHistoryChunk0120] at hm4
  have hm5 := outsideAggregateMarkerPart5_0120
  simp only [outsideAggregateMarkerPartValid5_0120, outsideHistoryChunk0120] at hm5
  have hm6 := outsideAggregateMarkerPart6_0120
  simp only [outsideAggregateMarkerPartValid6_0120, outsideHistoryChunk0120] at hm6
  have hm7 := outsideAggregateMarkerPart7_0120
  simp only [outsideAggregateMarkerPartValid7_0120, outsideHistoryChunk0120] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0120
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0120
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0121 :
    outsideAggregateLocalPartValid0_0121 outsideHistoryChunk0121 := by
  unfold outsideAggregateLocalPartValid0_0121 outsideHistoryChunk0121
  decide

def outsideAggregateMarkerPartValid0_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 123904
  | _ => True

theorem outsideAggregateMarkerPart0_0121 :
    outsideAggregateMarkerPartValid0_0121 outsideHistoryChunk0121 := by
  unfold outsideAggregateMarkerPartValid0_0121 outsideHistoryChunk0121
  decide

def outsideAggregateLocalPartValid1_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0121 :
    outsideAggregateLocalPartValid1_0121 outsideHistoryChunk0121 := by
  unfold outsideAggregateLocalPartValid1_0121 outsideHistoryChunk0121
  decide

def outsideAggregateMarkerPartValid1_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 124032
  | _ => True

theorem outsideAggregateMarkerPart1_0121 :
    outsideAggregateMarkerPartValid1_0121 outsideHistoryChunk0121 := by
  unfold outsideAggregateMarkerPartValid1_0121 outsideHistoryChunk0121
  decide

def outsideAggregateLocalPartValid2_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0121 :
    outsideAggregateLocalPartValid2_0121 outsideHistoryChunk0121 := by
  unfold outsideAggregateLocalPartValid2_0121 outsideHistoryChunk0121
  decide

def outsideAggregateMarkerPartValid2_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 124160
  | _ => True

theorem outsideAggregateMarkerPart2_0121 :
    outsideAggregateMarkerPartValid2_0121 outsideHistoryChunk0121 := by
  unfold outsideAggregateMarkerPartValid2_0121 outsideHistoryChunk0121
  decide

def outsideAggregateLocalPartValid3_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0121 :
    outsideAggregateLocalPartValid3_0121 outsideHistoryChunk0121 := by
  unfold outsideAggregateLocalPartValid3_0121 outsideHistoryChunk0121
  decide

def outsideAggregateMarkerPartValid3_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 124288
  | _ => True

theorem outsideAggregateMarkerPart3_0121 :
    outsideAggregateMarkerPartValid3_0121 outsideHistoryChunk0121 := by
  unfold outsideAggregateMarkerPartValid3_0121 outsideHistoryChunk0121
  decide

def outsideAggregateLocalPartValid4_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0121 :
    outsideAggregateLocalPartValid4_0121 outsideHistoryChunk0121 := by
  unfold outsideAggregateLocalPartValid4_0121 outsideHistoryChunk0121
  decide

def outsideAggregateMarkerPartValid4_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 124416
  | _ => True

theorem outsideAggregateMarkerPart4_0121 :
    outsideAggregateMarkerPartValid4_0121 outsideHistoryChunk0121 := by
  unfold outsideAggregateMarkerPartValid4_0121 outsideHistoryChunk0121
  decide

def outsideAggregateLocalPartValid5_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0121 :
    outsideAggregateLocalPartValid5_0121 outsideHistoryChunk0121 := by
  unfold outsideAggregateLocalPartValid5_0121 outsideHistoryChunk0121
  decide

def outsideAggregateMarkerPartValid5_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 124544
  | _ => True

theorem outsideAggregateMarkerPart5_0121 :
    outsideAggregateMarkerPartValid5_0121 outsideHistoryChunk0121 := by
  unfold outsideAggregateMarkerPartValid5_0121 outsideHistoryChunk0121
  decide

def outsideAggregateLocalPartValid6_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0121 :
    outsideAggregateLocalPartValid6_0121 outsideHistoryChunk0121 := by
  unfold outsideAggregateLocalPartValid6_0121 outsideHistoryChunk0121
  decide

def outsideAggregateMarkerPartValid6_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 124672
  | _ => True

theorem outsideAggregateMarkerPart6_0121 :
    outsideAggregateMarkerPartValid6_0121 outsideHistoryChunk0121 := by
  unfold outsideAggregateMarkerPartValid6_0121 outsideHistoryChunk0121
  decide

def outsideAggregateLocalPartValid7_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0121 :
    outsideAggregateLocalPartValid7_0121 outsideHistoryChunk0121 := by
  unfold outsideAggregateLocalPartValid7_0121 outsideHistoryChunk0121
  decide

def outsideAggregateMarkerPartValid7_0121 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 124800
  | _ => True

theorem outsideAggregateMarkerPart7_0121 :
    outsideAggregateMarkerPartValid7_0121 outsideHistoryChunk0121 := by
  unfold outsideAggregateMarkerPartValid7_0121 outsideHistoryChunk0121
  decide

theorem outsideRange_0121 :
    outsideHistoryChunk0121.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 123904 := by
  have hl0 := outsideAggregateLocalPart0_0121
  simp only [outsideAggregateLocalPartValid0_0121, outsideHistoryChunk0121] at hl0
  have hl1 := outsideAggregateLocalPart1_0121
  simp only [outsideAggregateLocalPartValid1_0121, outsideHistoryChunk0121] at hl1
  have hl2 := outsideAggregateLocalPart2_0121
  simp only [outsideAggregateLocalPartValid2_0121, outsideHistoryChunk0121] at hl2
  have hl3 := outsideAggregateLocalPart3_0121
  simp only [outsideAggregateLocalPartValid3_0121, outsideHistoryChunk0121] at hl3
  have hl4 := outsideAggregateLocalPart4_0121
  simp only [outsideAggregateLocalPartValid4_0121, outsideHistoryChunk0121] at hl4
  have hl5 := outsideAggregateLocalPart5_0121
  simp only [outsideAggregateLocalPartValid5_0121, outsideHistoryChunk0121] at hl5
  have hl6 := outsideAggregateLocalPart6_0121
  simp only [outsideAggregateLocalPartValid6_0121, outsideHistoryChunk0121] at hl6
  have hl7 := outsideAggregateLocalPart7_0121
  simp only [outsideAggregateLocalPartValid7_0121, outsideHistoryChunk0121] at hl7
  have hm0 := outsideAggregateMarkerPart0_0121
  simp only [outsideAggregateMarkerPartValid0_0121, outsideHistoryChunk0121] at hm0
  have hm1 := outsideAggregateMarkerPart1_0121
  simp only [outsideAggregateMarkerPartValid1_0121, outsideHistoryChunk0121] at hm1
  have hm2 := outsideAggregateMarkerPart2_0121
  simp only [outsideAggregateMarkerPartValid2_0121, outsideHistoryChunk0121] at hm2
  have hm3 := outsideAggregateMarkerPart3_0121
  simp only [outsideAggregateMarkerPartValid3_0121, outsideHistoryChunk0121] at hm3
  have hm4 := outsideAggregateMarkerPart4_0121
  simp only [outsideAggregateMarkerPartValid4_0121, outsideHistoryChunk0121] at hm4
  have hm5 := outsideAggregateMarkerPart5_0121
  simp only [outsideAggregateMarkerPartValid5_0121, outsideHistoryChunk0121] at hm5
  have hm6 := outsideAggregateMarkerPart6_0121
  simp only [outsideAggregateMarkerPartValid6_0121, outsideHistoryChunk0121] at hm6
  have hm7 := outsideAggregateMarkerPart7_0121
  simp only [outsideAggregateMarkerPartValid7_0121, outsideHistoryChunk0121] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0121
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0121
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0122 :
    outsideAggregateLocalPartValid0_0122 outsideHistoryChunk0122 := by
  unfold outsideAggregateLocalPartValid0_0122 outsideHistoryChunk0122
  decide

def outsideAggregateMarkerPartValid0_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 124928
  | _ => True

theorem outsideAggregateMarkerPart0_0122 :
    outsideAggregateMarkerPartValid0_0122 outsideHistoryChunk0122 := by
  unfold outsideAggregateMarkerPartValid0_0122 outsideHistoryChunk0122
  decide

def outsideAggregateLocalPartValid1_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0122 :
    outsideAggregateLocalPartValid1_0122 outsideHistoryChunk0122 := by
  unfold outsideAggregateLocalPartValid1_0122 outsideHistoryChunk0122
  decide

def outsideAggregateMarkerPartValid1_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 125038
  | _ => True

theorem outsideAggregateMarkerPart1_0122 :
    outsideAggregateMarkerPartValid1_0122 outsideHistoryChunk0122 := by
  unfold outsideAggregateMarkerPartValid1_0122 outsideHistoryChunk0122
  decide

def outsideAggregateLocalPartValid2_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0122 :
    outsideAggregateLocalPartValid2_0122 outsideHistoryChunk0122 := by
  unfold outsideAggregateLocalPartValid2_0122 outsideHistoryChunk0122
  decide

def outsideAggregateMarkerPartValid2_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 125148
  | _ => True

theorem outsideAggregateMarkerPart2_0122 :
    outsideAggregateMarkerPartValid2_0122 outsideHistoryChunk0122 := by
  unfold outsideAggregateMarkerPartValid2_0122 outsideHistoryChunk0122
  decide

def outsideAggregateLocalPartValid3_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0122 :
    outsideAggregateLocalPartValid3_0122 outsideHistoryChunk0122 := by
  unfold outsideAggregateLocalPartValid3_0122 outsideHistoryChunk0122
  decide

def outsideAggregateMarkerPartValid3_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 125258
  | _ => True

theorem outsideAggregateMarkerPart3_0122 :
    outsideAggregateMarkerPartValid3_0122 outsideHistoryChunk0122 := by
  unfold outsideAggregateMarkerPartValid3_0122 outsideHistoryChunk0122
  decide

def outsideAggregateLocalPartValid4_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0122 :
    outsideAggregateLocalPartValid4_0122 outsideHistoryChunk0122 := by
  unfold outsideAggregateLocalPartValid4_0122 outsideHistoryChunk0122
  decide

def outsideAggregateMarkerPartValid4_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 125368
  | _ => True

theorem outsideAggregateMarkerPart4_0122 :
    outsideAggregateMarkerPartValid4_0122 outsideHistoryChunk0122 := by
  unfold outsideAggregateMarkerPartValid4_0122 outsideHistoryChunk0122
  decide

def outsideAggregateLocalPartValid5_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0122 :
    outsideAggregateLocalPartValid5_0122 outsideHistoryChunk0122 := by
  unfold outsideAggregateLocalPartValid5_0122 outsideHistoryChunk0122
  decide

def outsideAggregateMarkerPartValid5_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 125478
  | _ => True

theorem outsideAggregateMarkerPart5_0122 :
    outsideAggregateMarkerPartValid5_0122 outsideHistoryChunk0122 := by
  unfold outsideAggregateMarkerPartValid5_0122 outsideHistoryChunk0122
  decide

def outsideAggregateLocalPartValid6_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0122 :
    outsideAggregateLocalPartValid6_0122 outsideHistoryChunk0122 := by
  unfold outsideAggregateLocalPartValid6_0122 outsideHistoryChunk0122
  decide

def outsideAggregateMarkerPartValid6_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 125588
  | _ => True

theorem outsideAggregateMarkerPart6_0122 :
    outsideAggregateMarkerPartValid6_0122 outsideHistoryChunk0122 := by
  unfold outsideAggregateMarkerPartValid6_0122 outsideHistoryChunk0122
  decide

def outsideAggregateLocalPartValid7_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0122 :
    outsideAggregateLocalPartValid7_0122 outsideHistoryChunk0122 := by
  unfold outsideAggregateLocalPartValid7_0122 outsideHistoryChunk0122
  decide

def outsideAggregateMarkerPartValid7_0122 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 125698
  | _ => True

theorem outsideAggregateMarkerPart7_0122 :
    outsideAggregateMarkerPartValid7_0122 outsideHistoryChunk0122 := by
  unfold outsideAggregateMarkerPartValid7_0122 outsideHistoryChunk0122
  decide

theorem outsideRange_0122 :
    outsideHistoryChunk0122.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 124928 := by
  have hl0 := outsideAggregateLocalPart0_0122
  simp only [outsideAggregateLocalPartValid0_0122, outsideHistoryChunk0122] at hl0
  have hl1 := outsideAggregateLocalPart1_0122
  simp only [outsideAggregateLocalPartValid1_0122, outsideHistoryChunk0122] at hl1
  have hl2 := outsideAggregateLocalPart2_0122
  simp only [outsideAggregateLocalPartValid2_0122, outsideHistoryChunk0122] at hl2
  have hl3 := outsideAggregateLocalPart3_0122
  simp only [outsideAggregateLocalPartValid3_0122, outsideHistoryChunk0122] at hl3
  have hl4 := outsideAggregateLocalPart4_0122
  simp only [outsideAggregateLocalPartValid4_0122, outsideHistoryChunk0122] at hl4
  have hl5 := outsideAggregateLocalPart5_0122
  simp only [outsideAggregateLocalPartValid5_0122, outsideHistoryChunk0122] at hl5
  have hl6 := outsideAggregateLocalPart6_0122
  simp only [outsideAggregateLocalPartValid6_0122, outsideHistoryChunk0122] at hl6
  have hl7 := outsideAggregateLocalPart7_0122
  simp only [outsideAggregateLocalPartValid7_0122, outsideHistoryChunk0122] at hl7
  have hm0 := outsideAggregateMarkerPart0_0122
  simp only [outsideAggregateMarkerPartValid0_0122, outsideHistoryChunk0122] at hm0
  have hm1 := outsideAggregateMarkerPart1_0122
  simp only [outsideAggregateMarkerPartValid1_0122, outsideHistoryChunk0122] at hm1
  have hm2 := outsideAggregateMarkerPart2_0122
  simp only [outsideAggregateMarkerPartValid2_0122, outsideHistoryChunk0122] at hm2
  have hm3 := outsideAggregateMarkerPart3_0122
  simp only [outsideAggregateMarkerPartValid3_0122, outsideHistoryChunk0122] at hm3
  have hm4 := outsideAggregateMarkerPart4_0122
  simp only [outsideAggregateMarkerPartValid4_0122, outsideHistoryChunk0122] at hm4
  have hm5 := outsideAggregateMarkerPart5_0122
  simp only [outsideAggregateMarkerPartValid5_0122, outsideHistoryChunk0122] at hm5
  have hm6 := outsideAggregateMarkerPart6_0122
  simp only [outsideAggregateMarkerPartValid6_0122, outsideHistoryChunk0122] at hm6
  have hm7 := outsideAggregateMarkerPart7_0122
  simp only [outsideAggregateMarkerPartValid7_0122, outsideHistoryChunk0122] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0122
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0122
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
