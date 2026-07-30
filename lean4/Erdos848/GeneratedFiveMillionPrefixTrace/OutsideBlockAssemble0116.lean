import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0116
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0117
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0118
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0119

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0116, 0117, 0118, 0119 -/

def outsideAggregateLocalPartValid0_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0116 :
    outsideAggregateLocalPartValid0_0116 outsideHistoryChunk0116 := by
  unfold outsideAggregateLocalPartValid0_0116 outsideHistoryChunk0116
  decide

def outsideAggregateMarkerPartValid0_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 118784
  | _ => True

theorem outsideAggregateMarkerPart0_0116 :
    outsideAggregateMarkerPartValid0_0116 outsideHistoryChunk0116 := by
  unfold outsideAggregateMarkerPartValid0_0116 outsideHistoryChunk0116
  decide

def outsideAggregateLocalPartValid1_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0116 :
    outsideAggregateLocalPartValid1_0116 outsideHistoryChunk0116 := by
  unfold outsideAggregateLocalPartValid1_0116 outsideHistoryChunk0116
  decide

def outsideAggregateMarkerPartValid1_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 118912
  | _ => True

theorem outsideAggregateMarkerPart1_0116 :
    outsideAggregateMarkerPartValid1_0116 outsideHistoryChunk0116 := by
  unfold outsideAggregateMarkerPartValid1_0116 outsideHistoryChunk0116
  decide

def outsideAggregateLocalPartValid2_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0116 :
    outsideAggregateLocalPartValid2_0116 outsideHistoryChunk0116 := by
  unfold outsideAggregateLocalPartValid2_0116 outsideHistoryChunk0116
  decide

def outsideAggregateMarkerPartValid2_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 119040
  | _ => True

theorem outsideAggregateMarkerPart2_0116 :
    outsideAggregateMarkerPartValid2_0116 outsideHistoryChunk0116 := by
  unfold outsideAggregateMarkerPartValid2_0116 outsideHistoryChunk0116
  decide

def outsideAggregateLocalPartValid3_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0116 :
    outsideAggregateLocalPartValid3_0116 outsideHistoryChunk0116 := by
  unfold outsideAggregateLocalPartValid3_0116 outsideHistoryChunk0116
  decide

def outsideAggregateMarkerPartValid3_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 119168
  | _ => True

theorem outsideAggregateMarkerPart3_0116 :
    outsideAggregateMarkerPartValid3_0116 outsideHistoryChunk0116 := by
  unfold outsideAggregateMarkerPartValid3_0116 outsideHistoryChunk0116
  decide

def outsideAggregateLocalPartValid4_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0116 :
    outsideAggregateLocalPartValid4_0116 outsideHistoryChunk0116 := by
  unfold outsideAggregateLocalPartValid4_0116 outsideHistoryChunk0116
  decide

def outsideAggregateMarkerPartValid4_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 119296
  | _ => True

theorem outsideAggregateMarkerPart4_0116 :
    outsideAggregateMarkerPartValid4_0116 outsideHistoryChunk0116 := by
  unfold outsideAggregateMarkerPartValid4_0116 outsideHistoryChunk0116
  decide

def outsideAggregateLocalPartValid5_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0116 :
    outsideAggregateLocalPartValid5_0116 outsideHistoryChunk0116 := by
  unfold outsideAggregateLocalPartValid5_0116 outsideHistoryChunk0116
  decide

def outsideAggregateMarkerPartValid5_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 119424
  | _ => True

theorem outsideAggregateMarkerPart5_0116 :
    outsideAggregateMarkerPartValid5_0116 outsideHistoryChunk0116 := by
  unfold outsideAggregateMarkerPartValid5_0116 outsideHistoryChunk0116
  decide

def outsideAggregateLocalPartValid6_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0116 :
    outsideAggregateLocalPartValid6_0116 outsideHistoryChunk0116 := by
  unfold outsideAggregateLocalPartValid6_0116 outsideHistoryChunk0116
  decide

def outsideAggregateMarkerPartValid6_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 119552
  | _ => True

theorem outsideAggregateMarkerPart6_0116 :
    outsideAggregateMarkerPartValid6_0116 outsideHistoryChunk0116 := by
  unfold outsideAggregateMarkerPartValid6_0116 outsideHistoryChunk0116
  decide

