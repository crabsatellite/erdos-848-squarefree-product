import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0048
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0049
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0050
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0051

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0048, 0049, 0050, 0051 -/

def outsideAggregateLocalPartValid0_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0048 :
    outsideAggregateLocalPartValid0_0048 outsideHistoryChunk0048 := by
  unfold outsideAggregateLocalPartValid0_0048 outsideHistoryChunk0048
  decide

def outsideAggregateMarkerPartValid0_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 49152
  | _ => True

theorem outsideAggregateMarkerPart0_0048 :
    outsideAggregateMarkerPartValid0_0048 outsideHistoryChunk0048 := by
  unfold outsideAggregateMarkerPartValid0_0048 outsideHistoryChunk0048
  decide

def outsideAggregateLocalPartValid1_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0048 :
    outsideAggregateLocalPartValid1_0048 outsideHistoryChunk0048 := by
  unfold outsideAggregateLocalPartValid1_0048 outsideHistoryChunk0048
  decide

def outsideAggregateMarkerPartValid1_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 49280
  | _ => True

theorem outsideAggregateMarkerPart1_0048 :
    outsideAggregateMarkerPartValid1_0048 outsideHistoryChunk0048 := by
  unfold outsideAggregateMarkerPartValid1_0048 outsideHistoryChunk0048
  decide

def outsideAggregateLocalPartValid2_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0048 :
    outsideAggregateLocalPartValid2_0048 outsideHistoryChunk0048 := by
  unfold outsideAggregateLocalPartValid2_0048 outsideHistoryChunk0048
  decide

def outsideAggregateMarkerPartValid2_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 49408
  | _ => True

theorem outsideAggregateMarkerPart2_0048 :
    outsideAggregateMarkerPartValid2_0048 outsideHistoryChunk0048 := by
  unfold outsideAggregateMarkerPartValid2_0048 outsideHistoryChunk0048
  decide

def outsideAggregateLocalPartValid3_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0048 :
    outsideAggregateLocalPartValid3_0048 outsideHistoryChunk0048 := by
  unfold outsideAggregateLocalPartValid3_0048 outsideHistoryChunk0048
  decide

def outsideAggregateMarkerPartValid3_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 49536
  | _ => True

theorem outsideAggregateMarkerPart3_0048 :
    outsideAggregateMarkerPartValid3_0048 outsideHistoryChunk0048 := by
  unfold outsideAggregateMarkerPartValid3_0048 outsideHistoryChunk0048
  decide

def outsideAggregateLocalPartValid4_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0048 :
    outsideAggregateLocalPartValid4_0048 outsideHistoryChunk0048 := by
  unfold outsideAggregateLocalPartValid4_0048 outsideHistoryChunk0048
  decide

def outsideAggregateMarkerPartValid4_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 49664
  | _ => True

theorem outsideAggregateMarkerPart4_0048 :
    outsideAggregateMarkerPartValid4_0048 outsideHistoryChunk0048 := by
  unfold outsideAggregateMarkerPartValid4_0048 outsideHistoryChunk0048
  decide

def outsideAggregateLocalPartValid5_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0048 :
    outsideAggregateLocalPartValid5_0048 outsideHistoryChunk0048 := by
  unfold outsideAggregateLocalPartValid5_0048 outsideHistoryChunk0048
  decide

def outsideAggregateMarkerPartValid5_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 49792
  | _ => True

theorem outsideAggregateMarkerPart5_0048 :
    outsideAggregateMarkerPartValid5_0048 outsideHistoryChunk0048 := by
  unfold outsideAggregateMarkerPartValid5_0048 outsideHistoryChunk0048
  decide

def outsideAggregateLocalPartValid6_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0048 :
    outsideAggregateLocalPartValid6_0048 outsideHistoryChunk0048 := by
  unfold outsideAggregateLocalPartValid6_0048 outsideHistoryChunk0048
  decide

def outsideAggregateMarkerPartValid6_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 49920
  | _ => True

theorem outsideAggregateMarkerPart6_0048 :
    outsideAggregateMarkerPartValid6_0048 outsideHistoryChunk0048 := by
  unfold outsideAggregateMarkerPartValid6_0048 outsideHistoryChunk0048
  decide

