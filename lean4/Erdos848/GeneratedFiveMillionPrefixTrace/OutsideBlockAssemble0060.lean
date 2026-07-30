import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0060
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0061
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0062
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0063

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0060, 0061, 0062, 0063 -/

def outsideAggregateLocalPartValid0_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0060 :
    outsideAggregateLocalPartValid0_0060 outsideHistoryChunk0060 := by
  unfold outsideAggregateLocalPartValid0_0060 outsideHistoryChunk0060
  decide

def outsideAggregateMarkerPartValid0_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 61440
  | _ => True

theorem outsideAggregateMarkerPart0_0060 :
    outsideAggregateMarkerPartValid0_0060 outsideHistoryChunk0060 := by
  unfold outsideAggregateMarkerPartValid0_0060 outsideHistoryChunk0060
  decide

def outsideAggregateLocalPartValid1_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0060 :
    outsideAggregateLocalPartValid1_0060 outsideHistoryChunk0060 := by
  unfold outsideAggregateLocalPartValid1_0060 outsideHistoryChunk0060
  decide

def outsideAggregateMarkerPartValid1_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 61568
  | _ => True

theorem outsideAggregateMarkerPart1_0060 :
    outsideAggregateMarkerPartValid1_0060 outsideHistoryChunk0060 := by
  unfold outsideAggregateMarkerPartValid1_0060 outsideHistoryChunk0060
  decide

def outsideAggregateLocalPartValid2_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0060 :
    outsideAggregateLocalPartValid2_0060 outsideHistoryChunk0060 := by
  unfold outsideAggregateLocalPartValid2_0060 outsideHistoryChunk0060
  decide

def outsideAggregateMarkerPartValid2_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 61696
  | _ => True

theorem outsideAggregateMarkerPart2_0060 :
    outsideAggregateMarkerPartValid2_0060 outsideHistoryChunk0060 := by
  unfold outsideAggregateMarkerPartValid2_0060 outsideHistoryChunk0060
  decide

def outsideAggregateLocalPartValid3_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0060 :
    outsideAggregateLocalPartValid3_0060 outsideHistoryChunk0060 := by
  unfold outsideAggregateLocalPartValid3_0060 outsideHistoryChunk0060
  decide

def outsideAggregateMarkerPartValid3_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 61824
  | _ => True

theorem outsideAggregateMarkerPart3_0060 :
    outsideAggregateMarkerPartValid3_0060 outsideHistoryChunk0060 := by
  unfold outsideAggregateMarkerPartValid3_0060 outsideHistoryChunk0060
  decide

def outsideAggregateLocalPartValid4_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0060 :
    outsideAggregateLocalPartValid4_0060 outsideHistoryChunk0060 := by
  unfold outsideAggregateLocalPartValid4_0060 outsideHistoryChunk0060
  decide

def outsideAggregateMarkerPartValid4_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 61952
  | _ => True

theorem outsideAggregateMarkerPart4_0060 :
    outsideAggregateMarkerPartValid4_0060 outsideHistoryChunk0060 := by
  unfold outsideAggregateMarkerPartValid4_0060 outsideHistoryChunk0060
  decide

def outsideAggregateLocalPartValid5_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0060 :
    outsideAggregateLocalPartValid5_0060 outsideHistoryChunk0060 := by
  unfold outsideAggregateLocalPartValid5_0060 outsideHistoryChunk0060
  decide

def outsideAggregateMarkerPartValid5_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 62080
  | _ => True

theorem outsideAggregateMarkerPart5_0060 :
    outsideAggregateMarkerPartValid5_0060 outsideHistoryChunk0060 := by
  unfold outsideAggregateMarkerPartValid5_0060 outsideHistoryChunk0060
  decide

def outsideAggregateLocalPartValid6_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0060 :
    outsideAggregateLocalPartValid6_0060 outsideHistoryChunk0060 := by
  unfold outsideAggregateLocalPartValid6_0060 outsideHistoryChunk0060
  decide

def outsideAggregateMarkerPartValid6_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 62208
  | _ => True

theorem outsideAggregateMarkerPart6_0060 :
    outsideAggregateMarkerPartValid6_0060 outsideHistoryChunk0060 := by
  unfold outsideAggregateMarkerPartValid6_0060 outsideHistoryChunk0060
  decide

