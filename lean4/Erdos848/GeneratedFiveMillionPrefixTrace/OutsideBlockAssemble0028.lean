import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0028
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0029
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0030
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0031

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0028, 0029, 0030, 0031 -/

def outsideAggregateLocalPartValid0_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0028 :
    outsideAggregateLocalPartValid0_0028 outsideHistoryChunk0028 := by
  unfold outsideAggregateLocalPartValid0_0028 outsideHistoryChunk0028
  decide

def outsideAggregateMarkerPartValid0_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 28672
  | _ => True

theorem outsideAggregateMarkerPart0_0028 :
    outsideAggregateMarkerPartValid0_0028 outsideHistoryChunk0028 := by
  unfold outsideAggregateMarkerPartValid0_0028 outsideHistoryChunk0028
  decide

def outsideAggregateLocalPartValid1_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0028 :
    outsideAggregateLocalPartValid1_0028 outsideHistoryChunk0028 := by
  unfold outsideAggregateLocalPartValid1_0028 outsideHistoryChunk0028
  decide

def outsideAggregateMarkerPartValid1_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 28800
  | _ => True

theorem outsideAggregateMarkerPart1_0028 :
    outsideAggregateMarkerPartValid1_0028 outsideHistoryChunk0028 := by
  unfold outsideAggregateMarkerPartValid1_0028 outsideHistoryChunk0028
  decide

def outsideAggregateLocalPartValid2_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0028 :
    outsideAggregateLocalPartValid2_0028 outsideHistoryChunk0028 := by
  unfold outsideAggregateLocalPartValid2_0028 outsideHistoryChunk0028
  decide

def outsideAggregateMarkerPartValid2_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 28928
  | _ => True

theorem outsideAggregateMarkerPart2_0028 :
    outsideAggregateMarkerPartValid2_0028 outsideHistoryChunk0028 := by
  unfold outsideAggregateMarkerPartValid2_0028 outsideHistoryChunk0028
  decide

def outsideAggregateLocalPartValid3_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0028 :
    outsideAggregateLocalPartValid3_0028 outsideHistoryChunk0028 := by
  unfold outsideAggregateLocalPartValid3_0028 outsideHistoryChunk0028
  decide

def outsideAggregateMarkerPartValid3_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 29056
  | _ => True

theorem outsideAggregateMarkerPart3_0028 :
    outsideAggregateMarkerPartValid3_0028 outsideHistoryChunk0028 := by
  unfold outsideAggregateMarkerPartValid3_0028 outsideHistoryChunk0028
  decide

def outsideAggregateLocalPartValid4_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0028 :
    outsideAggregateLocalPartValid4_0028 outsideHistoryChunk0028 := by
  unfold outsideAggregateLocalPartValid4_0028 outsideHistoryChunk0028
  decide

def outsideAggregateMarkerPartValid4_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 29184
  | _ => True

theorem outsideAggregateMarkerPart4_0028 :
    outsideAggregateMarkerPartValid4_0028 outsideHistoryChunk0028 := by
  unfold outsideAggregateMarkerPartValid4_0028 outsideHistoryChunk0028
  decide

def outsideAggregateLocalPartValid5_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0028 :
    outsideAggregateLocalPartValid5_0028 outsideHistoryChunk0028 := by
  unfold outsideAggregateLocalPartValid5_0028 outsideHistoryChunk0028
  decide

def outsideAggregateMarkerPartValid5_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 29312
  | _ => True

theorem outsideAggregateMarkerPart5_0028 :
    outsideAggregateMarkerPartValid5_0028 outsideHistoryChunk0028 := by
  unfold outsideAggregateMarkerPartValid5_0028 outsideHistoryChunk0028
  decide

def outsideAggregateLocalPartValid6_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0028 :
    outsideAggregateLocalPartValid6_0028 outsideHistoryChunk0028 := by
  unfold outsideAggregateLocalPartValid6_0028 outsideHistoryChunk0028
  decide

def outsideAggregateMarkerPartValid6_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 29440
  | _ => True

theorem outsideAggregateMarkerPart6_0028 :
    outsideAggregateMarkerPartValid6_0028 outsideHistoryChunk0028 := by
  unfold outsideAggregateMarkerPartValid6_0028 outsideHistoryChunk0028
  decide

