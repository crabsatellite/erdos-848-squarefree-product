import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0044
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0045
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0046
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0047

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0044, 0045, 0046, 0047 -/

def outsideAggregateLocalPartValid0_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0044 :
    outsideAggregateLocalPartValid0_0044 outsideHistoryChunk0044 := by
  unfold outsideAggregateLocalPartValid0_0044 outsideHistoryChunk0044
  decide

def outsideAggregateMarkerPartValid0_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 45056
  | _ => True

theorem outsideAggregateMarkerPart0_0044 :
    outsideAggregateMarkerPartValid0_0044 outsideHistoryChunk0044 := by
  unfold outsideAggregateMarkerPartValid0_0044 outsideHistoryChunk0044
  decide

def outsideAggregateLocalPartValid1_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0044 :
    outsideAggregateLocalPartValid1_0044 outsideHistoryChunk0044 := by
  unfold outsideAggregateLocalPartValid1_0044 outsideHistoryChunk0044
  decide

def outsideAggregateMarkerPartValid1_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 45184
  | _ => True

theorem outsideAggregateMarkerPart1_0044 :
    outsideAggregateMarkerPartValid1_0044 outsideHistoryChunk0044 := by
  unfold outsideAggregateMarkerPartValid1_0044 outsideHistoryChunk0044
  decide

def outsideAggregateLocalPartValid2_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0044 :
    outsideAggregateLocalPartValid2_0044 outsideHistoryChunk0044 := by
  unfold outsideAggregateLocalPartValid2_0044 outsideHistoryChunk0044
  decide

def outsideAggregateMarkerPartValid2_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 45312
  | _ => True

theorem outsideAggregateMarkerPart2_0044 :
    outsideAggregateMarkerPartValid2_0044 outsideHistoryChunk0044 := by
  unfold outsideAggregateMarkerPartValid2_0044 outsideHistoryChunk0044
  decide

def outsideAggregateLocalPartValid3_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0044 :
    outsideAggregateLocalPartValid3_0044 outsideHistoryChunk0044 := by
  unfold outsideAggregateLocalPartValid3_0044 outsideHistoryChunk0044
  decide

def outsideAggregateMarkerPartValid3_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 45440
  | _ => True

theorem outsideAggregateMarkerPart3_0044 :
    outsideAggregateMarkerPartValid3_0044 outsideHistoryChunk0044 := by
  unfold outsideAggregateMarkerPartValid3_0044 outsideHistoryChunk0044
  decide

def outsideAggregateLocalPartValid4_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0044 :
    outsideAggregateLocalPartValid4_0044 outsideHistoryChunk0044 := by
  unfold outsideAggregateLocalPartValid4_0044 outsideHistoryChunk0044
  decide

def outsideAggregateMarkerPartValid4_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 45568
  | _ => True

theorem outsideAggregateMarkerPart4_0044 :
    outsideAggregateMarkerPartValid4_0044 outsideHistoryChunk0044 := by
  unfold outsideAggregateMarkerPartValid4_0044 outsideHistoryChunk0044
  decide

def outsideAggregateLocalPartValid5_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0044 :
    outsideAggregateLocalPartValid5_0044 outsideHistoryChunk0044 := by
  unfold outsideAggregateLocalPartValid5_0044 outsideHistoryChunk0044
  decide

def outsideAggregateMarkerPartValid5_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 45696
  | _ => True

theorem outsideAggregateMarkerPart5_0044 :
    outsideAggregateMarkerPartValid5_0044 outsideHistoryChunk0044 := by
  unfold outsideAggregateMarkerPartValid5_0044 outsideHistoryChunk0044
  decide

def outsideAggregateLocalPartValid6_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0044 :
    outsideAggregateLocalPartValid6_0044 outsideHistoryChunk0044 := by
  unfold outsideAggregateLocalPartValid6_0044 outsideHistoryChunk0044
  decide

def outsideAggregateMarkerPartValid6_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 45824
  | _ => True

theorem outsideAggregateMarkerPart6_0044 :
    outsideAggregateMarkerPartValid6_0044 outsideHistoryChunk0044 := by
  unfold outsideAggregateMarkerPartValid6_0044 outsideHistoryChunk0044
  decide