def outsideAggregateLocalPartValid7_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0060 :
    outsideAggregateLocalPartValid7_0060 outsideHistoryChunk0060 := by
  unfold outsideAggregateLocalPartValid7_0060 outsideHistoryChunk0060
  decide

def outsideAggregateMarkerPartValid7_0060 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 62336
  | _ => True

theorem outsideAggregateMarkerPart7_0060 :
    outsideAggregateMarkerPartValid7_0060 outsideHistoryChunk0060 := by
  unfold outsideAggregateMarkerPartValid7_0060 outsideHistoryChunk0060
  decide

theorem outsideRange_0060 :
    outsideHistoryChunk0060.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 61440 := by
  have hl0 := outsideAggregateLocalPart0_0060
  simp only [outsideAggregateLocalPartValid0_0060, outsideHistoryChunk0060] at hl0
  have hl1 := outsideAggregateLocalPart1_0060
  simp only [outsideAggregateLocalPartValid1_0060, outsideHistoryChunk0060] at hl1
  have hl2 := outsideAggregateLocalPart2_0060
  simp only [outsideAggregateLocalPartValid2_0060, outsideHistoryChunk0060] at hl2
  have hl3 := outsideAggregateLocalPart3_0060
  simp only [outsideAggregateLocalPartValid3_0060, outsideHistoryChunk0060] at hl3
  have hl4 := outsideAggregateLocalPart4_0060
  simp only [outsideAggregateLocalPartValid4_0060, outsideHistoryChunk0060] at hl4
  have hl5 := outsideAggregateLocalPart5_0060
  simp only [outsideAggregateLocalPartValid5_0060, outsideHistoryChunk0060] at hl5
  have hl6 := outsideAggregateLocalPart6_0060
  simp only [outsideAggregateLocalPartValid6_0060, outsideHistoryChunk0060] at hl6
  have hl7 := outsideAggregateLocalPart7_0060
  simp only [outsideAggregateLocalPartValid7_0060, outsideHistoryChunk0060] at hl7
  have hm0 := outsideAggregateMarkerPart0_0060
  simp only [outsideAggregateMarkerPartValid0_0060, outsideHistoryChunk0060] at hm0
  have hm1 := outsideAggregateMarkerPart1_0060
  simp only [outsideAggregateMarkerPartValid1_0060, outsideHistoryChunk0060] at hm1
  have hm2 := outsideAggregateMarkerPart2_0060
  simp only [outsideAggregateMarkerPartValid2_0060, outsideHistoryChunk0060] at hm2
  have hm3 := outsideAggregateMarkerPart3_0060
  simp only [outsideAggregateMarkerPartValid3_0060, outsideHistoryChunk0060] at hm3
  have hm4 := outsideAggregateMarkerPart4_0060
  simp only [outsideAggregateMarkerPartValid4_0060, outsideHistoryChunk0060] at hm4
  have hm5 := outsideAggregateMarkerPart5_0060
  simp only [outsideAggregateMarkerPartValid5_0060, outsideHistoryChunk0060] at hm5
  have hm6 := outsideAggregateMarkerPart6_0060
  simp only [outsideAggregateMarkerPartValid6_0060, outsideHistoryChunk0060] at hm6
  have hm7 := outsideAggregateMarkerPart7_0060
  simp only [outsideAggregateMarkerPartValid7_0060, outsideHistoryChunk0060] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0060
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0060
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0061 :
    outsideAggregateLocalPartValid0_0061 outsideHistoryChunk0061 := by
  unfold outsideAggregateLocalPartValid0_0061 outsideHistoryChunk0061
  decide

def outsideAggregateMarkerPartValid0_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 62464
  | _ => True

theorem outsideAggregateMarkerPart0_0061 :
    outsideAggregateMarkerPartValid0_0061 outsideHistoryChunk0061 := by
  unfold outsideAggregateMarkerPartValid0_0061 outsideHistoryChunk0061
  decide

def outsideAggregateLocalPartValid1_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0061 :
    outsideAggregateLocalPartValid1_0061 outsideHistoryChunk0061 := by
  unfold outsideAggregateLocalPartValid1_0061 outsideHistoryChunk0061
  decide

def outsideAggregateMarkerPartValid1_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 62592
  | _ => True

