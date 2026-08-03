import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0108
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0109
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0110
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0111

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0108, 0109, 0110, 0111 -/

def outsideAggregateLocalPartValid0_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0108 :
    outsideAggregateLocalPartValid0_0108 outsideHistoryChunk0108 := by
  unfold outsideAggregateLocalPartValid0_0108 outsideHistoryChunk0108
  decide

def outsideAggregateMarkerPartValid0_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 110592
  | _ => True

theorem outsideAggregateMarkerPart0_0108 :
    outsideAggregateMarkerPartValid0_0108 outsideHistoryChunk0108 := by
  unfold outsideAggregateMarkerPartValid0_0108 outsideHistoryChunk0108
  decide

def outsideAggregateLocalPartValid1_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0108 :
    outsideAggregateLocalPartValid1_0108 outsideHistoryChunk0108 := by
  unfold outsideAggregateLocalPartValid1_0108 outsideHistoryChunk0108
  decide

def outsideAggregateMarkerPartValid1_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 110720
  | _ => True

theorem outsideAggregateMarkerPart1_0108 :
    outsideAggregateMarkerPartValid1_0108 outsideHistoryChunk0108 := by
  unfold outsideAggregateMarkerPartValid1_0108 outsideHistoryChunk0108
  decide

def outsideAggregateLocalPartValid2_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0108 :
    outsideAggregateLocalPartValid2_0108 outsideHistoryChunk0108 := by
  unfold outsideAggregateLocalPartValid2_0108 outsideHistoryChunk0108
  decide

def outsideAggregateMarkerPartValid2_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 110848
  | _ => True

theorem outsideAggregateMarkerPart2_0108 :
    outsideAggregateMarkerPartValid2_0108 outsideHistoryChunk0108 := by
  unfold outsideAggregateMarkerPartValid2_0108 outsideHistoryChunk0108
  decide

def outsideAggregateLocalPartValid3_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0108 :
    outsideAggregateLocalPartValid3_0108 outsideHistoryChunk0108 := by
  unfold outsideAggregateLocalPartValid3_0108 outsideHistoryChunk0108
  decide

def outsideAggregateMarkerPartValid3_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 110976
  | _ => True

theorem outsideAggregateMarkerPart3_0108 :
    outsideAggregateMarkerPartValid3_0108 outsideHistoryChunk0108 := by
  unfold outsideAggregateMarkerPartValid3_0108 outsideHistoryChunk0108
  decide

def outsideAggregateLocalPartValid4_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0108 :
    outsideAggregateLocalPartValid4_0108 outsideHistoryChunk0108 := by
  unfold outsideAggregateLocalPartValid4_0108 outsideHistoryChunk0108
  decide

def outsideAggregateMarkerPartValid4_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 111104
  | _ => True

theorem outsideAggregateMarkerPart4_0108 :
    outsideAggregateMarkerPartValid4_0108 outsideHistoryChunk0108 := by
  unfold outsideAggregateMarkerPartValid4_0108 outsideHistoryChunk0108
  decide

def outsideAggregateLocalPartValid5_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0108 :
    outsideAggregateLocalPartValid5_0108 outsideHistoryChunk0108 := by
  unfold outsideAggregateLocalPartValid5_0108 outsideHistoryChunk0108
  decide

def outsideAggregateMarkerPartValid5_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 111232
  | _ => True

theorem outsideAggregateMarkerPart5_0108 :
    outsideAggregateMarkerPartValid5_0108 outsideHistoryChunk0108 := by
  unfold outsideAggregateMarkerPartValid5_0108 outsideHistoryChunk0108
  decide

def outsideAggregateLocalPartValid6_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0108 :
    outsideAggregateLocalPartValid6_0108 outsideHistoryChunk0108 := by
  unfold outsideAggregateLocalPartValid6_0108 outsideHistoryChunk0108
  decide

def outsideAggregateMarkerPartValid6_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 111360
  | _ => True

theorem outsideAggregateMarkerPart6_0108 :
    outsideAggregateMarkerPartValid6_0108 outsideHistoryChunk0108 := by
  unfold outsideAggregateMarkerPartValid6_0108 outsideHistoryChunk0108
  decide