def outsideAggregateLocalPartValid7_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0116 :
    outsideAggregateLocalPartValid7_0116 outsideHistoryChunk0116 := by
  unfold outsideAggregateLocalPartValid7_0116 outsideHistoryChunk0116
  decide

def outsideAggregateMarkerPartValid7_0116 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 119680
  | _ => True

theorem outsideAggregateMarkerPart7_0116 :
    outsideAggregateMarkerPartValid7_0116 outsideHistoryChunk0116 := by
  unfold outsideAggregateMarkerPartValid7_0116 outsideHistoryChunk0116
  decide

theorem outsideRange_0116 :
    outsideHistoryChunk0116.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 118784 := by
  have hl0 := outsideAggregateLocalPart0_0116
  simp only [outsideAggregateLocalPartValid0_0116, outsideHistoryChunk0116] at hl0
  have hl1 := outsideAggregateLocalPart1_0116
  simp only [outsideAggregateLocalPartValid1_0116, outsideHistoryChunk0116] at hl1
  have hl2 := outsideAggregateLocalPart2_0116
  simp only [outsideAggregateLocalPartValid2_0116, outsideHistoryChunk0116] at hl2
  have hl3 := outsideAggregateLocalPart3_0116
  simp only [outsideAggregateLocalPartValid3_0116, outsideHistoryChunk0116] at hl3
  have hl4 := outsideAggregateLocalPart4_0116
  simp only [outsideAggregateLocalPartValid4_0116, outsideHistoryChunk0116] at hl4
  have hl5 := outsideAggregateLocalPart5_0116
  simp only [outsideAggregateLocalPartValid5_0116, outsideHistoryChunk0116] at hl5
  have hl6 := outsideAggregateLocalPart6_0116
  simp only [outsideAggregateLocalPartValid6_0116, outsideHistoryChunk0116] at hl6
  have hl7 := outsideAggregateLocalPart7_0116
  simp only [outsideAggregateLocalPartValid7_0116, outsideHistoryChunk0116] at hl7
  have hm0 := outsideAggregateMarkerPart0_0116
  simp only [outsideAggregateMarkerPartValid0_0116, outsideHistoryChunk0116] at hm0
  have hm1 := outsideAggregateMarkerPart1_0116
  simp only [outsideAggregateMarkerPartValid1_0116, outsideHistoryChunk0116] at hm1
  have hm2 := outsideAggregateMarkerPart2_0116
  simp only [outsideAggregateMarkerPartValid2_0116, outsideHistoryChunk0116] at hm2
  have hm3 := outsideAggregateMarkerPart3_0116
  simp only [outsideAggregateMarkerPartValid3_0116, outsideHistoryChunk0116] at hm3
  have hm4 := outsideAggregateMarkerPart4_0116
  simp only [outsideAggregateMarkerPartValid4_0116, outsideHistoryChunk0116] at hm4
  have hm5 := outsideAggregateMarkerPart5_0116
  simp only [outsideAggregateMarkerPartValid5_0116, outsideHistoryChunk0116] at hm5
  have hm6 := outsideAggregateMarkerPart6_0116
  simp only [outsideAggregateMarkerPartValid6_0116, outsideHistoryChunk0116] at hm6
  have hm7 := outsideAggregateMarkerPart7_0116
  simp only [outsideAggregateMarkerPartValid7_0116, outsideHistoryChunk0116] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0116
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0116
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0117 :
    outsideAggregateLocalPartValid0_0117 outsideHistoryChunk0117 := by
  unfold outsideAggregateLocalPartValid0_0117 outsideHistoryChunk0117
  decide

def outsideAggregateMarkerPartValid0_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 119808
  | _ => True

theorem outsideAggregateMarkerPart0_0117 :
    outsideAggregateMarkerPartValid0_0117 outsideHistoryChunk0117 := by
  unfold outsideAggregateMarkerPartValid0_0117 outsideHistoryChunk0117
  decide

def outsideAggregateLocalPartValid1_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0117 :
    outsideAggregateLocalPartValid1_0117 outsideHistoryChunk0117 := by
  unfold outsideAggregateLocalPartValid1_0117 outsideHistoryChunk0117
  decide

def outsideAggregateMarkerPartValid1_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 119936
  | _ => True

