import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0076
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0077
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0078
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0079

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0076, 0077, 0078, 0079 -/

def outsideAggregateLocalPartValid0_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0076 :
    outsideAggregateLocalPartValid0_0076 outsideHistoryChunk0076 := by
  unfold outsideAggregateLocalPartValid0_0076 outsideHistoryChunk0076
  decide

def outsideAggregateMarkerPartValid0_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 77824
  | _ => True

theorem outsideAggregateMarkerPart0_0076 :
    outsideAggregateMarkerPartValid0_0076 outsideHistoryChunk0076 := by
  unfold outsideAggregateMarkerPartValid0_0076 outsideHistoryChunk0076
  decide

def outsideAggregateLocalPartValid1_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0076 :
    outsideAggregateLocalPartValid1_0076 outsideHistoryChunk0076 := by
  unfold outsideAggregateLocalPartValid1_0076 outsideHistoryChunk0076
  decide

def outsideAggregateMarkerPartValid1_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 77952
  | _ => True

theorem outsideAggregateMarkerPart1_0076 :
    outsideAggregateMarkerPartValid1_0076 outsideHistoryChunk0076 := by
  unfold outsideAggregateMarkerPartValid1_0076 outsideHistoryChunk0076
  decide

def outsideAggregateLocalPartValid2_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0076 :
    outsideAggregateLocalPartValid2_0076 outsideHistoryChunk0076 := by
  unfold outsideAggregateLocalPartValid2_0076 outsideHistoryChunk0076
  decide

def outsideAggregateMarkerPartValid2_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 78080
  | _ => True

theorem outsideAggregateMarkerPart2_0076 :
    outsideAggregateMarkerPartValid2_0076 outsideHistoryChunk0076 := by
  unfold outsideAggregateMarkerPartValid2_0076 outsideHistoryChunk0076
  decide

def outsideAggregateLocalPartValid3_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0076 :
    outsideAggregateLocalPartValid3_0076 outsideHistoryChunk0076 := by
  unfold outsideAggregateLocalPartValid3_0076 outsideHistoryChunk0076
  decide

def outsideAggregateMarkerPartValid3_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 78208
  | _ => True

theorem outsideAggregateMarkerPart3_0076 :
    outsideAggregateMarkerPartValid3_0076 outsideHistoryChunk0076 := by
  unfold outsideAggregateMarkerPartValid3_0076 outsideHistoryChunk0076
  decide

def outsideAggregateLocalPartValid4_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0076 :
    outsideAggregateLocalPartValid4_0076 outsideHistoryChunk0076 := by
  unfold outsideAggregateLocalPartValid4_0076 outsideHistoryChunk0076
  decide

def outsideAggregateMarkerPartValid4_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 78336
  | _ => True

theorem outsideAggregateMarkerPart4_0076 :
    outsideAggregateMarkerPartValid4_0076 outsideHistoryChunk0076 := by
  unfold outsideAggregateMarkerPartValid4_0076 outsideHistoryChunk0076
  decide

def outsideAggregateLocalPartValid5_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0076 :
    outsideAggregateLocalPartValid5_0076 outsideHistoryChunk0076 := by
  unfold outsideAggregateLocalPartValid5_0076 outsideHistoryChunk0076
  decide

def outsideAggregateMarkerPartValid5_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 78464
  | _ => True

theorem outsideAggregateMarkerPart5_0076 :
    outsideAggregateMarkerPartValid5_0076 outsideHistoryChunk0076 := by
  unfold outsideAggregateMarkerPartValid5_0076 outsideHistoryChunk0076
  decide

def outsideAggregateLocalPartValid6_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0076 :
    outsideAggregateLocalPartValid6_0076 outsideHistoryChunk0076 := by
  unfold outsideAggregateLocalPartValid6_0076 outsideHistoryChunk0076
  decide

def outsideAggregateMarkerPartValid6_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 78592
  | _ => True

theorem outsideAggregateMarkerPart6_0076 :
    outsideAggregateMarkerPartValid6_0076 outsideHistoryChunk0076 := by
  unfold outsideAggregateMarkerPartValid6_0076 outsideHistoryChunk0076
  decide