def outsideAggregateLocalPartValid7_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0048 :
    outsideAggregateLocalPartValid7_0048 outsideHistoryChunk0048 := by
  unfold outsideAggregateLocalPartValid7_0048 outsideHistoryChunk0048
  decide

def outsideAggregateMarkerPartValid7_0048 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 50048
  | _ => True

theorem outsideAggregateMarkerPart7_0048 :
    outsideAggregateMarkerPartValid7_0048 outsideHistoryChunk0048 := by
  unfold outsideAggregateMarkerPartValid7_0048 outsideHistoryChunk0048
  decide

theorem outsideRange_0048 :
    outsideHistoryChunk0048.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 49152 := by
  have hl0 := outsideAggregateLocalPart0_0048
  simp only [outsideAggregateLocalPartValid0_0048, outsideHistoryChunk0048] at hl0
  have hl1 := outsideAggregateLocalPart1_0048
  simp only [outsideAggregateLocalPartValid1_0048, outsideHistoryChunk0048] at hl1
  have hl2 := outsideAggregateLocalPart2_0048
  simp only [outsideAggregateLocalPartValid2_0048, outsideHistoryChunk0048] at hl2
  have hl3 := outsideAggregateLocalPart3_0048
  simp only [outsideAggregateLocalPartValid3_0048, outsideHistoryChunk0048] at hl3
  have hl4 := outsideAggregateLocalPart4_0048
  simp only [outsideAggregateLocalPartValid4_0048, outsideHistoryChunk0048] at hl4
  have hl5 := outsideAggregateLocalPart5_0048
  simp only [outsideAggregateLocalPartValid5_0048, outsideHistoryChunk0048] at hl5
  have hl6 := outsideAggregateLocalPart6_0048
  simp only [outsideAggregateLocalPartValid6_0048, outsideHistoryChunk0048] at hl6
  have hl7 := outsideAggregateLocalPart7_0048
  simp only [outsideAggregateLocalPartValid7_0048, outsideHistoryChunk0048] at hl7
  have hm0 := outsideAggregateMarkerPart0_0048
  simp only [outsideAggregateMarkerPartValid0_0048, outsideHistoryChunk0048] at hm0
  have hm1 := outsideAggregateMarkerPart1_0048
  simp only [outsideAggregateMarkerPartValid1_0048, outsideHistoryChunk0048] at hm1
  have hm2 := outsideAggregateMarkerPart2_0048
  simp only [outsideAggregateMarkerPartValid2_0048, outsideHistoryChunk0048] at hm2
  have hm3 := outsideAggregateMarkerPart3_0048
  simp only [outsideAggregateMarkerPartValid3_0048, outsideHistoryChunk0048] at hm3
  have hm4 := outsideAggregateMarkerPart4_0048
  simp only [outsideAggregateMarkerPartValid4_0048, outsideHistoryChunk0048] at hm4
  have hm5 := outsideAggregateMarkerPart5_0048
  simp only [outsideAggregateMarkerPartValid5_0048, outsideHistoryChunk0048] at hm5
  have hm6 := outsideAggregateMarkerPart6_0048
  simp only [outsideAggregateMarkerPartValid6_0048, outsideHistoryChunk0048] at hm6
  have hm7 := outsideAggregateMarkerPart7_0048
  simp only [outsideAggregateMarkerPartValid7_0048, outsideHistoryChunk0048] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0048
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0048
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0049 :
    outsideAggregateLocalPartValid0_0049 outsideHistoryChunk0049 := by
  unfold outsideAggregateLocalPartValid0_0049 outsideHistoryChunk0049
  decide

def outsideAggregateMarkerPartValid0_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 50176
  | _ => True

theorem outsideAggregateMarkerPart0_0049 :
    outsideAggregateMarkerPartValid0_0049 outsideHistoryChunk0049 := by
  unfold outsideAggregateMarkerPartValid0_0049 outsideHistoryChunk0049
  decide

def outsideAggregateLocalPartValid1_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0049 :
    outsideAggregateLocalPartValid1_0049 outsideHistoryChunk0049 := by
  unfold outsideAggregateLocalPartValid1_0049 outsideHistoryChunk0049
  decide

def outsideAggregateMarkerPartValid1_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 50304
  | _ => True