theorem outsideAggregateMarkerPart1_0061 :
    outsideAggregateMarkerPartValid1_0061 outsideHistoryChunk0061 := by
  unfold outsideAggregateMarkerPartValid1_0061 outsideHistoryChunk0061
  decide

def outsideAggregateLocalPartValid2_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0061 :
    outsideAggregateLocalPartValid2_0061 outsideHistoryChunk0061 := by
  unfold outsideAggregateLocalPartValid2_0061 outsideHistoryChunk0061
  decide

def outsideAggregateMarkerPartValid2_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 62720
  | _ => True

theorem outsideAggregateMarkerPart2_0061 :
    outsideAggregateMarkerPartValid2_0061 outsideHistoryChunk0061 := by
  unfold outsideAggregateMarkerPartValid2_0061 outsideHistoryChunk0061
  decide

def outsideAggregateLocalPartValid3_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0061 :
    outsideAggregateLocalPartValid3_0061 outsideHistoryChunk0061 := by
  unfold outsideAggregateLocalPartValid3_0061 outsideHistoryChunk0061
  decide

def outsideAggregateMarkerPartValid3_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 62848
  | _ => True

theorem outsideAggregateMarkerPart3_0061 :
    outsideAggregateMarkerPartValid3_0061 outsideHistoryChunk0061 := by
  unfold outsideAggregateMarkerPartValid3_0061 outsideHistoryChunk0061
  decide

def outsideAggregateLocalPartValid4_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0061 :
    outsideAggregateLocalPartValid4_0061 outsideHistoryChunk0061 := by
  unfold outsideAggregateLocalPartValid4_0061 outsideHistoryChunk0061
  decide

def outsideAggregateMarkerPartValid4_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 62976
  | _ => True

theorem outsideAggregateMarkerPart4_0061 :
    outsideAggregateMarkerPartValid4_0061 outsideHistoryChunk0061 := by
  unfold outsideAggregateMarkerPartValid4_0061 outsideHistoryChunk0061
  decide

def outsideAggregateLocalPartValid5_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0061 :
    outsideAggregateLocalPartValid5_0061 outsideHistoryChunk0061 := by
  unfold outsideAggregateLocalPartValid5_0061 outsideHistoryChunk0061
  decide

def outsideAggregateMarkerPartValid5_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 63104
  | _ => True

theorem outsideAggregateMarkerPart5_0061 :
    outsideAggregateMarkerPartValid5_0061 outsideHistoryChunk0061 := by
  unfold outsideAggregateMarkerPartValid5_0061 outsideHistoryChunk0061
  decide

def outsideAggregateLocalPartValid6_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0061 :
    outsideAggregateLocalPartValid6_0061 outsideHistoryChunk0061 := by
  unfold outsideAggregateLocalPartValid6_0061 outsideHistoryChunk0061
  decide

def outsideAggregateMarkerPartValid6_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 63232
  | _ => True

theorem outsideAggregateMarkerPart6_0061 :
    outsideAggregateMarkerPartValid6_0061 outsideHistoryChunk0061 := by
  unfold outsideAggregateMarkerPartValid6_0061 outsideHistoryChunk0061
  decide

def outsideAggregateLocalPartValid7_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0061 :
    outsideAggregateLocalPartValid7_0061 outsideHistoryChunk0061 := by
  unfold outsideAggregateLocalPartValid7_0061 outsideHistoryChunk0061
  decide

def outsideAggregateMarkerPartValid7_0061 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 63360
  | _ => True

theorem outsideAggregateMarkerPart7_0061 :
    outsideAggregateMarkerPartValid7_0061 outsideHistoryChunk0061 := by
  unfold outsideAggregateMarkerPartValid7_0061 outsideHistoryChunk0061
  decide