def outsideAggregateLocalPartValid7_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0028 :
    outsideAggregateLocalPartValid7_0028 outsideHistoryChunk0028 := by
  unfold outsideAggregateLocalPartValid7_0028 outsideHistoryChunk0028
  decide

def outsideAggregateMarkerPartValid7_0028 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 29568
  | _ => True

theorem outsideAggregateMarkerPart7_0028 :
    outsideAggregateMarkerPartValid7_0028 outsideHistoryChunk0028 := by
  unfold outsideAggregateMarkerPartValid7_0028 outsideHistoryChunk0028
  decide

theorem outsideRange_0028 :
    outsideHistoryChunk0028.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 28672 := by
  have hl0 := outsideAggregateLocalPart0_0028
  simp only [outsideAggregateLocalPartValid0_0028, outsideHistoryChunk0028] at hl0
  have hl1 := outsideAggregateLocalPart1_0028
  simp only [outsideAggregateLocalPartValid1_0028, outsideHistoryChunk0028] at hl1
  have hl2 := outsideAggregateLocalPart2_0028
  simp only [outsideAggregateLocalPartValid2_0028, outsideHistoryChunk0028] at hl2
  have hl3 := outsideAggregateLocalPart3_0028
  simp only [outsideAggregateLocalPartValid3_0028, outsideHistoryChunk0028] at hl3
  have hl4 := outsideAggregateLocalPart4_0028
  simp only [outsideAggregateLocalPartValid4_0028, outsideHistoryChunk0028] at hl4
  have hl5 := outsideAggregateLocalPart5_0028
  simp only [outsideAggregateLocalPartValid5_0028, outsideHistoryChunk0028] at hl5
  have hl6 := outsideAggregateLocalPart6_0028
  simp only [outsideAggregateLocalPartValid6_0028, outsideHistoryChunk0028] at hl6
  have hl7 := outsideAggregateLocalPart7_0028
  simp only [outsideAggregateLocalPartValid7_0028, outsideHistoryChunk0028] at hl7
  have hm0 := outsideAggregateMarkerPart0_0028
  simp only [outsideAggregateMarkerPartValid0_0028, outsideHistoryChunk0028] at hm0
  have hm1 := outsideAggregateMarkerPart1_0028
  simp only [outsideAggregateMarkerPartValid1_0028, outsideHistoryChunk0028] at hm1
  have hm2 := outsideAggregateMarkerPart2_0028
  simp only [outsideAggregateMarkerPartValid2_0028, outsideHistoryChunk0028] at hm2
  have hm3 := outsideAggregateMarkerPart3_0028
  simp only [outsideAggregateMarkerPartValid3_0028, outsideHistoryChunk0028] at hm3
  have hm4 := outsideAggregateMarkerPart4_0028
  simp only [outsideAggregateMarkerPartValid4_0028, outsideHistoryChunk0028] at hm4
  have hm5 := outsideAggregateMarkerPart5_0028
  simp only [outsideAggregateMarkerPartValid5_0028, outsideHistoryChunk0028] at hm5
  have hm6 := outsideAggregateMarkerPart6_0028
  simp only [outsideAggregateMarkerPartValid6_0028, outsideHistoryChunk0028] at hm6
  have hm7 := outsideAggregateMarkerPart7_0028
  simp only [outsideAggregateMarkerPartValid7_0028, outsideHistoryChunk0028] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0028
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0028
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0029 :
    outsideAggregateLocalPartValid0_0029 outsideHistoryChunk0029 := by
  unfold outsideAggregateLocalPartValid0_0029 outsideHistoryChunk0029
  decide

def outsideAggregateMarkerPartValid0_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 29696
  | _ => True

theorem outsideAggregateMarkerPart0_0029 :
    outsideAggregateMarkerPartValid0_0029 outsideHistoryChunk0029 := by
  unfold outsideAggregateMarkerPartValid0_0029 outsideHistoryChunk0029
  decide

def outsideAggregateLocalPartValid1_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0029 :
    outsideAggregateLocalPartValid1_0029 outsideHistoryChunk0029 := by
  unfold outsideAggregateLocalPartValid1_0029 outsideHistoryChunk0029
  decide

def outsideAggregateMarkerPartValid1_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 29824
  | _ => True