def outsideAggregateLocalPartValid7_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0076 :
    outsideAggregateLocalPartValid7_0076 outsideHistoryChunk0076 := by
  unfold outsideAggregateLocalPartValid7_0076 outsideHistoryChunk0076
  decide

def outsideAggregateMarkerPartValid7_0076 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 78720
  | _ => True

theorem outsideAggregateMarkerPart7_0076 :
    outsideAggregateMarkerPartValid7_0076 outsideHistoryChunk0076 := by
  unfold outsideAggregateMarkerPartValid7_0076 outsideHistoryChunk0076
  decide

theorem outsideRange_0076 :
    outsideHistoryChunk0076.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 77824 := by
  have hl0 := outsideAggregateLocalPart0_0076
  simp only [outsideAggregateLocalPartValid0_0076, outsideHistoryChunk0076] at hl0
  have hl1 := outsideAggregateLocalPart1_0076
  simp only [outsideAggregateLocalPartValid1_0076, outsideHistoryChunk0076] at hl1
  have hl2 := outsideAggregateLocalPart2_0076
  simp only [outsideAggregateLocalPartValid2_0076, outsideHistoryChunk0076] at hl2
  have hl3 := outsideAggregateLocalPart3_0076
  simp only [outsideAggregateLocalPartValid3_0076, outsideHistoryChunk0076] at hl3
  have hl4 := outsideAggregateLocalPart4_0076
  simp only [outsideAggregateLocalPartValid4_0076, outsideHistoryChunk0076] at hl4
  have hl5 := outsideAggregateLocalPart5_0076
  simp only [outsideAggregateLocalPartValid5_0076, outsideHistoryChunk0076] at hl5
  have hl6 := outsideAggregateLocalPart6_0076
  simp only [outsideAggregateLocalPartValid6_0076, outsideHistoryChunk0076] at hl6
  have hl7 := outsideAggregateLocalPart7_0076
  simp only [outsideAggregateLocalPartValid7_0076, outsideHistoryChunk0076] at hl7
  have hm0 := outsideAggregateMarkerPart0_0076
  simp only [outsideAggregateMarkerPartValid0_0076, outsideHistoryChunk0076] at hm0
  have hm1 := outsideAggregateMarkerPart1_0076
  simp only [outsideAggregateMarkerPartValid1_0076, outsideHistoryChunk0076] at hm1
  have hm2 := outsideAggregateMarkerPart2_0076
  simp only [outsideAggregateMarkerPartValid2_0076, outsideHistoryChunk0076] at hm2
  have hm3 := outsideAggregateMarkerPart3_0076
  simp only [outsideAggregateMarkerPartValid3_0076, outsideHistoryChunk0076] at hm3
  have hm4 := outsideAggregateMarkerPart4_0076
  simp only [outsideAggregateMarkerPartValid4_0076, outsideHistoryChunk0076] at hm4
  have hm5 := outsideAggregateMarkerPart5_0076
  simp only [outsideAggregateMarkerPartValid5_0076, outsideHistoryChunk0076] at hm5
  have hm6 := outsideAggregateMarkerPart6_0076
  simp only [outsideAggregateMarkerPartValid6_0076, outsideHistoryChunk0076] at hm6
  have hm7 := outsideAggregateMarkerPart7_0076
  simp only [outsideAggregateMarkerPartValid7_0076, outsideHistoryChunk0076] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0076
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0076
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0077 :
    outsideAggregateLocalPartValid0_0077 outsideHistoryChunk0077 := by
  unfold outsideAggregateLocalPartValid0_0077 outsideHistoryChunk0077
  decide

def outsideAggregateMarkerPartValid0_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 78848
  | _ => True

theorem outsideAggregateMarkerPart0_0077 :
    outsideAggregateMarkerPartValid0_0077 outsideHistoryChunk0077 := by
  unfold outsideAggregateMarkerPartValid0_0077 outsideHistoryChunk0077
  decide

def outsideAggregateLocalPartValid1_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0077 :
    outsideAggregateLocalPartValid1_0077 outsideHistoryChunk0077 := by
  unfold outsideAggregateLocalPartValid1_0077 outsideHistoryChunk0077
  decide

def outsideAggregateMarkerPartValid1_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 78976
  | _ => True