def outsideAggregateLocalPartValid7_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0044 :
    outsideAggregateLocalPartValid7_0044 outsideHistoryChunk0044 := by
  unfold outsideAggregateLocalPartValid7_0044 outsideHistoryChunk0044
  decide

def outsideAggregateMarkerPartValid7_0044 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 45952
  | _ => True

theorem outsideAggregateMarkerPart7_0044 :
    outsideAggregateMarkerPartValid7_0044 outsideHistoryChunk0044 := by
  unfold outsideAggregateMarkerPartValid7_0044 outsideHistoryChunk0044
  decide

theorem outsideRange_0044 :
    outsideHistoryChunk0044.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 45056 := by
  have hl0 := outsideAggregateLocalPart0_0044
  simp only [outsideAggregateLocalPartValid0_0044, outsideHistoryChunk0044] at hl0
  have hl1 := outsideAggregateLocalPart1_0044
  simp only [outsideAggregateLocalPartValid1_0044, outsideHistoryChunk0044] at hl1
  have hl2 := outsideAggregateLocalPart2_0044
  simp only [outsideAggregateLocalPartValid2_0044, outsideHistoryChunk0044] at hl2
  have hl3 := outsideAggregateLocalPart3_0044
  simp only [outsideAggregateLocalPartValid3_0044, outsideHistoryChunk0044] at hl3
  have hl4 := outsideAggregateLocalPart4_0044
  simp only [outsideAggregateLocalPartValid4_0044, outsideHistoryChunk0044] at hl4
  have hl5 := outsideAggregateLocalPart5_0044
  simp only [outsideAggregateLocalPartValid5_0044, outsideHistoryChunk0044] at hl5
  have hl6 := outsideAggregateLocalPart6_0044
  simp only [outsideAggregateLocalPartValid6_0044, outsideHistoryChunk0044] at hl6
  have hl7 := outsideAggregateLocalPart7_0044
  simp only [outsideAggregateLocalPartValid7_0044, outsideHistoryChunk0044] at hl7
  have hm0 := outsideAggregateMarkerPart0_0044
  simp only [outsideAggregateMarkerPartValid0_0044, outsideHistoryChunk0044] at hm0
  have hm1 := outsideAggregateMarkerPart1_0044
  simp only [outsideAggregateMarkerPartValid1_0044, outsideHistoryChunk0044] at hm1
  have hm2 := outsideAggregateMarkerPart2_0044
  simp only [outsideAggregateMarkerPartValid2_0044, outsideHistoryChunk0044] at hm2
  have hm3 := outsideAggregateMarkerPart3_0044
  simp only [outsideAggregateMarkerPartValid3_0044, outsideHistoryChunk0044] at hm3
  have hm4 := outsideAggregateMarkerPart4_0044
  simp only [outsideAggregateMarkerPartValid4_0044, outsideHistoryChunk0044] at hm4
  have hm5 := outsideAggregateMarkerPart5_0044
  simp only [outsideAggregateMarkerPartValid5_0044, outsideHistoryChunk0044] at hm5
  have hm6 := outsideAggregateMarkerPart6_0044
  simp only [outsideAggregateMarkerPartValid6_0044, outsideHistoryChunk0044] at hm6
  have hm7 := outsideAggregateMarkerPart7_0044
  simp only [outsideAggregateMarkerPartValid7_0044, outsideHistoryChunk0044] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0044
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0044
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0045 :
    outsideAggregateLocalPartValid0_0045 outsideHistoryChunk0045 := by
  unfold outsideAggregateLocalPartValid0_0045 outsideHistoryChunk0045
  decide

def outsideAggregateMarkerPartValid0_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 46080
  | _ => True

theorem outsideAggregateMarkerPart0_0045 :
    outsideAggregateMarkerPartValid0_0045 outsideHistoryChunk0045 := by
  unfold outsideAggregateMarkerPartValid0_0045 outsideHistoryChunk0045
  decide

def outsideAggregateLocalPartValid1_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0045 :
    outsideAggregateLocalPartValid1_0045 outsideHistoryChunk0045 := by
  unfold outsideAggregateLocalPartValid1_0045 outsideHistoryChunk0045
  decide

def outsideAggregateMarkerPartValid1_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 46208
  | _ => True