theorem outsideAggregateMarkerPart1_0029 :
    outsideAggregateMarkerPartValid1_0029 outsideHistoryChunk0029 := by
  unfold outsideAggregateMarkerPartValid1_0029 outsideHistoryChunk0029
  decide

def outsideAggregateLocalPartValid2_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0029 :
    outsideAggregateLocalPartValid2_0029 outsideHistoryChunk0029 := by
  unfold outsideAggregateLocalPartValid2_0029 outsideHistoryChunk0029
  decide

def outsideAggregateMarkerPartValid2_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 29952
  | _ => True

theorem outsideAggregateMarkerPart2_0029 :
    outsideAggregateMarkerPartValid2_0029 outsideHistoryChunk0029 := by
  unfold outsideAggregateMarkerPartValid2_0029 outsideHistoryChunk0029
  decide

def outsideAggregateLocalPartValid3_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0029 :
    outsideAggregateLocalPartValid3_0029 outsideHistoryChunk0029 := by
  unfold outsideAggregateLocalPartValid3_0029 outsideHistoryChunk0029
  decide

def outsideAggregateMarkerPartValid3_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 30080
  | _ => True

theorem outsideAggregateMarkerPart3_0029 :
    outsideAggregateMarkerPartValid3_0029 outsideHistoryChunk0029 := by
  unfold outsideAggregateMarkerPartValid3_0029 outsideHistoryChunk0029
  decide

def outsideAggregateLocalPartValid4_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0029 :
    outsideAggregateLocalPartValid4_0029 outsideHistoryChunk0029 := by
  unfold outsideAggregateLocalPartValid4_0029 outsideHistoryChunk0029
  decide

def outsideAggregateMarkerPartValid4_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 30208
  | _ => True

theorem outsideAggregateMarkerPart4_0029 :
    outsideAggregateMarkerPartValid4_0029 outsideHistoryChunk0029 := by
  unfold outsideAggregateMarkerPartValid4_0029 outsideHistoryChunk0029
  decide

def outsideAggregateLocalPartValid5_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0029 :
    outsideAggregateLocalPartValid5_0029 outsideHistoryChunk0029 := by
  unfold outsideAggregateLocalPartValid5_0029 outsideHistoryChunk0029
  decide

def outsideAggregateMarkerPartValid5_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 30336
  | _ => True

theorem outsideAggregateMarkerPart5_0029 :
    outsideAggregateMarkerPartValid5_0029 outsideHistoryChunk0029 := by
  unfold outsideAggregateMarkerPartValid5_0029 outsideHistoryChunk0029
  decide

def outsideAggregateLocalPartValid6_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0029 :
    outsideAggregateLocalPartValid6_0029 outsideHistoryChunk0029 := by
  unfold outsideAggregateLocalPartValid6_0029 outsideHistoryChunk0029
  decide

def outsideAggregateMarkerPartValid6_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 30464
  | _ => True

theorem outsideAggregateMarkerPart6_0029 :
    outsideAggregateMarkerPartValid6_0029 outsideHistoryChunk0029 := by
  unfold outsideAggregateMarkerPartValid6_0029 outsideHistoryChunk0029
  decide

def outsideAggregateLocalPartValid7_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0029 :
    outsideAggregateLocalPartValid7_0029 outsideHistoryChunk0029 := by
  unfold outsideAggregateLocalPartValid7_0029 outsideHistoryChunk0029
  decide

def outsideAggregateMarkerPartValid7_0029 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 30592
  | _ => True

theorem outsideAggregateMarkerPart7_0029 :
    outsideAggregateMarkerPartValid7_0029 outsideHistoryChunk0029 := by
  unfold outsideAggregateMarkerPartValid7_0029 outsideHistoryChunk0029
  decide