theorem outsideAggregateMarkerPart1_0117 :
    outsideAggregateMarkerPartValid1_0117 outsideHistoryChunk0117 := by
  unfold outsideAggregateMarkerPartValid1_0117 outsideHistoryChunk0117
  decide

def outsideAggregateLocalPartValid2_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0117 :
    outsideAggregateLocalPartValid2_0117 outsideHistoryChunk0117 := by
  unfold outsideAggregateLocalPartValid2_0117 outsideHistoryChunk0117
  decide

def outsideAggregateMarkerPartValid2_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 120064
  | _ => True

theorem outsideAggregateMarkerPart2_0117 :
    outsideAggregateMarkerPartValid2_0117 outsideHistoryChunk0117 := by
  unfold outsideAggregateMarkerPartValid2_0117 outsideHistoryChunk0117
  decide

def outsideAggregateLocalPartValid3_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0117 :
    outsideAggregateLocalPartValid3_0117 outsideHistoryChunk0117 := by
  unfold outsideAggregateLocalPartValid3_0117 outsideHistoryChunk0117
  decide

def outsideAggregateMarkerPartValid3_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 120192
  | _ => True

theorem outsideAggregateMarkerPart3_0117 :
    outsideAggregateMarkerPartValid3_0117 outsideHistoryChunk0117 := by
  unfold outsideAggregateMarkerPartValid3_0117 outsideHistoryChunk0117
  decide

def outsideAggregateLocalPartValid4_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0117 :
    outsideAggregateLocalPartValid4_0117 outsideHistoryChunk0117 := by
  unfold outsideAggregateLocalPartValid4_0117 outsideHistoryChunk0117
  decide

def outsideAggregateMarkerPartValid4_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 120320
  | _ => True

theorem outsideAggregateMarkerPart4_0117 :
    outsideAggregateMarkerPartValid4_0117 outsideHistoryChunk0117 := by
  unfold outsideAggregateMarkerPartValid4_0117 outsideHistoryChunk0117
  decide

def outsideAggregateLocalPartValid5_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0117 :
    outsideAggregateLocalPartValid5_0117 outsideHistoryChunk0117 := by
  unfold outsideAggregateLocalPartValid5_0117 outsideHistoryChunk0117
  decide

def outsideAggregateMarkerPartValid5_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 120448
  | _ => True

theorem outsideAggregateMarkerPart5_0117 :
    outsideAggregateMarkerPartValid5_0117 outsideHistoryChunk0117 := by
  unfold outsideAggregateMarkerPartValid5_0117 outsideHistoryChunk0117
  decide

def outsideAggregateLocalPartValid6_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0117 :
    outsideAggregateLocalPartValid6_0117 outsideHistoryChunk0117 := by
  unfold outsideAggregateLocalPartValid6_0117 outsideHistoryChunk0117
  decide

def outsideAggregateMarkerPartValid6_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 120576
  | _ => True

theorem outsideAggregateMarkerPart6_0117 :
    outsideAggregateMarkerPartValid6_0117 outsideHistoryChunk0117 := by
  unfold outsideAggregateMarkerPartValid6_0117 outsideHistoryChunk0117
  decide

def outsideAggregateLocalPartValid7_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0117 :
    outsideAggregateLocalPartValid7_0117 outsideHistoryChunk0117 := by
  unfold outsideAggregateLocalPartValid7_0117 outsideHistoryChunk0117
  decide

def outsideAggregateMarkerPartValid7_0117 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 120704
  | _ => True

theorem outsideAggregateMarkerPart7_0117 :
    outsideAggregateMarkerPartValid7_0117 outsideHistoryChunk0117 := by
  unfold outsideAggregateMarkerPartValid7_0117 outsideHistoryChunk0117
  decide