theorem outsideAggregateMarkerPart1_0077 :
    outsideAggregateMarkerPartValid1_0077 outsideHistoryChunk0077 := by
  unfold outsideAggregateMarkerPartValid1_0077 outsideHistoryChunk0077
  decide

def outsideAggregateLocalPartValid2_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0077 :
    outsideAggregateLocalPartValid2_0077 outsideHistoryChunk0077 := by
  unfold outsideAggregateLocalPartValid2_0077 outsideHistoryChunk0077
  decide

def outsideAggregateMarkerPartValid2_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 79104
  | _ => True

theorem outsideAggregateMarkerPart2_0077 :
    outsideAggregateMarkerPartValid2_0077 outsideHistoryChunk0077 := by
  unfold outsideAggregateMarkerPartValid2_0077 outsideHistoryChunk0077
  decide

def outsideAggregateLocalPartValid3_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0077 :
    outsideAggregateLocalPartValid3_0077 outsideHistoryChunk0077 := by
  unfold outsideAggregateLocalPartValid3_0077 outsideHistoryChunk0077
  decide

def outsideAggregateMarkerPartValid3_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 79232
  | _ => True

theorem outsideAggregateMarkerPart3_0077 :
    outsideAggregateMarkerPartValid3_0077 outsideHistoryChunk0077 := by
  unfold outsideAggregateMarkerPartValid3_0077 outsideHistoryChunk0077
  decide

def outsideAggregateLocalPartValid4_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0077 :
    outsideAggregateLocalPartValid4_0077 outsideHistoryChunk0077 := by
  unfold outsideAggregateLocalPartValid4_0077 outsideHistoryChunk0077
  decide

def outsideAggregateMarkerPartValid4_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 79360
  | _ => True

theorem outsideAggregateMarkerPart4_0077 :
    outsideAggregateMarkerPartValid4_0077 outsideHistoryChunk0077 := by
  unfold outsideAggregateMarkerPartValid4_0077 outsideHistoryChunk0077
  decide

def outsideAggregateLocalPartValid5_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0077 :
    outsideAggregateLocalPartValid5_0077 outsideHistoryChunk0077 := by
  unfold outsideAggregateLocalPartValid5_0077 outsideHistoryChunk0077
  decide

def outsideAggregateMarkerPartValid5_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 79488
  | _ => True

theorem outsideAggregateMarkerPart5_0077 :
    outsideAggregateMarkerPartValid5_0077 outsideHistoryChunk0077 := by
  unfold outsideAggregateMarkerPartValid5_0077 outsideHistoryChunk0077
  decide

def outsideAggregateLocalPartValid6_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0077 :
    outsideAggregateLocalPartValid6_0077 outsideHistoryChunk0077 := by
  unfold outsideAggregateLocalPartValid6_0077 outsideHistoryChunk0077
  decide

def outsideAggregateMarkerPartValid6_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 79616
  | _ => True

theorem outsideAggregateMarkerPart6_0077 :
    outsideAggregateMarkerPartValid6_0077 outsideHistoryChunk0077 := by
  unfold outsideAggregateMarkerPartValid6_0077 outsideHistoryChunk0077
  decide

def outsideAggregateLocalPartValid7_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0077 :
    outsideAggregateLocalPartValid7_0077 outsideHistoryChunk0077 := by
  unfold outsideAggregateLocalPartValid7_0077 outsideHistoryChunk0077
  decide

def outsideAggregateMarkerPartValid7_0077 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 79744
  | _ => True

theorem outsideAggregateMarkerPart7_0077 :
    outsideAggregateMarkerPartValid7_0077 outsideHistoryChunk0077 := by
  unfold outsideAggregateMarkerPartValid7_0077 outsideHistoryChunk0077
  decide

