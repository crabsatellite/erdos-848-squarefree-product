import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0032
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0033
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0034
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0035

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0032, 0033, 0034, 0035 -/

def outsideAggregateLocalPartValid0_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0032 :
    outsideAggregateLocalPartValid0_0032 outsideHistoryChunk0032 := by
  unfold outsideAggregateLocalPartValid0_0032 outsideHistoryChunk0032
  decide

def outsideAggregateMarkerPartValid0_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 32768
  | _ => True

theorem outsideAggregateMarkerPart0_0032 :
    outsideAggregateMarkerPartValid0_0032 outsideHistoryChunk0032 := by
  unfold outsideAggregateMarkerPartValid0_0032 outsideHistoryChunk0032
  decide

def outsideAggregateLocalPartValid1_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0032 :
    outsideAggregateLocalPartValid1_0032 outsideHistoryChunk0032 := by
  unfold outsideAggregateLocalPartValid1_0032 outsideHistoryChunk0032
  decide

def outsideAggregateMarkerPartValid1_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 32896
  | _ => True

theorem outsideAggregateMarkerPart1_0032 :
    outsideAggregateMarkerPartValid1_0032 outsideHistoryChunk0032 := by
  unfold outsideAggregateMarkerPartValid1_0032 outsideHistoryChunk0032
  decide

def outsideAggregateLocalPartValid2_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0032 :
    outsideAggregateLocalPartValid2_0032 outsideHistoryChunk0032 := by
  unfold outsideAggregateLocalPartValid2_0032 outsideHistoryChunk0032
  decide

def outsideAggregateMarkerPartValid2_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 33024
  | _ => True

theorem outsideAggregateMarkerPart2_0032 :
    outsideAggregateMarkerPartValid2_0032 outsideHistoryChunk0032 := by
  unfold outsideAggregateMarkerPartValid2_0032 outsideHistoryChunk0032
  decide

def outsideAggregateLocalPartValid3_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0032 :
    outsideAggregateLocalPartValid3_0032 outsideHistoryChunk0032 := by
  unfold outsideAggregateLocalPartValid3_0032 outsideHistoryChunk0032
  decide

def outsideAggregateMarkerPartValid3_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 33152
  | _ => True

theorem outsideAggregateMarkerPart3_0032 :
    outsideAggregateMarkerPartValid3_0032 outsideHistoryChunk0032 := by
  unfold outsideAggregateMarkerPartValid3_0032 outsideHistoryChunk0032
  decide

def outsideAggregateLocalPartValid4_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0032 :
    outsideAggregateLocalPartValid4_0032 outsideHistoryChunk0032 := by
  unfold outsideAggregateLocalPartValid4_0032 outsideHistoryChunk0032
  decide

def outsideAggregateMarkerPartValid4_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 33280
  | _ => True

theorem outsideAggregateMarkerPart4_0032 :
    outsideAggregateMarkerPartValid4_0032 outsideHistoryChunk0032 := by
  unfold outsideAggregateMarkerPartValid4_0032 outsideHistoryChunk0032
  decide

def outsideAggregateLocalPartValid5_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0032 :
    outsideAggregateLocalPartValid5_0032 outsideHistoryChunk0032 := by
  unfold outsideAggregateLocalPartValid5_0032 outsideHistoryChunk0032
  decide

def outsideAggregateMarkerPartValid5_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 33408
  | _ => True

theorem outsideAggregateMarkerPart5_0032 :
    outsideAggregateMarkerPartValid5_0032 outsideHistoryChunk0032 := by
  unfold outsideAggregateMarkerPartValid5_0032 outsideHistoryChunk0032
  decide

def outsideAggregateLocalPartValid6_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0032 :
    outsideAggregateLocalPartValid6_0032 outsideHistoryChunk0032 := by
  unfold outsideAggregateLocalPartValid6_0032 outsideHistoryChunk0032
  decide

def outsideAggregateMarkerPartValid6_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 33536
  | _ => True

theorem outsideAggregateMarkerPart6_0032 :
    outsideAggregateMarkerPartValid6_0032 outsideHistoryChunk0032 := by
  unfold outsideAggregateMarkerPartValid6_0032 outsideHistoryChunk0032
  decide

