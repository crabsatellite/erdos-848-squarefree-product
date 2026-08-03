import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0024
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0025
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0026
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0027

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0024, 0025, 0026, 0027 -/

def outsideAggregateLocalPartValid0_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0024 :
    outsideAggregateLocalPartValid0_0024 outsideHistoryChunk0024 := by
  unfold outsideAggregateLocalPartValid0_0024 outsideHistoryChunk0024
  decide

def outsideAggregateMarkerPartValid0_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 24576
  | _ => True

theorem outsideAggregateMarkerPart0_0024 :
    outsideAggregateMarkerPartValid0_0024 outsideHistoryChunk0024 := by
  unfold outsideAggregateMarkerPartValid0_0024 outsideHistoryChunk0024
  decide

def outsideAggregateLocalPartValid1_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0024 :
    outsideAggregateLocalPartValid1_0024 outsideHistoryChunk0024 := by
  unfold outsideAggregateLocalPartValid1_0024 outsideHistoryChunk0024
  decide

def outsideAggregateMarkerPartValid1_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 24704
  | _ => True

theorem outsideAggregateMarkerPart1_0024 :
    outsideAggregateMarkerPartValid1_0024 outsideHistoryChunk0024 := by
  unfold outsideAggregateMarkerPartValid1_0024 outsideHistoryChunk0024
  decide

def outsideAggregateLocalPartValid2_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0024 :
    outsideAggregateLocalPartValid2_0024 outsideHistoryChunk0024 := by
  unfold outsideAggregateLocalPartValid2_0024 outsideHistoryChunk0024
  decide

def outsideAggregateMarkerPartValid2_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 24832
  | _ => True

theorem outsideAggregateMarkerPart2_0024 :
    outsideAggregateMarkerPartValid2_0024 outsideHistoryChunk0024 := by
  unfold outsideAggregateMarkerPartValid2_0024 outsideHistoryChunk0024
  decide

def outsideAggregateLocalPartValid3_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0024 :
    outsideAggregateLocalPartValid3_0024 outsideHistoryChunk0024 := by
  unfold outsideAggregateLocalPartValid3_0024 outsideHistoryChunk0024
  decide

def outsideAggregateMarkerPartValid3_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 24960
  | _ => True

theorem outsideAggregateMarkerPart3_0024 :
    outsideAggregateMarkerPartValid3_0024 outsideHistoryChunk0024 := by
  unfold outsideAggregateMarkerPartValid3_0024 outsideHistoryChunk0024
  decide

def outsideAggregateLocalPartValid4_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0024 :
    outsideAggregateLocalPartValid4_0024 outsideHistoryChunk0024 := by
  unfold outsideAggregateLocalPartValid4_0024 outsideHistoryChunk0024
  decide

def outsideAggregateMarkerPartValid4_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 25088
  | _ => True

theorem outsideAggregateMarkerPart4_0024 :
    outsideAggregateMarkerPartValid4_0024 outsideHistoryChunk0024 := by
  unfold outsideAggregateMarkerPartValid4_0024 outsideHistoryChunk0024
  decide

def outsideAggregateLocalPartValid5_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0024 :
    outsideAggregateLocalPartValid5_0024 outsideHistoryChunk0024 := by
  unfold outsideAggregateLocalPartValid5_0024 outsideHistoryChunk0024
  decide

def outsideAggregateMarkerPartValid5_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 25216
  | _ => True

theorem outsideAggregateMarkerPart5_0024 :
    outsideAggregateMarkerPartValid5_0024 outsideHistoryChunk0024 := by
  unfold outsideAggregateMarkerPartValid5_0024 outsideHistoryChunk0024
  decide

def outsideAggregateLocalPartValid6_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0024 :
    outsideAggregateLocalPartValid6_0024 outsideHistoryChunk0024 := by
  unfold outsideAggregateLocalPartValid6_0024 outsideHistoryChunk0024
  decide

def outsideAggregateMarkerPartValid6_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 25344
  | _ => True

theorem outsideAggregateMarkerPart6_0024 :
    outsideAggregateMarkerPartValid6_0024 outsideHistoryChunk0024 := by
  unfold outsideAggregateMarkerPartValid6_0024 outsideHistoryChunk0024
  decide