theorem outsideRange_0077 :
    outsideHistoryChunk0077.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 78848 := by
  have hl0 := outsideAggregateLocalPart0_0077
  simp only [outsideAggregateLocalPartValid0_0077, outsideHistoryChunk0077] at hl0
  have hl1 := outsideAggregateLocalPart1_0077
  simp only [outsideAggregateLocalPartValid1_0077, outsideHistoryChunk0077] at hl1
  have hl2 := outsideAggregateLocalPart2_0077
  simp only [outsideAggregateLocalPartValid2_0077, outsideHistoryChunk0077] at hl2
  have hl3 := outsideAggregateLocalPart3_0077
  simp only [outsideAggregateLocalPartValid3_0077, outsideHistoryChunk0077] at hl3
  have hl4 := outsideAggregateLocalPart4_0077
  simp only [outsideAggregateLocalPartValid4_0077, outsideHistoryChunk0077] at hl4
  have hl5 := outsideAggregateLocalPart5_0077
  simp only [outsideAggregateLocalPartValid5_0077, outsideHistoryChunk0077] at hl5
  have hl6 := outsideAggregateLocalPart6_0077
  simp only [outsideAggregateLocalPartValid6_0077, outsideHistoryChunk0077] at hl6
  have hl7 := outsideAggregateLocalPart7_0077
  simp only [outsideAggregateLocalPartValid7_0077, outsideHistoryChunk0077] at hl7
  have hm0 := outsideAggregateMarkerPart0_0077
  simp only [outsideAggregateMarkerPartValid0_0077, outsideHistoryChunk0077] at hm0
  have hm1 := outsideAggregateMarkerPart1_0077
  simp only [outsideAggregateMarkerPartValid1_0077, outsideHistoryChunk0077] at hm1
  have hm2 := outsideAggregateMarkerPart2_0077
  simp only [outsideAggregateMarkerPartValid2_0077, outsideHistoryChunk0077] at hm2
  have hm3 := outsideAggregateMarkerPart3_0077
  simp only [outsideAggregateMarkerPartValid3_0077, outsideHistoryChunk0077] at hm3
  have hm4 := outsideAggregateMarkerPart4_0077
  simp only [outsideAggregateMarkerPartValid4_0077, outsideHistoryChunk0077] at hm4
  have hm5 := outsideAggregateMarkerPart5_0077
  simp only [outsideAggregateMarkerPartValid5_0077, outsideHistoryChunk0077] at hm5
  have hm6 := outsideAggregateMarkerPart6_0077
  simp only [outsideAggregateMarkerPartValid6_0077, outsideHistoryChunk0077] at hm6
  have hm7 := outsideAggregateMarkerPart7_0077
  simp only [outsideAggregateMarkerPartValid7_0077, outsideHistoryChunk0077] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0077
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0077
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0078 :
    outsideAggregateLocalPartValid0_0078 outsideHistoryChunk0078 := by
  unfold outsideAggregateLocalPartValid0_0078 outsideHistoryChunk0078
  decide

def outsideAggregateMarkerPartValid0_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 79872
  | _ => True

theorem outsideAggregateMarkerPart0_0078 :
    outsideAggregateMarkerPartValid0_0078 outsideHistoryChunk0078 := by
  unfold outsideAggregateMarkerPartValid0_0078 outsideHistoryChunk0078
  decide

def outsideAggregateLocalPartValid1_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0078 :
    outsideAggregateLocalPartValid1_0078 outsideHistoryChunk0078 := by
  unfold outsideAggregateLocalPartValid1_0078 outsideHistoryChunk0078
  decide

def outsideAggregateMarkerPartValid1_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 80000
  | _ => True

theorem outsideAggregateMarkerPart1_0078 :
    outsideAggregateMarkerPartValid1_0078 outsideHistoryChunk0078 := by
  unfold outsideAggregateMarkerPartValid1_0078 outsideHistoryChunk0078
  decide

def outsideAggregateLocalPartValid2_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0078 :
    outsideAggregateLocalPartValid2_0078 outsideHistoryChunk0078 := by
  unfold outsideAggregateLocalPartValid2_0078 outsideHistoryChunk0078
  decide

def outsideAggregateMarkerPartValid2_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 80128
  | _ => True

theorem outsideAggregateMarkerPart2_0078 :
    outsideAggregateMarkerPartValid2_0078 outsideHistoryChunk0078 := by
  unfold outsideAggregateMarkerPartValid2_0078 outsideHistoryChunk0078
  decide

def outsideAggregateLocalPartValid3_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0078 :
    outsideAggregateLocalPartValid3_0078 outsideHistoryChunk0078 := by
  unfold outsideAggregateLocalPartValid3_0078 outsideHistoryChunk0078
  decide

def outsideAggregateMarkerPartValid3_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 80256
  | _ => True