def outsideAggregateLocalPartValid7_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0108 :
    outsideAggregateLocalPartValid7_0108 outsideHistoryChunk0108 := by
  unfold outsideAggregateLocalPartValid7_0108 outsideHistoryChunk0108
  decide

def outsideAggregateMarkerPartValid7_0108 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 111488
  | _ => True

theorem outsideAggregateMarkerPart7_0108 :
    outsideAggregateMarkerPartValid7_0108 outsideHistoryChunk0108 := by
  unfold outsideAggregateMarkerPartValid7_0108 outsideHistoryChunk0108
  decide

theorem outsideRange_0108 :
    outsideHistoryChunk0108.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 110592 := by
  have hl0 := outsideAggregateLocalPart0_0108
  simp only [outsideAggregateLocalPartValid0_0108, outsideHistoryChunk0108] at hl0
  have hl1 := outsideAggregateLocalPart1_0108
  simp only [outsideAggregateLocalPartValid1_0108, outsideHistoryChunk0108] at hl1
  have hl2 := outsideAggregateLocalPart2_0108
  simp only [outsideAggregateLocalPartValid2_0108, outsideHistoryChunk0108] at hl2
  have hl3 := outsideAggregateLocalPart3_0108
  simp only [outsideAggregateLocalPartValid3_0108, outsideHistoryChunk0108] at hl3
  have hl4 := outsideAggregateLocalPart4_0108
  simp only [outsideAggregateLocalPartValid4_0108, outsideHistoryChunk0108] at hl4
  have hl5 := outsideAggregateLocalPart5_0108
  simp only [outsideAggregateLocalPartValid5_0108, outsideHistoryChunk0108] at hl5
  have hl6 := outsideAggregateLocalPart6_0108
  simp only [outsideAggregateLocalPartValid6_0108, outsideHistoryChunk0108] at hl6
  have hl7 := outsideAggregateLocalPart7_0108
  simp only [outsideAggregateLocalPartValid7_0108, outsideHistoryChunk0108] at hl7
  have hm0 := outsideAggregateMarkerPart0_0108
  simp only [outsideAggregateMarkerPartValid0_0108, outsideHistoryChunk0108] at hm0
  have hm1 := outsideAggregateMarkerPart1_0108
  simp only [outsideAggregateMarkerPartValid1_0108, outsideHistoryChunk0108] at hm1
  have hm2 := outsideAggregateMarkerPart2_0108
  simp only [outsideAggregateMarkerPartValid2_0108, outsideHistoryChunk0108] at hm2
  have hm3 := outsideAggregateMarkerPart3_0108
  simp only [outsideAggregateMarkerPartValid3_0108, outsideHistoryChunk0108] at hm3
  have hm4 := outsideAggregateMarkerPart4_0108
  simp only [outsideAggregateMarkerPartValid4_0108, outsideHistoryChunk0108] at hm4
  have hm5 := outsideAggregateMarkerPart5_0108
  simp only [outsideAggregateMarkerPartValid5_0108, outsideHistoryChunk0108] at hm5
  have hm6 := outsideAggregateMarkerPart6_0108
  simp only [outsideAggregateMarkerPartValid6_0108, outsideHistoryChunk0108] at hm6
  have hm7 := outsideAggregateMarkerPart7_0108
  simp only [outsideAggregateMarkerPartValid7_0108, outsideHistoryChunk0108] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0108
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0108
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0109 :
    outsideAggregateLocalPartValid0_0109 outsideHistoryChunk0109 := by
  unfold outsideAggregateLocalPartValid0_0109 outsideHistoryChunk0109
  decide

def outsideAggregateMarkerPartValid0_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 111616
  | _ => True

theorem outsideAggregateMarkerPart0_0109 :
    outsideAggregateMarkerPartValid0_0109 outsideHistoryChunk0109 := by
  unfold outsideAggregateMarkerPartValid0_0109 outsideHistoryChunk0109
  decide

def outsideAggregateLocalPartValid1_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0109 :
    outsideAggregateLocalPartValid1_0109 outsideHistoryChunk0109 := by
  unfold outsideAggregateLocalPartValid1_0109 outsideHistoryChunk0109
  decide

def outsideAggregateMarkerPartValid1_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 111744
  | _ => True