theorem outsideRange_0117 :
    outsideHistoryChunk0117.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 119808 := by
  have hl0 := outsideAggregateLocalPart0_0117
  simp only [outsideAggregateLocalPartValid0_0117, outsideHistoryChunk0117] at hl0
  have hl1 := outsideAggregateLocalPart1_0117
  simp only [outsideAggregateLocalPartValid1_0117, outsideHistoryChunk0117] at hl1
  have hl2 := outsideAggregateLocalPart2_0117
  simp only [outsideAggregateLocalPartValid2_0117, outsideHistoryChunk0117] at hl2
  have hl3 := outsideAggregateLocalPart3_0117
  simp only [outsideAggregateLocalPartValid3_0117, outsideHistoryChunk0117] at hl3
  have hl4 := outsideAggregateLocalPart4_0117
  simp only [outsideAggregateLocalPartValid4_0117, outsideHistoryChunk0117] at hl4
  have hl5 := outsideAggregateLocalPart5_0117
  simp only [outsideAggregateLocalPartValid5_0117, outsideHistoryChunk0117] at hl5
  have hl6 := outsideAggregateLocalPart6_0117
  simp only [outsideAggregateLocalPartValid6_0117, outsideHistoryChunk0117] at hl6
  have hl7 := outsideAggregateLocalPart7_0117
  simp only [outsideAggregateLocalPartValid7_0117, outsideHistoryChunk0117] at hl7
  have hm0 := outsideAggregateMarkerPart0_0117
  simp only [outsideAggregateMarkerPartValid0_0117, outsideHistoryChunk0117] at hm0
  have hm1 := outsideAggregateMarkerPart1_0117
  simp only [outsideAggregateMarkerPartValid1_0117, outsideHistoryChunk0117] at hm1
  have hm2 := outsideAggregateMarkerPart2_0117
  simp only [outsideAggregateMarkerPartValid2_0117, outsideHistoryChunk0117] at hm2
  have hm3 := outsideAggregateMarkerPart3_0117
  simp only [outsideAggregateMarkerPartValid3_0117, outsideHistoryChunk0117] at hm3
  have hm4 := outsideAggregateMarkerPart4_0117
  simp only [outsideAggregateMarkerPartValid4_0117, outsideHistoryChunk0117] at hm4
  have hm5 := outsideAggregateMarkerPart5_0117
  simp only [outsideAggregateMarkerPartValid5_0117, outsideHistoryChunk0117] at hm5
  have hm6 := outsideAggregateMarkerPart6_0117
  simp only [outsideAggregateMarkerPartValid6_0117, outsideHistoryChunk0117] at hm6
  have hm7 := outsideAggregateMarkerPart7_0117
  simp only [outsideAggregateMarkerPartValid7_0117, outsideHistoryChunk0117] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0117
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0117
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0118 :
    outsideAggregateLocalPartValid0_0118 outsideHistoryChunk0118 := by
  unfold outsideAggregateLocalPartValid0_0118 outsideHistoryChunk0118
  decide

def outsideAggregateMarkerPartValid0_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 120832
  | _ => True

theorem outsideAggregateMarkerPart0_0118 :
    outsideAggregateMarkerPartValid0_0118 outsideHistoryChunk0118 := by
  unfold outsideAggregateMarkerPartValid0_0118 outsideHistoryChunk0118
  decide

def outsideAggregateLocalPartValid1_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0118 :
    outsideAggregateLocalPartValid1_0118 outsideHistoryChunk0118 := by
  unfold outsideAggregateLocalPartValid1_0118 outsideHistoryChunk0118
  decide

def outsideAggregateMarkerPartValid1_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 120960
  | _ => True

theorem outsideAggregateMarkerPart1_0118 :
    outsideAggregateMarkerPartValid1_0118 outsideHistoryChunk0118 := by
  unfold outsideAggregateMarkerPartValid1_0118 outsideHistoryChunk0118
  decide

def outsideAggregateLocalPartValid2_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0118 :
    outsideAggregateLocalPartValid2_0118 outsideHistoryChunk0118 := by
  unfold outsideAggregateLocalPartValid2_0118 outsideHistoryChunk0118
  decide

def outsideAggregateMarkerPartValid2_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 121088
  | _ => True

theorem outsideAggregateMarkerPart2_0118 :
    outsideAggregateMarkerPartValid2_0118 outsideHistoryChunk0118 := by
  unfold outsideAggregateMarkerPartValid2_0118 outsideHistoryChunk0118
  decide

def outsideAggregateLocalPartValid3_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0118 :
    outsideAggregateLocalPartValid3_0118 outsideHistoryChunk0118 := by
  unfold outsideAggregateLocalPartValid3_0118 outsideHistoryChunk0118
  decide

def outsideAggregateMarkerPartValid3_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 121216
  | _ => True