def outsideAggregateLocalPartValid7_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0024 :
    outsideAggregateLocalPartValid7_0024 outsideHistoryChunk0024 := by
  unfold outsideAggregateLocalPartValid7_0024 outsideHistoryChunk0024
  decide

def outsideAggregateMarkerPartValid7_0024 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 25472
  | _ => True

theorem outsideAggregateMarkerPart7_0024 :
    outsideAggregateMarkerPartValid7_0024 outsideHistoryChunk0024 := by
  unfold outsideAggregateMarkerPartValid7_0024 outsideHistoryChunk0024
  decide

theorem outsideRange_0024 :
    outsideHistoryChunk0024.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 24576 := by
  have hl0 := outsideAggregateLocalPart0_0024
  simp only [outsideAggregateLocalPartValid0_0024, outsideHistoryChunk0024] at hl0
  have hl1 := outsideAggregateLocalPart1_0024
  simp only [outsideAggregateLocalPartValid1_0024, outsideHistoryChunk0024] at hl1
  have hl2 := outsideAggregateLocalPart2_0024
  simp only [outsideAggregateLocalPartValid2_0024, outsideHistoryChunk0024] at hl2
  have hl3 := outsideAggregateLocalPart3_0024
  simp only [outsideAggregateLocalPartValid3_0024, outsideHistoryChunk0024] at hl3
  have hl4 := outsideAggregateLocalPart4_0024
  simp only [outsideAggregateLocalPartValid4_0024, outsideHistoryChunk0024] at hl4
  have hl5 := outsideAggregateLocalPart5_0024
  simp only [outsideAggregateLocalPartValid5_0024, outsideHistoryChunk0024] at hl5
  have hl6 := outsideAggregateLocalPart6_0024
  simp only [outsideAggregateLocalPartValid6_0024, outsideHistoryChunk0024] at hl6
  have hl7 := outsideAggregateLocalPart7_0024
  simp only [outsideAggregateLocalPartValid7_0024, outsideHistoryChunk0024] at hl7
  have hm0 := outsideAggregateMarkerPart0_0024
  simp only [outsideAggregateMarkerPartValid0_0024, outsideHistoryChunk0024] at hm0
  have hm1 := outsideAggregateMarkerPart1_0024
  simp only [outsideAggregateMarkerPartValid1_0024, outsideHistoryChunk0024] at hm1
  have hm2 := outsideAggregateMarkerPart2_0024
  simp only [outsideAggregateMarkerPartValid2_0024, outsideHistoryChunk0024] at hm2
  have hm3 := outsideAggregateMarkerPart3_0024
  simp only [outsideAggregateMarkerPartValid3_0024, outsideHistoryChunk0024] at hm3
  have hm4 := outsideAggregateMarkerPart4_0024
  simp only [outsideAggregateMarkerPartValid4_0024, outsideHistoryChunk0024] at hm4
  have hm5 := outsideAggregateMarkerPart5_0024
  simp only [outsideAggregateMarkerPartValid5_0024, outsideHistoryChunk0024] at hm5
  have hm6 := outsideAggregateMarkerPart6_0024
  simp only [outsideAggregateMarkerPartValid6_0024, outsideHistoryChunk0024] at hm6
  have hm7 := outsideAggregateMarkerPart7_0024
  simp only [outsideAggregateMarkerPartValid7_0024, outsideHistoryChunk0024] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0024
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0024
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0025 :
    outsideAggregateLocalPartValid0_0025 outsideHistoryChunk0025 := by
  unfold outsideAggregateLocalPartValid0_0025 outsideHistoryChunk0025
  decide

def outsideAggregateMarkerPartValid0_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 25600
  | _ => True

theorem outsideAggregateMarkerPart0_0025 :
    outsideAggregateMarkerPartValid0_0025 outsideHistoryChunk0025 := by
  unfold outsideAggregateMarkerPartValid0_0025 outsideHistoryChunk0025
  decide

def outsideAggregateLocalPartValid1_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0025 :
    outsideAggregateLocalPartValid1_0025 outsideHistoryChunk0025 := by
  unfold outsideAggregateLocalPartValid1_0025 outsideHistoryChunk0025
  decide

def outsideAggregateMarkerPartValid1_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 25728
  | _ => True