theorem outsideAggregateMarkerPart1_0045 :
    outsideAggregateMarkerPartValid1_0045 outsideHistoryChunk0045 := by
  unfold outsideAggregateMarkerPartValid1_0045 outsideHistoryChunk0045
  decide

def outsideAggregateLocalPartValid2_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0045 :
    outsideAggregateLocalPartValid2_0045 outsideHistoryChunk0045 := by
  unfold outsideAggregateLocalPartValid2_0045 outsideHistoryChunk0045
  decide

def outsideAggregateMarkerPartValid2_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 46336
  | _ => True

theorem outsideAggregateMarkerPart2_0045 :
    outsideAggregateMarkerPartValid2_0045 outsideHistoryChunk0045 := by
  unfold outsideAggregateMarkerPartValid2_0045 outsideHistoryChunk0045
  decide

def outsideAggregateLocalPartValid3_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0045 :
    outsideAggregateLocalPartValid3_0045 outsideHistoryChunk0045 := by
  unfold outsideAggregateLocalPartValid3_0045 outsideHistoryChunk0045
  decide

def outsideAggregateMarkerPartValid3_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 46464
  | _ => True

theorem outsideAggregateMarkerPart3_0045 :
    outsideAggregateMarkerPartValid3_0045 outsideHistoryChunk0045 := by
  unfold outsideAggregateMarkerPartValid3_0045 outsideHistoryChunk0045
  decide

def outsideAggregateLocalPartValid4_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0045 :
    outsideAggregateLocalPartValid4_0045 outsideHistoryChunk0045 := by
  unfold outsideAggregateLocalPartValid4_0045 outsideHistoryChunk0045
  decide

def outsideAggregateMarkerPartValid4_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 46592
  | _ => True

theorem outsideAggregateMarkerPart4_0045 :
    outsideAggregateMarkerPartValid4_0045 outsideHistoryChunk0045 := by
  unfold outsideAggregateMarkerPartValid4_0045 outsideHistoryChunk0045
  decide

def outsideAggregateLocalPartValid5_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0045 :
    outsideAggregateLocalPartValid5_0045 outsideHistoryChunk0045 := by
  unfold outsideAggregateLocalPartValid5_0045 outsideHistoryChunk0045
  decide

def outsideAggregateMarkerPartValid5_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 46720
  | _ => True

theorem outsideAggregateMarkerPart5_0045 :
    outsideAggregateMarkerPartValid5_0045 outsideHistoryChunk0045 := by
  unfold outsideAggregateMarkerPartValid5_0045 outsideHistoryChunk0045
  decide

def outsideAggregateLocalPartValid6_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0045 :
    outsideAggregateLocalPartValid6_0045 outsideHistoryChunk0045 := by
  unfold outsideAggregateLocalPartValid6_0045 outsideHistoryChunk0045
  decide

def outsideAggregateMarkerPartValid6_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 46848
  | _ => True

theorem outsideAggregateMarkerPart6_0045 :
    outsideAggregateMarkerPartValid6_0045 outsideHistoryChunk0045 := by
  unfold outsideAggregateMarkerPartValid6_0045 outsideHistoryChunk0045
  decide

def outsideAggregateLocalPartValid7_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0045 :
    outsideAggregateLocalPartValid7_0045 outsideHistoryChunk0045 := by
  unfold outsideAggregateLocalPartValid7_0045 outsideHistoryChunk0045
  decide

def outsideAggregateMarkerPartValid7_0045 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 46976
  | _ => True

theorem outsideAggregateMarkerPart7_0045 :
    outsideAggregateMarkerPartValid7_0045 outsideHistoryChunk0045 := by
  unfold outsideAggregateMarkerPartValid7_0045 outsideHistoryChunk0045
  decide