def outsideAggregateLocalPartValid7_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0032 :
    outsideAggregateLocalPartValid7_0032 outsideHistoryChunk0032 := by
  unfold outsideAggregateLocalPartValid7_0032 outsideHistoryChunk0032
  decide

def outsideAggregateMarkerPartValid7_0032 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 33664
  | _ => True

theorem outsideAggregateMarkerPart7_0032 :
    outsideAggregateMarkerPartValid7_0032 outsideHistoryChunk0032 := by
  unfold outsideAggregateMarkerPartValid7_0032 outsideHistoryChunk0032
  decide

theorem outsideRange_0032 :
    outsideHistoryChunk0032.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 32768 := by
  have hl0 := outsideAggregateLocalPart0_0032
  simp only [outsideAggregateLocalPartValid0_0032, outsideHistoryChunk0032] at hl0
  have hl1 := outsideAggregateLocalPart1_0032
  simp only [outsideAggregateLocalPartValid1_0032, outsideHistoryChunk0032] at hl1
  have hl2 := outsideAggregateLocalPart2_0032
  simp only [outsideAggregateLocalPartValid2_0032, outsideHistoryChunk0032] at hl2
  have hl3 := outsideAggregateLocalPart3_0032
  simp only [outsideAggregateLocalPartValid3_0032, outsideHistoryChunk0032] at hl3
  have hl4 := outsideAggregateLocalPart4_0032
  simp only [outsideAggregateLocalPartValid4_0032, outsideHistoryChunk0032] at hl4
  have hl5 := outsideAggregateLocalPart5_0032
  simp only [outsideAggregateLocalPartValid5_0032, outsideHistoryChunk0032] at hl5
  have hl6 := outsideAggregateLocalPart6_0032
  simp only [outsideAggregateLocalPartValid6_0032, outsideHistoryChunk0032] at hl6
  have hl7 := outsideAggregateLocalPart7_0032
  simp only [outsideAggregateLocalPartValid7_0032, outsideHistoryChunk0032] at hl7
  have hm0 := outsideAggregateMarkerPart0_0032
  simp only [outsideAggregateMarkerPartValid0_0032, outsideHistoryChunk0032] at hm0
  have hm1 := outsideAggregateMarkerPart1_0032
  simp only [outsideAggregateMarkerPartValid1_0032, outsideHistoryChunk0032] at hm1
  have hm2 := outsideAggregateMarkerPart2_0032
  simp only [outsideAggregateMarkerPartValid2_0032, outsideHistoryChunk0032] at hm2
  have hm3 := outsideAggregateMarkerPart3_0032
  simp only [outsideAggregateMarkerPartValid3_0032, outsideHistoryChunk0032] at hm3
  have hm4 := outsideAggregateMarkerPart4_0032
  simp only [outsideAggregateMarkerPartValid4_0032, outsideHistoryChunk0032] at hm4
  have hm5 := outsideAggregateMarkerPart5_0032
  simp only [outsideAggregateMarkerPartValid5_0032, outsideHistoryChunk0032] at hm5
  have hm6 := outsideAggregateMarkerPart6_0032
  simp only [outsideAggregateMarkerPartValid6_0032, outsideHistoryChunk0032] at hm6
  have hm7 := outsideAggregateMarkerPart7_0032
  simp only [outsideAggregateMarkerPartValid7_0032, outsideHistoryChunk0032] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0032
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0032
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0033 :
    outsideAggregateLocalPartValid0_0033 outsideHistoryChunk0033 := by
  unfold outsideAggregateLocalPartValid0_0033 outsideHistoryChunk0033
  decide

def outsideAggregateMarkerPartValid0_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 33792
  | _ => True

theorem outsideAggregateMarkerPart0_0033 :
    outsideAggregateMarkerPartValid0_0033 outsideHistoryChunk0033 := by
  unfold outsideAggregateMarkerPartValid0_0033 outsideHistoryChunk0033
  decide

def outsideAggregateLocalPartValid1_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0033 :
    outsideAggregateLocalPartValid1_0033 outsideHistoryChunk0033 := by
  unfold outsideAggregateLocalPartValid1_0033 outsideHistoryChunk0033
  decide

def outsideAggregateMarkerPartValid1_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 33920
  | _ => True