theorem outsideAggregateMarkerPart1_0049 :
    outsideAggregateMarkerPartValid1_0049 outsideHistoryChunk0049 := by
  unfold outsideAggregateMarkerPartValid1_0049 outsideHistoryChunk0049
  decide

def outsideAggregateLocalPartValid2_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0049 :
    outsideAggregateLocalPartValid2_0049 outsideHistoryChunk0049 := by
  unfold outsideAggregateLocalPartValid2_0049 outsideHistoryChunk0049
  decide

def outsideAggregateMarkerPartValid2_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 50432
  | _ => True

theorem outsideAggregateMarkerPart2_0049 :
    outsideAggregateMarkerPartValid2_0049 outsideHistoryChunk0049 := by
  unfold outsideAggregateMarkerPartValid2_0049 outsideHistoryChunk0049
  decide

def outsideAggregateLocalPartValid3_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0049 :
    outsideAggregateLocalPartValid3_0049 outsideHistoryChunk0049 := by
  unfold outsideAggregateLocalPartValid3_0049 outsideHistoryChunk0049
  decide

def outsideAggregateMarkerPartValid3_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 50560
  | _ => True

theorem outsideAggregateMarkerPart3_0049 :
    outsideAggregateMarkerPartValid3_0049 outsideHistoryChunk0049 := by
  unfold outsideAggregateMarkerPartValid3_0049 outsideHistoryChunk0049
  decide

def outsideAggregateLocalPartValid4_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0049 :
    outsideAggregateLocalPartValid4_0049 outsideHistoryChunk0049 := by
  unfold outsideAggregateLocalPartValid4_0049 outsideHistoryChunk0049
  decide

def outsideAggregateMarkerPartValid4_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 50688
  | _ => True

theorem outsideAggregateMarkerPart4_0049 :
    outsideAggregateMarkerPartValid4_0049 outsideHistoryChunk0049 := by
  unfold outsideAggregateMarkerPartValid4_0049 outsideHistoryChunk0049
  decide

def outsideAggregateLocalPartValid5_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0049 :
    outsideAggregateLocalPartValid5_0049 outsideHistoryChunk0049 := by
  unfold outsideAggregateLocalPartValid5_0049 outsideHistoryChunk0049
  decide

def outsideAggregateMarkerPartValid5_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 50816
  | _ => True

theorem outsideAggregateMarkerPart5_0049 :
    outsideAggregateMarkerPartValid5_0049 outsideHistoryChunk0049 := by
  unfold outsideAggregateMarkerPartValid5_0049 outsideHistoryChunk0049
  decide

def outsideAggregateLocalPartValid6_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0049 :
    outsideAggregateLocalPartValid6_0049 outsideHistoryChunk0049 := by
  unfold outsideAggregateLocalPartValid6_0049 outsideHistoryChunk0049
  decide

def outsideAggregateMarkerPartValid6_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 50944
  | _ => True

theorem outsideAggregateMarkerPart6_0049 :
    outsideAggregateMarkerPartValid6_0049 outsideHistoryChunk0049 := by
  unfold outsideAggregateMarkerPartValid6_0049 outsideHistoryChunk0049
  decide

def outsideAggregateLocalPartValid7_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0049 :
    outsideAggregateLocalPartValid7_0049 outsideHistoryChunk0049 := by
  unfold outsideAggregateLocalPartValid7_0049 outsideHistoryChunk0049
  decide

def outsideAggregateMarkerPartValid7_0049 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 51072
  | _ => True

theorem outsideAggregateMarkerPart7_0049 :
    outsideAggregateMarkerPartValid7_0049 outsideHistoryChunk0049 := by
  unfold outsideAggregateMarkerPartValid7_0049 outsideHistoryChunk0049
  decide