theorem outsideRange_0061 :
    outsideHistoryChunk0061.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 62464 := by
  have hl0 := outsideAggregateLocalPart0_0061
  simp only [outsideAggregateLocalPartValid0_0061, outsideHistoryChunk0061] at hl0
  have hl1 := outsideAggregateLocalPart1_0061
  simp only [outsideAggregateLocalPartValid1_0061, outsideHistoryChunk0061] at hl1
  have hl2 := outsideAggregateLocalPart2_0061
  simp only [outsideAggregateLocalPartValid2_0061, outsideHistoryChunk0061] at hl2
  have hl3 := outsideAggregateLocalPart3_0061
  simp only [outsideAggregateLocalPartValid3_0061, outsideHistoryChunk0061] at hl3
  have hl4 := outsideAggregateLocalPart4_0061
  simp only [outsideAggregateLocalPartValid4_0061, outsideHistoryChunk0061] at hl4
  have hl5 := outsideAggregateLocalPart5_0061
  simp only [outsideAggregateLocalPartValid5_0061, outsideHistoryChunk0061] at hl5
  have hl6 := outsideAggregateLocalPart6_0061
  simp only [outsideAggregateLocalPartValid6_0061, outsideHistoryChunk0061] at hl6
  have hl7 := outsideAggregateLocalPart7_0061
  simp only [outsideAggregateLocalPartValid7_0061, outsideHistoryChunk0061] at hl7
  have hm0 := outsideAggregateMarkerPart0_0061
  simp only [outsideAggregateMarkerPartValid0_0061, outsideHistoryChunk0061] at hm0
  have hm1 := outsideAggregateMarkerPart1_0061
  simp only [outsideAggregateMarkerPartValid1_0061, outsideHistoryChunk0061] at hm1
  have hm2 := outsideAggregateMarkerPart2_0061
  simp only [outsideAggregateMarkerPartValid2_0061, outsideHistoryChunk0061] at hm2
  have hm3 := outsideAggregateMarkerPart3_0061
  simp only [outsideAggregateMarkerPartValid3_0061, outsideHistoryChunk0061] at hm3
  have hm4 := outsideAggregateMarkerPart4_0061
  simp only [outsideAggregateMarkerPartValid4_0061, outsideHistoryChunk0061] at hm4
  have hm5 := outsideAggregateMarkerPart5_0061
  simp only [outsideAggregateMarkerPartValid5_0061, outsideHistoryChunk0061] at hm5
  have hm6 := outsideAggregateMarkerPart6_0061
  simp only [outsideAggregateMarkerPartValid6_0061, outsideHistoryChunk0061] at hm6
  have hm7 := outsideAggregateMarkerPart7_0061
  simp only [outsideAggregateMarkerPartValid7_0061, outsideHistoryChunk0061] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0061
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0061
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0062 :
    outsideAggregateLocalPartValid0_0062 outsideHistoryChunk0062 := by
  unfold outsideAggregateLocalPartValid0_0062 outsideHistoryChunk0062
  decide

def outsideAggregateMarkerPartValid0_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 63488
  | _ => True

theorem outsideAggregateMarkerPart0_0062 :
    outsideAggregateMarkerPartValid0_0062 outsideHistoryChunk0062 := by
  unfold outsideAggregateMarkerPartValid0_0062 outsideHistoryChunk0062
  decide

def outsideAggregateLocalPartValid1_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0062 :
    outsideAggregateLocalPartValid1_0062 outsideHistoryChunk0062 := by
  unfold outsideAggregateLocalPartValid1_0062 outsideHistoryChunk0062
  decide

def outsideAggregateMarkerPartValid1_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 63616
  | _ => True

theorem outsideAggregateMarkerPart1_0062 :
    outsideAggregateMarkerPartValid1_0062 outsideHistoryChunk0062 := by
  unfold outsideAggregateMarkerPartValid1_0062 outsideHistoryChunk0062
  decide

def outsideAggregateLocalPartValid2_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0062 :
    outsideAggregateLocalPartValid2_0062 outsideHistoryChunk0062 := by
  unfold outsideAggregateLocalPartValid2_0062 outsideHistoryChunk0062
  decide

def outsideAggregateMarkerPartValid2_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 63744
  | _ => True

theorem outsideAggregateMarkerPart2_0062 :
    outsideAggregateMarkerPartValid2_0062 outsideHistoryChunk0062 := by
  unfold outsideAggregateMarkerPartValid2_0062 outsideHistoryChunk0062
  decide

def outsideAggregateLocalPartValid3_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0062 :
    outsideAggregateLocalPartValid3_0062 outsideHistoryChunk0062 := by
  unfold outsideAggregateLocalPartValid3_0062 outsideHistoryChunk0062
  decide

def outsideAggregateMarkerPartValid3_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 63872
  | _ => True