theorem outsideAggregateMarkerPart1_0033 :
    outsideAggregateMarkerPartValid1_0033 outsideHistoryChunk0033 := by
  unfold outsideAggregateMarkerPartValid1_0033 outsideHistoryChunk0033
  decide

def outsideAggregateLocalPartValid2_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0033 :
    outsideAggregateLocalPartValid2_0033 outsideHistoryChunk0033 := by
  unfold outsideAggregateLocalPartValid2_0033 outsideHistoryChunk0033
  decide

def outsideAggregateMarkerPartValid2_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 34048
  | _ => True

theorem outsideAggregateMarkerPart2_0033 :
    outsideAggregateMarkerPartValid2_0033 outsideHistoryChunk0033 := by
  unfold outsideAggregateMarkerPartValid2_0033 outsideHistoryChunk0033
  decide

def outsideAggregateLocalPartValid3_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0033 :
    outsideAggregateLocalPartValid3_0033 outsideHistoryChunk0033 := by
  unfold outsideAggregateLocalPartValid3_0033 outsideHistoryChunk0033
  decide

def outsideAggregateMarkerPartValid3_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 34176
  | _ => True

theorem outsideAggregateMarkerPart3_0033 :
    outsideAggregateMarkerPartValid3_0033 outsideHistoryChunk0033 := by
  unfold outsideAggregateMarkerPartValid3_0033 outsideHistoryChunk0033
  decide

def outsideAggregateLocalPartValid4_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0033 :
    outsideAggregateLocalPartValid4_0033 outsideHistoryChunk0033 := by
  unfold outsideAggregateLocalPartValid4_0033 outsideHistoryChunk0033
  decide

def outsideAggregateMarkerPartValid4_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 34304
  | _ => True

theorem outsideAggregateMarkerPart4_0033 :
    outsideAggregateMarkerPartValid4_0033 outsideHistoryChunk0033 := by
  unfold outsideAggregateMarkerPartValid4_0033 outsideHistoryChunk0033
  decide

def outsideAggregateLocalPartValid5_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0033 :
    outsideAggregateLocalPartValid5_0033 outsideHistoryChunk0033 := by
  unfold outsideAggregateLocalPartValid5_0033 outsideHistoryChunk0033
  decide

def outsideAggregateMarkerPartValid5_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 34432
  | _ => True

theorem outsideAggregateMarkerPart5_0033 :
    outsideAggregateMarkerPartValid5_0033 outsideHistoryChunk0033 := by
  unfold outsideAggregateMarkerPartValid5_0033 outsideHistoryChunk0033
  decide

def outsideAggregateLocalPartValid6_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0033 :
    outsideAggregateLocalPartValid6_0033 outsideHistoryChunk0033 := by
  unfold outsideAggregateLocalPartValid6_0033 outsideHistoryChunk0033
  decide

def outsideAggregateMarkerPartValid6_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 34560
  | _ => True

theorem outsideAggregateMarkerPart6_0033 :
    outsideAggregateMarkerPartValid6_0033 outsideHistoryChunk0033 := by
  unfold outsideAggregateMarkerPartValid6_0033 outsideHistoryChunk0033
  decide

def outsideAggregateLocalPartValid7_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0033 :
    outsideAggregateLocalPartValid7_0033 outsideHistoryChunk0033 := by
  unfold outsideAggregateLocalPartValid7_0033 outsideHistoryChunk0033
  decide

def outsideAggregateMarkerPartValid7_0033 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 34688
  | _ => True

theorem outsideAggregateMarkerPart7_0033 :
    outsideAggregateMarkerPartValid7_0033 outsideHistoryChunk0033 := by
  unfold outsideAggregateMarkerPartValid7_0033 outsideHistoryChunk0033
  decide