theorem outsideRange_0045 :
    outsideHistoryChunk0045.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 46080 := by
  have hl0 := outsideAggregateLocalPart0_0045
  simp only [outsideAggregateLocalPartValid0_0045, outsideHistoryChunk0045] at hl0
  have hl1 := outsideAggregateLocalPart1_0045
  simp only [outsideAggregateLocalPartValid1_0045, outsideHistoryChunk0045] at hl1
  have hl2 := outsideAggregateLocalPart2_0045
  simp only [outsideAggregateLocalPartValid2_0045, outsideHistoryChunk0045] at hl2
  have hl3 := outsideAggregateLocalPart3_0045
  simp only [outsideAggregateLocalPartValid3_0045, outsideHistoryChunk0045] at hl3
  have hl4 := outsideAggregateLocalPart4_0045
  simp only [outsideAggregateLocalPartValid4_0045, outsideHistoryChunk0045] at hl4
  have hl5 := outsideAggregateLocalPart5_0045
  simp only [outsideAggregateLocalPartValid5_0045, outsideHistoryChunk0045] at hl5
  have hl6 := outsideAggregateLocalPart6_0045
  simp only [outsideAggregateLocalPartValid6_0045, outsideHistoryChunk0045] at hl6
  have hl7 := outsideAggregateLocalPart7_0045
  simp only [outsideAggregateLocalPartValid7_0045, outsideHistoryChunk0045] at hl7
  have hm0 := outsideAggregateMarkerPart0_0045
  simp only [outsideAggregateMarkerPartValid0_0045, outsideHistoryChunk0045] at hm0
  have hm1 := outsideAggregateMarkerPart1_0045
  simp only [outsideAggregateMarkerPartValid1_0045, outsideHistoryChunk0045] at hm1
  have hm2 := outsideAggregateMarkerPart2_0045
  simp only [outsideAggregateMarkerPartValid2_0045, outsideHistoryChunk0045] at hm2
  have hm3 := outsideAggregateMarkerPart3_0045
  simp only [outsideAggregateMarkerPartValid3_0045, outsideHistoryChunk0045] at hm3
  have hm4 := outsideAggregateMarkerPart4_0045
  simp only [outsideAggregateMarkerPartValid4_0045, outsideHistoryChunk0045] at hm4
  have hm5 := outsideAggregateMarkerPart5_0045
  simp only [outsideAggregateMarkerPartValid5_0045, outsideHistoryChunk0045] at hm5
  have hm6 := outsideAggregateMarkerPart6_0045
  simp only [outsideAggregateMarkerPartValid6_0045, outsideHistoryChunk0045] at hm6
  have hm7 := outsideAggregateMarkerPart7_0045
  simp only [outsideAggregateMarkerPartValid7_0045, outsideHistoryChunk0045] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0045
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0045
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0046 :
    outsideAggregateLocalPartValid0_0046 outsideHistoryChunk0046 := by
  unfold outsideAggregateLocalPartValid0_0046 outsideHistoryChunk0046
  decide

def outsideAggregateMarkerPartValid0_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 47104
  | _ => True

theorem outsideAggregateMarkerPart0_0046 :
    outsideAggregateMarkerPartValid0_0046 outsideHistoryChunk0046 := by
  unfold outsideAggregateMarkerPartValid0_0046 outsideHistoryChunk0046
  decide

def outsideAggregateLocalPartValid1_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0046 :
    outsideAggregateLocalPartValid1_0046 outsideHistoryChunk0046 := by
  unfold outsideAggregateLocalPartValid1_0046 outsideHistoryChunk0046
  decide

def outsideAggregateMarkerPartValid1_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 47232
  | _ => True

theorem outsideAggregateMarkerPart1_0046 :
    outsideAggregateMarkerPartValid1_0046 outsideHistoryChunk0046 := by
  unfold outsideAggregateMarkerPartValid1_0046 outsideHistoryChunk0046
  decide

def outsideAggregateLocalPartValid2_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0046 :
    outsideAggregateLocalPartValid2_0046 outsideHistoryChunk0046 := by
  unfold outsideAggregateLocalPartValid2_0046 outsideHistoryChunk0046
  decide

def outsideAggregateMarkerPartValid2_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 47360
  | _ => True

theorem outsideAggregateMarkerPart2_0046 :
    outsideAggregateMarkerPartValid2_0046 outsideHistoryChunk0046 := by
  unfold outsideAggregateMarkerPartValid2_0046 outsideHistoryChunk0046
  decide

def outsideAggregateLocalPartValid3_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0046 :
    outsideAggregateLocalPartValid3_0046 outsideHistoryChunk0046 := by
  unfold outsideAggregateLocalPartValid3_0046 outsideHistoryChunk0046
  decide

def outsideAggregateMarkerPartValid3_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 47488
  | _ => True

