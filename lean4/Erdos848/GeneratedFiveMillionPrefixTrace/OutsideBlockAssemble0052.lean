import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0052
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0053
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0054
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0055

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0052, 0053, 0054, 0055 -/

def outsideAggregateLocalPartValid0_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0052 :
    outsideAggregateLocalPartValid0_0052 outsideHistoryChunk0052 := by
  unfold outsideAggregateLocalPartValid0_0052 outsideHistoryChunk0052
  decide

def outsideAggregateMarkerPartValid0_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 53248
  | _ => True

theorem outsideAggregateMarkerPart0_0052 :
    outsideAggregateMarkerPartValid0_0052 outsideHistoryChunk0052 := by
  unfold outsideAggregateMarkerPartValid0_0052 outsideHistoryChunk0052
  decide

def outsideAggregateLocalPartValid1_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0052 :
    outsideAggregateLocalPartValid1_0052 outsideHistoryChunk0052 := by
  unfold outsideAggregateLocalPartValid1_0052 outsideHistoryChunk0052
  decide

def outsideAggregateMarkerPartValid1_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 53376
  | _ => True

theorem outsideAggregateMarkerPart1_0052 :
    outsideAggregateMarkerPartValid1_0052 outsideHistoryChunk0052 := by
  unfold outsideAggregateMarkerPartValid1_0052 outsideHistoryChunk0052
  decide

def outsideAggregateLocalPartValid2_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0052 :
    outsideAggregateLocalPartValid2_0052 outsideHistoryChunk0052 := by
  unfold outsideAggregateLocalPartValid2_0052 outsideHistoryChunk0052
  decide

def outsideAggregateMarkerPartValid2_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 53504
  | _ => True

theorem outsideAggregateMarkerPart2_0052 :
    outsideAggregateMarkerPartValid2_0052 outsideHistoryChunk0052 := by
  unfold outsideAggregateMarkerPartValid2_0052 outsideHistoryChunk0052
  decide

def outsideAggregateLocalPartValid3_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0052 :
    outsideAggregateLocalPartValid3_0052 outsideHistoryChunk0052 := by
  unfold outsideAggregateLocalPartValid3_0052 outsideHistoryChunk0052
  decide

def outsideAggregateMarkerPartValid3_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 53632
  | _ => True

theorem outsideAggregateMarkerPart3_0052 :
    outsideAggregateMarkerPartValid3_0052 outsideHistoryChunk0052 := by
  unfold outsideAggregateMarkerPartValid3_0052 outsideHistoryChunk0052
  decide

def outsideAggregateLocalPartValid4_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0052 :
    outsideAggregateLocalPartValid4_0052 outsideHistoryChunk0052 := by
  unfold outsideAggregateLocalPartValid4_0052 outsideHistoryChunk0052
  decide

def outsideAggregateMarkerPartValid4_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 53760
  | _ => True

theorem outsideAggregateMarkerPart4_0052 :
    outsideAggregateMarkerPartValid4_0052 outsideHistoryChunk0052 := by
  unfold outsideAggregateMarkerPartValid4_0052 outsideHistoryChunk0052
  decide

def outsideAggregateLocalPartValid5_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0052 :
    outsideAggregateLocalPartValid5_0052 outsideHistoryChunk0052 := by
  unfold outsideAggregateLocalPartValid5_0052 outsideHistoryChunk0052
  decide

def outsideAggregateMarkerPartValid5_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 53888
  | _ => True

theorem outsideAggregateMarkerPart5_0052 :
    outsideAggregateMarkerPartValid5_0052 outsideHistoryChunk0052 := by
  unfold outsideAggregateMarkerPartValid5_0052 outsideHistoryChunk0052
  decide

def outsideAggregateLocalPartValid6_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0052 :
    outsideAggregateLocalPartValid6_0052 outsideHistoryChunk0052 := by
  unfold outsideAggregateLocalPartValid6_0052 outsideHistoryChunk0052
  decide

def outsideAggregateMarkerPartValid6_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 54016
  | _ => True

theorem outsideAggregateMarkerPart6_0052 :
    outsideAggregateMarkerPartValid6_0052 outsideHistoryChunk0052 := by
  unfold outsideAggregateMarkerPartValid6_0052 outsideHistoryChunk0052
  decide