theorem outsideRange_0033 :
    outsideHistoryChunk0033.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 33792 := by
  have hl0 := outsideAggregateLocalPart0_0033
  simp only [outsideAggregateLocalPartValid0_0033, outsideHistoryChunk0033] at hl0
  have hl1 := outsideAggregateLocalPart1_0033
  simp only [outsideAggregateLocalPartValid1_0033, outsideHistoryChunk0033] at hl1
  have hl2 := outsideAggregateLocalPart2_0033
  simp only [outsideAggregateLocalPartValid2_0033, outsideHistoryChunk0033] at hl2
  have hl3 := outsideAggregateLocalPart3_0033
  simp only [outsideAggregateLocalPartValid3_0033, outsideHistoryChunk0033] at hl3
  have hl4 := outsideAggregateLocalPart4_0033
  simp only [outsideAggregateLocalPartValid4_0033, outsideHistoryChunk0033] at hl4
  have hl5 := outsideAggregateLocalPart5_0033
  simp only [outsideAggregateLocalPartValid5_0033, outsideHistoryChunk0033] at hl5
  have hl6 := outsideAggregateLocalPart6_0033
  simp only [outsideAggregateLocalPartValid6_0033, outsideHistoryChunk0033] at hl6
  have hl7 := outsideAggregateLocalPart7_0033
  simp only [outsideAggregateLocalPartValid7_0033, outsideHistoryChunk0033] at hl7
  have hm0 := outsideAggregateMarkerPart0_0033
  simp only [outsideAggregateMarkerPartValid0_0033, outsideHistoryChunk0033] at hm0
  have hm1 := outsideAggregateMarkerPart1_0033
  simp only [outsideAggregateMarkerPartValid1_0033, outsideHistoryChunk0033] at hm1
  have hm2 := outsideAggregateMarkerPart2_0033
  simp only [outsideAggregateMarkerPartValid2_0033, outsideHistoryChunk0033] at hm2
  have hm3 := outsideAggregateMarkerPart3_0033
  simp only [outsideAggregateMarkerPartValid3_0033, outsideHistoryChunk0033] at hm3
  have hm4 := outsideAggregateMarkerPart4_0033
  simp only [outsideAggregateMarkerPartValid4_0033, outsideHistoryChunk0033] at hm4
  have hm5 := outsideAggregateMarkerPart5_0033
  simp only [outsideAggregateMarkerPartValid5_0033, outsideHistoryChunk0033] at hm5
  have hm6 := outsideAggregateMarkerPart6_0033
  simp only [outsideAggregateMarkerPartValid6_0033, outsideHistoryChunk0033] at hm6
  have hm7 := outsideAggregateMarkerPart7_0033
  simp only [outsideAggregateMarkerPartValid7_0033, outsideHistoryChunk0033] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0033
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0033
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0034 :
    outsideAggregateLocalPartValid0_0034 outsideHistoryChunk0034 := by
  unfold outsideAggregateLocalPartValid0_0034 outsideHistoryChunk0034
  decide

def outsideAggregateMarkerPartValid0_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 34816
  | _ => True

theorem outsideAggregateMarkerPart0_0034 :
    outsideAggregateMarkerPartValid0_0034 outsideHistoryChunk0034 := by
  unfold outsideAggregateMarkerPartValid0_0034 outsideHistoryChunk0034
  decide

def outsideAggregateLocalPartValid1_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0034 :
    outsideAggregateLocalPartValid1_0034 outsideHistoryChunk0034 := by
  unfold outsideAggregateLocalPartValid1_0034 outsideHistoryChunk0034
  decide

def outsideAggregateMarkerPartValid1_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 34944
  | _ => True

theorem outsideAggregateMarkerPart1_0034 :
    outsideAggregateMarkerPartValid1_0034 outsideHistoryChunk0034 := by
  unfold outsideAggregateMarkerPartValid1_0034 outsideHistoryChunk0034
  decide

def outsideAggregateLocalPartValid2_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0034 :
    outsideAggregateLocalPartValid2_0034 outsideHistoryChunk0034 := by
  unfold outsideAggregateLocalPartValid2_0034 outsideHistoryChunk0034
  decide

def outsideAggregateMarkerPartValid2_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 35072
  | _ => True

theorem outsideAggregateMarkerPart2_0034 :
    outsideAggregateMarkerPartValid2_0034 outsideHistoryChunk0034 := by
  unfold outsideAggregateMarkerPartValid2_0034 outsideHistoryChunk0034
  decide

def outsideAggregateLocalPartValid3_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0034 :
    outsideAggregateLocalPartValid3_0034 outsideHistoryChunk0034 := by
  unfold outsideAggregateLocalPartValid3_0034 outsideHistoryChunk0034
  decide

def outsideAggregateMarkerPartValid3_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 35200
  | _ => True