theorem outsideRange_0029 :
    outsideHistoryChunk0029.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 29696 := by
  have hl0 := outsideAggregateLocalPart0_0029
  simp only [outsideAggregateLocalPartValid0_0029, outsideHistoryChunk0029] at hl0
  have hl1 := outsideAggregateLocalPart1_0029
  simp only [outsideAggregateLocalPartValid1_0029, outsideHistoryChunk0029] at hl1
  have hl2 := outsideAggregateLocalPart2_0029
  simp only [outsideAggregateLocalPartValid2_0029, outsideHistoryChunk0029] at hl2
  have hl3 := outsideAggregateLocalPart3_0029
  simp only [outsideAggregateLocalPartValid3_0029, outsideHistoryChunk0029] at hl3
  have hl4 := outsideAggregateLocalPart4_0029
  simp only [outsideAggregateLocalPartValid4_0029, outsideHistoryChunk0029] at hl4
  have hl5 := outsideAggregateLocalPart5_0029
  simp only [outsideAggregateLocalPartValid5_0029, outsideHistoryChunk0029] at hl5
  have hl6 := outsideAggregateLocalPart6_0029
  simp only [outsideAggregateLocalPartValid6_0029, outsideHistoryChunk0029] at hl6
  have hl7 := outsideAggregateLocalPart7_0029
  simp only [outsideAggregateLocalPartValid7_0029, outsideHistoryChunk0029] at hl7
  have hm0 := outsideAggregateMarkerPart0_0029
  simp only [outsideAggregateMarkerPartValid0_0029, outsideHistoryChunk0029] at hm0
  have hm1 := outsideAggregateMarkerPart1_0029
  simp only [outsideAggregateMarkerPartValid1_0029, outsideHistoryChunk0029] at hm1
  have hm2 := outsideAggregateMarkerPart2_0029
  simp only [outsideAggregateMarkerPartValid2_0029, outsideHistoryChunk0029] at hm2
  have hm3 := outsideAggregateMarkerPart3_0029
  simp only [outsideAggregateMarkerPartValid3_0029, outsideHistoryChunk0029] at hm3
  have hm4 := outsideAggregateMarkerPart4_0029
  simp only [outsideAggregateMarkerPartValid4_0029, outsideHistoryChunk0029] at hm4
  have hm5 := outsideAggregateMarkerPart5_0029
  simp only [outsideAggregateMarkerPartValid5_0029, outsideHistoryChunk0029] at hm5
  have hm6 := outsideAggregateMarkerPart6_0029
  simp only [outsideAggregateMarkerPartValid6_0029, outsideHistoryChunk0029] at hm6
  have hm7 := outsideAggregateMarkerPart7_0029
  simp only [outsideAggregateMarkerPartValid7_0029, outsideHistoryChunk0029] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0029
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0029
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0030 :
    outsideAggregateLocalPartValid0_0030 outsideHistoryChunk0030 := by
  unfold outsideAggregateLocalPartValid0_0030 outsideHistoryChunk0030
  decide

def outsideAggregateMarkerPartValid0_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 30720
  | _ => True

theorem outsideAggregateMarkerPart0_0030 :
    outsideAggregateMarkerPartValid0_0030 outsideHistoryChunk0030 := by
  unfold outsideAggregateMarkerPartValid0_0030 outsideHistoryChunk0030
  decide

def outsideAggregateLocalPartValid1_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0030 :
    outsideAggregateLocalPartValid1_0030 outsideHistoryChunk0030 := by
  unfold outsideAggregateLocalPartValid1_0030 outsideHistoryChunk0030
  decide

def outsideAggregateMarkerPartValid1_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 30848
  | _ => True

theorem outsideAggregateMarkerPart1_0030 :
    outsideAggregateMarkerPartValid1_0030 outsideHistoryChunk0030 := by
  unfold outsideAggregateMarkerPartValid1_0030 outsideHistoryChunk0030
  decide

def outsideAggregateLocalPartValid2_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0030 :
    outsideAggregateLocalPartValid2_0030 outsideHistoryChunk0030 := by
  unfold outsideAggregateLocalPartValid2_0030 outsideHistoryChunk0030
  decide

def outsideAggregateMarkerPartValid2_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 30976
  | _ => True

theorem outsideAggregateMarkerPart2_0030 :
    outsideAggregateMarkerPartValid2_0030 outsideHistoryChunk0030 := by
  unfold outsideAggregateMarkerPartValid2_0030 outsideHistoryChunk0030
  decide

def outsideAggregateLocalPartValid3_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0030 :
    outsideAggregateLocalPartValid3_0030 outsideHistoryChunk0030 := by
  unfold outsideAggregateLocalPartValid3_0030 outsideHistoryChunk0030
  decide

def outsideAggregateMarkerPartValid3_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 31104
  | _ => True