theorem outsideRange_0049 :
    outsideHistoryChunk0049.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 50176 := by
  have hl0 := outsideAggregateLocalPart0_0049
  simp only [outsideAggregateLocalPartValid0_0049, outsideHistoryChunk0049] at hl0
  have hl1 := outsideAggregateLocalPart1_0049
  simp only [outsideAggregateLocalPartValid1_0049, outsideHistoryChunk0049] at hl1
  have hl2 := outsideAggregateLocalPart2_0049
  simp only [outsideAggregateLocalPartValid2_0049, outsideHistoryChunk0049] at hl2
  have hl3 := outsideAggregateLocalPart3_0049
  simp only [outsideAggregateLocalPartValid3_0049, outsideHistoryChunk0049] at hl3
  have hl4 := outsideAggregateLocalPart4_0049
  simp only [outsideAggregateLocalPartValid4_0049, outsideHistoryChunk0049] at hl4
  have hl5 := outsideAggregateLocalPart5_0049
  simp only [outsideAggregateLocalPartValid5_0049, outsideHistoryChunk0049] at hl5
  have hl6 := outsideAggregateLocalPart6_0049
  simp only [outsideAggregateLocalPartValid6_0049, outsideHistoryChunk0049] at hl6
  have hl7 := outsideAggregateLocalPart7_0049
  simp only [outsideAggregateLocalPartValid7_0049, outsideHistoryChunk0049] at hl7
  have hm0 := outsideAggregateMarkerPart0_0049
  simp only [outsideAggregateMarkerPartValid0_0049, outsideHistoryChunk0049] at hm0
  have hm1 := outsideAggregateMarkerPart1_0049
  simp only [outsideAggregateMarkerPartValid1_0049, outsideHistoryChunk0049] at hm1
  have hm2 := outsideAggregateMarkerPart2_0049
  simp only [outsideAggregateMarkerPartValid2_0049, outsideHistoryChunk0049] at hm2
  have hm3 := outsideAggregateMarkerPart3_0049
  simp only [outsideAggregateMarkerPartValid3_0049, outsideHistoryChunk0049] at hm3
  have hm4 := outsideAggregateMarkerPart4_0049
  simp only [outsideAggregateMarkerPartValid4_0049, outsideHistoryChunk0049] at hm4
  have hm5 := outsideAggregateMarkerPart5_0049
  simp only [outsideAggregateMarkerPartValid5_0049, outsideHistoryChunk0049] at hm5
  have hm6 := outsideAggregateMarkerPart6_0049
  simp only [outsideAggregateMarkerPartValid6_0049, outsideHistoryChunk0049] at hm6
  have hm7 := outsideAggregateMarkerPart7_0049
  simp only [outsideAggregateMarkerPartValid7_0049, outsideHistoryChunk0049] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0049
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0049
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0050 :
    outsideAggregateLocalPartValid0_0050 outsideHistoryChunk0050 := by
  unfold outsideAggregateLocalPartValid0_0050 outsideHistoryChunk0050
  decide

def outsideAggregateMarkerPartValid0_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 51200
  | _ => True

theorem outsideAggregateMarkerPart0_0050 :
    outsideAggregateMarkerPartValid0_0050 outsideHistoryChunk0050 := by
  unfold outsideAggregateMarkerPartValid0_0050 outsideHistoryChunk0050
  decide

def outsideAggregateLocalPartValid1_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0050 :
    outsideAggregateLocalPartValid1_0050 outsideHistoryChunk0050 := by
  unfold outsideAggregateLocalPartValid1_0050 outsideHistoryChunk0050
  decide

def outsideAggregateMarkerPartValid1_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 51328
  | _ => True

theorem outsideAggregateMarkerPart1_0050 :
    outsideAggregateMarkerPartValid1_0050 outsideHistoryChunk0050 := by
  unfold outsideAggregateMarkerPartValid1_0050 outsideHistoryChunk0050
  decide

def outsideAggregateLocalPartValid2_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0050 :
    outsideAggregateLocalPartValid2_0050 outsideHistoryChunk0050 := by
  unfold outsideAggregateLocalPartValid2_0050 outsideHistoryChunk0050
  decide

def outsideAggregateMarkerPartValid2_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 51456
  | _ => True

theorem outsideAggregateMarkerPart2_0050 :
    outsideAggregateMarkerPartValid2_0050 outsideHistoryChunk0050 := by
  unfold outsideAggregateMarkerPartValid2_0050 outsideHistoryChunk0050
  decide

def outsideAggregateLocalPartValid3_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0050 :
    outsideAggregateLocalPartValid3_0050 outsideHistoryChunk0050 := by
  unfold outsideAggregateLocalPartValid3_0050 outsideHistoryChunk0050
  decide

def outsideAggregateMarkerPartValid3_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 51584
  | _ => True