theorem outsideAggregateMarkerPart3_0034 :
    outsideAggregateMarkerPartValid3_0034 outsideHistoryChunk0034 := by
  unfold outsideAggregateMarkerPartValid3_0034 outsideHistoryChunk0034
  decide

def outsideAggregateLocalPartValid4_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0034 :
    outsideAggregateLocalPartValid4_0034 outsideHistoryChunk0034 := by
  unfold outsideAggregateLocalPartValid4_0034 outsideHistoryChunk0034
  decide

def outsideAggregateMarkerPartValid4_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 35328
  | _ => True

theorem outsideAggregateMarkerPart4_0034 :
    outsideAggregateMarkerPartValid4_0034 outsideHistoryChunk0034 := by
  unfold outsideAggregateMarkerPartValid4_0034 outsideHistoryChunk0034
  decide

def outsideAggregateLocalPartValid5_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0034 :
    outsideAggregateLocalPartValid5_0034 outsideHistoryChunk0034 := by
  unfold outsideAggregateLocalPartValid5_0034 outsideHistoryChunk0034
  decide

def outsideAggregateMarkerPartValid5_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 35456
  | _ => True

theorem outsideAggregateMarkerPart5_0034 :
    outsideAggregateMarkerPartValid5_0034 outsideHistoryChunk0034 := by
  unfold outsideAggregateMarkerPartValid5_0034 outsideHistoryChunk0034
  decide

def outsideAggregateLocalPartValid6_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0034 :
    outsideAggregateLocalPartValid6_0034 outsideHistoryChunk0034 := by
  unfold outsideAggregateLocalPartValid6_0034 outsideHistoryChunk0034
  decide

def outsideAggregateMarkerPartValid6_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 35584
  | _ => True

theorem outsideAggregateMarkerPart6_0034 :
    outsideAggregateMarkerPartValid6_0034 outsideHistoryChunk0034 := by
  unfold outsideAggregateMarkerPartValid6_0034 outsideHistoryChunk0034
  decide

def outsideAggregateLocalPartValid7_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0034 :
    outsideAggregateLocalPartValid7_0034 outsideHistoryChunk0034 := by
  unfold outsideAggregateLocalPartValid7_0034 outsideHistoryChunk0034
  decide

def outsideAggregateMarkerPartValid7_0034 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 35712
  | _ => True

theorem outsideAggregateMarkerPart7_0034 :
    outsideAggregateMarkerPartValid7_0034 outsideHistoryChunk0034 := by
  unfold outsideAggregateMarkerPartValid7_0034 outsideHistoryChunk0034
  decide

theorem outsideRange_0034 :
    outsideHistoryChunk0034.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 34816 := by
  have hl0 := outsideAggregateLocalPart0_0034
  simp only [outsideAggregateLocalPartValid0_0034, outsideHistoryChunk0034] at hl0
  have hl1 := outsideAggregateLocalPart1_0034
  simp only [outsideAggregateLocalPartValid1_0034, outsideHistoryChunk0034] at hl1
  have hl2 := outsideAggregateLocalPart2_0034
  simp only [outsideAggregateLocalPartValid2_0034, outsideHistoryChunk0034] at hl2
  have hl3 := outsideAggregateLocalPart3_0034
  simp only [outsideAggregateLocalPartValid3_0034, outsideHistoryChunk0034] at hl3
  have hl4 := outsideAggregateLocalPart4_0034
  simp only [outsideAggregateLocalPartValid4_0034, outsideHistoryChunk0034] at hl4
  have hl5 := outsideAggregateLocalPart5_0034
  simp only [outsideAggregateLocalPartValid5_0034, outsideHistoryChunk0034] at hl5
  have hl6 := outsideAggregateLocalPart6_0034
  simp only [outsideAggregateLocalPartValid6_0034, outsideHistoryChunk0034] at hl6
  have hl7 := outsideAggregateLocalPart7_0034
  simp only [outsideAggregateLocalPartValid7_0034, outsideHistoryChunk0034] at hl7
  have hm0 := outsideAggregateMarkerPart0_0034
  simp only [outsideAggregateMarkerPartValid0_0034, outsideHistoryChunk0034] at hm0
  have hm1 := outsideAggregateMarkerPart1_0034
  simp only [outsideAggregateMarkerPartValid1_0034, outsideHistoryChunk0034] at hm1
  have hm2 := outsideAggregateMarkerPart2_0034
  simp only [outsideAggregateMarkerPartValid2_0034, outsideHistoryChunk0034] at hm2
  have hm3 := outsideAggregateMarkerPart3_0034
  simp only [outsideAggregateMarkerPartValid3_0034, outsideHistoryChunk0034] at hm3
  have hm4 := outsideAggregateMarkerPart4_0034
  simp only [outsideAggregateMarkerPartValid4_0034, outsideHistoryChunk0034] at hm4
  have hm5 := outsideAggregateMarkerPart5_0034
  simp only [outsideAggregateMarkerPartValid5_0034, outsideHistoryChunk0034] at hm5
  have hm6 := outsideAggregateMarkerPart6_0034
  simp only [outsideAggregateMarkerPartValid6_0034, outsideHistoryChunk0034] at hm6
  have hm7 := outsideAggregateMarkerPart7_0034
  simp only [outsideAggregateMarkerPartValid7_0034, outsideHistoryChunk0034] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0034
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0034
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0035 :
    outsideAggregateLocalPartValid0_0035 outsideHistoryChunk0035 := by
  unfold outsideAggregateLocalPartValid0_0035 outsideHistoryChunk0035
  decide