theorem outsideAggregateMarkerPart3_0078 :
    outsideAggregateMarkerPartValid3_0078 outsideHistoryChunk0078 := by
  unfold outsideAggregateMarkerPartValid3_0078 outsideHistoryChunk0078
  decide

def outsideAggregateLocalPartValid4_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0078 :
    outsideAggregateLocalPartValid4_0078 outsideHistoryChunk0078 := by
  unfold outsideAggregateLocalPartValid4_0078 outsideHistoryChunk0078
  decide

def outsideAggregateMarkerPartValid4_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 80384
  | _ => True

theorem outsideAggregateMarkerPart4_0078 :
    outsideAggregateMarkerPartValid4_0078 outsideHistoryChunk0078 := by
  unfold outsideAggregateMarkerPartValid4_0078 outsideHistoryChunk0078
  decide

def outsideAggregateLocalPartValid5_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0078 :
    outsideAggregateLocalPartValid5_0078 outsideHistoryChunk0078 := by
  unfold outsideAggregateLocalPartValid5_0078 outsideHistoryChunk0078
  decide

def outsideAggregateMarkerPartValid5_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 80512
  | _ => True

theorem outsideAggregateMarkerPart5_0078 :
    outsideAggregateMarkerPartValid5_0078 outsideHistoryChunk0078 := by
  unfold outsideAggregateMarkerPartValid5_0078 outsideHistoryChunk0078
  decide

def outsideAggregateLocalPartValid6_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0078 :
    outsideAggregateLocalPartValid6_0078 outsideHistoryChunk0078 := by
  unfold outsideAggregateLocalPartValid6_0078 outsideHistoryChunk0078
  decide

def outsideAggregateMarkerPartValid6_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 80640
  | _ => True

theorem outsideAggregateMarkerPart6_0078 :
    outsideAggregateMarkerPartValid6_0078 outsideHistoryChunk0078 := by
  unfold outsideAggregateMarkerPartValid6_0078 outsideHistoryChunk0078
  decide

def outsideAggregateLocalPartValid7_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0078 :
    outsideAggregateLocalPartValid7_0078 outsideHistoryChunk0078 := by
  unfold outsideAggregateLocalPartValid7_0078 outsideHistoryChunk0078
  decide

def outsideAggregateMarkerPartValid7_0078 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 80768
  | _ => True

theorem outsideAggregateMarkerPart7_0078 :
    outsideAggregateMarkerPartValid7_0078 outsideHistoryChunk0078 := by
  unfold outsideAggregateMarkerPartValid7_0078 outsideHistoryChunk0078
  decide

theorem outsideRange_0078 :
    outsideHistoryChunk0078.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 79872 := by
  have hl0 := outsideAggregateLocalPart0_0078
  simp only [outsideAggregateLocalPartValid0_0078, outsideHistoryChunk0078] at hl0
  have hl1 := outsideAggregateLocalPart1_0078
  simp only [outsideAggregateLocalPartValid1_0078, outsideHistoryChunk0078] at hl1
  have hl2 := outsideAggregateLocalPart2_0078
  simp only [outsideAggregateLocalPartValid2_0078, outsideHistoryChunk0078] at hl2
  have hl3 := outsideAggregateLocalPart3_0078
  simp only [outsideAggregateLocalPartValid3_0078, outsideHistoryChunk0078] at hl3
  have hl4 := outsideAggregateLocalPart4_0078
  simp only [outsideAggregateLocalPartValid4_0078, outsideHistoryChunk0078] at hl4
  have hl5 := outsideAggregateLocalPart5_0078
  simp only [outsideAggregateLocalPartValid5_0078, outsideHistoryChunk0078] at hl5
  have hl6 := outsideAggregateLocalPart6_0078
  simp only [outsideAggregateLocalPartValid6_0078, outsideHistoryChunk0078] at hl6
  have hl7 := outsideAggregateLocalPart7_0078
  simp only [outsideAggregateLocalPartValid7_0078, outsideHistoryChunk0078] at hl7
  have hm0 := outsideAggregateMarkerPart0_0078
  simp only [outsideAggregateMarkerPartValid0_0078, outsideHistoryChunk0078] at hm0
  have hm1 := outsideAggregateMarkerPart1_0078
  simp only [outsideAggregateMarkerPartValid1_0078, outsideHistoryChunk0078] at hm1
  have hm2 := outsideAggregateMarkerPart2_0078
  simp only [outsideAggregateMarkerPartValid2_0078, outsideHistoryChunk0078] at hm2
  have hm3 := outsideAggregateMarkerPart3_0078
  simp only [outsideAggregateMarkerPartValid3_0078, outsideHistoryChunk0078] at hm3
  have hm4 := outsideAggregateMarkerPart4_0078
  simp only [outsideAggregateMarkerPartValid4_0078, outsideHistoryChunk0078] at hm4
  have hm5 := outsideAggregateMarkerPart5_0078
  simp only [outsideAggregateMarkerPartValid5_0078, outsideHistoryChunk0078] at hm5
  have hm6 := outsideAggregateMarkerPart6_0078
  simp only [outsideAggregateMarkerPartValid6_0078, outsideHistoryChunk0078] at hm6
  have hm7 := outsideAggregateMarkerPart7_0078
  simp only [outsideAggregateMarkerPartValid7_0078, outsideHistoryChunk0078] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0078
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0078
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0079 :
    outsideAggregateLocalPartValid0_0079 outsideHistoryChunk0079 := by
  unfold outsideAggregateLocalPartValid0_0079 outsideHistoryChunk0079
  decide