def outsideAggregateLocalPartValid7_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0052 :
    outsideAggregateLocalPartValid7_0052 outsideHistoryChunk0052 := by
  unfold outsideAggregateLocalPartValid7_0052 outsideHistoryChunk0052
  decide

def outsideAggregateMarkerPartValid7_0052 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 54144
  | _ => True

theorem outsideAggregateMarkerPart7_0052 :
    outsideAggregateMarkerPartValid7_0052 outsideHistoryChunk0052 := by
  unfold outsideAggregateMarkerPartValid7_0052 outsideHistoryChunk0052
  decide

theorem outsideRange_0052 :
    outsideHistoryChunk0052.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 53248 := by
  have hl0 := outsideAggregateLocalPart0_0052
  simp only [outsideAggregateLocalPartValid0_0052, outsideHistoryChunk0052] at hl0
  have hl1 := outsideAggregateLocalPart1_0052
  simp only [outsideAggregateLocalPartValid1_0052, outsideHistoryChunk0052] at hl1
  have hl2 := outsideAggregateLocalPart2_0052
  simp only [outsideAggregateLocalPartValid2_0052, outsideHistoryChunk0052] at hl2
  have hl3 := outsideAggregateLocalPart3_0052
  simp only [outsideAggregateLocalPartValid3_0052, outsideHistoryChunk0052] at hl3
  have hl4 := outsideAggregateLocalPart4_0052
  simp only [outsideAggregateLocalPartValid4_0052, outsideHistoryChunk0052] at hl4
  have hl5 := outsideAggregateLocalPart5_0052
  simp only [outsideAggregateLocalPartValid5_0052, outsideHistoryChunk0052] at hl5
  have hl6 := outsideAggregateLocalPart6_0052
  simp only [outsideAggregateLocalPartValid6_0052, outsideHistoryChunk0052] at hl6
  have hl7 := outsideAggregateLocalPart7_0052
  simp only [outsideAggregateLocalPartValid7_0052, outsideHistoryChunk0052] at hl7
  have hm0 := outsideAggregateMarkerPart0_0052
  simp only [outsideAggregateMarkerPartValid0_0052, outsideHistoryChunk0052] at hm0
  have hm1 := outsideAggregateMarkerPart1_0052
  simp only [outsideAggregateMarkerPartValid1_0052, outsideHistoryChunk0052] at hm1
  have hm2 := outsideAggregateMarkerPart2_0052
  simp only [outsideAggregateMarkerPartValid2_0052, outsideHistoryChunk0052] at hm2
  have hm3 := outsideAggregateMarkerPart3_0052
  simp only [outsideAggregateMarkerPartValid3_0052, outsideHistoryChunk0052] at hm3
  have hm4 := outsideAggregateMarkerPart4_0052
  simp only [outsideAggregateMarkerPartValid4_0052, outsideHistoryChunk0052] at hm4
  have hm5 := outsideAggregateMarkerPart5_0052
  simp only [outsideAggregateMarkerPartValid5_0052, outsideHistoryChunk0052] at hm5
  have hm6 := outsideAggregateMarkerPart6_0052
  simp only [outsideAggregateMarkerPartValid6_0052, outsideHistoryChunk0052] at hm6
  have hm7 := outsideAggregateMarkerPart7_0052
  simp only [outsideAggregateMarkerPartValid7_0052, outsideHistoryChunk0052] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0052
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0052
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0053 :
    outsideAggregateLocalPartValid0_0053 outsideHistoryChunk0053 := by
  unfold outsideAggregateLocalPartValid0_0053 outsideHistoryChunk0053
  decide

def outsideAggregateMarkerPartValid0_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 54272
  | _ => True

theorem outsideAggregateMarkerPart0_0053 :
    outsideAggregateMarkerPartValid0_0053 outsideHistoryChunk0053 := by
  unfold outsideAggregateMarkerPartValid0_0053 outsideHistoryChunk0053
  decide

def outsideAggregateLocalPartValid1_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0053 :
    outsideAggregateLocalPartValid1_0053 outsideHistoryChunk0053 := by
  unfold outsideAggregateLocalPartValid1_0053 outsideHistoryChunk0053
  decide

def outsideAggregateMarkerPartValid1_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 54400
  | _ => True