theorem outsideAggregateMarkerPart3_0118 :
    outsideAggregateMarkerPartValid3_0118 outsideHistoryChunk0118 := by
  unfold outsideAggregateMarkerPartValid3_0118 outsideHistoryChunk0118
  decide

def outsideAggregateLocalPartValid4_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0118 :
    outsideAggregateLocalPartValid4_0118 outsideHistoryChunk0118 := by
  unfold outsideAggregateLocalPartValid4_0118 outsideHistoryChunk0118
  decide

def outsideAggregateMarkerPartValid4_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 121344
  | _ => True

theorem outsideAggregateMarkerPart4_0118 :
    outsideAggregateMarkerPartValid4_0118 outsideHistoryChunk0118 := by
  unfold outsideAggregateMarkerPartValid4_0118 outsideHistoryChunk0118
  decide

def outsideAggregateLocalPartValid5_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0118 :
    outsideAggregateLocalPartValid5_0118 outsideHistoryChunk0118 := by
  unfold outsideAggregateLocalPartValid5_0118 outsideHistoryChunk0118
  decide

def outsideAggregateMarkerPartValid5_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 121472
  | _ => True

theorem outsideAggregateMarkerPart5_0118 :
    outsideAggregateMarkerPartValid5_0118 outsideHistoryChunk0118 := by
  unfold outsideAggregateMarkerPartValid5_0118 outsideHistoryChunk0118
  decide

def outsideAggregateLocalPartValid6_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0118 :
    outsideAggregateLocalPartValid6_0118 outsideHistoryChunk0118 := by
  unfold outsideAggregateLocalPartValid6_0118 outsideHistoryChunk0118
  decide

def outsideAggregateMarkerPartValid6_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 121600
  | _ => True

theorem outsideAggregateMarkerPart6_0118 :
    outsideAggregateMarkerPartValid6_0118 outsideHistoryChunk0118 := by
  unfold outsideAggregateMarkerPartValid6_0118 outsideHistoryChunk0118
  decide

def outsideAggregateLocalPartValid7_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0118 :
    outsideAggregateLocalPartValid7_0118 outsideHistoryChunk0118 := by
  unfold outsideAggregateLocalPartValid7_0118 outsideHistoryChunk0118
  decide

def outsideAggregateMarkerPartValid7_0118 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 121728
  | _ => True

theorem outsideAggregateMarkerPart7_0118 :
    outsideAggregateMarkerPartValid7_0118 outsideHistoryChunk0118 := by
  unfold outsideAggregateMarkerPartValid7_0118 outsideHistoryChunk0118
  decide

theorem outsideRange_0118 :
    outsideHistoryChunk0118.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 120832 := by
  have hl0 := outsideAggregateLocalPart0_0118
  simp only [outsideAggregateLocalPartValid0_0118, outsideHistoryChunk0118] at hl0
  have hl1 := outsideAggregateLocalPart1_0118
  simp only [outsideAggregateLocalPartValid1_0118, outsideHistoryChunk0118] at hl1
  have hl2 := outsideAggregateLocalPart2_0118
  simp only [outsideAggregateLocalPartValid2_0118, outsideHistoryChunk0118] at hl2
  have hl3 := outsideAggregateLocalPart3_0118
  simp only [outsideAggregateLocalPartValid3_0118, outsideHistoryChunk0118] at hl3
  have hl4 := outsideAggregateLocalPart4_0118
  simp only [outsideAggregateLocalPartValid4_0118, outsideHistoryChunk0118] at hl4
  have hl5 := outsideAggregateLocalPart5_0118
  simp only [outsideAggregateLocalPartValid5_0118, outsideHistoryChunk0118] at hl5
  have hl6 := outsideAggregateLocalPart6_0118
  simp only [outsideAggregateLocalPartValid6_0118, outsideHistoryChunk0118] at hl6
  have hl7 := outsideAggregateLocalPart7_0118
  simp only [outsideAggregateLocalPartValid7_0118, outsideHistoryChunk0118] at hl7
  have hm0 := outsideAggregateMarkerPart0_0118
  simp only [outsideAggregateMarkerPartValid0_0118, outsideHistoryChunk0118] at hm0
  have hm1 := outsideAggregateMarkerPart1_0118
  simp only [outsideAggregateMarkerPartValid1_0118, outsideHistoryChunk0118] at hm1
  have hm2 := outsideAggregateMarkerPart2_0118
  simp only [outsideAggregateMarkerPartValid2_0118, outsideHistoryChunk0118] at hm2
  have hm3 := outsideAggregateMarkerPart3_0118
  simp only [outsideAggregateMarkerPartValid3_0118, outsideHistoryChunk0118] at hm3
  have hm4 := outsideAggregateMarkerPart4_0118
  simp only [outsideAggregateMarkerPartValid4_0118, outsideHistoryChunk0118] at hm4
  have hm5 := outsideAggregateMarkerPart5_0118
  simp only [outsideAggregateMarkerPartValid5_0118, outsideHistoryChunk0118] at hm5
  have hm6 := outsideAggregateMarkerPart6_0118
  simp only [outsideAggregateMarkerPartValid6_0118, outsideHistoryChunk0118] at hm6
  have hm7 := outsideAggregateMarkerPart7_0118
  simp only [outsideAggregateMarkerPartValid7_0118, outsideHistoryChunk0118] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0118
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0118
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0119 :
    outsideAggregateLocalPartValid0_0119 outsideHistoryChunk0119 := by
  unfold outsideAggregateLocalPartValid0_0119 outsideHistoryChunk0119
  decide