theorem outsideAggregateMarkerPart1_0025 :
    outsideAggregateMarkerPartValid1_0025 outsideHistoryChunk0025 := by
  unfold outsideAggregateMarkerPartValid1_0025 outsideHistoryChunk0025
  decide

def outsideAggregateLocalPartValid2_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0025 :
    outsideAggregateLocalPartValid2_0025 outsideHistoryChunk0025 := by
  unfold outsideAggregateLocalPartValid2_0025 outsideHistoryChunk0025
  decide

def outsideAggregateMarkerPartValid2_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 25856
  | _ => True

theorem outsideAggregateMarkerPart2_0025 :
    outsideAggregateMarkerPartValid2_0025 outsideHistoryChunk0025 := by
  unfold outsideAggregateMarkerPartValid2_0025 outsideHistoryChunk0025
  decide

def outsideAggregateLocalPartValid3_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0025 :
    outsideAggregateLocalPartValid3_0025 outsideHistoryChunk0025 := by
  unfold outsideAggregateLocalPartValid3_0025 outsideHistoryChunk0025
  decide

def outsideAggregateMarkerPartValid3_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 25984
  | _ => True

theorem outsideAggregateMarkerPart3_0025 :
    outsideAggregateMarkerPartValid3_0025 outsideHistoryChunk0025 := by
  unfold outsideAggregateMarkerPartValid3_0025 outsideHistoryChunk0025
  decide

def outsideAggregateLocalPartValid4_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0025 :
    outsideAggregateLocalPartValid4_0025 outsideHistoryChunk0025 := by
  unfold outsideAggregateLocalPartValid4_0025 outsideHistoryChunk0025
  decide

def outsideAggregateMarkerPartValid4_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 26112
  | _ => True

theorem outsideAggregateMarkerPart4_0025 :
    outsideAggregateMarkerPartValid4_0025 outsideHistoryChunk0025 := by
  unfold outsideAggregateMarkerPartValid4_0025 outsideHistoryChunk0025
  decide

def outsideAggregateLocalPartValid5_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0025 :
    outsideAggregateLocalPartValid5_0025 outsideHistoryChunk0025 := by
  unfold outsideAggregateLocalPartValid5_0025 outsideHistoryChunk0025
  decide

def outsideAggregateMarkerPartValid5_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 26240
  | _ => True

theorem outsideAggregateMarkerPart5_0025 :
    outsideAggregateMarkerPartValid5_0025 outsideHistoryChunk0025 := by
  unfold outsideAggregateMarkerPartValid5_0025 outsideHistoryChunk0025
  decide

def outsideAggregateLocalPartValid6_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0025 :
    outsideAggregateLocalPartValid6_0025 outsideHistoryChunk0025 := by
  unfold outsideAggregateLocalPartValid6_0025 outsideHistoryChunk0025
  decide

def outsideAggregateMarkerPartValid6_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 26368
  | _ => True

theorem outsideAggregateMarkerPart6_0025 :
    outsideAggregateMarkerPartValid6_0025 outsideHistoryChunk0025 := by
  unfold outsideAggregateMarkerPartValid6_0025 outsideHistoryChunk0025
  decide

def outsideAggregateLocalPartValid7_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0025 :
    outsideAggregateLocalPartValid7_0025 outsideHistoryChunk0025 := by
  unfold outsideAggregateLocalPartValid7_0025 outsideHistoryChunk0025
  decide

def outsideAggregateMarkerPartValid7_0025 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 26496
  | _ => True

theorem outsideAggregateMarkerPart7_0025 :
    outsideAggregateMarkerPartValid7_0025 outsideHistoryChunk0025 := by
  unfold outsideAggregateMarkerPartValid7_0025 outsideHistoryChunk0025
  decide