theorem outsideAggregateMarkerPart1_0053 :
    outsideAggregateMarkerPartValid1_0053 outsideHistoryChunk0053 := by
  unfold outsideAggregateMarkerPartValid1_0053 outsideHistoryChunk0053
  decide

def outsideAggregateLocalPartValid2_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0053 :
    outsideAggregateLocalPartValid2_0053 outsideHistoryChunk0053 := by
  unfold outsideAggregateLocalPartValid2_0053 outsideHistoryChunk0053
  decide

def outsideAggregateMarkerPartValid2_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 54528
  | _ => True

theorem outsideAggregateMarkerPart2_0053 :
    outsideAggregateMarkerPartValid2_0053 outsideHistoryChunk0053 := by
  unfold outsideAggregateMarkerPartValid2_0053 outsideHistoryChunk0053
  decide

def outsideAggregateLocalPartValid3_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0053 :
    outsideAggregateLocalPartValid3_0053 outsideHistoryChunk0053 := by
  unfold outsideAggregateLocalPartValid3_0053 outsideHistoryChunk0053
  decide

def outsideAggregateMarkerPartValid3_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 54656
  | _ => True

theorem outsideAggregateMarkerPart3_0053 :
    outsideAggregateMarkerPartValid3_0053 outsideHistoryChunk0053 := by
  unfold outsideAggregateMarkerPartValid3_0053 outsideHistoryChunk0053
  decide

def outsideAggregateLocalPartValid4_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0053 :
    outsideAggregateLocalPartValid4_0053 outsideHistoryChunk0053 := by
  unfold outsideAggregateLocalPartValid4_0053 outsideHistoryChunk0053
  decide

def outsideAggregateMarkerPartValid4_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 54784
  | _ => True

theorem outsideAggregateMarkerPart4_0053 :
    outsideAggregateMarkerPartValid4_0053 outsideHistoryChunk0053 := by
  unfold outsideAggregateMarkerPartValid4_0053 outsideHistoryChunk0053
  decide

def outsideAggregateLocalPartValid5_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0053 :
    outsideAggregateLocalPartValid5_0053 outsideHistoryChunk0053 := by
  unfold outsideAggregateLocalPartValid5_0053 outsideHistoryChunk0053
  decide

def outsideAggregateMarkerPartValid5_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 54912
  | _ => True

theorem outsideAggregateMarkerPart5_0053 :
    outsideAggregateMarkerPartValid5_0053 outsideHistoryChunk0053 := by
  unfold outsideAggregateMarkerPartValid5_0053 outsideHistoryChunk0053
  decide

def outsideAggregateLocalPartValid6_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0053 :
    outsideAggregateLocalPartValid6_0053 outsideHistoryChunk0053 := by
  unfold outsideAggregateLocalPartValid6_0053 outsideHistoryChunk0053
  decide

def outsideAggregateMarkerPartValid6_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 55040
  | _ => True

theorem outsideAggregateMarkerPart6_0053 :
    outsideAggregateMarkerPartValid6_0053 outsideHistoryChunk0053 := by
  unfold outsideAggregateMarkerPartValid6_0053 outsideHistoryChunk0053
  decide

def outsideAggregateLocalPartValid7_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0053 :
    outsideAggregateLocalPartValid7_0053 outsideHistoryChunk0053 := by
  unfold outsideAggregateLocalPartValid7_0053 outsideHistoryChunk0053
  decide

def outsideAggregateMarkerPartValid7_0053 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 55168
  | _ => True

theorem outsideAggregateMarkerPart7_0053 :
    outsideAggregateMarkerPartValid7_0053 outsideHistoryChunk0053 := by
  unfold outsideAggregateMarkerPartValid7_0053 outsideHistoryChunk0053
  decide