theorem outsideAggregateMarkerPart3_0050 :
    outsideAggregateMarkerPartValid3_0050 outsideHistoryChunk0050 := by
  unfold outsideAggregateMarkerPartValid3_0050 outsideHistoryChunk0050
  decide

def outsideAggregateLocalPartValid4_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0050 :
    outsideAggregateLocalPartValid4_0050 outsideHistoryChunk0050 := by
  unfold outsideAggregateLocalPartValid4_0050 outsideHistoryChunk0050
  decide

def outsideAggregateMarkerPartValid4_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 51712
  | _ => True

theorem outsideAggregateMarkerPart4_0050 :
    outsideAggregateMarkerPartValid4_0050 outsideHistoryChunk0050 := by
  unfold outsideAggregateMarkerPartValid4_0050 outsideHistoryChunk0050
  decide

def outsideAggregateLocalPartValid5_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0050 :
    outsideAggregateLocalPartValid5_0050 outsideHistoryChunk0050 := by
  unfold outsideAggregateLocalPartValid5_0050 outsideHistoryChunk0050
  decide

def outsideAggregateMarkerPartValid5_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 51840
  | _ => True

theorem outsideAggregateMarkerPart5_0050 :
    outsideAggregateMarkerPartValid5_0050 outsideHistoryChunk0050 := by
  unfold outsideAggregateMarkerPartValid5_0050 outsideHistoryChunk0050
  decide

def outsideAggregateLocalPartValid6_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0050 :
    outsideAggregateLocalPartValid6_0050 outsideHistoryChunk0050 := by
  unfold outsideAggregateLocalPartValid6_0050 outsideHistoryChunk0050
  decide

def outsideAggregateMarkerPartValid6_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 51968
  | _ => True

theorem outsideAggregateMarkerPart6_0050 :
    outsideAggregateMarkerPartValid6_0050 outsideHistoryChunk0050 := by
  unfold outsideAggregateMarkerPartValid6_0050 outsideHistoryChunk0050
  decide

def outsideAggregateLocalPartValid7_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0050 :
    outsideAggregateLocalPartValid7_0050 outsideHistoryChunk0050 := by
  unfold outsideAggregateLocalPartValid7_0050 outsideHistoryChunk0050
  decide

def outsideAggregateMarkerPartValid7_0050 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 52096
  | _ => True

theorem outsideAggregateMarkerPart7_0050 :
    outsideAggregateMarkerPartValid7_0050 outsideHistoryChunk0050 := by
  unfold outsideAggregateMarkerPartValid7_0050 outsideHistoryChunk0050
  decide

theorem outsideRange_0050 :
    outsideHistoryChunk0050.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 51200 := by
  have hl0 := outsideAggregateLocalPart0_0050
  simp only [outsideAggregateLocalPartValid0_0050, outsideHistoryChunk0050] at hl0
  have hl1 := outsideAggregateLocalPart1_0050
  simp only [outsideAggregateLocalPartValid1_0050, outsideHistoryChunk0050] at hl1
  have hl2 := outsideAggregateLocalPart2_0050
  simp only [outsideAggregateLocalPartValid2_0050, outsideHistoryChunk0050] at hl2
  have hl3 := outsideAggregateLocalPart3_0050
  simp only [outsideAggregateLocalPartValid3_0050, outsideHistoryChunk0050] at hl3
  have hl4 := outsideAggregateLocalPart4_0050
  simp only [outsideAggregateLocalPartValid4_0050, outsideHistoryChunk0050] at hl4
  have hl5 := outsideAggregateLocalPart5_0050
  simp only [outsideAggregateLocalPartValid5_0050, outsideHistoryChunk0050] at hl5
  have hl6 := outsideAggregateLocalPart6_0050
  simp only [outsideAggregateLocalPartValid6_0050, outsideHistoryChunk0050] at hl6
  have hl7 := outsideAggregateLocalPart7_0050
  simp only [outsideAggregateLocalPartValid7_0050, outsideHistoryChunk0050] at hl7
  have hm0 := outsideAggregateMarkerPart0_0050
  simp only [outsideAggregateMarkerPartValid0_0050, outsideHistoryChunk0050] at hm0
  have hm1 := outsideAggregateMarkerPart1_0050
  simp only [outsideAggregateMarkerPartValid1_0050, outsideHistoryChunk0050] at hm1
  have hm2 := outsideAggregateMarkerPart2_0050
  simp only [outsideAggregateMarkerPartValid2_0050, outsideHistoryChunk0050] at hm2
  have hm3 := outsideAggregateMarkerPart3_0050
  simp only [outsideAggregateMarkerPartValid3_0050, outsideHistoryChunk0050] at hm3
  have hm4 := outsideAggregateMarkerPart4_0050
  simp only [outsideAggregateMarkerPartValid4_0050, outsideHistoryChunk0050] at hm4
  have hm5 := outsideAggregateMarkerPart5_0050
  simp only [outsideAggregateMarkerPartValid5_0050, outsideHistoryChunk0050] at hm5
  have hm6 := outsideAggregateMarkerPart6_0050
  simp only [outsideAggregateMarkerPartValid6_0050, outsideHistoryChunk0050] at hm6
  have hm7 := outsideAggregateMarkerPart7_0050
  simp only [outsideAggregateMarkerPartValid7_0050, outsideHistoryChunk0050] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0050
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0050
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0051 :
    outsideAggregateLocalPartValid0_0051 outsideHistoryChunk0051 := by
  unfold outsideAggregateLocalPartValid0_0051 outsideHistoryChunk0051
  decide