theorem outsideAggregateMarkerPart3_0062 :
    outsideAggregateMarkerPartValid3_0062 outsideHistoryChunk0062 := by
  unfold outsideAggregateMarkerPartValid3_0062 outsideHistoryChunk0062
  decide

def outsideAggregateLocalPartValid4_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0062 :
    outsideAggregateLocalPartValid4_0062 outsideHistoryChunk0062 := by
  unfold outsideAggregateLocalPartValid4_0062 outsideHistoryChunk0062
  decide

def outsideAggregateMarkerPartValid4_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 64000
  | _ => True

theorem outsideAggregateMarkerPart4_0062 :
    outsideAggregateMarkerPartValid4_0062 outsideHistoryChunk0062 := by
  unfold outsideAggregateMarkerPartValid4_0062 outsideHistoryChunk0062
  decide

def outsideAggregateLocalPartValid5_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0062 :
    outsideAggregateLocalPartValid5_0062 outsideHistoryChunk0062 := by
  unfold outsideAggregateLocalPartValid5_0062 outsideHistoryChunk0062
  decide

def outsideAggregateMarkerPartValid5_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 64128
  | _ => True

theorem outsideAggregateMarkerPart5_0062 :
    outsideAggregateMarkerPartValid5_0062 outsideHistoryChunk0062 := by
  unfold outsideAggregateMarkerPartValid5_0062 outsideHistoryChunk0062
  decide

def outsideAggregateLocalPartValid6_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0062 :
    outsideAggregateLocalPartValid6_0062 outsideHistoryChunk0062 := by
  unfold outsideAggregateLocalPartValid6_0062 outsideHistoryChunk0062
  decide

def outsideAggregateMarkerPartValid6_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 64256
  | _ => True

theorem outsideAggregateMarkerPart6_0062 :
    outsideAggregateMarkerPartValid6_0062 outsideHistoryChunk0062 := by
  unfold outsideAggregateMarkerPartValid6_0062 outsideHistoryChunk0062
  decide

def outsideAggregateLocalPartValid7_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0062 :
    outsideAggregateLocalPartValid7_0062 outsideHistoryChunk0062 := by
  unfold outsideAggregateLocalPartValid7_0062 outsideHistoryChunk0062
  decide

def outsideAggregateMarkerPartValid7_0062 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 64384
  | _ => True

theorem outsideAggregateMarkerPart7_0062 :
    outsideAggregateMarkerPartValid7_0062 outsideHistoryChunk0062 := by
  unfold outsideAggregateMarkerPartValid7_0062 outsideHistoryChunk0062
  decide

theorem outsideRange_0062 :
    outsideHistoryChunk0062.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 63488 := by
  have hl0 := outsideAggregateLocalPart0_0062
  simp only [outsideAggregateLocalPartValid0_0062, outsideHistoryChunk0062] at hl0
  have hl1 := outsideAggregateLocalPart1_0062
  simp only [outsideAggregateLocalPartValid1_0062, outsideHistoryChunk0062] at hl1
  have hl2 := outsideAggregateLocalPart2_0062
  simp only [outsideAggregateLocalPartValid2_0062, outsideHistoryChunk0062] at hl2
  have hl3 := outsideAggregateLocalPart3_0062
  simp only [outsideAggregateLocalPartValid3_0062, outsideHistoryChunk0062] at hl3
  have hl4 := outsideAggregateLocalPart4_0062
  simp only [outsideAggregateLocalPartValid4_0062, outsideHistoryChunk0062] at hl4
  have hl5 := outsideAggregateLocalPart5_0062
  simp only [outsideAggregateLocalPartValid5_0062, outsideHistoryChunk0062] at hl5
  have hl6 := outsideAggregateLocalPart6_0062
  simp only [outsideAggregateLocalPartValid6_0062, outsideHistoryChunk0062] at hl6
  have hl7 := outsideAggregateLocalPart7_0062
  simp only [outsideAggregateLocalPartValid7_0062, outsideHistoryChunk0062] at hl7
  have hm0 := outsideAggregateMarkerPart0_0062
  simp only [outsideAggregateMarkerPartValid0_0062, outsideHistoryChunk0062] at hm0
  have hm1 := outsideAggregateMarkerPart1_0062
  simp only [outsideAggregateMarkerPartValid1_0062, outsideHistoryChunk0062] at hm1
  have hm2 := outsideAggregateMarkerPart2_0062
  simp only [outsideAggregateMarkerPartValid2_0062, outsideHistoryChunk0062] at hm2
  have hm3 := outsideAggregateMarkerPart3_0062
  simp only [outsideAggregateMarkerPartValid3_0062, outsideHistoryChunk0062] at hm3
  have hm4 := outsideAggregateMarkerPart4_0062
  simp only [outsideAggregateMarkerPartValid4_0062, outsideHistoryChunk0062] at hm4
  have hm5 := outsideAggregateMarkerPart5_0062
  simp only [outsideAggregateMarkerPartValid5_0062, outsideHistoryChunk0062] at hm5
  have hm6 := outsideAggregateMarkerPart6_0062
  simp only [outsideAggregateMarkerPartValid6_0062, outsideHistoryChunk0062] at hm6
  have hm7 := outsideAggregateMarkerPart7_0062
  simp only [outsideAggregateMarkerPartValid7_0062, outsideHistoryChunk0062] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0062
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0062
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0063 :
    outsideAggregateLocalPartValid0_0063 outsideHistoryChunk0063 := by
  unfold outsideAggregateLocalPartValid0_0063 outsideHistoryChunk0063
  decide