theorem outsideRange_0025 :
    outsideHistoryChunk0025.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 25600 := by
  have hl0 := outsideAggregateLocalPart0_0025
  simp only [outsideAggregateLocalPartValid0_0025, outsideHistoryChunk0025] at hl0
  have hl1 := outsideAggregateLocalPart1_0025
  simp only [outsideAggregateLocalPartValid1_0025, outsideHistoryChunk0025] at hl1
  have hl2 := outsideAggregateLocalPart2_0025
  simp only [outsideAggregateLocalPartValid2_0025, outsideHistoryChunk0025] at hl2
  have hl3 := outsideAggregateLocalPart3_0025
  simp only [outsideAggregateLocalPartValid3_0025, outsideHistoryChunk0025] at hl3
  have hl4 := outsideAggregateLocalPart4_0025
  simp only [outsideAggregateLocalPartValid4_0025, outsideHistoryChunk0025] at hl4
  have hl5 := outsideAggregateLocalPart5_0025
  simp only [outsideAggregateLocalPartValid5_0025, outsideHistoryChunk0025] at hl5
  have hl6 := outsideAggregateLocalPart6_0025
  simp only [outsideAggregateLocalPartValid6_0025, outsideHistoryChunk0025] at hl6
  have hl7 := outsideAggregateLocalPart7_0025
  simp only [outsideAggregateLocalPartValid7_0025, outsideHistoryChunk0025] at hl7
  have hm0 := outsideAggregateMarkerPart0_0025
  simp only [outsideAggregateMarkerPartValid0_0025, outsideHistoryChunk0025] at hm0
  have hm1 := outsideAggregateMarkerPart1_0025
  simp only [outsideAggregateMarkerPartValid1_0025, outsideHistoryChunk0025] at hm1
  have hm2 := outsideAggregateMarkerPart2_0025
  simp only [outsideAggregateMarkerPartValid2_0025, outsideHistoryChunk0025] at hm2
  have hm3 := outsideAggregateMarkerPart3_0025
  simp only [outsideAggregateMarkerPartValid3_0025, outsideHistoryChunk0025] at hm3
  have hm4 := outsideAggregateMarkerPart4_0025
  simp only [outsideAggregateMarkerPartValid4_0025, outsideHistoryChunk0025] at hm4
  have hm5 := outsideAggregateMarkerPart5_0025
  simp only [outsideAggregateMarkerPartValid5_0025, outsideHistoryChunk0025] at hm5
  have hm6 := outsideAggregateMarkerPart6_0025
  simp only [outsideAggregateMarkerPartValid6_0025, outsideHistoryChunk0025] at hm6
  have hm7 := outsideAggregateMarkerPart7_0025
  simp only [outsideAggregateMarkerPartValid7_0025, outsideHistoryChunk0025] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0025
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0025
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0026 :
    outsideAggregateLocalPartValid0_0026 outsideHistoryChunk0026 := by
  unfold outsideAggregateLocalPartValid0_0026 outsideHistoryChunk0026
  decide

def outsideAggregateMarkerPartValid0_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 26624
  | _ => True

theorem outsideAggregateMarkerPart0_0026 :
    outsideAggregateMarkerPartValid0_0026 outsideHistoryChunk0026 := by
  unfold outsideAggregateMarkerPartValid0_0026 outsideHistoryChunk0026
  decide

def outsideAggregateLocalPartValid1_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0026 :
    outsideAggregateLocalPartValid1_0026 outsideHistoryChunk0026 := by
  unfold outsideAggregateLocalPartValid1_0026 outsideHistoryChunk0026
  decide

def outsideAggregateMarkerPartValid1_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 26752
  | _ => True

theorem outsideAggregateMarkerPart1_0026 :
    outsideAggregateMarkerPartValid1_0026 outsideHistoryChunk0026 := by
  unfold outsideAggregateMarkerPartValid1_0026 outsideHistoryChunk0026
  decide

def outsideAggregateLocalPartValid2_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0026 :
    outsideAggregateLocalPartValid2_0026 outsideHistoryChunk0026 := by
  unfold outsideAggregateLocalPartValid2_0026 outsideHistoryChunk0026
  decide

def outsideAggregateMarkerPartValid2_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 26880
  | _ => True

theorem outsideAggregateMarkerPart2_0026 :
    outsideAggregateMarkerPartValid2_0026 outsideHistoryChunk0026 := by
  unfold outsideAggregateMarkerPartValid2_0026 outsideHistoryChunk0026
  decide

def outsideAggregateLocalPartValid3_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0026 :
    outsideAggregateLocalPartValid3_0026 outsideHistoryChunk0026 := by
  unfold outsideAggregateLocalPartValid3_0026 outsideHistoryChunk0026
  decide

def outsideAggregateMarkerPartValid3_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 27008
  | _ => True