theorem outsideAggregateMarkerPart3_0030 :
    outsideAggregateMarkerPartValid3_0030 outsideHistoryChunk0030 := by
  unfold outsideAggregateMarkerPartValid3_0030 outsideHistoryChunk0030
  decide

def outsideAggregateLocalPartValid4_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0030 :
    outsideAggregateLocalPartValid4_0030 outsideHistoryChunk0030 := by
  unfold outsideAggregateLocalPartValid4_0030 outsideHistoryChunk0030
  decide

def outsideAggregateMarkerPartValid4_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 31232
  | _ => True

theorem outsideAggregateMarkerPart4_0030 :
    outsideAggregateMarkerPartValid4_0030 outsideHistoryChunk0030 := by
  unfold outsideAggregateMarkerPartValid4_0030 outsideHistoryChunk0030
  decide

def outsideAggregateLocalPartValid5_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0030 :
    outsideAggregateLocalPartValid5_0030 outsideHistoryChunk0030 := by
  unfold outsideAggregateLocalPartValid5_0030 outsideHistoryChunk0030
  decide

def outsideAggregateMarkerPartValid5_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 31360
  | _ => True

theorem outsideAggregateMarkerPart5_0030 :
    outsideAggregateMarkerPartValid5_0030 outsideHistoryChunk0030 := by
  unfold outsideAggregateMarkerPartValid5_0030 outsideHistoryChunk0030
  decide

def outsideAggregateLocalPartValid6_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0030 :
    outsideAggregateLocalPartValid6_0030 outsideHistoryChunk0030 := by
  unfold outsideAggregateLocalPartValid6_0030 outsideHistoryChunk0030
  decide

def outsideAggregateMarkerPartValid6_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 31488
  | _ => True

theorem outsideAggregateMarkerPart6_0030 :
    outsideAggregateMarkerPartValid6_0030 outsideHistoryChunk0030 := by
  unfold outsideAggregateMarkerPartValid6_0030 outsideHistoryChunk0030
  decide

def outsideAggregateLocalPartValid7_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0030 :
    outsideAggregateLocalPartValid7_0030 outsideHistoryChunk0030 := by
  unfold outsideAggregateLocalPartValid7_0030 outsideHistoryChunk0030
  decide

def outsideAggregateMarkerPartValid7_0030 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 31616
  | _ => True

theorem outsideAggregateMarkerPart7_0030 :
    outsideAggregateMarkerPartValid7_0030 outsideHistoryChunk0030 := by
  unfold outsideAggregateMarkerPartValid7_0030 outsideHistoryChunk0030
  decide

theorem outsideRange_0030 :
    outsideHistoryChunk0030.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 30720 := by
  have hl0 := outsideAggregateLocalPart0_0030
  simp only [outsideAggregateLocalPartValid0_0030, outsideHistoryChunk0030] at hl0
  have hl1 := outsideAggregateLocalPart1_0030
  simp only [outsideAggregateLocalPartValid1_0030, outsideHistoryChunk0030] at hl1
  have hl2 := outsideAggregateLocalPart2_0030
  simp only [outsideAggregateLocalPartValid2_0030, outsideHistoryChunk0030] at hl2
  have hl3 := outsideAggregateLocalPart3_0030
  simp only [outsideAggregateLocalPartValid3_0030, outsideHistoryChunk0030] at hl3
  have hl4 := outsideAggregateLocalPart4_0030
  simp only [outsideAggregateLocalPartValid4_0030, outsideHistoryChunk0030] at hl4
  have hl5 := outsideAggregateLocalPart5_0030
  simp only [outsideAggregateLocalPartValid5_0030, outsideHistoryChunk0030] at hl5
  have hl6 := outsideAggregateLocalPart6_0030
  simp only [outsideAggregateLocalPartValid6_0030, outsideHistoryChunk0030] at hl6
  have hl7 := outsideAggregateLocalPart7_0030
  simp only [outsideAggregateLocalPartValid7_0030, outsideHistoryChunk0030] at hl7
  have hm0 := outsideAggregateMarkerPart0_0030
  simp only [outsideAggregateMarkerPartValid0_0030, outsideHistoryChunk0030] at hm0
  have hm1 := outsideAggregateMarkerPart1_0030
  simp only [outsideAggregateMarkerPartValid1_0030, outsideHistoryChunk0030] at hm1
  have hm2 := outsideAggregateMarkerPart2_0030
  simp only [outsideAggregateMarkerPartValid2_0030, outsideHistoryChunk0030] at hm2
  have hm3 := outsideAggregateMarkerPart3_0030
  simp only [outsideAggregateMarkerPartValid3_0030, outsideHistoryChunk0030] at hm3
  have hm4 := outsideAggregateMarkerPart4_0030
  simp only [outsideAggregateMarkerPartValid4_0030, outsideHistoryChunk0030] at hm4
  have hm5 := outsideAggregateMarkerPart5_0030
  simp only [outsideAggregateMarkerPartValid5_0030, outsideHistoryChunk0030] at hm5
  have hm6 := outsideAggregateMarkerPart6_0030
  simp only [outsideAggregateMarkerPartValid6_0030, outsideHistoryChunk0030] at hm6
  have hm7 := outsideAggregateMarkerPart7_0030
  simp only [outsideAggregateMarkerPartValid7_0030, outsideHistoryChunk0030] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0030
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0030
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0031 :
    outsideAggregateLocalPartValid0_0031 outsideHistoryChunk0031 := by
  unfold outsideAggregateLocalPartValid0_0031 outsideHistoryChunk0031
  decide

