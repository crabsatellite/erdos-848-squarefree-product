import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0080
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0081
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0082
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0083

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0080, 0081, 0082, 0083 -/

def outsideAggregateLocalPartValid0_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0080 :
    outsideAggregateLocalPartValid0_0080 outsideHistoryChunk0080 := by
  unfold outsideAggregateLocalPartValid0_0080 outsideHistoryChunk0080
  decide

def outsideAggregateMarkerPartValid0_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 81920
  | _ => True

theorem outsideAggregateMarkerPart0_0080 :
    outsideAggregateMarkerPartValid0_0080 outsideHistoryChunk0080 := by
  unfold outsideAggregateMarkerPartValid0_0080 outsideHistoryChunk0080
  decide

def outsideAggregateLocalPartValid1_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0080 :
    outsideAggregateLocalPartValid1_0080 outsideHistoryChunk0080 := by
  unfold outsideAggregateLocalPartValid1_0080 outsideHistoryChunk0080
  decide

def outsideAggregateMarkerPartValid1_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 82048
  | _ => True

theorem outsideAggregateMarkerPart1_0080 :
    outsideAggregateMarkerPartValid1_0080 outsideHistoryChunk0080 := by
  unfold outsideAggregateMarkerPartValid1_0080 outsideHistoryChunk0080
  decide

def outsideAggregateLocalPartValid2_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0080 :
    outsideAggregateLocalPartValid2_0080 outsideHistoryChunk0080 := by
  unfold outsideAggregateLocalPartValid2_0080 outsideHistoryChunk0080
  decide

def outsideAggregateMarkerPartValid2_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 82176
  | _ => True

theorem outsideAggregateMarkerPart2_0080 :
    outsideAggregateMarkerPartValid2_0080 outsideHistoryChunk0080 := by
  unfold outsideAggregateMarkerPartValid2_0080 outsideHistoryChunk0080
  decide

def outsideAggregateLocalPartValid3_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0080 :
    outsideAggregateLocalPartValid3_0080 outsideHistoryChunk0080 := by
  unfold outsideAggregateLocalPartValid3_0080 outsideHistoryChunk0080
  decide

def outsideAggregateMarkerPartValid3_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 82304
  | _ => True

theorem outsideAggregateMarkerPart3_0080 :
    outsideAggregateMarkerPartValid3_0080 outsideHistoryChunk0080 := by
  unfold outsideAggregateMarkerPartValid3_0080 outsideHistoryChunk0080
  decide

def outsideAggregateLocalPartValid4_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0080 :
    outsideAggregateLocalPartValid4_0080 outsideHistoryChunk0080 := by
  unfold outsideAggregateLocalPartValid4_0080 outsideHistoryChunk0080
  decide

def outsideAggregateMarkerPartValid4_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 82432
  | _ => True

theorem outsideAggregateMarkerPart4_0080 :
    outsideAggregateMarkerPartValid4_0080 outsideHistoryChunk0080 := by
  unfold outsideAggregateMarkerPartValid4_0080 outsideHistoryChunk0080
  decide

def outsideAggregateLocalPartValid5_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0080 :
    outsideAggregateLocalPartValid5_0080 outsideHistoryChunk0080 := by
  unfold outsideAggregateLocalPartValid5_0080 outsideHistoryChunk0080
  decide

def outsideAggregateMarkerPartValid5_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 82560
  | _ => True

theorem outsideAggregateMarkerPart5_0080 :
    outsideAggregateMarkerPartValid5_0080 outsideHistoryChunk0080 := by
  unfold outsideAggregateMarkerPartValid5_0080 outsideHistoryChunk0080
  decide

def outsideAggregateLocalPartValid6_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0080 :
    outsideAggregateLocalPartValid6_0080 outsideHistoryChunk0080 := by
  unfold outsideAggregateLocalPartValid6_0080 outsideHistoryChunk0080
  decide

def outsideAggregateMarkerPartValid6_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 82688
  | _ => True

theorem outsideAggregateMarkerPart6_0080 :
    outsideAggregateMarkerPartValid6_0080 outsideHistoryChunk0080 := by
  unfold outsideAggregateMarkerPartValid6_0080 outsideHistoryChunk0080
  decide