def outsideAggregateMarkerPartValid0_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 80896
  | _ => True

theorem outsideAggregateMarkerPart0_0079 :
    outsideAggregateMarkerPartValid0_0079 outsideHistoryChunk0079 := by
  unfold outsideAggregateMarkerPartValid0_0079 outsideHistoryChunk0079
  decide

def outsideAggregateLocalPartValid1_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0079 :
    outsideAggregateLocalPartValid1_0079 outsideHistoryChunk0079 := by
  unfold outsideAggregateLocalPartValid1_0079 outsideHistoryChunk0079
  decide

def outsideAggregateMarkerPartValid1_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 81024
  | _ => True

theorem outsideAggregateMarkerPart1_0079 :
    outsideAggregateMarkerPartValid1_0079 outsideHistoryChunk0079 := by
  unfold outsideAggregateMarkerPartValid1_0079 outsideHistoryChunk0079
  decide

def outsideAggregateLocalPartValid2_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0079 :
    outsideAggregateLocalPartValid2_0079 outsideHistoryChunk0079 := by
  unfold outsideAggregateLocalPartValid2_0079 outsideHistoryChunk0079
  decide

def outsideAggregateMarkerPartValid2_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 81152
  | _ => True

theorem outsideAggregateMarkerPart2_0079 :
    outsideAggregateMarkerPartValid2_0079 outsideHistoryChunk0079 := by
  unfold outsideAggregateMarkerPartValid2_0079 outsideHistoryChunk0079
  decide

def outsideAggregateLocalPartValid3_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0079 :
    outsideAggregateLocalPartValid3_0079 outsideHistoryChunk0079 := by
  unfold outsideAggregateLocalPartValid3_0079 outsideHistoryChunk0079
  decide

def outsideAggregateMarkerPartValid3_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 81280
  | _ => True

theorem outsideAggregateMarkerPart3_0079 :
    outsideAggregateMarkerPartValid3_0079 outsideHistoryChunk0079 := by
  unfold outsideAggregateMarkerPartValid3_0079 outsideHistoryChunk0079
  decide

def outsideAggregateLocalPartValid4_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0079 :
    outsideAggregateLocalPartValid4_0079 outsideHistoryChunk0079 := by
  unfold outsideAggregateLocalPartValid4_0079 outsideHistoryChunk0079
  decide

def outsideAggregateMarkerPartValid4_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 81408
  | _ => True

theorem outsideAggregateMarkerPart4_0079 :
    outsideAggregateMarkerPartValid4_0079 outsideHistoryChunk0079 := by
  unfold outsideAggregateMarkerPartValid4_0079 outsideHistoryChunk0079
  decide

def outsideAggregateLocalPartValid5_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0079 :
    outsideAggregateLocalPartValid5_0079 outsideHistoryChunk0079 := by
  unfold outsideAggregateLocalPartValid5_0079 outsideHistoryChunk0079
  decide

def outsideAggregateMarkerPartValid5_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 81536
  | _ => True