def outsideAggregateMarkerPartValid0_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 121856
  | _ => True

theorem outsideAggregateMarkerPart0_0119 :
    outsideAggregateMarkerPartValid0_0119 outsideHistoryChunk0119 := by
  unfold outsideAggregateMarkerPartValid0_0119 outsideHistoryChunk0119
  decide

def outsideAggregateLocalPartValid1_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0119 :
    outsideAggregateLocalPartValid1_0119 outsideHistoryChunk0119 := by
  unfold outsideAggregateLocalPartValid1_0119 outsideHistoryChunk0119
  decide

def outsideAggregateMarkerPartValid1_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 121984
  | _ => True

theorem outsideAggregateMarkerPart1_0119 :
    outsideAggregateMarkerPartValid1_0119 outsideHistoryChunk0119 := by
  unfold outsideAggregateMarkerPartValid1_0119 outsideHistoryChunk0119
  decide

def outsideAggregateLocalPartValid2_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0119 :
    outsideAggregateLocalPartValid2_0119 outsideHistoryChunk0119 := by
  unfold outsideAggregateLocalPartValid2_0119 outsideHistoryChunk0119
  decide

def outsideAggregateMarkerPartValid2_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 122112
  | _ => True

theorem outsideAggregateMarkerPart2_0119 :
    outsideAggregateMarkerPartValid2_0119 outsideHistoryChunk0119 := by
  unfold outsideAggregateMarkerPartValid2_0119 outsideHistoryChunk0119
  decide

def outsideAggregateLocalPartValid3_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0119 :
    outsideAggregateLocalPartValid3_0119 outsideHistoryChunk0119 := by
  unfold outsideAggregateLocalPartValid3_0119 outsideHistoryChunk0119
  decide

def outsideAggregateMarkerPartValid3_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 122240
  | _ => True

theorem outsideAggregateMarkerPart3_0119 :
    outsideAggregateMarkerPartValid3_0119 outsideHistoryChunk0119 := by
  unfold outsideAggregateMarkerPartValid3_0119 outsideHistoryChunk0119
  decide

def outsideAggregateLocalPartValid4_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0119 :
    outsideAggregateLocalPartValid4_0119 outsideHistoryChunk0119 := by
  unfold outsideAggregateLocalPartValid4_0119 outsideHistoryChunk0119
  decide

def outsideAggregateMarkerPartValid4_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 122368
  | _ => True

theorem outsideAggregateMarkerPart4_0119 :
    outsideAggregateMarkerPartValid4_0119 outsideHistoryChunk0119 := by
  unfold outsideAggregateMarkerPartValid4_0119 outsideHistoryChunk0119
  decide

def outsideAggregateLocalPartValid5_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0119 :
    outsideAggregateLocalPartValid5_0119 outsideHistoryChunk0119 := by
  unfold outsideAggregateLocalPartValid5_0119 outsideHistoryChunk0119
  decide