def outsideAggregateMarkerPartValid0_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 35840
  | _ => True

theorem outsideAggregateMarkerPart0_0035 :
    outsideAggregateMarkerPartValid0_0035 outsideHistoryChunk0035 := by
  unfold outsideAggregateMarkerPartValid0_0035 outsideHistoryChunk0035
  decide

def outsideAggregateLocalPartValid1_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0035 :
    outsideAggregateLocalPartValid1_0035 outsideHistoryChunk0035 := by
  unfold outsideAggregateLocalPartValid1_0035 outsideHistoryChunk0035
  decide

def outsideAggregateMarkerPartValid1_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 35968
  | _ => True

theorem outsideAggregateMarkerPart1_0035 :
    outsideAggregateMarkerPartValid1_0035 outsideHistoryChunk0035 := by
  unfold outsideAggregateMarkerPartValid1_0035 outsideHistoryChunk0035
  decide

def outsideAggregateLocalPartValid2_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0035 :
    outsideAggregateLocalPartValid2_0035 outsideHistoryChunk0035 := by
  unfold outsideAggregateLocalPartValid2_0035 outsideHistoryChunk0035
  decide

def outsideAggregateMarkerPartValid2_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 36096
  | _ => True

theorem outsideAggregateMarkerPart2_0035 :
    outsideAggregateMarkerPartValid2_0035 outsideHistoryChunk0035 := by
  unfold outsideAggregateMarkerPartValid2_0035 outsideHistoryChunk0035
  decide

def outsideAggregateLocalPartValid3_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0035 :
    outsideAggregateLocalPartValid3_0035 outsideHistoryChunk0035 := by
  unfold outsideAggregateLocalPartValid3_0035 outsideHistoryChunk0035
  decide

def outsideAggregateMarkerPartValid3_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 36224
  | _ => True

theorem outsideAggregateMarkerPart3_0035 :
    outsideAggregateMarkerPartValid3_0035 outsideHistoryChunk0035 := by
  unfold outsideAggregateMarkerPartValid3_0035 outsideHistoryChunk0035
  decide

def outsideAggregateLocalPartValid4_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0035 :
    outsideAggregateLocalPartValid4_0035 outsideHistoryChunk0035 := by
  unfold outsideAggregateLocalPartValid4_0035 outsideHistoryChunk0035
  decide

def outsideAggregateMarkerPartValid4_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 36352
  | _ => True

theorem outsideAggregateMarkerPart4_0035 :
    outsideAggregateMarkerPartValid4_0035 outsideHistoryChunk0035 := by
  unfold outsideAggregateMarkerPartValid4_0035 outsideHistoryChunk0035
  decide

def outsideAggregateLocalPartValid5_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0035 :
    outsideAggregateLocalPartValid5_0035 outsideHistoryChunk0035 := by
  unfold outsideAggregateLocalPartValid5_0035 outsideHistoryChunk0035
  decide

def outsideAggregateMarkerPartValid5_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 36480
  | _ => True