def outsideAggregateLocalPartValid7_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0080 :
    outsideAggregateLocalPartValid7_0080 outsideHistoryChunk0080 := by
  unfold outsideAggregateLocalPartValid7_0080 outsideHistoryChunk0080
  decide

def outsideAggregateMarkerPartValid7_0080 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 82816
  | _ => True

theorem outsideAggregateMarkerPart7_0080 :
    outsideAggregateMarkerPartValid7_0080 outsideHistoryChunk0080 := by
  unfold outsideAggregateMarkerPartValid7_0080 outsideHistoryChunk0080
  decide

theorem outsideRange_0080 :
    outsideHistoryChunk0080.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 81920 := by
  have hl0 := outsideAggregateLocalPart0_0080
  simp only [outsideAggregateLocalPartValid0_0080, outsideHistoryChunk0080] at hl0
  have hl1 := outsideAggregateLocalPart1_0080
  simp only [outsideAggregateLocalPartValid1_0080, outsideHistoryChunk0080] at hl1
  have hl2 := outsideAggregateLocalPart2_0080
  simp only [outsideAggregateLocalPartValid2_0080, outsideHistoryChunk0080] at hl2
  have hl3 := outsideAggregateLocalPart3_0080
  simp only [outsideAggregateLocalPartValid3_0080, outsideHistoryChunk0080] at hl3
  have hl4 := outsideAggregateLocalPart4_0080
  simp only [outsideAggregateLocalPartValid4_0080, outsideHistoryChunk0080] at hl4
  have hl5 := outsideAggregateLocalPart5_0080
  simp only [outsideAggregateLocalPartValid5_0080, outsideHistoryChunk0080] at hl5
  have hl6 := outsideAggregateLocalPart6_0080
  simp only [outsideAggregateLocalPartValid6_0080, outsideHistoryChunk0080] at hl6
  have hl7 := outsideAggregateLocalPart7_0080
  simp only [outsideAggregateLocalPartValid7_0080, outsideHistoryChunk0080] at hl7
  have hm0 := outsideAggregateMarkerPart0_0080
  simp only [outsideAggregateMarkerPartValid0_0080, outsideHistoryChunk0080] at hm0
  have hm1 := outsideAggregateMarkerPart1_0080
  simp only [outsideAggregateMarkerPartValid1_0080, outsideHistoryChunk0080] at hm1
  have hm2 := outsideAggregateMarkerPart2_0080
  simp only [outsideAggregateMarkerPartValid2_0080, outsideHistoryChunk0080] at hm2
  have hm3 := outsideAggregateMarkerPart3_0080
  simp only [outsideAggregateMarkerPartValid3_0080, outsideHistoryChunk0080] at hm3
  have hm4 := outsideAggregateMarkerPart4_0080
  simp only [outsideAggregateMarkerPartValid4_0080, outsideHistoryChunk0080] at hm4
  have hm5 := outsideAggregateMarkerPart5_0080
  simp only [outsideAggregateMarkerPartValid5_0080, outsideHistoryChunk0080] at hm5
  have hm6 := outsideAggregateMarkerPart6_0080
  simp only [outsideAggregateMarkerPartValid6_0080, outsideHistoryChunk0080] at hm6
  have hm7 := outsideAggregateMarkerPart7_0080
  simp only [outsideAggregateMarkerPartValid7_0080, outsideHistoryChunk0080] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0080
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0080
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0081 :
    outsideAggregateLocalPartValid0_0081 outsideHistoryChunk0081 := by
  unfold outsideAggregateLocalPartValid0_0081 outsideHistoryChunk0081
  decide

def outsideAggregateMarkerPartValid0_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 82944
  | _ => True

theorem outsideAggregateMarkerPart0_0081 :
    outsideAggregateMarkerPartValid0_0081 outsideHistoryChunk0081 := by
  unfold outsideAggregateMarkerPartValid0_0081 outsideHistoryChunk0081
  decide

def outsideAggregateLocalPartValid1_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0081 :
    outsideAggregateLocalPartValid1_0081 outsideHistoryChunk0081 := by
  unfold outsideAggregateLocalPartValid1_0081 outsideHistoryChunk0081
  decide

def outsideAggregateMarkerPartValid1_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 83072
  | _ => True