def outsideAggregateMarkerPartValid0_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 64512
  | _ => True

theorem outsideAggregateMarkerPart0_0063 :
    outsideAggregateMarkerPartValid0_0063 outsideHistoryChunk0063 := by
  unfold outsideAggregateMarkerPartValid0_0063 outsideHistoryChunk0063
  decide

def outsideAggregateLocalPartValid1_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0063 :
    outsideAggregateLocalPartValid1_0063 outsideHistoryChunk0063 := by
  unfold outsideAggregateLocalPartValid1_0063 outsideHistoryChunk0063
  decide

def outsideAggregateMarkerPartValid1_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 64640
  | _ => True

theorem outsideAggregateMarkerPart1_0063 :
    outsideAggregateMarkerPartValid1_0063 outsideHistoryChunk0063 := by
  unfold outsideAggregateMarkerPartValid1_0063 outsideHistoryChunk0063
  decide

def outsideAggregateLocalPartValid2_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0063 :
    outsideAggregateLocalPartValid2_0063 outsideHistoryChunk0063 := by
  unfold outsideAggregateLocalPartValid2_0063 outsideHistoryChunk0063
  decide

def outsideAggregateMarkerPartValid2_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 64768
  | _ => True

theorem outsideAggregateMarkerPart2_0063 :
    outsideAggregateMarkerPartValid2_0063 outsideHistoryChunk0063 := by
  unfold outsideAggregateMarkerPartValid2_0063 outsideHistoryChunk0063
  decide

def outsideAggregateLocalPartValid3_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0063 :
    outsideAggregateLocalPartValid3_0063 outsideHistoryChunk0063 := by
  unfold outsideAggregateLocalPartValid3_0063 outsideHistoryChunk0063
  decide

def outsideAggregateMarkerPartValid3_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 64896
  | _ => True

theorem outsideAggregateMarkerPart3_0063 :
    outsideAggregateMarkerPartValid3_0063 outsideHistoryChunk0063 := by
  unfold outsideAggregateMarkerPartValid3_0063 outsideHistoryChunk0063
  decide

def outsideAggregateLocalPartValid4_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0063 :
    outsideAggregateLocalPartValid4_0063 outsideHistoryChunk0063 := by
  unfold outsideAggregateLocalPartValid4_0063 outsideHistoryChunk0063
  decide

def outsideAggregateMarkerPartValid4_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 65024
  | _ => True

theorem outsideAggregateMarkerPart4_0063 :
    outsideAggregateMarkerPartValid4_0063 outsideHistoryChunk0063 := by
  unfold outsideAggregateMarkerPartValid4_0063 outsideHistoryChunk0063
  decide

def outsideAggregateLocalPartValid5_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0063 :
    outsideAggregateLocalPartValid5_0063 outsideHistoryChunk0063 := by
  unfold outsideAggregateLocalPartValid5_0063 outsideHistoryChunk0063
  decide