theorem outsideAggregateMarkerPart1_0109 :
    outsideAggregateMarkerPartValid1_0109 outsideHistoryChunk0109 := by
  unfold outsideAggregateMarkerPartValid1_0109 outsideHistoryChunk0109
  decide

def outsideAggregateLocalPartValid2_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0109 :
    outsideAggregateLocalPartValid2_0109 outsideHistoryChunk0109 := by
  unfold outsideAggregateLocalPartValid2_0109 outsideHistoryChunk0109
  decide

def outsideAggregateMarkerPartValid2_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 111872
  | _ => True

theorem outsideAggregateMarkerPart2_0109 :
    outsideAggregateMarkerPartValid2_0109 outsideHistoryChunk0109 := by
  unfold outsideAggregateMarkerPartValid2_0109 outsideHistoryChunk0109
  decide

def outsideAggregateLocalPartValid3_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0109 :
    outsideAggregateLocalPartValid3_0109 outsideHistoryChunk0109 := by
  unfold outsideAggregateLocalPartValid3_0109 outsideHistoryChunk0109
  decide

def outsideAggregateMarkerPartValid3_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 112000
  | _ => True

theorem outsideAggregateMarkerPart3_0109 :
    outsideAggregateMarkerPartValid3_0109 outsideHistoryChunk0109 := by
  unfold outsideAggregateMarkerPartValid3_0109 outsideHistoryChunk0109
  decide

def outsideAggregateLocalPartValid4_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0109 :
    outsideAggregateLocalPartValid4_0109 outsideHistoryChunk0109 := by
  unfold outsideAggregateLocalPartValid4_0109 outsideHistoryChunk0109
  decide

def outsideAggregateMarkerPartValid4_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 112128
  | _ => True

theorem outsideAggregateMarkerPart4_0109 :
    outsideAggregateMarkerPartValid4_0109 outsideHistoryChunk0109 := by
  unfold outsideAggregateMarkerPartValid4_0109 outsideHistoryChunk0109
  decide

def outsideAggregateLocalPartValid5_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0109 :
    outsideAggregateLocalPartValid5_0109 outsideHistoryChunk0109 := by
  unfold outsideAggregateLocalPartValid5_0109 outsideHistoryChunk0109
  decide

def outsideAggregateMarkerPartValid5_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 112256
  | _ => True

theorem outsideAggregateMarkerPart5_0109 :
    outsideAggregateMarkerPartValid5_0109 outsideHistoryChunk0109 := by
  unfold outsideAggregateMarkerPartValid5_0109 outsideHistoryChunk0109
  decide

def outsideAggregateLocalPartValid6_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0109 :
    outsideAggregateLocalPartValid6_0109 outsideHistoryChunk0109 := by
  unfold outsideAggregateLocalPartValid6_0109 outsideHistoryChunk0109
  decide

def outsideAggregateMarkerPartValid6_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 112384
  | _ => True

theorem outsideAggregateMarkerPart6_0109 :
    outsideAggregateMarkerPartValid6_0109 outsideHistoryChunk0109 := by
  unfold outsideAggregateMarkerPartValid6_0109 outsideHistoryChunk0109
  decide

def outsideAggregateLocalPartValid7_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0109 :
    outsideAggregateLocalPartValid7_0109 outsideHistoryChunk0109 := by
  unfold outsideAggregateLocalPartValid7_0109 outsideHistoryChunk0109
  decide

def outsideAggregateMarkerPartValid7_0109 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 112512
  | _ => True

theorem outsideAggregateMarkerPart7_0109 :
    outsideAggregateMarkerPartValid7_0109 outsideHistoryChunk0109 := by
  unfold outsideAggregateMarkerPartValid7_0109 outsideHistoryChunk0109
  decide