theorem outsideAggregateMarkerPart1_0081 :
    outsideAggregateMarkerPartValid1_0081 outsideHistoryChunk0081 := by
  unfold outsideAggregateMarkerPartValid1_0081 outsideHistoryChunk0081
  decide

def outsideAggregateLocalPartValid2_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0081 :
    outsideAggregateLocalPartValid2_0081 outsideHistoryChunk0081 := by
  unfold outsideAggregateLocalPartValid2_0081 outsideHistoryChunk0081
  decide

def outsideAggregateMarkerPartValid2_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 83200
  | _ => True

theorem outsideAggregateMarkerPart2_0081 :
    outsideAggregateMarkerPartValid2_0081 outsideHistoryChunk0081 := by
  unfold outsideAggregateMarkerPartValid2_0081 outsideHistoryChunk0081
  decide

def outsideAggregateLocalPartValid3_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0081 :
    outsideAggregateLocalPartValid3_0081 outsideHistoryChunk0081 := by
  unfold outsideAggregateLocalPartValid3_0081 outsideHistoryChunk0081
  decide

def outsideAggregateMarkerPartValid3_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 83328
  | _ => True

theorem outsideAggregateMarkerPart3_0081 :
    outsideAggregateMarkerPartValid3_0081 outsideHistoryChunk0081 := by
  unfold outsideAggregateMarkerPartValid3_0081 outsideHistoryChunk0081
  decide

def outsideAggregateLocalPartValid4_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0081 :
    outsideAggregateLocalPartValid4_0081 outsideHistoryChunk0081 := by
  unfold outsideAggregateLocalPartValid4_0081 outsideHistoryChunk0081
  decide

def outsideAggregateMarkerPartValid4_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 83456
  | _ => True

theorem outsideAggregateMarkerPart4_0081 :
    outsideAggregateMarkerPartValid4_0081 outsideHistoryChunk0081 := by
  unfold outsideAggregateMarkerPartValid4_0081 outsideHistoryChunk0081
  decide

def outsideAggregateLocalPartValid5_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0081 :
    outsideAggregateLocalPartValid5_0081 outsideHistoryChunk0081 := by
  unfold outsideAggregateLocalPartValid5_0081 outsideHistoryChunk0081
  decide

def outsideAggregateMarkerPartValid5_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 83584
  | _ => True

theorem outsideAggregateMarkerPart5_0081 :
    outsideAggregateMarkerPartValid5_0081 outsideHistoryChunk0081 := by
  unfold outsideAggregateMarkerPartValid5_0081 outsideHistoryChunk0081
  decide

def outsideAggregateLocalPartValid6_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0081 :
    outsideAggregateLocalPartValid6_0081 outsideHistoryChunk0081 := by
  unfold outsideAggregateLocalPartValid6_0081 outsideHistoryChunk0081
  decide

def outsideAggregateMarkerPartValid6_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 83712
  | _ => True

theorem outsideAggregateMarkerPart6_0081 :
    outsideAggregateMarkerPartValid6_0081 outsideHistoryChunk0081 := by
  unfold outsideAggregateMarkerPartValid6_0081 outsideHistoryChunk0081
  decide

def outsideAggregateLocalPartValid7_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0081 :
    outsideAggregateLocalPartValid7_0081 outsideHistoryChunk0081 := by
  unfold outsideAggregateLocalPartValid7_0081 outsideHistoryChunk0081
  decide

def outsideAggregateMarkerPartValid7_0081 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 83840
  | _ => True

theorem outsideAggregateMarkerPart7_0081 :
    outsideAggregateMarkerPartValid7_0081 outsideHistoryChunk0081 := by
  unfold outsideAggregateMarkerPartValid7_0081 outsideHistoryChunk0081
  decide