theorem outsideAggregateMarkerPart3_0026 :
    outsideAggregateMarkerPartValid3_0026 outsideHistoryChunk0026 := by
  unfold outsideAggregateMarkerPartValid3_0026 outsideHistoryChunk0026
  decide

def outsideAggregateLocalPartValid4_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0026 :
    outsideAggregateLocalPartValid4_0026 outsideHistoryChunk0026 := by
  unfold outsideAggregateLocalPartValid4_0026 outsideHistoryChunk0026
  decide

def outsideAggregateMarkerPartValid4_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 27136
  | _ => True

theorem outsideAggregateMarkerPart4_0026 :
    outsideAggregateMarkerPartValid4_0026 outsideHistoryChunk0026 := by
  unfold outsideAggregateMarkerPartValid4_0026 outsideHistoryChunk0026
  decide

def outsideAggregateLocalPartValid5_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0026 :
    outsideAggregateLocalPartValid5_0026 outsideHistoryChunk0026 := by
  unfold outsideAggregateLocalPartValid5_0026 outsideHistoryChunk0026
  decide

def outsideAggregateMarkerPartValid5_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 27264
  | _ => True

theorem outsideAggregateMarkerPart5_0026 :
    outsideAggregateMarkerPartValid5_0026 outsideHistoryChunk0026 := by
  unfold outsideAggregateMarkerPartValid5_0026 outsideHistoryChunk0026
  decide

def outsideAggregateLocalPartValid6_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0026 :
    outsideAggregateLocalPartValid6_0026 outsideHistoryChunk0026 := by
  unfold outsideAggregateLocalPartValid6_0026 outsideHistoryChunk0026
  decide

def outsideAggregateMarkerPartValid6_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 27392
  | _ => True

theorem outsideAggregateMarkerPart6_0026 :
    outsideAggregateMarkerPartValid6_0026 outsideHistoryChunk0026 := by
  unfold outsideAggregateMarkerPartValid6_0026 outsideHistoryChunk0026
  decide

def outsideAggregateLocalPartValid7_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0026 :
    outsideAggregateLocalPartValid7_0026 outsideHistoryChunk0026 := by
  unfold outsideAggregateLocalPartValid7_0026 outsideHistoryChunk0026
  decide

def outsideAggregateMarkerPartValid7_0026 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 27520
  | _ => True

theorem outsideAggregateMarkerPart7_0026 :
    outsideAggregateMarkerPartValid7_0026 outsideHistoryChunk0026 := by
  unfold outsideAggregateMarkerPartValid7_0026 outsideHistoryChunk0026
  decide

theorem outsideRange_0026 :
    outsideHistoryChunk0026.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 26624 := by
  have hl0 := outsideAggregateLocalPart0_0026
  simp only [outsideAggregateLocalPartValid0_0026, outsideHistoryChunk0026] at hl0
  have hl1 := outsideAggregateLocalPart1_0026
  simp only [outsideAggregateLocalPartValid1_0026, outsideHistoryChunk0026] at hl1
  have hl2 := outsideAggregateLocalPart2_0026
  simp only [outsideAggregateLocalPartValid2_0026, outsideHistoryChunk0026] at hl2
  have hl3 := outsideAggregateLocalPart3_0026
  simp only [outsideAggregateLocalPartValid3_0026, outsideHistoryChunk0026] at hl3
  have hl4 := outsideAggregateLocalPart4_0026
  simp only [outsideAggregateLocalPartValid4_0026, outsideHistoryChunk0026] at hl4
  have hl5 := outsideAggregateLocalPart5_0026
  simp only [outsideAggregateLocalPartValid5_0026, outsideHistoryChunk0026] at hl5
  have hl6 := outsideAggregateLocalPart6_0026
  simp only [outsideAggregateLocalPartValid6_0026, outsideHistoryChunk0026] at hl6
  have hl7 := outsideAggregateLocalPart7_0026
  simp only [outsideAggregateLocalPartValid7_0026, outsideHistoryChunk0026] at hl7
  have hm0 := outsideAggregateMarkerPart0_0026
  simp only [outsideAggregateMarkerPartValid0_0026, outsideHistoryChunk0026] at hm0
  have hm1 := outsideAggregateMarkerPart1_0026
  simp only [outsideAggregateMarkerPartValid1_0026, outsideHistoryChunk0026] at hm1
  have hm2 := outsideAggregateMarkerPart2_0026
  simp only [outsideAggregateMarkerPartValid2_0026, outsideHistoryChunk0026] at hm2
  have hm3 := outsideAggregateMarkerPart3_0026
  simp only [outsideAggregateMarkerPartValid3_0026, outsideHistoryChunk0026] at hm3
  have hm4 := outsideAggregateMarkerPart4_0026
  simp only [outsideAggregateMarkerPartValid4_0026, outsideHistoryChunk0026] at hm4
  have hm5 := outsideAggregateMarkerPart5_0026
  simp only [outsideAggregateMarkerPartValid5_0026, outsideHistoryChunk0026] at hm5
  have hm6 := outsideAggregateMarkerPart6_0026
  simp only [outsideAggregateMarkerPartValid6_0026, outsideHistoryChunk0026] at hm6
  have hm7 := outsideAggregateMarkerPart7_0026
  simp only [outsideAggregateMarkerPartValid7_0026, outsideHistoryChunk0026] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0026
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0026
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0027 :
    outsideAggregateLocalPartValid0_0027 outsideHistoryChunk0027 := by
  unfold outsideAggregateLocalPartValid0_0027 outsideHistoryChunk0027
  decide