theorem outsideRange_0109 :
    outsideHistoryChunk0109.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 111616 := by
  have hl0 := outsideAggregateLocalPart0_0109
  simp only [outsideAggregateLocalPartValid0_0109, outsideHistoryChunk0109] at hl0
  have hl1 := outsideAggregateLocalPart1_0109
  simp only [outsideAggregateLocalPartValid1_0109, outsideHistoryChunk0109] at hl1
  have hl2 := outsideAggregateLocalPart2_0109
  simp only [outsideAggregateLocalPartValid2_0109, outsideHistoryChunk0109] at hl2
  have hl3 := outsideAggregateLocalPart3_0109
  simp only [outsideAggregateLocalPartValid3_0109, outsideHistoryChunk0109] at hl3
  have hl4 := outsideAggregateLocalPart4_0109
  simp only [outsideAggregateLocalPartValid4_0109, outsideHistoryChunk0109] at hl4
  have hl5 := outsideAggregateLocalPart5_0109
  simp only [outsideAggregateLocalPartValid5_0109, outsideHistoryChunk0109] at hl5
  have hl6 := outsideAggregateLocalPart6_0109
  simp only [outsideAggregateLocalPartValid6_0109, outsideHistoryChunk0109] at hl6
  have hl7 := outsideAggregateLocalPart7_0109
  simp only [outsideAggregateLocalPartValid7_0109, outsideHistoryChunk0109] at hl7
  have hm0 := outsideAggregateMarkerPart0_0109
  simp only [outsideAggregateMarkerPartValid0_0109, outsideHistoryChunk0109] at hm0
  have hm1 := outsideAggregateMarkerPart1_0109
  simp only [outsideAggregateMarkerPartValid1_0109, outsideHistoryChunk0109] at hm1
  have hm2 := outsideAggregateMarkerPart2_0109
  simp only [outsideAggregateMarkerPartValid2_0109, outsideHistoryChunk0109] at hm2
  have hm3 := outsideAggregateMarkerPart3_0109
  simp only [outsideAggregateMarkerPartValid3_0109, outsideHistoryChunk0109] at hm3
  have hm4 := outsideAggregateMarkerPart4_0109
  simp only [outsideAggregateMarkerPartValid4_0109, outsideHistoryChunk0109] at hm4
  have hm5 := outsideAggregateMarkerPart5_0109
  simp only [outsideAggregateMarkerPartValid5_0109, outsideHistoryChunk0109] at hm5
  have hm6 := outsideAggregateMarkerPart6_0109
  simp only [outsideAggregateMarkerPartValid6_0109, outsideHistoryChunk0109] at hm6
  have hm7 := outsideAggregateMarkerPart7_0109
  simp only [outsideAggregateMarkerPartValid7_0109, outsideHistoryChunk0109] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0109
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0109
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0110 :
    outsideAggregateLocalPartValid0_0110 outsideHistoryChunk0110 := by
  unfold outsideAggregateLocalPartValid0_0110 outsideHistoryChunk0110
  decide

def outsideAggregateMarkerPartValid0_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 112640
  | _ => True

theorem outsideAggregateMarkerPart0_0110 :
    outsideAggregateMarkerPartValid0_0110 outsideHistoryChunk0110 := by
  unfold outsideAggregateMarkerPartValid0_0110 outsideHistoryChunk0110
  decide

def outsideAggregateLocalPartValid1_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0110 :
    outsideAggregateLocalPartValid1_0110 outsideHistoryChunk0110 := by
  unfold outsideAggregateLocalPartValid1_0110 outsideHistoryChunk0110
  decide

def outsideAggregateMarkerPartValid1_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 112768
  | _ => True

theorem outsideAggregateMarkerPart1_0110 :
    outsideAggregateMarkerPartValid1_0110 outsideHistoryChunk0110 := by
  unfold outsideAggregateMarkerPartValid1_0110 outsideHistoryChunk0110
  decide

def outsideAggregateLocalPartValid2_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0110 :
    outsideAggregateLocalPartValid2_0110 outsideHistoryChunk0110 := by
  unfold outsideAggregateLocalPartValid2_0110 outsideHistoryChunk0110
  decide

def outsideAggregateMarkerPartValid2_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 112896
  | _ => True

theorem outsideAggregateMarkerPart2_0110 :
    outsideAggregateMarkerPartValid2_0110 outsideHistoryChunk0110 := by
  unfold outsideAggregateMarkerPartValid2_0110 outsideHistoryChunk0110
  decide

def outsideAggregateLocalPartValid3_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0110 :
    outsideAggregateLocalPartValid3_0110 outsideHistoryChunk0110 := by
  unfold outsideAggregateLocalPartValid3_0110 outsideHistoryChunk0110
  decide

def outsideAggregateMarkerPartValid3_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 113024
  | _ => True