def outsideAggregateMarkerPartValid0_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 52224
  | _ => True

theorem outsideAggregateMarkerPart0_0051 :
    outsideAggregateMarkerPartValid0_0051 outsideHistoryChunk0051 := by
  unfold outsideAggregateMarkerPartValid0_0051 outsideHistoryChunk0051
  decide

def outsideAggregateLocalPartValid1_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0051 :
    outsideAggregateLocalPartValid1_0051 outsideHistoryChunk0051 := by
  unfold outsideAggregateLocalPartValid1_0051 outsideHistoryChunk0051
  decide

def outsideAggregateMarkerPartValid1_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 52352
  | _ => True

theorem outsideAggregateMarkerPart1_0051 :
    outsideAggregateMarkerPartValid1_0051 outsideHistoryChunk0051 := by
  unfold outsideAggregateMarkerPartValid1_0051 outsideHistoryChunk0051
  decide

def outsideAggregateLocalPartValid2_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0051 :
    outsideAggregateLocalPartValid2_0051 outsideHistoryChunk0051 := by
  unfold outsideAggregateLocalPartValid2_0051 outsideHistoryChunk0051
  decide

def outsideAggregateMarkerPartValid2_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 52480
  | _ => True

theorem outsideAggregateMarkerPart2_0051 :
    outsideAggregateMarkerPartValid2_0051 outsideHistoryChunk0051 := by
  unfold outsideAggregateMarkerPartValid2_0051 outsideHistoryChunk0051
  decide

def outsideAggregateLocalPartValid3_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0051 :
    outsideAggregateLocalPartValid3_0051 outsideHistoryChunk0051 := by
  unfold outsideAggregateLocalPartValid3_0051 outsideHistoryChunk0051
  decide

def outsideAggregateMarkerPartValid3_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 52608
  | _ => True

theorem outsideAggregateMarkerPart3_0051 :
    outsideAggregateMarkerPartValid3_0051 outsideHistoryChunk0051 := by
  unfold outsideAggregateMarkerPartValid3_0051 outsideHistoryChunk0051
  decide

def outsideAggregateLocalPartValid4_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0051 :
    outsideAggregateLocalPartValid4_0051 outsideHistoryChunk0051 := by
  unfold outsideAggregateLocalPartValid4_0051 outsideHistoryChunk0051
  decide

def outsideAggregateMarkerPartValid4_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 52736
  | _ => True

theorem outsideAggregateMarkerPart4_0051 :
    outsideAggregateMarkerPartValid4_0051 outsideHistoryChunk0051 := by
  unfold outsideAggregateMarkerPartValid4_0051 outsideHistoryChunk0051
  decide

def outsideAggregateLocalPartValid5_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0051 :
    outsideAggregateLocalPartValid5_0051 outsideHistoryChunk0051 := by
  unfold outsideAggregateLocalPartValid5_0051 outsideHistoryChunk0051
  decide

def outsideAggregateMarkerPartValid5_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 52864
  | _ => True