theorem outsideAggregateMarkerPart5_0035 :
    outsideAggregateMarkerPartValid5_0035 outsideHistoryChunk0035 := by
  unfold outsideAggregateMarkerPartValid5_0035 outsideHistoryChunk0035
  decide

def outsideAggregateLocalPartValid6_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0035 :
    outsideAggregateLocalPartValid6_0035 outsideHistoryChunk0035 := by
  unfold outsideAggregateLocalPartValid6_0035 outsideHistoryChunk0035
  decide

def outsideAggregateMarkerPartValid6_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 36608
  | _ => True

theorem outsideAggregateMarkerPart6_0035 :
    outsideAggregateMarkerPartValid6_0035 outsideHistoryChunk0035 := by
  unfold outsideAggregateMarkerPartValid6_0035 outsideHistoryChunk0035
  decide

def outsideAggregateLocalPartValid7_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0035 :
    outsideAggregateLocalPartValid7_0035 outsideHistoryChunk0035 := by
  unfold outsideAggregateLocalPartValid7_0035 outsideHistoryChunk0035
  decide

def outsideAggregateMarkerPartValid7_0035 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 36736
  | _ => True

theorem outsideAggregateMarkerPart7_0035 :
    outsideAggregateMarkerPartValid7_0035 outsideHistoryChunk0035 := by
  unfold outsideAggregateMarkerPartValid7_0035 outsideHistoryChunk0035
  decide

theorem outsideRange_0035 :
    outsideHistoryChunk0035.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 35840 := by
  have hl0 := outsideAggregateLocalPart0_0035
  simp only [outsideAggregateLocalPartValid0_0035, outsideHistoryChunk0035] at hl0
  have hl1 := outsideAggregateLocalPart1_0035
  simp only [outsideAggregateLocalPartValid1_0035, outsideHistoryChunk0035] at hl1
  have hl2 := outsideAggregateLocalPart2_0035
  simp only [outsideAggregateLocalPartValid2_0035, outsideHistoryChunk0035] at hl2
  have hl3 := outsideAggregateLocalPart3_0035
  simp only [outsideAggregateLocalPartValid3_0035, outsideHistoryChunk0035] at hl3
  have hl4 := outsideAggregateLocalPart4_0035
  simp only [outsideAggregateLocalPartValid4_0035, outsideHistoryChunk0035] at hl4
  have hl5 := outsideAggregateLocalPart5_0035
  simp only [outsideAggregateLocalPartValid5_0035, outsideHistoryChunk0035] at hl5
  have hl6 := outsideAggregateLocalPart6_0035
  simp only [outsideAggregateLocalPartValid6_0035, outsideHistoryChunk0035] at hl6
  have hl7 := outsideAggregateLocalPart7_0035
  simp only [outsideAggregateLocalPartValid7_0035, outsideHistoryChunk0035] at hl7
  have hm0 := outsideAggregateMarkerPart0_0035
  simp only [outsideAggregateMarkerPartValid0_0035, outsideHistoryChunk0035] at hm0
  have hm1 := outsideAggregateMarkerPart1_0035
  simp only [outsideAggregateMarkerPartValid1_0035, outsideHistoryChunk0035] at hm1
  have hm2 := outsideAggregateMarkerPart2_0035
  simp only [outsideAggregateMarkerPartValid2_0035, outsideHistoryChunk0035] at hm2
  have hm3 := outsideAggregateMarkerPart3_0035
  simp only [outsideAggregateMarkerPartValid3_0035, outsideHistoryChunk0035] at hm3
  have hm4 := outsideAggregateMarkerPart4_0035
  simp only [outsideAggregateMarkerPartValid4_0035, outsideHistoryChunk0035] at hm4
  have hm5 := outsideAggregateMarkerPart5_0035
  simp only [outsideAggregateMarkerPartValid5_0035, outsideHistoryChunk0035] at hm5
  have hm6 := outsideAggregateMarkerPart6_0035
  simp only [outsideAggregateMarkerPartValid6_0035, outsideHistoryChunk0035] at hm6
  have hm7 := outsideAggregateMarkerPart7_0035
  simp only [outsideAggregateMarkerPartValid7_0035, outsideHistoryChunk0035] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0035
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0035
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