def outsideAggregateMarkerPartValid0_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 27648
  | _ => True

theorem outsideAggregateMarkerPart0_0027 :
    outsideAggregateMarkerPartValid0_0027 outsideHistoryChunk0027 := by
  unfold outsideAggregateMarkerPartValid0_0027 outsideHistoryChunk0027
  decide

def outsideAggregateLocalPartValid1_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0027 :
    outsideAggregateLocalPartValid1_0027 outsideHistoryChunk0027 := by
  unfold outsideAggregateLocalPartValid1_0027 outsideHistoryChunk0027
  decide

def outsideAggregateMarkerPartValid1_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 27776
  | _ => True

theorem outsideAggregateMarkerPart1_0027 :
    outsideAggregateMarkerPartValid1_0027 outsideHistoryChunk0027 := by
  unfold outsideAggregateMarkerPartValid1_0027 outsideHistoryChunk0027
  decide

def outsideAggregateLocalPartValid2_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0027 :
    outsideAggregateLocalPartValid2_0027 outsideHistoryChunk0027 := by
  unfold outsideAggregateLocalPartValid2_0027 outsideHistoryChunk0027
  decide

def outsideAggregateMarkerPartValid2_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 27904
  | _ => True

theorem outsideAggregateMarkerPart2_0027 :
    outsideAggregateMarkerPartValid2_0027 outsideHistoryChunk0027 := by
  unfold outsideAggregateMarkerPartValid2_0027 outsideHistoryChunk0027
  decide

def outsideAggregateLocalPartValid3_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0027 :
    outsideAggregateLocalPartValid3_0027 outsideHistoryChunk0027 := by
  unfold outsideAggregateLocalPartValid3_0027 outsideHistoryChunk0027
  decide

def outsideAggregateMarkerPartValid3_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 28032
  | _ => True

theorem outsideAggregateMarkerPart3_0027 :
    outsideAggregateMarkerPartValid3_0027 outsideHistoryChunk0027 := by
  unfold outsideAggregateMarkerPartValid3_0027 outsideHistoryChunk0027
  decide

def outsideAggregateLocalPartValid4_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0027 :
    outsideAggregateLocalPartValid4_0027 outsideHistoryChunk0027 := by
  unfold outsideAggregateLocalPartValid4_0027 outsideHistoryChunk0027
  decide

def outsideAggregateMarkerPartValid4_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 28160
  | _ => True

theorem outsideAggregateMarkerPart4_0027 :
    outsideAggregateMarkerPartValid4_0027 outsideHistoryChunk0027 := by
  unfold outsideAggregateMarkerPartValid4_0027 outsideHistoryChunk0027
  decide

def outsideAggregateLocalPartValid5_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0027 :
    outsideAggregateLocalPartValid5_0027 outsideHistoryChunk0027 := by
  unfold outsideAggregateLocalPartValid5_0027 outsideHistoryChunk0027
  decide

def outsideAggregateMarkerPartValid5_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 28288
  | _ => True