theorem outsideRange_0053 :
    outsideHistoryChunk0053.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 54272 := by
  have hl0 := outsideAggregateLocalPart0_0053
  simp only [outsideAggregateLocalPartValid0_0053, outsideHistoryChunk0053] at hl0
  have hl1 := outsideAggregateLocalPart1_0053
  simp only [outsideAggregateLocalPartValid1_0053, outsideHistoryChunk0053] at hl1
  have hl2 := outsideAggregateLocalPart2_0053
  simp only [outsideAggregateLocalPartValid2_0053, outsideHistoryChunk0053] at hl2
  have hl3 := outsideAggregateLocalPart3_0053
  simp only [outsideAggregateLocalPartValid3_0053, outsideHistoryChunk0053] at hl3
  have hl4 := outsideAggregateLocalPart4_0053
  simp only [outsideAggregateLocalPartValid4_0053, outsideHistoryChunk0053] at hl4
  have hl5 := outsideAggregateLocalPart5_0053
  simp only [outsideAggregateLocalPartValid5_0053, outsideHistoryChunk0053] at hl5
  have hl6 := outsideAggregateLocalPart6_0053
  simp only [outsideAggregateLocalPartValid6_0053, outsideHistoryChunk0053] at hl6
  have hl7 := outsideAggregateLocalPart7_0053
  simp only [outsideAggregateLocalPartValid7_0053, outsideHistoryChunk0053] at hl7
  have hm0 := outsideAggregateMarkerPart0_0053
  simp only [outsideAggregateMarkerPartValid0_0053, outsideHistoryChunk0053] at hm0
  have hm1 := outsideAggregateMarkerPart1_0053
  simp only [outsideAggregateMarkerPartValid1_0053, outsideHistoryChunk0053] at hm1
  have hm2 := outsideAggregateMarkerPart2_0053
  simp only [outsideAggregateMarkerPartValid2_0053, outsideHistoryChunk0053] at hm2
  have hm3 := outsideAggregateMarkerPart3_0053
  simp only [outsideAggregateMarkerPartValid3_0053, outsideHistoryChunk0053] at hm3
  have hm4 := outsideAggregateMarkerPart4_0053
  simp only [outsideAggregateMarkerPartValid4_0053, outsideHistoryChunk0053] at hm4
  have hm5 := outsideAggregateMarkerPart5_0053
  simp only [outsideAggregateMarkerPartValid5_0053, outsideHistoryChunk0053] at hm5
  have hm6 := outsideAggregateMarkerPart6_0053
  simp only [outsideAggregateMarkerPartValid6_0053, outsideHistoryChunk0053] at hm6
  have hm7 := outsideAggregateMarkerPart7_0053
  simp only [outsideAggregateMarkerPartValid7_0053, outsideHistoryChunk0053] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0053
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0053
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0054 :
    outsideAggregateLocalPartValid0_0054 outsideHistoryChunk0054 := by
  unfold outsideAggregateLocalPartValid0_0054 outsideHistoryChunk0054
  decide

def outsideAggregateMarkerPartValid0_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 55296
  | _ => True

theorem outsideAggregateMarkerPart0_0054 :
    outsideAggregateMarkerPartValid0_0054 outsideHistoryChunk0054 := by
  unfold outsideAggregateMarkerPartValid0_0054 outsideHistoryChunk0054
  decide

def outsideAggregateLocalPartValid1_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0054 :
    outsideAggregateLocalPartValid1_0054 outsideHistoryChunk0054 := by
  unfold outsideAggregateLocalPartValid1_0054 outsideHistoryChunk0054
  decide

def outsideAggregateMarkerPartValid1_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 55424
  | _ => True

theorem outsideAggregateMarkerPart1_0054 :
    outsideAggregateMarkerPartValid1_0054 outsideHistoryChunk0054 := by
  unfold outsideAggregateMarkerPartValid1_0054 outsideHistoryChunk0054
  decide

def outsideAggregateLocalPartValid2_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0054 :
    outsideAggregateLocalPartValid2_0054 outsideHistoryChunk0054 := by
  unfold outsideAggregateLocalPartValid2_0054 outsideHistoryChunk0054
  decide

def outsideAggregateMarkerPartValid2_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 55552
  | _ => True

theorem outsideAggregateMarkerPart2_0054 :
    outsideAggregateMarkerPartValid2_0054 outsideHistoryChunk0054 := by
  unfold outsideAggregateMarkerPartValid2_0054 outsideHistoryChunk0054
  decide

def outsideAggregateLocalPartValid3_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0054 :
    outsideAggregateLocalPartValid3_0054 outsideHistoryChunk0054 := by
  unfold outsideAggregateLocalPartValid3_0054 outsideHistoryChunk0054
  decide

def outsideAggregateMarkerPartValid3_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 55680
  | _ => True