theorem outsideAggregateMarkerPart3_0110 :
    outsideAggregateMarkerPartValid3_0110 outsideHistoryChunk0110 := by
  unfold outsideAggregateMarkerPartValid3_0110 outsideHistoryChunk0110
  decide

def outsideAggregateLocalPartValid4_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0110 :
    outsideAggregateLocalPartValid4_0110 outsideHistoryChunk0110 := by
  unfold outsideAggregateLocalPartValid4_0110 outsideHistoryChunk0110
  decide

def outsideAggregateMarkerPartValid4_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 113152
  | _ => True

theorem outsideAggregateMarkerPart4_0110 :
    outsideAggregateMarkerPartValid4_0110 outsideHistoryChunk0110 := by
  unfold outsideAggregateMarkerPartValid4_0110 outsideHistoryChunk0110
  decide

def outsideAggregateLocalPartValid5_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0110 :
    outsideAggregateLocalPartValid5_0110 outsideHistoryChunk0110 := by
  unfold outsideAggregateLocalPartValid5_0110 outsideHistoryChunk0110
  decide

def outsideAggregateMarkerPartValid5_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 113280
  | _ => True

theorem outsideAggregateMarkerPart5_0110 :
    outsideAggregateMarkerPartValid5_0110 outsideHistoryChunk0110 := by
  unfold outsideAggregateMarkerPartValid5_0110 outsideHistoryChunk0110
  decide

def outsideAggregateLocalPartValid6_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0110 :
    outsideAggregateLocalPartValid6_0110 outsideHistoryChunk0110 := by
  unfold outsideAggregateLocalPartValid6_0110 outsideHistoryChunk0110
  decide

def outsideAggregateMarkerPartValid6_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 113408
  | _ => True

theorem outsideAggregateMarkerPart6_0110 :
    outsideAggregateMarkerPartValid6_0110 outsideHistoryChunk0110 := by
  unfold outsideAggregateMarkerPartValid6_0110 outsideHistoryChunk0110
  decide

def outsideAggregateLocalPartValid7_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0110 :
    outsideAggregateLocalPartValid7_0110 outsideHistoryChunk0110 := by
  unfold outsideAggregateLocalPartValid7_0110 outsideHistoryChunk0110
  decide

def outsideAggregateMarkerPartValid7_0110 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 113536
  | _ => True

theorem outsideAggregateMarkerPart7_0110 :
    outsideAggregateMarkerPartValid7_0110 outsideHistoryChunk0110 := by
  unfold outsideAggregateMarkerPartValid7_0110 outsideHistoryChunk0110
  decide

theorem outsideRange_0110 :
    outsideHistoryChunk0110.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 112640 := by
  have hl0 := outsideAggregateLocalPart0_0110
  simp only [outsideAggregateLocalPartValid0_0110, outsideHistoryChunk0110] at hl0
  have hl1 := outsideAggregateLocalPart1_0110
  simp only [outsideAggregateLocalPartValid1_0110, outsideHistoryChunk0110] at hl1
  have hl2 := outsideAggregateLocalPart2_0110
  simp only [outsideAggregateLocalPartValid2_0110, outsideHistoryChunk0110] at hl2
  have hl3 := outsideAggregateLocalPart3_0110
  simp only [outsideAggregateLocalPartValid3_0110, outsideHistoryChunk0110] at hl3
  have hl4 := outsideAggregateLocalPart4_0110
  simp only [outsideAggregateLocalPartValid4_0110, outsideHistoryChunk0110] at hl4
  have hl5 := outsideAggregateLocalPart5_0110
  simp only [outsideAggregateLocalPartValid5_0110, outsideHistoryChunk0110] at hl5
  have hl6 := outsideAggregateLocalPart6_0110
  simp only [outsideAggregateLocalPartValid6_0110, outsideHistoryChunk0110] at hl6
  have hl7 := outsideAggregateLocalPart7_0110
  simp only [outsideAggregateLocalPartValid7_0110, outsideHistoryChunk0110] at hl7
  have hm0 := outsideAggregateMarkerPart0_0110
  simp only [outsideAggregateMarkerPartValid0_0110, outsideHistoryChunk0110] at hm0
  have hm1 := outsideAggregateMarkerPart1_0110
  simp only [outsideAggregateMarkerPartValid1_0110, outsideHistoryChunk0110] at hm1
  have hm2 := outsideAggregateMarkerPart2_0110
  simp only [outsideAggregateMarkerPartValid2_0110, outsideHistoryChunk0110] at hm2
  have hm3 := outsideAggregateMarkerPart3_0110
  simp only [outsideAggregateMarkerPartValid3_0110, outsideHistoryChunk0110] at hm3
  have hm4 := outsideAggregateMarkerPart4_0110
  simp only [outsideAggregateMarkerPartValid4_0110, outsideHistoryChunk0110] at hm4
  have hm5 := outsideAggregateMarkerPart5_0110
  simp only [outsideAggregateMarkerPartValid5_0110, outsideHistoryChunk0110] at hm5
  have hm6 := outsideAggregateMarkerPart6_0110
  simp only [outsideAggregateMarkerPartValid6_0110, outsideHistoryChunk0110] at hm6
  have hm7 := outsideAggregateMarkerPart7_0110
  simp only [outsideAggregateMarkerPartValid7_0110, outsideHistoryChunk0110] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0110
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0110
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0111 :
    outsideAggregateLocalPartValid0_0111 outsideHistoryChunk0111 := by
  unfold outsideAggregateLocalPartValid0_0111 outsideHistoryChunk0111
  decide