theorem outsideAggregateMarkerPart5_0027 :
    outsideAggregateMarkerPartValid5_0027 outsideHistoryChunk0027 := by
  unfold outsideAggregateMarkerPartValid5_0027 outsideHistoryChunk0027
  decide

def outsideAggregateLocalPartValid6_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0027 :
    outsideAggregateLocalPartValid6_0027 outsideHistoryChunk0027 := by
  unfold outsideAggregateLocalPartValid6_0027 outsideHistoryChunk0027
  decide

def outsideAggregateMarkerPartValid6_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 28416
  | _ => True

theorem outsideAggregateMarkerPart6_0027 :
    outsideAggregateMarkerPartValid6_0027 outsideHistoryChunk0027 := by
  unfold outsideAggregateMarkerPartValid6_0027 outsideHistoryChunk0027
  decide

def outsideAggregateLocalPartValid7_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0027 :
    outsideAggregateLocalPartValid7_0027 outsideHistoryChunk0027 := by
  unfold outsideAggregateLocalPartValid7_0027 outsideHistoryChunk0027
  decide

def outsideAggregateMarkerPartValid7_0027 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 28544
  | _ => True

theorem outsideAggregateMarkerPart7_0027 :
    outsideAggregateMarkerPartValid7_0027 outsideHistoryChunk0027 := by
  unfold outsideAggregateMarkerPartValid7_0027 outsideHistoryChunk0027
  decide

theorem outsideRange_0027 :
    outsideHistoryChunk0027.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 27648 := by
  have hl0 := outsideAggregateLocalPart0_0027
  simp only [outsideAggregateLocalPartValid0_0027, outsideHistoryChunk0027] at hl0
  have hl1 := outsideAggregateLocalPart1_0027
  simp only [outsideAggregateLocalPartValid1_0027, outsideHistoryChunk0027] at hl1
  have hl2 := outsideAggregateLocalPart2_0027
  simp only [outsideAggregateLocalPartValid2_0027, outsideHistoryChunk0027] at hl2
  have hl3 := outsideAggregateLocalPart3_0027
  simp only [outsideAggregateLocalPartValid3_0027, outsideHistoryChunk0027] at hl3
  have hl4 := outsideAggregateLocalPart4_0027
  simp only [outsideAggregateLocalPartValid4_0027, outsideHistoryChunk0027] at hl4
  have hl5 := outsideAggregateLocalPart5_0027
  simp only [outsideAggregateLocalPartValid5_0027, outsideHistoryChunk0027] at hl5
  have hl6 := outsideAggregateLocalPart6_0027
  simp only [outsideAggregateLocalPartValid6_0027, outsideHistoryChunk0027] at hl6
  have hl7 := outsideAggregateLocalPart7_0027
  simp only [outsideAggregateLocalPartValid7_0027, outsideHistoryChunk0027] at hl7
  have hm0 := outsideAggregateMarkerPart0_0027
  simp only [outsideAggregateMarkerPartValid0_0027, outsideHistoryChunk0027] at hm0
  have hm1 := outsideAggregateMarkerPart1_0027
  simp only [outsideAggregateMarkerPartValid1_0027, outsideHistoryChunk0027] at hm1
  have hm2 := outsideAggregateMarkerPart2_0027
  simp only [outsideAggregateMarkerPartValid2_0027, outsideHistoryChunk0027] at hm2
  have hm3 := outsideAggregateMarkerPart3_0027
  simp only [outsideAggregateMarkerPartValid3_0027, outsideHistoryChunk0027] at hm3
  have hm4 := outsideAggregateMarkerPart4_0027
  simp only [outsideAggregateMarkerPartValid4_0027, outsideHistoryChunk0027] at hm4
  have hm5 := outsideAggregateMarkerPart5_0027
  simp only [outsideAggregateMarkerPartValid5_0027, outsideHistoryChunk0027] at hm5
  have hm6 := outsideAggregateMarkerPart6_0027
  simp only [outsideAggregateMarkerPartValid6_0027, outsideHistoryChunk0027] at hm6
  have hm7 := outsideAggregateMarkerPart7_0027
  simp only [outsideAggregateMarkerPartValid7_0027, outsideHistoryChunk0027] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0027
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0027
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