theorem outsideAggregateMarkerPart5_0051 :
    outsideAggregateMarkerPartValid5_0051 outsideHistoryChunk0051 := by
  unfold outsideAggregateMarkerPartValid5_0051 outsideHistoryChunk0051
  decide

def outsideAggregateLocalPartValid6_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0051 :
    outsideAggregateLocalPartValid6_0051 outsideHistoryChunk0051 := by
  unfold outsideAggregateLocalPartValid6_0051 outsideHistoryChunk0051
  decide

def outsideAggregateMarkerPartValid6_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 52992
  | _ => True

theorem outsideAggregateMarkerPart6_0051 :
    outsideAggregateMarkerPartValid6_0051 outsideHistoryChunk0051 := by
  unfold outsideAggregateMarkerPartValid6_0051 outsideHistoryChunk0051
  decide

def outsideAggregateLocalPartValid7_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0051 :
    outsideAggregateLocalPartValid7_0051 outsideHistoryChunk0051 := by
  unfold outsideAggregateLocalPartValid7_0051 outsideHistoryChunk0051
  decide

def outsideAggregateMarkerPartValid7_0051 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 53120
  | _ => True

theorem outsideAggregateMarkerPart7_0051 :
    outsideAggregateMarkerPartValid7_0051 outsideHistoryChunk0051 := by
  unfold outsideAggregateMarkerPartValid7_0051 outsideHistoryChunk0051
  decide

theorem outsideRange_0051 :
    outsideHistoryChunk0051.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 52224 := by
  have hl0 := outsideAggregateLocalPart0_0051
  simp only [outsideAggregateLocalPartValid0_0051, outsideHistoryChunk0051] at hl0
  have hl1 := outsideAggregateLocalPart1_0051
  simp only [outsideAggregateLocalPartValid1_0051, outsideHistoryChunk0051] at hl1
  have hl2 := outsideAggregateLocalPart2_0051
  simp only [outsideAggregateLocalPartValid2_0051, outsideHistoryChunk0051] at hl2
  have hl3 := outsideAggregateLocalPart3_0051
  simp only [outsideAggregateLocalPartValid3_0051, outsideHistoryChunk0051] at hl3
  have hl4 := outsideAggregateLocalPart4_0051
  simp only [outsideAggregateLocalPartValid4_0051, outsideHistoryChunk0051] at hl4
  have hl5 := outsideAggregateLocalPart5_0051
  simp only [outsideAggregateLocalPartValid5_0051, outsideHistoryChunk0051] at hl5
  have hl6 := outsideAggregateLocalPart6_0051
  simp only [outsideAggregateLocalPartValid6_0051, outsideHistoryChunk0051] at hl6
  have hl7 := outsideAggregateLocalPart7_0051
  simp only [outsideAggregateLocalPartValid7_0051, outsideHistoryChunk0051] at hl7
  have hm0 := outsideAggregateMarkerPart0_0051
  simp only [outsideAggregateMarkerPartValid0_0051, outsideHistoryChunk0051] at hm0
  have hm1 := outsideAggregateMarkerPart1_0051
  simp only [outsideAggregateMarkerPartValid1_0051, outsideHistoryChunk0051] at hm1
  have hm2 := outsideAggregateMarkerPart2_0051
  simp only [outsideAggregateMarkerPartValid2_0051, outsideHistoryChunk0051] at hm2
  have hm3 := outsideAggregateMarkerPart3_0051
  simp only [outsideAggregateMarkerPartValid3_0051, outsideHistoryChunk0051] at hm3
  have hm4 := outsideAggregateMarkerPart4_0051
  simp only [outsideAggregateMarkerPartValid4_0051, outsideHistoryChunk0051] at hm4
  have hm5 := outsideAggregateMarkerPart5_0051
  simp only [outsideAggregateMarkerPartValid5_0051, outsideHistoryChunk0051] at hm5
  have hm6 := outsideAggregateMarkerPart6_0051
  simp only [outsideAggregateMarkerPartValid6_0051, outsideHistoryChunk0051] at hm6
  have hm7 := outsideAggregateMarkerPart7_0051
  simp only [outsideAggregateMarkerPartValid7_0051, outsideHistoryChunk0051] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0051
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0051
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