theorem outsideRange_0081 :
    outsideHistoryChunk0081.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 82944 := by
  have hl0 := outsideAggregateLocalPart0_0081
  simp only [outsideAggregateLocalPartValid0_0081, outsideHistoryChunk0081] at hl0
  have hl1 := outsideAggregateLocalPart1_0081
  simp only [outsideAggregateLocalPartValid1_0081, outsideHistoryChunk0081] at hl1
  have hl2 := outsideAggregateLocalPart2_0081
  simp only [outsideAggregateLocalPartValid2_0081, outsideHistoryChunk0081] at hl2
  have hl3 := outsideAggregateLocalPart3_0081
  simp only [outsideAggregateLocalPartValid3_0081, outsideHistoryChunk0081] at hl3
  have hl4 := outsideAggregateLocalPart4_0081
  simp only [outsideAggregateLocalPartValid4_0081, outsideHistoryChunk0081] at hl4
  have hl5 := outsideAggregateLocalPart5_0081
  simp only [outsideAggregateLocalPartValid5_0081, outsideHistoryChunk0081] at hl5
  have hl6 := outsideAggregateLocalPart6_0081
  simp only [outsideAggregateLocalPartValid6_0081, outsideHistoryChunk0081] at hl6
  have hl7 := outsideAggregateLocalPart7_0081
  simp only [outsideAggregateLocalPartValid7_0081, outsideHistoryChunk0081] at hl7
  have hm0 := outsideAggregateMarkerPart0_0081
  simp only [outsideAggregateMarkerPartValid0_0081, outsideHistoryChunk0081] at hm0
  have hm1 := outsideAggregateMarkerPart1_0081
  simp only [outsideAggregateMarkerPartValid1_0081, outsideHistoryChunk0081] at hm1
  have hm2 := outsideAggregateMarkerPart2_0081
  simp only [outsideAggregateMarkerPartValid2_0081, outsideHistoryChunk0081] at hm2
  have hm3 := outsideAggregateMarkerPart3_0081
  simp only [outsideAggregateMarkerPartValid3_0081, outsideHistoryChunk0081] at hm3
  have hm4 := outsideAggregateMarkerPart4_0081
  simp only [outsideAggregateMarkerPartValid4_0081, outsideHistoryChunk0081] at hm4
  have hm5 := outsideAggregateMarkerPart5_0081
  simp only [outsideAggregateMarkerPartValid5_0081, outsideHistoryChunk0081] at hm5
  have hm6 := outsideAggregateMarkerPart6_0081
  simp only [outsideAggregateMarkerPartValid6_0081, outsideHistoryChunk0081] at hm6
  have hm7 := outsideAggregateMarkerPart7_0081
  simp only [outsideAggregateMarkerPartValid7_0081, outsideHistoryChunk0081] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0081
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0081
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0082 :
    outsideAggregateLocalPartValid0_0082 outsideHistoryChunk0082 := by
  unfold outsideAggregateLocalPartValid0_0082 outsideHistoryChunk0082
  decide

def outsideAggregateMarkerPartValid0_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 83968
  | _ => True

theorem outsideAggregateMarkerPart0_0082 :
    outsideAggregateMarkerPartValid0_0082 outsideHistoryChunk0082 := by
  unfold outsideAggregateMarkerPartValid0_0082 outsideHistoryChunk0082
  decide

def outsideAggregateLocalPartValid1_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0082 :
    outsideAggregateLocalPartValid1_0082 outsideHistoryChunk0082 := by
  unfold outsideAggregateLocalPartValid1_0082 outsideHistoryChunk0082
  decide

def outsideAggregateMarkerPartValid1_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 84096
  | _ => True

theorem outsideAggregateMarkerPart1_0082 :
    outsideAggregateMarkerPartValid1_0082 outsideHistoryChunk0082 := by
  unfold outsideAggregateMarkerPartValid1_0082 outsideHistoryChunk0082
  decide

def outsideAggregateLocalPartValid2_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0082 :
    outsideAggregateLocalPartValid2_0082 outsideHistoryChunk0082 := by
  unfold outsideAggregateLocalPartValid2_0082 outsideHistoryChunk0082
  decide

def outsideAggregateMarkerPartValid2_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 84224
  | _ => True

theorem outsideAggregateMarkerPart2_0082 :
    outsideAggregateMarkerPartValid2_0082 outsideHistoryChunk0082 := by
  unfold outsideAggregateMarkerPartValid2_0082 outsideHistoryChunk0082
  decide

def outsideAggregateLocalPartValid3_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0082 :
    outsideAggregateLocalPartValid3_0082 outsideHistoryChunk0082 := by
  unfold outsideAggregateLocalPartValid3_0082 outsideHistoryChunk0082
  decide

def outsideAggregateMarkerPartValid3_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 84352
  | _ => True