theorem outsideAggregateMarkerPart3_0046 :
    outsideAggregateMarkerPartValid3_0046 outsideHistoryChunk0046 := by
  unfold outsideAggregateMarkerPartValid3_0046 outsideHistoryChunk0046
  decide

def outsideAggregateLocalPartValid4_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0046 :
    outsideAggregateLocalPartValid4_0046 outsideHistoryChunk0046 := by
  unfold outsideAggregateLocalPartValid4_0046 outsideHistoryChunk0046
  decide

def outsideAggregateMarkerPartValid4_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 47616
  | _ => True

theorem outsideAggregateMarkerPart4_0046 :
    outsideAggregateMarkerPartValid4_0046 outsideHistoryChunk0046 := by
  unfold outsideAggregateMarkerPartValid4_0046 outsideHistoryChunk0046
  decide

def outsideAggregateLocalPartValid5_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0046 :
    outsideAggregateLocalPartValid5_0046 outsideHistoryChunk0046 := by
  unfold outsideAggregateLocalPartValid5_0046 outsideHistoryChunk0046
  decide

def outsideAggregateMarkerPartValid5_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 47744
  | _ => True

theorem outsideAggregateMarkerPart5_0046 :
    outsideAggregateMarkerPartValid5_0046 outsideHistoryChunk0046 := by
  unfold outsideAggregateMarkerPartValid5_0046 outsideHistoryChunk0046
  decide

def outsideAggregateLocalPartValid6_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0046 :
    outsideAggregateLocalPartValid6_0046 outsideHistoryChunk0046 := by
  unfold outsideAggregateLocalPartValid6_0046 outsideHistoryChunk0046
  decide

def outsideAggregateMarkerPartValid6_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 47872
  | _ => True

theorem outsideAggregateMarkerPart6_0046 :
    outsideAggregateMarkerPartValid6_0046 outsideHistoryChunk0046 := by
  unfold outsideAggregateMarkerPartValid6_0046 outsideHistoryChunk0046
  decide

def outsideAggregateLocalPartValid7_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0046 :
    outsideAggregateLocalPartValid7_0046 outsideHistoryChunk0046 := by
  unfold outsideAggregateLocalPartValid7_0046 outsideHistoryChunk0046
  decide

def outsideAggregateMarkerPartValid7_0046 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 48000
  | _ => True

theorem outsideAggregateMarkerPart7_0046 :
    outsideAggregateMarkerPartValid7_0046 outsideHistoryChunk0046 := by
  unfold outsideAggregateMarkerPartValid7_0046 outsideHistoryChunk0046
  decide

theorem outsideRange_0046 :
    outsideHistoryChunk0046.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 47104 := by
  have hl0 := outsideAggregateLocalPart0_0046
  simp only [outsideAggregateLocalPartValid0_0046, outsideHistoryChunk0046] at hl0
  have hl1 := outsideAggregateLocalPart1_0046
  simp only [outsideAggregateLocalPartValid1_0046, outsideHistoryChunk0046] at hl1
  have hl2 := outsideAggregateLocalPart2_0046
  simp only [outsideAggregateLocalPartValid2_0046, outsideHistoryChunk0046] at hl2
  have hl3 := outsideAggregateLocalPart3_0046
  simp only [outsideAggregateLocalPartValid3_0046, outsideHistoryChunk0046] at hl3
  have hl4 := outsideAggregateLocalPart4_0046
  simp only [outsideAggregateLocalPartValid4_0046, outsideHistoryChunk0046] at hl4
  have hl5 := outsideAggregateLocalPart5_0046
  simp only [outsideAggregateLocalPartValid5_0046, outsideHistoryChunk0046] at hl5
  have hl6 := outsideAggregateLocalPart6_0046
  simp only [outsideAggregateLocalPartValid6_0046, outsideHistoryChunk0046] at hl6
  have hl7 := outsideAggregateLocalPart7_0046
  simp only [outsideAggregateLocalPartValid7_0046, outsideHistoryChunk0046] at hl7
  have hm0 := outsideAggregateMarkerPart0_0046
  simp only [outsideAggregateMarkerPartValid0_0046, outsideHistoryChunk0046] at hm0
  have hm1 := outsideAggregateMarkerPart1_0046
  simp only [outsideAggregateMarkerPartValid1_0046, outsideHistoryChunk0046] at hm1
  have hm2 := outsideAggregateMarkerPart2_0046
  simp only [outsideAggregateMarkerPartValid2_0046, outsideHistoryChunk0046] at hm2
  have hm3 := outsideAggregateMarkerPart3_0046
  simp only [outsideAggregateMarkerPartValid3_0046, outsideHistoryChunk0046] at hm3
  have hm4 := outsideAggregateMarkerPart4_0046
  simp only [outsideAggregateMarkerPartValid4_0046, outsideHistoryChunk0046] at hm4
  have hm5 := outsideAggregateMarkerPart5_0046
  simp only [outsideAggregateMarkerPartValid5_0046, outsideHistoryChunk0046] at hm5
  have hm6 := outsideAggregateMarkerPart6_0046
  simp only [outsideAggregateMarkerPartValid6_0046, outsideHistoryChunk0046] at hm6
  have hm7 := outsideAggregateMarkerPart7_0046
  simp only [outsideAggregateMarkerPartValid7_0046, outsideHistoryChunk0046] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0046
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0046
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0047 :
    outsideAggregateLocalPartValid0_0047 outsideHistoryChunk0047 := by
  unfold outsideAggregateLocalPartValid0_0047 outsideHistoryChunk0047
  decide