def outsideAggregateMarkerPartValid0_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 113664
  | _ => True

theorem outsideAggregateMarkerPart0_0111 :
    outsideAggregateMarkerPartValid0_0111 outsideHistoryChunk0111 := by
  unfold outsideAggregateMarkerPartValid0_0111 outsideHistoryChunk0111
  decide

def outsideAggregateLocalPartValid1_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0111 :
    outsideAggregateLocalPartValid1_0111 outsideHistoryChunk0111 := by
  unfold outsideAggregateLocalPartValid1_0111 outsideHistoryChunk0111
  decide

def outsideAggregateMarkerPartValid1_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 113792
  | _ => True

theorem outsideAggregateMarkerPart1_0111 :
    outsideAggregateMarkerPartValid1_0111 outsideHistoryChunk0111 := by
  unfold outsideAggregateMarkerPartValid1_0111 outsideHistoryChunk0111
  decide

def outsideAggregateLocalPartValid2_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0111 :
    outsideAggregateLocalPartValid2_0111 outsideHistoryChunk0111 := by
  unfold outsideAggregateLocalPartValid2_0111 outsideHistoryChunk0111
  decide

def outsideAggregateMarkerPartValid2_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 113920
  | _ => True

theorem outsideAggregateMarkerPart2_0111 :
    outsideAggregateMarkerPartValid2_0111 outsideHistoryChunk0111 := by
  unfold outsideAggregateMarkerPartValid2_0111 outsideHistoryChunk0111
  decide

def outsideAggregateLocalPartValid3_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0111 :
    outsideAggregateLocalPartValid3_0111 outsideHistoryChunk0111 := by
  unfold outsideAggregateLocalPartValid3_0111 outsideHistoryChunk0111
  decide

def outsideAggregateMarkerPartValid3_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 114048
  | _ => True

theorem outsideAggregateMarkerPart3_0111 :
    outsideAggregateMarkerPartValid3_0111 outsideHistoryChunk0111 := by
  unfold outsideAggregateMarkerPartValid3_0111 outsideHistoryChunk0111
  decide

def outsideAggregateLocalPartValid4_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0111 :
    outsideAggregateLocalPartValid4_0111 outsideHistoryChunk0111 := by
  unfold outsideAggregateLocalPartValid4_0111 outsideHistoryChunk0111
  decide

def outsideAggregateMarkerPartValid4_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 114176
  | _ => True

theorem outsideAggregateMarkerPart4_0111 :
    outsideAggregateMarkerPartValid4_0111 outsideHistoryChunk0111 := by
  unfold outsideAggregateMarkerPartValid4_0111 outsideHistoryChunk0111
  decide

def outsideAggregateLocalPartValid5_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0111 :
    outsideAggregateLocalPartValid5_0111 outsideHistoryChunk0111 := by
  unfold outsideAggregateLocalPartValid5_0111 outsideHistoryChunk0111
  decide

def outsideAggregateMarkerPartValid5_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 114304
  | _ => True