def outsideAggregateMarkerPartValid0_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 31744
  | _ => True

theorem outsideAggregateMarkerPart0_0031 :
    outsideAggregateMarkerPartValid0_0031 outsideHistoryChunk0031 := by
  unfold outsideAggregateMarkerPartValid0_0031 outsideHistoryChunk0031
  decide

def outsideAggregateLocalPartValid1_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0031 :
    outsideAggregateLocalPartValid1_0031 outsideHistoryChunk0031 := by
  unfold outsideAggregateLocalPartValid1_0031 outsideHistoryChunk0031
  decide

def outsideAggregateMarkerPartValid1_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 31872
  | _ => True

theorem outsideAggregateMarkerPart1_0031 :
    outsideAggregateMarkerPartValid1_0031 outsideHistoryChunk0031 := by
  unfold outsideAggregateMarkerPartValid1_0031 outsideHistoryChunk0031
  decide

def outsideAggregateLocalPartValid2_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0031 :
    outsideAggregateLocalPartValid2_0031 outsideHistoryChunk0031 := by
  unfold outsideAggregateLocalPartValid2_0031 outsideHistoryChunk0031
  decide

def outsideAggregateMarkerPartValid2_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 32000
  | _ => True

theorem outsideAggregateMarkerPart2_0031 :
    outsideAggregateMarkerPartValid2_0031 outsideHistoryChunk0031 := by
  unfold outsideAggregateMarkerPartValid2_0031 outsideHistoryChunk0031
  decide

def outsideAggregateLocalPartValid3_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0031 :
    outsideAggregateLocalPartValid3_0031 outsideHistoryChunk0031 := by
  unfold outsideAggregateLocalPartValid3_0031 outsideHistoryChunk0031
  decide

def outsideAggregateMarkerPartValid3_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 32128
  | _ => True

theorem outsideAggregateMarkerPart3_0031 :
    outsideAggregateMarkerPartValid3_0031 outsideHistoryChunk0031 := by
  unfold outsideAggregateMarkerPartValid3_0031 outsideHistoryChunk0031
  decide

def outsideAggregateLocalPartValid4_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0031 :
    outsideAggregateLocalPartValid4_0031 outsideHistoryChunk0031 := by
  unfold outsideAggregateLocalPartValid4_0031 outsideHistoryChunk0031
  decide

def outsideAggregateMarkerPartValid4_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 32256
  | _ => True

theorem outsideAggregateMarkerPart4_0031 :
    outsideAggregateMarkerPartValid4_0031 outsideHistoryChunk0031 := by
  unfold outsideAggregateMarkerPartValid4_0031 outsideHistoryChunk0031
  decide

def outsideAggregateLocalPartValid5_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0031 :
    outsideAggregateLocalPartValid5_0031 outsideHistoryChunk0031 := by
  unfold outsideAggregateLocalPartValid5_0031 outsideHistoryChunk0031
  decide