def outsideAggregateMarkerPartValid0_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 48128
  | _ => True

theorem outsideAggregateMarkerPart0_0047 :
    outsideAggregateMarkerPartValid0_0047 outsideHistoryChunk0047 := by
  unfold outsideAggregateMarkerPartValid0_0047 outsideHistoryChunk0047
  decide

def outsideAggregateLocalPartValid1_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0047 :
    outsideAggregateLocalPartValid1_0047 outsideHistoryChunk0047 := by
  unfold outsideAggregateLocalPartValid1_0047 outsideHistoryChunk0047
  decide

def outsideAggregateMarkerPartValid1_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 48256
  | _ => True

theorem outsideAggregateMarkerPart1_0047 :
    outsideAggregateMarkerPartValid1_0047 outsideHistoryChunk0047 := by
  unfold outsideAggregateMarkerPartValid1_0047 outsideHistoryChunk0047
  decide

def outsideAggregateLocalPartValid2_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0047 :
    outsideAggregateLocalPartValid2_0047 outsideHistoryChunk0047 := by
  unfold outsideAggregateLocalPartValid2_0047 outsideHistoryChunk0047
  decide

def outsideAggregateMarkerPartValid2_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 48384
  | _ => True

theorem outsideAggregateMarkerPart2_0047 :
    outsideAggregateMarkerPartValid2_0047 outsideHistoryChunk0047 := by
  unfold outsideAggregateMarkerPartValid2_0047 outsideHistoryChunk0047
  decide

def outsideAggregateLocalPartValid3_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0047 :
    outsideAggregateLocalPartValid3_0047 outsideHistoryChunk0047 := by
  unfold outsideAggregateLocalPartValid3_0047 outsideHistoryChunk0047
  decide

def outsideAggregateMarkerPartValid3_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 48512
  | _ => True

theorem outsideAggregateMarkerPart3_0047 :
    outsideAggregateMarkerPartValid3_0047 outsideHistoryChunk0047 := by
  unfold outsideAggregateMarkerPartValid3_0047 outsideHistoryChunk0047
  decide

def outsideAggregateLocalPartValid4_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0047 :
    outsideAggregateLocalPartValid4_0047 outsideHistoryChunk0047 := by
  unfold outsideAggregateLocalPartValid4_0047 outsideHistoryChunk0047
  decide

def outsideAggregateMarkerPartValid4_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 48640
  | _ => True

theorem outsideAggregateMarkerPart4_0047 :
    outsideAggregateMarkerPartValid4_0047 outsideHistoryChunk0047 := by
  unfold outsideAggregateMarkerPartValid4_0047 outsideHistoryChunk0047
  decide

def outsideAggregateLocalPartValid5_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0047 :
    outsideAggregateLocalPartValid5_0047 outsideHistoryChunk0047 := by
  unfold outsideAggregateLocalPartValid5_0047 outsideHistoryChunk0047
  decide

def outsideAggregateMarkerPartValid5_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 48768
  | _ => True