theorem outsideAggregateMarkerPart5_0079 :
    outsideAggregateMarkerPartValid5_0079 outsideHistoryChunk0079 := by
  unfold outsideAggregateMarkerPartValid5_0079 outsideHistoryChunk0079
  decide

def outsideAggregateLocalPartValid6_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0079 :
    outsideAggregateLocalPartValid6_0079 outsideHistoryChunk0079 := by
  unfold outsideAggregateLocalPartValid6_0079 outsideHistoryChunk0079
  decide

def outsideAggregateMarkerPartValid6_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 81664
  | _ => True

theorem outsideAggregateMarkerPart6_0079 :
    outsideAggregateMarkerPartValid6_0079 outsideHistoryChunk0079 := by
  unfold outsideAggregateMarkerPartValid6_0079 outsideHistoryChunk0079
  decide

def outsideAggregateLocalPartValid7_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0079 :
    outsideAggregateLocalPartValid7_0079 outsideHistoryChunk0079 := by
  unfold outsideAggregateLocalPartValid7_0079 outsideHistoryChunk0079
  decide

def outsideAggregateMarkerPartValid7_0079 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 81792
  | _ => True

theorem outsideAggregateMarkerPart7_0079 :
    outsideAggregateMarkerPartValid7_0079 outsideHistoryChunk0079 := by
  unfold outsideAggregateMarkerPartValid7_0079 outsideHistoryChunk0079
  decide

theorem outsideRange_0079 :
    outsideHistoryChunk0079.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 80896 := by
  have hl0 := outsideAggregateLocalPart0_0079
  simp only [outsideAggregateLocalPartValid0_0079, outsideHistoryChunk0079] at hl0
  have hl1 := outsideAggregateLocalPart1_0079
  simp only [outsideAggregateLocalPartValid1_0079, outsideHistoryChunk0079] at hl1
  have hl2 := outsideAggregateLocalPart2_0079
  simp only [outsideAggregateLocalPartValid2_0079, outsideHistoryChunk0079] at hl2
  have hl3 := outsideAggregateLocalPart3_0079
  simp only [outsideAggregateLocalPartValid3_0079, outsideHistoryChunk0079] at hl3
  have hl4 := outsideAggregateLocalPart4_0079
  simp only [outsideAggregateLocalPartValid4_0079, outsideHistoryChunk0079] at hl4
  have hl5 := outsideAggregateLocalPart5_0079
  simp only [outsideAggregateLocalPartValid5_0079, outsideHistoryChunk0079] at hl5
  have hl6 := outsideAggregateLocalPart6_0079
  simp only [outsideAggregateLocalPartValid6_0079, outsideHistoryChunk0079] at hl6
  have hl7 := outsideAggregateLocalPart7_0079
  simp only [outsideAggregateLocalPartValid7_0079, outsideHistoryChunk0079] at hl7
  have hm0 := outsideAggregateMarkerPart0_0079
  simp only [outsideAggregateMarkerPartValid0_0079, outsideHistoryChunk0079] at hm0
  have hm1 := outsideAggregateMarkerPart1_0079
  simp only [outsideAggregateMarkerPartValid1_0079, outsideHistoryChunk0079] at hm1
  have hm2 := outsideAggregateMarkerPart2_0079
  simp only [outsideAggregateMarkerPartValid2_0079, outsideHistoryChunk0079] at hm2
  have hm3 := outsideAggregateMarkerPart3_0079
  simp only [outsideAggregateMarkerPartValid3_0079, outsideHistoryChunk0079] at hm3
  have hm4 := outsideAggregateMarkerPart4_0079
  simp only [outsideAggregateMarkerPartValid4_0079, outsideHistoryChunk0079] at hm4
  have hm5 := outsideAggregateMarkerPart5_0079
  simp only [outsideAggregateMarkerPartValid5_0079, outsideHistoryChunk0079] at hm5
  have hm6 := outsideAggregateMarkerPart6_0079
  simp only [outsideAggregateMarkerPartValid6_0079, outsideHistoryChunk0079] at hm6
  have hm7 := outsideAggregateMarkerPart7_0079
  simp only [outsideAggregateMarkerPartValid7_0079, outsideHistoryChunk0079] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0079
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0079
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