theorem outsideAggregateMarkerPart3_0082 :
    outsideAggregateMarkerPartValid3_0082 outsideHistoryChunk0082 := by
  unfold outsideAggregateMarkerPartValid3_0082 outsideHistoryChunk0082
  decide

def outsideAggregateLocalPartValid4_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0082 :
    outsideAggregateLocalPartValid4_0082 outsideHistoryChunk0082 := by
  unfold outsideAggregateLocalPartValid4_0082 outsideHistoryChunk0082
  decide

def outsideAggregateMarkerPartValid4_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 84480
  | _ => True

theorem outsideAggregateMarkerPart4_0082 :
    outsideAggregateMarkerPartValid4_0082 outsideHistoryChunk0082 := by
  unfold outsideAggregateMarkerPartValid4_0082 outsideHistoryChunk0082
  decide

def outsideAggregateLocalPartValid5_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0082 :
    outsideAggregateLocalPartValid5_0082 outsideHistoryChunk0082 := by
  unfold outsideAggregateLocalPartValid5_0082 outsideHistoryChunk0082
  decide

def outsideAggregateMarkerPartValid5_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 84608
  | _ => True

theorem outsideAggregateMarkerPart5_0082 :
    outsideAggregateMarkerPartValid5_0082 outsideHistoryChunk0082 := by
  unfold outsideAggregateMarkerPartValid5_0082 outsideHistoryChunk0082
  decide

def outsideAggregateLocalPartValid6_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0082 :
    outsideAggregateLocalPartValid6_0082 outsideHistoryChunk0082 := by
  unfold outsideAggregateLocalPartValid6_0082 outsideHistoryChunk0082
  decide

def outsideAggregateMarkerPartValid6_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 84736
  | _ => True

theorem outsideAggregateMarkerPart6_0082 :
    outsideAggregateMarkerPartValid6_0082 outsideHistoryChunk0082 := by
  unfold outsideAggregateMarkerPartValid6_0082 outsideHistoryChunk0082
  decide

def outsideAggregateLocalPartValid7_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0082 :
    outsideAggregateLocalPartValid7_0082 outsideHistoryChunk0082 := by
  unfold outsideAggregateLocalPartValid7_0082 outsideHistoryChunk0082
  decide

def outsideAggregateMarkerPartValid7_0082 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 84864
  | _ => True

theorem outsideAggregateMarkerPart7_0082 :
    outsideAggregateMarkerPartValid7_0082 outsideHistoryChunk0082 := by
  unfold outsideAggregateMarkerPartValid7_0082 outsideHistoryChunk0082
  decide

theorem outsideRange_0082 :
    outsideHistoryChunk0082.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 83968 := by
  have hl0 := outsideAggregateLocalPart0_0082
  simp only [outsideAggregateLocalPartValid0_0082, outsideHistoryChunk0082] at hl0
  have hl1 := outsideAggregateLocalPart1_0082
  simp only [outsideAggregateLocalPartValid1_0082, outsideHistoryChunk0082] at hl1
  have hl2 := outsideAggregateLocalPart2_0082
  simp only [outsideAggregateLocalPartValid2_0082, outsideHistoryChunk0082] at hl2
  have hl3 := outsideAggregateLocalPart3_0082
  simp only [outsideAggregateLocalPartValid3_0082, outsideHistoryChunk0082] at hl3
  have hl4 := outsideAggregateLocalPart4_0082
  simp only [outsideAggregateLocalPartValid4_0082, outsideHistoryChunk0082] at hl4
  have hl5 := outsideAggregateLocalPart5_0082
  simp only [outsideAggregateLocalPartValid5_0082, outsideHistoryChunk0082] at hl5
  have hl6 := outsideAggregateLocalPart6_0082
  simp only [outsideAggregateLocalPartValid6_0082, outsideHistoryChunk0082] at hl6
  have hl7 := outsideAggregateLocalPart7_0082
  simp only [outsideAggregateLocalPartValid7_0082, outsideHistoryChunk0082] at hl7
  have hm0 := outsideAggregateMarkerPart0_0082
  simp only [outsideAggregateMarkerPartValid0_0082, outsideHistoryChunk0082] at hm0
  have hm1 := outsideAggregateMarkerPart1_0082
  simp only [outsideAggregateMarkerPartValid1_0082, outsideHistoryChunk0082] at hm1
  have hm2 := outsideAggregateMarkerPart2_0082
  simp only [outsideAggregateMarkerPartValid2_0082, outsideHistoryChunk0082] at hm2
  have hm3 := outsideAggregateMarkerPart3_0082
  simp only [outsideAggregateMarkerPartValid3_0082, outsideHistoryChunk0082] at hm3
  have hm4 := outsideAggregateMarkerPart4_0082
  simp only [outsideAggregateMarkerPartValid4_0082, outsideHistoryChunk0082] at hm4
  have hm5 := outsideAggregateMarkerPart5_0082
  simp only [outsideAggregateMarkerPartValid5_0082, outsideHistoryChunk0082] at hm5
  have hm6 := outsideAggregateMarkerPart6_0082
  simp only [outsideAggregateMarkerPartValid6_0082, outsideHistoryChunk0082] at hm6
  have hm7 := outsideAggregateMarkerPart7_0082
  simp only [outsideAggregateMarkerPartValid7_0082, outsideHistoryChunk0082] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0082
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0082
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0083 :
    outsideAggregateLocalPartValid0_0083 outsideHistoryChunk0083 := by
  unfold outsideAggregateLocalPartValid0_0083 outsideHistoryChunk0083
  decide