theorem outsideAggregateMarkerPart5_0047 :
    outsideAggregateMarkerPartValid5_0047 outsideHistoryChunk0047 := by
  unfold outsideAggregateMarkerPartValid5_0047 outsideHistoryChunk0047
  decide

def outsideAggregateLocalPartValid6_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0047 :
    outsideAggregateLocalPartValid6_0047 outsideHistoryChunk0047 := by
  unfold outsideAggregateLocalPartValid6_0047 outsideHistoryChunk0047
  decide

def outsideAggregateMarkerPartValid6_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 48896
  | _ => True

theorem outsideAggregateMarkerPart6_0047 :
    outsideAggregateMarkerPartValid6_0047 outsideHistoryChunk0047 := by
  unfold outsideAggregateMarkerPartValid6_0047 outsideHistoryChunk0047
  decide

def outsideAggregateLocalPartValid7_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0047 :
    outsideAggregateLocalPartValid7_0047 outsideHistoryChunk0047 := by
  unfold outsideAggregateLocalPartValid7_0047 outsideHistoryChunk0047
  decide

def outsideAggregateMarkerPartValid7_0047 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 49024
  | _ => True

theorem outsideAggregateMarkerPart7_0047 :
    outsideAggregateMarkerPartValid7_0047 outsideHistoryChunk0047 := by
  unfold outsideAggregateMarkerPartValid7_0047 outsideHistoryChunk0047
  decide

theorem outsideRange_0047 :
    outsideHistoryChunk0047.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 48128 := by
  have hl0 := outsideAggregateLocalPart0_0047
  simp only [outsideAggregateLocalPartValid0_0047, outsideHistoryChunk0047] at hl0
  have hl1 := outsideAggregateLocalPart1_0047
  simp only [outsideAggregateLocalPartValid1_0047, outsideHistoryChunk0047] at hl1
  have hl2 := outsideAggregateLocalPart2_0047
  simp only [outsideAggregateLocalPartValid2_0047, outsideHistoryChunk0047] at hl2
  have hl3 := outsideAggregateLocalPart3_0047
  simp only [outsideAggregateLocalPartValid3_0047, outsideHistoryChunk0047] at hl3
  have hl4 := outsideAggregateLocalPart4_0047
  simp only [outsideAggregateLocalPartValid4_0047, outsideHistoryChunk0047] at hl4
  have hl5 := outsideAggregateLocalPart5_0047
  simp only [outsideAggregateLocalPartValid5_0047, outsideHistoryChunk0047] at hl5
  have hl6 := outsideAggregateLocalPart6_0047
  simp only [outsideAggregateLocalPartValid6_0047, outsideHistoryChunk0047] at hl6
  have hl7 := outsideAggregateLocalPart7_0047
  simp only [outsideAggregateLocalPartValid7_0047, outsideHistoryChunk0047] at hl7
  have hm0 := outsideAggregateMarkerPart0_0047
  simp only [outsideAggregateMarkerPartValid0_0047, outsideHistoryChunk0047] at hm0
  have hm1 := outsideAggregateMarkerPart1_0047
  simp only [outsideAggregateMarkerPartValid1_0047, outsideHistoryChunk0047] at hm1
  have hm2 := outsideAggregateMarkerPart2_0047
  simp only [outsideAggregateMarkerPartValid2_0047, outsideHistoryChunk0047] at hm2
  have hm3 := outsideAggregateMarkerPart3_0047
  simp only [outsideAggregateMarkerPartValid3_0047, outsideHistoryChunk0047] at hm3
  have hm4 := outsideAggregateMarkerPart4_0047
  simp only [outsideAggregateMarkerPartValid4_0047, outsideHistoryChunk0047] at hm4
  have hm5 := outsideAggregateMarkerPart5_0047
  simp only [outsideAggregateMarkerPartValid5_0047, outsideHistoryChunk0047] at hm5
  have hm6 := outsideAggregateMarkerPart6_0047
  simp only [outsideAggregateMarkerPartValid6_0047, outsideHistoryChunk0047] at hm6
  have hm7 := outsideAggregateMarkerPart7_0047
  simp only [outsideAggregateMarkerPartValid7_0047, outsideHistoryChunk0047] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0047
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0047
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