def outsideAggregateMarkerPartValid5_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 122496
  | _ => True

theorem outsideAggregateMarkerPart5_0119 :
    outsideAggregateMarkerPartValid5_0119 outsideHistoryChunk0119 := by
  unfold outsideAggregateMarkerPartValid5_0119 outsideHistoryChunk0119
  decide

def outsideAggregateLocalPartValid6_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0119 :
    outsideAggregateLocalPartValid6_0119 outsideHistoryChunk0119 := by
  unfold outsideAggregateLocalPartValid6_0119 outsideHistoryChunk0119
  decide

def outsideAggregateMarkerPartValid6_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 122624
  | _ => True

theorem outsideAggregateMarkerPart6_0119 :
    outsideAggregateMarkerPartValid6_0119 outsideHistoryChunk0119 := by
  unfold outsideAggregateMarkerPartValid6_0119 outsideHistoryChunk0119
  decide

def outsideAggregateLocalPartValid7_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0119 :
    outsideAggregateLocalPartValid7_0119 outsideHistoryChunk0119 := by
  unfold outsideAggregateLocalPartValid7_0119 outsideHistoryChunk0119
  decide

def outsideAggregateMarkerPartValid7_0119 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 122752
  | _ => True

theorem outsideAggregateMarkerPart7_0119 :
    outsideAggregateMarkerPartValid7_0119 outsideHistoryChunk0119 := by
  unfold outsideAggregateMarkerPartValid7_0119 outsideHistoryChunk0119
  decide

theorem outsideRange_0119 :
    outsideHistoryChunk0119.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 121856 := by
  have hl0 := outsideAggregateLocalPart0_0119
  simp only [outsideAggregateLocalPartValid0_0119, outsideHistoryChunk0119] at hl0
  have hl1 := outsideAggregateLocalPart1_0119
  simp only [outsideAggregateLocalPartValid1_0119, outsideHistoryChunk0119] at hl1
  have hl2 := outsideAggregateLocalPart2_0119
  simp only [outsideAggregateLocalPartValid2_0119, outsideHistoryChunk0119] at hl2
  have hl3 := outsideAggregateLocalPart3_0119
  simp only [outsideAggregateLocalPartValid3_0119, outsideHistoryChunk0119] at hl3
  have hl4 := outsideAggregateLocalPart4_0119
  simp only [outsideAggregateLocalPartValid4_0119, outsideHistoryChunk0119] at hl4
  have hl5 := outsideAggregateLocalPart5_0119
  simp only [outsideAggregateLocalPartValid5_0119, outsideHistoryChunk0119] at hl5
  have hl6 := outsideAggregateLocalPart6_0119
  simp only [outsideAggregateLocalPartValid6_0119, outsideHistoryChunk0119] at hl6
  have hl7 := outsideAggregateLocalPart7_0119
  simp only [outsideAggregateLocalPartValid7_0119, outsideHistoryChunk0119] at hl7
  have hm0 := outsideAggregateMarkerPart0_0119
  simp only [outsideAggregateMarkerPartValid0_0119, outsideHistoryChunk0119] at hm0
  have hm1 := outsideAggregateMarkerPart1_0119
  simp only [outsideAggregateMarkerPartValid1_0119, outsideHistoryChunk0119] at hm1
  have hm2 := outsideAggregateMarkerPart2_0119
  simp only [outsideAggregateMarkerPartValid2_0119, outsideHistoryChunk0119] at hm2
  have hm3 := outsideAggregateMarkerPart3_0119
  simp only [outsideAggregateMarkerPartValid3_0119, outsideHistoryChunk0119] at hm3
  have hm4 := outsideAggregateMarkerPart4_0119
  simp only [outsideAggregateMarkerPartValid4_0119, outsideHistoryChunk0119] at hm4
  have hm5 := outsideAggregateMarkerPart5_0119
  simp only [outsideAggregateMarkerPartValid5_0119, outsideHistoryChunk0119] at hm5
  have hm6 := outsideAggregateMarkerPart6_0119
  simp only [outsideAggregateMarkerPartValid6_0119, outsideHistoryChunk0119] at hm6
  have hm7 := outsideAggregateMarkerPart7_0119
  simp only [outsideAggregateMarkerPartValid7_0119, outsideHistoryChunk0119] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0119
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0119
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