theorem outsideAggregateMarkerPart3_0054 :
    outsideAggregateMarkerPartValid3_0054 outsideHistoryChunk0054 := by
  unfold outsideAggregateMarkerPartValid3_0054 outsideHistoryChunk0054
  decide

def outsideAggregateLocalPartValid4_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0054 :
    outsideAggregateLocalPartValid4_0054 outsideHistoryChunk0054 := by
  unfold outsideAggregateLocalPartValid4_0054 outsideHistoryChunk0054
  decide

def outsideAggregateMarkerPartValid4_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 55808
  | _ => True

theorem outsideAggregateMarkerPart4_0054 :
    outsideAggregateMarkerPartValid4_0054 outsideHistoryChunk0054 := by
  unfold outsideAggregateMarkerPartValid4_0054 outsideHistoryChunk0054
  decide

def outsideAggregateLocalPartValid5_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0054 :
    outsideAggregateLocalPartValid5_0054 outsideHistoryChunk0054 := by
  unfold outsideAggregateLocalPartValid5_0054 outsideHistoryChunk0054
  decide

def outsideAggregateMarkerPartValid5_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 55936
  | _ => True

theorem outsideAggregateMarkerPart5_0054 :
    outsideAggregateMarkerPartValid5_0054 outsideHistoryChunk0054 := by
  unfold outsideAggregateMarkerPartValid5_0054 outsideHistoryChunk0054
  decide

def outsideAggregateLocalPartValid6_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0054 :
    outsideAggregateLocalPartValid6_0054 outsideHistoryChunk0054 := by
  unfold outsideAggregateLocalPartValid6_0054 outsideHistoryChunk0054
  decide

def outsideAggregateMarkerPartValid6_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 56064
  | _ => True

theorem outsideAggregateMarkerPart6_0054 :
    outsideAggregateMarkerPartValid6_0054 outsideHistoryChunk0054 := by
  unfold outsideAggregateMarkerPartValid6_0054 outsideHistoryChunk0054
  decide

def outsideAggregateLocalPartValid7_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0054 :
    outsideAggregateLocalPartValid7_0054 outsideHistoryChunk0054 := by
  unfold outsideAggregateLocalPartValid7_0054 outsideHistoryChunk0054
  decide

def outsideAggregateMarkerPartValid7_0054 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 56192
  | _ => True

theorem outsideAggregateMarkerPart7_0054 :
    outsideAggregateMarkerPartValid7_0054 outsideHistoryChunk0054 := by
  unfold outsideAggregateMarkerPartValid7_0054 outsideHistoryChunk0054
  decide

theorem outsideRange_0054 :
    outsideHistoryChunk0054.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 55296 := by
  have hl0 := outsideAggregateLocalPart0_0054
  simp only [outsideAggregateLocalPartValid0_0054, outsideHistoryChunk0054] at hl0
  have hl1 := outsideAggregateLocalPart1_0054
  simp only [outsideAggregateLocalPartValid1_0054, outsideHistoryChunk0054] at hl1
  have hl2 := outsideAggregateLocalPart2_0054
  simp only [outsideAggregateLocalPartValid2_0054, outsideHistoryChunk0054] at hl2
  have hl3 := outsideAggregateLocalPart3_0054
  simp only [outsideAggregateLocalPartValid3_0054, outsideHistoryChunk0054] at hl3
  have hl4 := outsideAggregateLocalPart4_0054
  simp only [outsideAggregateLocalPartValid4_0054, outsideHistoryChunk0054] at hl4
  have hl5 := outsideAggregateLocalPart5_0054
  simp only [outsideAggregateLocalPartValid5_0054, outsideHistoryChunk0054] at hl5
  have hl6 := outsideAggregateLocalPart6_0054
  simp only [outsideAggregateLocalPartValid6_0054, outsideHistoryChunk0054] at hl6
  have hl7 := outsideAggregateLocalPart7_0054
  simp only [outsideAggregateLocalPartValid7_0054, outsideHistoryChunk0054] at hl7
  have hm0 := outsideAggregateMarkerPart0_0054
  simp only [outsideAggregateMarkerPartValid0_0054, outsideHistoryChunk0054] at hm0
  have hm1 := outsideAggregateMarkerPart1_0054
  simp only [outsideAggregateMarkerPartValid1_0054, outsideHistoryChunk0054] at hm1
  have hm2 := outsideAggregateMarkerPart2_0054
  simp only [outsideAggregateMarkerPartValid2_0054, outsideHistoryChunk0054] at hm2
  have hm3 := outsideAggregateMarkerPart3_0054
  simp only [outsideAggregateMarkerPartValid3_0054, outsideHistoryChunk0054] at hm3
  have hm4 := outsideAggregateMarkerPart4_0054
  simp only [outsideAggregateMarkerPartValid4_0054, outsideHistoryChunk0054] at hm4
  have hm5 := outsideAggregateMarkerPart5_0054
  simp only [outsideAggregateMarkerPartValid5_0054, outsideHistoryChunk0054] at hm5
  have hm6 := outsideAggregateMarkerPart6_0054
  simp only [outsideAggregateMarkerPartValid6_0054, outsideHistoryChunk0054] at hm6
  have hm7 := outsideAggregateMarkerPart7_0054
  simp only [outsideAggregateMarkerPartValid7_0054, outsideHistoryChunk0054] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0054
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0054
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0055 :
    outsideAggregateLocalPartValid0_0055 outsideHistoryChunk0055 := by
  unfold outsideAggregateLocalPartValid0_0055 outsideHistoryChunk0055
  decide