def outsideAggregateMarkerPartValid5_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 65152
  | _ => True

theorem outsideAggregateMarkerPart5_0063 :
    outsideAggregateMarkerPartValid5_0063 outsideHistoryChunk0063 := by
  unfold outsideAggregateMarkerPartValid5_0063 outsideHistoryChunk0063
  decide

def outsideAggregateLocalPartValid6_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0063 :
    outsideAggregateLocalPartValid6_0063 outsideHistoryChunk0063 := by
  unfold outsideAggregateLocalPartValid6_0063 outsideHistoryChunk0063
  decide

def outsideAggregateMarkerPartValid6_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 65280
  | _ => True

theorem outsideAggregateMarkerPart6_0063 :
    outsideAggregateMarkerPartValid6_0063 outsideHistoryChunk0063 := by
  unfold outsideAggregateMarkerPartValid6_0063 outsideHistoryChunk0063
  decide

def outsideAggregateLocalPartValid7_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0063 :
    outsideAggregateLocalPartValid7_0063 outsideHistoryChunk0063 := by
  unfold outsideAggregateLocalPartValid7_0063 outsideHistoryChunk0063
  decide

def outsideAggregateMarkerPartValid7_0063 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 65408
  | _ => True

theorem outsideAggregateMarkerPart7_0063 :
    outsideAggregateMarkerPartValid7_0063 outsideHistoryChunk0063 := by
  unfold outsideAggregateMarkerPartValid7_0063 outsideHistoryChunk0063
  decide

theorem outsideRange_0063 :
    outsideHistoryChunk0063.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 64512 := by
  have hl0 := outsideAggregateLocalPart0_0063
  simp only [outsideAggregateLocalPartValid0_0063, outsideHistoryChunk0063] at hl0
  have hl1 := outsideAggregateLocalPart1_0063
  simp only [outsideAggregateLocalPartValid1_0063, outsideHistoryChunk0063] at hl1
  have hl2 := outsideAggregateLocalPart2_0063
  simp only [outsideAggregateLocalPartValid2_0063, outsideHistoryChunk0063] at hl2
  have hl3 := outsideAggregateLocalPart3_0063
  simp only [outsideAggregateLocalPartValid3_0063, outsideHistoryChunk0063] at hl3
  have hl4 := outsideAggregateLocalPart4_0063
  simp only [outsideAggregateLocalPartValid4_0063, outsideHistoryChunk0063] at hl4
  have hl5 := outsideAggregateLocalPart5_0063
  simp only [outsideAggregateLocalPartValid5_0063, outsideHistoryChunk0063] at hl5
  have hl6 := outsideAggregateLocalPart6_0063
  simp only [outsideAggregateLocalPartValid6_0063, outsideHistoryChunk0063] at hl6
  have hl7 := outsideAggregateLocalPart7_0063
  simp only [outsideAggregateLocalPartValid7_0063, outsideHistoryChunk0063] at hl7
  have hm0 := outsideAggregateMarkerPart0_0063
  simp only [outsideAggregateMarkerPartValid0_0063, outsideHistoryChunk0063] at hm0
  have hm1 := outsideAggregateMarkerPart1_0063
  simp only [outsideAggregateMarkerPartValid1_0063, outsideHistoryChunk0063] at hm1
  have hm2 := outsideAggregateMarkerPart2_0063
  simp only [outsideAggregateMarkerPartValid2_0063, outsideHistoryChunk0063] at hm2
  have hm3 := outsideAggregateMarkerPart3_0063
  simp only [outsideAggregateMarkerPartValid3_0063, outsideHistoryChunk0063] at hm3
  have hm4 := outsideAggregateMarkerPart4_0063
  simp only [outsideAggregateMarkerPartValid4_0063, outsideHistoryChunk0063] at hm4
  have hm5 := outsideAggregateMarkerPart5_0063
  simp only [outsideAggregateMarkerPartValid5_0063, outsideHistoryChunk0063] at hm5
  have hm6 := outsideAggregateMarkerPart6_0063
  simp only [outsideAggregateMarkerPartValid6_0063, outsideHistoryChunk0063] at hm6
  have hm7 := outsideAggregateMarkerPart7_0063
  simp only [outsideAggregateMarkerPartValid7_0063, outsideHistoryChunk0063] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0063
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0063
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