def outsideAggregateMarkerPartValid0_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 84992
  | _ => True

theorem outsideAggregateMarkerPart0_0083 :
    outsideAggregateMarkerPartValid0_0083 outsideHistoryChunk0083 := by
  unfold outsideAggregateMarkerPartValid0_0083 outsideHistoryChunk0083
  decide

def outsideAggregateLocalPartValid1_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0083 :
    outsideAggregateLocalPartValid1_0083 outsideHistoryChunk0083 := by
  unfold outsideAggregateLocalPartValid1_0083 outsideHistoryChunk0083
  decide

def outsideAggregateMarkerPartValid1_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 85120
  | _ => True

theorem outsideAggregateMarkerPart1_0083 :
    outsideAggregateMarkerPartValid1_0083 outsideHistoryChunk0083 := by
  unfold outsideAggregateMarkerPartValid1_0083 outsideHistoryChunk0083
  decide

def outsideAggregateLocalPartValid2_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0083 :
    outsideAggregateLocalPartValid2_0083 outsideHistoryChunk0083 := by
  unfold outsideAggregateLocalPartValid2_0083 outsideHistoryChunk0083
  decide

def outsideAggregateMarkerPartValid2_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 85248
  | _ => True

theorem outsideAggregateMarkerPart2_0083 :
    outsideAggregateMarkerPartValid2_0083 outsideHistoryChunk0083 := by
  unfold outsideAggregateMarkerPartValid2_0083 outsideHistoryChunk0083
  decide

def outsideAggregateLocalPartValid3_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0083 :
    outsideAggregateLocalPartValid3_0083 outsideHistoryChunk0083 := by
  unfold outsideAggregateLocalPartValid3_0083 outsideHistoryChunk0083
  decide

def outsideAggregateMarkerPartValid3_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 85376
  | _ => True

theorem outsideAggregateMarkerPart3_0083 :
    outsideAggregateMarkerPartValid3_0083 outsideHistoryChunk0083 := by
  unfold outsideAggregateMarkerPartValid3_0083 outsideHistoryChunk0083
  decide

def outsideAggregateLocalPartValid4_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0083 :
    outsideAggregateLocalPartValid4_0083 outsideHistoryChunk0083 := by
  unfold outsideAggregateLocalPartValid4_0083 outsideHistoryChunk0083
  decide

def outsideAggregateMarkerPartValid4_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 85504
  | _ => True

theorem outsideAggregateMarkerPart4_0083 :
    outsideAggregateMarkerPartValid4_0083 outsideHistoryChunk0083 := by
  unfold outsideAggregateMarkerPartValid4_0083 outsideHistoryChunk0083
  decide

def outsideAggregateLocalPartValid5_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0083 :
    outsideAggregateLocalPartValid5_0083 outsideHistoryChunk0083 := by
  unfold outsideAggregateLocalPartValid5_0083 outsideHistoryChunk0083
  decide

def outsideAggregateMarkerPartValid5_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 85632
  | _ => True