def outsideAggregateMarkerPartValid0_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 56320
  | _ => True

theorem outsideAggregateMarkerPart0_0055 :
    outsideAggregateMarkerPartValid0_0055 outsideHistoryChunk0055 := by
  unfold outsideAggregateMarkerPartValid0_0055 outsideHistoryChunk0055
  decide

def outsideAggregateLocalPartValid1_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0055 :
    outsideAggregateLocalPartValid1_0055 outsideHistoryChunk0055 := by
  unfold outsideAggregateLocalPartValid1_0055 outsideHistoryChunk0055
  decide

def outsideAggregateMarkerPartValid1_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 56448
  | _ => True

theorem outsideAggregateMarkerPart1_0055 :
    outsideAggregateMarkerPartValid1_0055 outsideHistoryChunk0055 := by
  unfold outsideAggregateMarkerPartValid1_0055 outsideHistoryChunk0055
  decide

def outsideAggregateLocalPartValid2_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0055 :
    outsideAggregateLocalPartValid2_0055 outsideHistoryChunk0055 := by
  unfold outsideAggregateLocalPartValid2_0055 outsideHistoryChunk0055
  decide

def outsideAggregateMarkerPartValid2_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 56576
  | _ => True

theorem outsideAggregateMarkerPart2_0055 :
    outsideAggregateMarkerPartValid2_0055 outsideHistoryChunk0055 := by
  unfold outsideAggregateMarkerPartValid2_0055 outsideHistoryChunk0055
  decide

def outsideAggregateLocalPartValid3_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0055 :
    outsideAggregateLocalPartValid3_0055 outsideHistoryChunk0055 := by
  unfold outsideAggregateLocalPartValid3_0055 outsideHistoryChunk0055
  decide

def outsideAggregateMarkerPartValid3_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 56704
  | _ => True

theorem outsideAggregateMarkerPart3_0055 :
    outsideAggregateMarkerPartValid3_0055 outsideHistoryChunk0055 := by
  unfold outsideAggregateMarkerPartValid3_0055 outsideHistoryChunk0055
  decide

def outsideAggregateLocalPartValid4_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0055 :
    outsideAggregateLocalPartValid4_0055 outsideHistoryChunk0055 := by
  unfold outsideAggregateLocalPartValid4_0055 outsideHistoryChunk0055
  decide

def outsideAggregateMarkerPartValid4_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 56832
  | _ => True

theorem outsideAggregateMarkerPart4_0055 :
    outsideAggregateMarkerPartValid4_0055 outsideHistoryChunk0055 := by
  unfold outsideAggregateMarkerPartValid4_0055 outsideHistoryChunk0055
  decide

def outsideAggregateLocalPartValid5_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0055 :
    outsideAggregateLocalPartValid5_0055 outsideHistoryChunk0055 := by
  unfold outsideAggregateLocalPartValid5_0055 outsideHistoryChunk0055
  decide