theorem outsideAggregateMarkerPart5_0111 :
    outsideAggregateMarkerPartValid5_0111 outsideHistoryChunk0111 := by
  unfold outsideAggregateMarkerPartValid5_0111 outsideHistoryChunk0111
  decide

def outsideAggregateLocalPartValid6_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0111 :
    outsideAggregateLocalPartValid6_0111 outsideHistoryChunk0111 := by
  unfold outsideAggregateLocalPartValid6_0111 outsideHistoryChunk0111
  decide

def outsideAggregateMarkerPartValid6_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 114432
  | _ => True

theorem outsideAggregateMarkerPart6_0111 :
    outsideAggregateMarkerPartValid6_0111 outsideHistoryChunk0111 := by
  unfold outsideAggregateMarkerPartValid6_0111 outsideHistoryChunk0111
  decide

def outsideAggregateLocalPartValid7_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0111 :
    outsideAggregateLocalPartValid7_0111 outsideHistoryChunk0111 := by
  unfold outsideAggregateLocalPartValid7_0111 outsideHistoryChunk0111
  decide

def outsideAggregateMarkerPartValid7_0111 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 114560
  | _ => True

theorem outsideAggregateMarkerPart7_0111 :
    outsideAggregateMarkerPartValid7_0111 outsideHistoryChunk0111 := by
  unfold outsideAggregateMarkerPartValid7_0111 outsideHistoryChunk0111
  decide

theorem outsideRange_0111 :
    outsideHistoryChunk0111.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 113664 := by
  have hl0 := outsideAggregateLocalPart0_0111
  simp only [outsideAggregateLocalPartValid0_0111, outsideHistoryChunk0111] at hl0
  have hl1 := outsideAggregateLocalPart1_0111
  simp only [outsideAggregateLocalPartValid1_0111, outsideHistoryChunk0111] at hl1
  have hl2 := outsideAggregateLocalPart2_0111
  simp only [outsideAggregateLocalPartValid2_0111, outsideHistoryChunk0111] at hl2
  have hl3 := outsideAggregateLocalPart3_0111
  simp only [outsideAggregateLocalPartValid3_0111, outsideHistoryChunk0111] at hl3
  have hl4 := outsideAggregateLocalPart4_0111
  simp only [outsideAggregateLocalPartValid4_0111, outsideHistoryChunk0111] at hl4
  have hl5 := outsideAggregateLocalPart5_0111
  simp only [outsideAggregateLocalPartValid5_0111, outsideHistoryChunk0111] at hl5
  have hl6 := outsideAggregateLocalPart6_0111
  simp only [outsideAggregateLocalPartValid6_0111, outsideHistoryChunk0111] at hl6
  have hl7 := outsideAggregateLocalPart7_0111
  simp only [outsideAggregateLocalPartValid7_0111, outsideHistoryChunk0111] at hl7
  have hm0 := outsideAggregateMarkerPart0_0111
  simp only [outsideAggregateMarkerPartValid0_0111, outsideHistoryChunk0111] at hm0
  have hm1 := outsideAggregateMarkerPart1_0111
  simp only [outsideAggregateMarkerPartValid1_0111, outsideHistoryChunk0111] at hm1
  have hm2 := outsideAggregateMarkerPart2_0111
  simp only [outsideAggregateMarkerPartValid2_0111, outsideHistoryChunk0111] at hm2
  have hm3 := outsideAggregateMarkerPart3_0111
  simp only [outsideAggregateMarkerPartValid3_0111, outsideHistoryChunk0111] at hm3
  have hm4 := outsideAggregateMarkerPart4_0111
  simp only [outsideAggregateMarkerPartValid4_0111, outsideHistoryChunk0111] at hm4
  have hm5 := outsideAggregateMarkerPart5_0111
  simp only [outsideAggregateMarkerPartValid5_0111, outsideHistoryChunk0111] at hm5
  have hm6 := outsideAggregateMarkerPart6_0111
  simp only [outsideAggregateMarkerPartValid6_0111, outsideHistoryChunk0111] at hm6
  have hm7 := outsideAggregateMarkerPart7_0111
  simp only [outsideAggregateMarkerPartValid7_0111, outsideHistoryChunk0111] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0111
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0111
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