def outsideAggregateMarkerPartValid5_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 32384
  | _ => True

theorem outsideAggregateMarkerPart5_0031 :
    outsideAggregateMarkerPartValid5_0031 outsideHistoryChunk0031 := by
  unfold outsideAggregateMarkerPartValid5_0031 outsideHistoryChunk0031
  decide

def outsideAggregateLocalPartValid6_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0031 :
    outsideAggregateLocalPartValid6_0031 outsideHistoryChunk0031 := by
  unfold outsideAggregateLocalPartValid6_0031 outsideHistoryChunk0031
  decide

def outsideAggregateMarkerPartValid6_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 32512
  | _ => True

theorem outsideAggregateMarkerPart6_0031 :
    outsideAggregateMarkerPartValid6_0031 outsideHistoryChunk0031 := by
  unfold outsideAggregateMarkerPartValid6_0031 outsideHistoryChunk0031
  decide

def outsideAggregateLocalPartValid7_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0031 :
    outsideAggregateLocalPartValid7_0031 outsideHistoryChunk0031 := by
  unfold outsideAggregateLocalPartValid7_0031 outsideHistoryChunk0031
  decide

def outsideAggregateMarkerPartValid7_0031 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 32640
  | _ => True

theorem outsideAggregateMarkerPart7_0031 :
    outsideAggregateMarkerPartValid7_0031 outsideHistoryChunk0031 := by
  unfold outsideAggregateMarkerPartValid7_0031 outsideHistoryChunk0031
  decide

theorem outsideRange_0031 :
    outsideHistoryChunk0031.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 31744 := by
  have hl0 := outsideAggregateLocalPart0_0031
  simp only [outsideAggregateLocalPartValid0_0031, outsideHistoryChunk0031] at hl0
  have hl1 := outsideAggregateLocalPart1_0031
  simp only [outsideAggregateLocalPartValid1_0031, outsideHistoryChunk0031] at hl1
  have hl2 := outsideAggregateLocalPart2_0031
  simp only [outsideAggregateLocalPartValid2_0031, outsideHistoryChunk0031] at hl2
  have hl3 := outsideAggregateLocalPart3_0031
  simp only [outsideAggregateLocalPartValid3_0031, outsideHistoryChunk0031] at hl3
  have hl4 := outsideAggregateLocalPart4_0031
  simp only [outsideAggregateLocalPartValid4_0031, outsideHistoryChunk0031] at hl4
  have hl5 := outsideAggregateLocalPart5_0031
  simp only [outsideAggregateLocalPartValid5_0031, outsideHistoryChunk0031] at hl5
  have hl6 := outsideAggregateLocalPart6_0031
  simp only [outsideAggregateLocalPartValid6_0031, outsideHistoryChunk0031] at hl6
  have hl7 := outsideAggregateLocalPart7_0031
  simp only [outsideAggregateLocalPartValid7_0031, outsideHistoryChunk0031] at hl7
  have hm0 := outsideAggregateMarkerPart0_0031
  simp only [outsideAggregateMarkerPartValid0_0031, outsideHistoryChunk0031] at hm0
  have hm1 := outsideAggregateMarkerPart1_0031
  simp only [outsideAggregateMarkerPartValid1_0031, outsideHistoryChunk0031] at hm1
  have hm2 := outsideAggregateMarkerPart2_0031
  simp only [outsideAggregateMarkerPartValid2_0031, outsideHistoryChunk0031] at hm2
  have hm3 := outsideAggregateMarkerPart3_0031
  simp only [outsideAggregateMarkerPartValid3_0031, outsideHistoryChunk0031] at hm3
  have hm4 := outsideAggregateMarkerPart4_0031
  simp only [outsideAggregateMarkerPartValid4_0031, outsideHistoryChunk0031] at hm4
  have hm5 := outsideAggregateMarkerPart5_0031
  simp only [outsideAggregateMarkerPartValid5_0031, outsideHistoryChunk0031] at hm5
  have hm6 := outsideAggregateMarkerPart6_0031
  simp only [outsideAggregateMarkerPartValid6_0031, outsideHistoryChunk0031] at hm6
  have hm7 := outsideAggregateMarkerPart7_0031
  simp only [outsideAggregateMarkerPartValid7_0031, outsideHistoryChunk0031] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0031
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0031
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