theorem outsideAggregateMarkerPart5_0083 :
    outsideAggregateMarkerPartValid5_0083 outsideHistoryChunk0083 := by
  unfold outsideAggregateMarkerPartValid5_0083 outsideHistoryChunk0083
  decide

def outsideAggregateLocalPartValid6_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0083 :
    outsideAggregateLocalPartValid6_0083 outsideHistoryChunk0083 := by
  unfold outsideAggregateLocalPartValid6_0083 outsideHistoryChunk0083
  decide

def outsideAggregateMarkerPartValid6_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 85760
  | _ => True

theorem outsideAggregateMarkerPart6_0083 :
    outsideAggregateMarkerPartValid6_0083 outsideHistoryChunk0083 := by
  unfold outsideAggregateMarkerPartValid6_0083 outsideHistoryChunk0083
  decide

def outsideAggregateLocalPartValid7_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0083 :
    outsideAggregateLocalPartValid7_0083 outsideHistoryChunk0083 := by
  unfold outsideAggregateLocalPartValid7_0083 outsideHistoryChunk0083
  decide

def outsideAggregateMarkerPartValid7_0083 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 85888
  | _ => True

theorem outsideAggregateMarkerPart7_0083 :
    outsideAggregateMarkerPartValid7_0083 outsideHistoryChunk0083 := by
  unfold outsideAggregateMarkerPartValid7_0083 outsideHistoryChunk0083
  decide

theorem outsideRange_0083 :
    outsideHistoryChunk0083.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 84992 := by
  have hl0 := outsideAggregateLocalPart0_0083
  simp only [outsideAggregateLocalPartValid0_0083, outsideHistoryChunk0083] at hl0
  have hl1 := outsideAggregateLocalPart1_0083
  simp only [outsideAggregateLocalPartValid1_0083, outsideHistoryChunk0083] at hl1
  have hl2 := outsideAggregateLocalPart2_0083
  simp only [outsideAggregateLocalPartValid2_0083, outsideHistoryChunk0083] at hl2
  have hl3 := outsideAggregateLocalPart3_0083
  simp only [outsideAggregateLocalPartValid3_0083, outsideHistoryChunk0083] at hl3
  have hl4 := outsideAggregateLocalPart4_0083
  simp only [outsideAggregateLocalPartValid4_0083, outsideHistoryChunk0083] at hl4
  have hl5 := outsideAggregateLocalPart5_0083
  simp only [outsideAggregateLocalPartValid5_0083, outsideHistoryChunk0083] at hl5
  have hl6 := outsideAggregateLocalPart6_0083
  simp only [outsideAggregateLocalPartValid6_0083, outsideHistoryChunk0083] at hl6
  have hl7 := outsideAggregateLocalPart7_0083
  simp only [outsideAggregateLocalPartValid7_0083, outsideHistoryChunk0083] at hl7
  have hm0 := outsideAggregateMarkerPart0_0083
  simp only [outsideAggregateMarkerPartValid0_0083, outsideHistoryChunk0083] at hm0
  have hm1 := outsideAggregateMarkerPart1_0083
  simp only [outsideAggregateMarkerPartValid1_0083, outsideHistoryChunk0083] at hm1
  have hm2 := outsideAggregateMarkerPart2_0083
  simp only [outsideAggregateMarkerPartValid2_0083, outsideHistoryChunk0083] at hm2
  have hm3 := outsideAggregateMarkerPart3_0083
  simp only [outsideAggregateMarkerPartValid3_0083, outsideHistoryChunk0083] at hm3
  have hm4 := outsideAggregateMarkerPart4_0083
  simp only [outsideAggregateMarkerPartValid4_0083, outsideHistoryChunk0083] at hm4
  have hm5 := outsideAggregateMarkerPart5_0083
  simp only [outsideAggregateMarkerPartValid5_0083, outsideHistoryChunk0083] at hm5
  have hm6 := outsideAggregateMarkerPart6_0083
  simp only [outsideAggregateMarkerPartValid6_0083, outsideHistoryChunk0083] at hm6
  have hm7 := outsideAggregateMarkerPart7_0083
  simp only [outsideAggregateMarkerPartValid7_0083, outsideHistoryChunk0083] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0083
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0083
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