def outsideAggregateMarkerPartValid5_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 56960
  | _ => True

theorem outsideAggregateMarkerPart5_0055 :
    outsideAggregateMarkerPartValid5_0055 outsideHistoryChunk0055 := by
  unfold outsideAggregateMarkerPartValid5_0055 outsideHistoryChunk0055
  decide

def outsideAggregateLocalPartValid6_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0055 :
    outsideAggregateLocalPartValid6_0055 outsideHistoryChunk0055 := by
  unfold outsideAggregateLocalPartValid6_0055 outsideHistoryChunk0055
  decide

def outsideAggregateMarkerPartValid6_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 57088
  | _ => True

theorem outsideAggregateMarkerPart6_0055 :
    outsideAggregateMarkerPartValid6_0055 outsideHistoryChunk0055 := by
  unfold outsideAggregateMarkerPartValid6_0055 outsideHistoryChunk0055
  decide

def outsideAggregateLocalPartValid7_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0055 :
    outsideAggregateLocalPartValid7_0055 outsideHistoryChunk0055 := by
  unfold outsideAggregateLocalPartValid7_0055 outsideHistoryChunk0055
  decide

def outsideAggregateMarkerPartValid7_0055 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 57216
  | _ => True

theorem outsideAggregateMarkerPart7_0055 :
    outsideAggregateMarkerPartValid7_0055 outsideHistoryChunk0055 := by
  unfold outsideAggregateMarkerPartValid7_0055 outsideHistoryChunk0055
  decide

theorem outsideRange_0055 :
    outsideHistoryChunk0055.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 56320 := by
  have hl0 := outsideAggregateLocalPart0_0055
  simp only [outsideAggregateLocalPartValid0_0055, outsideHistoryChunk0055] at hl0
  have hl1 := outsideAggregateLocalPart1_0055
  simp only [outsideAggregateLocalPartValid1_0055, outsideHistoryChunk0055] at hl1
  have hl2 := outsideAggregateLocalPart2_0055
  simp only [outsideAggregateLocalPartValid2_0055, outsideHistoryChunk0055] at hl2
  have hl3 := outsideAggregateLocalPart3_0055
  simp only [outsideAggregateLocalPartValid3_0055, outsideHistoryChunk0055] at hl3
  have hl4 := outsideAggregateLocalPart4_0055
  simp only [outsideAggregateLocalPartValid4_0055, outsideHistoryChunk0055] at hl4
  have hl5 := outsideAggregateLocalPart5_0055
  simp only [outsideAggregateLocalPartValid5_0055, outsideHistoryChunk0055] at hl5
  have hl6 := outsideAggregateLocalPart6_0055
  simp only [outsideAggregateLocalPartValid6_0055, outsideHistoryChunk0055] at hl6
  have hl7 := outsideAggregateLocalPart7_0055
  simp only [outsideAggregateLocalPartValid7_0055, outsideHistoryChunk0055] at hl7
  have hm0 := outsideAggregateMarkerPart0_0055
  simp only [outsideAggregateMarkerPartValid0_0055, outsideHistoryChunk0055] at hm0
  have hm1 := outsideAggregateMarkerPart1_0055
  simp only [outsideAggregateMarkerPartValid1_0055, outsideHistoryChunk0055] at hm1
  have hm2 := outsideAggregateMarkerPart2_0055
  simp only [outsideAggregateMarkerPartValid2_0055, outsideHistoryChunk0055] at hm2
  have hm3 := outsideAggregateMarkerPart3_0055
  simp only [outsideAggregateMarkerPartValid3_0055, outsideHistoryChunk0055] at hm3
  have hm4 := outsideAggregateMarkerPart4_0055
  simp only [outsideAggregateMarkerPartValid4_0055, outsideHistoryChunk0055] at hm4
  have hm5 := outsideAggregateMarkerPart5_0055
  simp only [outsideAggregateMarkerPartValid5_0055, outsideHistoryChunk0055] at hm5
  have hm6 := outsideAggregateMarkerPart6_0055
  simp only [outsideAggregateMarkerPartValid6_0055, outsideHistoryChunk0055] at hm6
  have hm7 := outsideAggregateMarkerPart7_0055
  simp only [outsideAggregateMarkerPartValid7_0055, outsideHistoryChunk0055] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0055
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0055
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
