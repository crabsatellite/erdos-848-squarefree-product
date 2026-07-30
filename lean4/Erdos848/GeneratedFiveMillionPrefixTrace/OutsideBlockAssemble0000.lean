import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0000
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0001
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0002
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0003

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0000, 0001, 0002, 0003 -/

def outsideAggregateLocalPartValid0_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0000 :
    outsideAggregateLocalPartValid0_0000 outsideHistoryChunk0000 := by
  unfold outsideAggregateLocalPartValid0_0000 outsideHistoryChunk0000
  decide

def outsideAggregateMarkerPartValid0_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 0
  | _ => True

theorem outsideAggregateMarkerPart0_0000 :
    outsideAggregateMarkerPartValid0_0000 outsideHistoryChunk0000 := by
  unfold outsideAggregateMarkerPartValid0_0000 outsideHistoryChunk0000
  decide

def outsideAggregateLocalPartValid1_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0000 :
    outsideAggregateLocalPartValid1_0000 outsideHistoryChunk0000 := by
  unfold outsideAggregateLocalPartValid1_0000 outsideHistoryChunk0000
  decide

def outsideAggregateMarkerPartValid1_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 128
  | _ => True

theorem outsideAggregateMarkerPart1_0000 :
    outsideAggregateMarkerPartValid1_0000 outsideHistoryChunk0000 := by
  unfold outsideAggregateMarkerPartValid1_0000 outsideHistoryChunk0000
  decide

def outsideAggregateLocalPartValid2_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0000 :
    outsideAggregateLocalPartValid2_0000 outsideHistoryChunk0000 := by
  unfold outsideAggregateLocalPartValid2_0000 outsideHistoryChunk0000
  decide

def outsideAggregateMarkerPartValid2_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 256
  | _ => True

theorem outsideAggregateMarkerPart2_0000 :
    outsideAggregateMarkerPartValid2_0000 outsideHistoryChunk0000 := by
  unfold outsideAggregateMarkerPartValid2_0000 outsideHistoryChunk0000
  decide

def outsideAggregateLocalPartValid3_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0000 :
    outsideAggregateLocalPartValid3_0000 outsideHistoryChunk0000 := by
  unfold outsideAggregateLocalPartValid3_0000 outsideHistoryChunk0000
  decide

def outsideAggregateMarkerPartValid3_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 384
  | _ => True

theorem outsideAggregateMarkerPart3_0000 :
    outsideAggregateMarkerPartValid3_0000 outsideHistoryChunk0000 := by
  unfold outsideAggregateMarkerPartValid3_0000 outsideHistoryChunk0000
  decide

def outsideAggregateLocalPartValid4_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0000 :
    outsideAggregateLocalPartValid4_0000 outsideHistoryChunk0000 := by
  unfold outsideAggregateLocalPartValid4_0000 outsideHistoryChunk0000
  decide

def outsideAggregateMarkerPartValid4_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 512
  | _ => True

theorem outsideAggregateMarkerPart4_0000 :
    outsideAggregateMarkerPartValid4_0000 outsideHistoryChunk0000 := by
  unfold outsideAggregateMarkerPartValid4_0000 outsideHistoryChunk0000
  decide

def outsideAggregateLocalPartValid5_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0000 :
    outsideAggregateLocalPartValid5_0000 outsideHistoryChunk0000 := by
  unfold outsideAggregateLocalPartValid5_0000 outsideHistoryChunk0000
  decide

def outsideAggregateMarkerPartValid5_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 640
  | _ => True

theorem outsideAggregateMarkerPart5_0000 :
    outsideAggregateMarkerPartValid5_0000 outsideHistoryChunk0000 := by
  unfold outsideAggregateMarkerPartValid5_0000 outsideHistoryChunk0000
  decide

def outsideAggregateLocalPartValid6_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0000 :
    outsideAggregateLocalPartValid6_0000 outsideHistoryChunk0000 := by
  unfold outsideAggregateLocalPartValid6_0000 outsideHistoryChunk0000
  decide

def outsideAggregateMarkerPartValid6_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 768
  | _ => True

theorem outsideAggregateMarkerPart6_0000 :
    outsideAggregateMarkerPartValid6_0000 outsideHistoryChunk0000 := by
  unfold outsideAggregateMarkerPartValid6_0000 outsideHistoryChunk0000
  decide

def outsideAggregateLocalPartValid7_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0000 :
    outsideAggregateLocalPartValid7_0000 outsideHistoryChunk0000 := by
  unfold outsideAggregateLocalPartValid7_0000 outsideHistoryChunk0000
  decide

def outsideAggregateMarkerPartValid7_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 896
  | _ => True

theorem outsideAggregateMarkerPart7_0000 :
    outsideAggregateMarkerPartValid7_0000 outsideHistoryChunk0000 := by
  unfold outsideAggregateMarkerPartValid7_0000 outsideHistoryChunk0000
  decide

theorem outsideRange_0000 :
    outsideHistoryChunk0000.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 0 := by
  have hl0 := outsideAggregateLocalPart0_0000
  simp only [outsideAggregateLocalPartValid0_0000, outsideHistoryChunk0000] at hl0
  have hl1 := outsideAggregateLocalPart1_0000
  simp only [outsideAggregateLocalPartValid1_0000, outsideHistoryChunk0000] at hl1
  have hl2 := outsideAggregateLocalPart2_0000
  simp only [outsideAggregateLocalPartValid2_0000, outsideHistoryChunk0000] at hl2
  have hl3 := outsideAggregateLocalPart3_0000
  simp only [outsideAggregateLocalPartValid3_0000, outsideHistoryChunk0000] at hl3
  have hl4 := outsideAggregateLocalPart4_0000
  simp only [outsideAggregateLocalPartValid4_0000, outsideHistoryChunk0000] at hl4
  have hl5 := outsideAggregateLocalPart5_0000
  simp only [outsideAggregateLocalPartValid5_0000, outsideHistoryChunk0000] at hl5
  have hl6 := outsideAggregateLocalPart6_0000
  simp only [outsideAggregateLocalPartValid6_0000, outsideHistoryChunk0000] at hl6
  have hl7 := outsideAggregateLocalPart7_0000
  simp only [outsideAggregateLocalPartValid7_0000, outsideHistoryChunk0000] at hl7
  have hm0 := outsideAggregateMarkerPart0_0000
  simp only [outsideAggregateMarkerPartValid0_0000, outsideHistoryChunk0000] at hm0
  have hm1 := outsideAggregateMarkerPart1_0000
  simp only [outsideAggregateMarkerPartValid1_0000, outsideHistoryChunk0000] at hm1
  have hm2 := outsideAggregateMarkerPart2_0000
  simp only [outsideAggregateMarkerPartValid2_0000, outsideHistoryChunk0000] at hm2
  have hm3 := outsideAggregateMarkerPart3_0000
  simp only [outsideAggregateMarkerPartValid3_0000, outsideHistoryChunk0000] at hm3
  have hm4 := outsideAggregateMarkerPart4_0000
  simp only [outsideAggregateMarkerPartValid4_0000, outsideHistoryChunk0000] at hm4
  have hm5 := outsideAggregateMarkerPart5_0000
  simp only [outsideAggregateMarkerPartValid5_0000, outsideHistoryChunk0000] at hm5
  have hm6 := outsideAggregateMarkerPart6_0000
  simp only [outsideAggregateMarkerPartValid6_0000, outsideHistoryChunk0000] at hm6
  have hm7 := outsideAggregateMarkerPart7_0000
  simp only [outsideAggregateMarkerPartValid7_0000, outsideHistoryChunk0000] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0000
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0000
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0001 :
    outsideAggregateLocalPartValid0_0001 outsideHistoryChunk0001 := by
  unfold outsideAggregateLocalPartValid0_0001 outsideHistoryChunk0001
  decide

def outsideAggregateMarkerPartValid0_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 1024
  | _ => True

theorem outsideAggregateMarkerPart0_0001 :
    outsideAggregateMarkerPartValid0_0001 outsideHistoryChunk0001 := by
  unfold outsideAggregateMarkerPartValid0_0001 outsideHistoryChunk0001
  decide

def outsideAggregateLocalPartValid1_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0001 :
    outsideAggregateLocalPartValid1_0001 outsideHistoryChunk0001 := by
  unfold outsideAggregateLocalPartValid1_0001 outsideHistoryChunk0001
  decide

def outsideAggregateMarkerPartValid1_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 1152
  | _ => True

theorem outsideAggregateMarkerPart1_0001 :
    outsideAggregateMarkerPartValid1_0001 outsideHistoryChunk0001 := by
  unfold outsideAggregateMarkerPartValid1_0001 outsideHistoryChunk0001
  decide

def outsideAggregateLocalPartValid2_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0001 :
    outsideAggregateLocalPartValid2_0001 outsideHistoryChunk0001 := by
  unfold outsideAggregateLocalPartValid2_0001 outsideHistoryChunk0001
  decide

def outsideAggregateMarkerPartValid2_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 1280
  | _ => True

theorem outsideAggregateMarkerPart2_0001 :
    outsideAggregateMarkerPartValid2_0001 outsideHistoryChunk0001 := by
  unfold outsideAggregateMarkerPartValid2_0001 outsideHistoryChunk0001
  decide

def outsideAggregateLocalPartValid3_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0001 :
    outsideAggregateLocalPartValid3_0001 outsideHistoryChunk0001 := by
  unfold outsideAggregateLocalPartValid3_0001 outsideHistoryChunk0001
  decide

def outsideAggregateMarkerPartValid3_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 1408
  | _ => True

theorem outsideAggregateMarkerPart3_0001 :
    outsideAggregateMarkerPartValid3_0001 outsideHistoryChunk0001 := by
  unfold outsideAggregateMarkerPartValid3_0001 outsideHistoryChunk0001
  decide

def outsideAggregateLocalPartValid4_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0001 :
    outsideAggregateLocalPartValid4_0001 outsideHistoryChunk0001 := by
  unfold outsideAggregateLocalPartValid4_0001 outsideHistoryChunk0001
  decide

def outsideAggregateMarkerPartValid4_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 1536
  | _ => True

theorem outsideAggregateMarkerPart4_0001 :
    outsideAggregateMarkerPartValid4_0001 outsideHistoryChunk0001 := by
  unfold outsideAggregateMarkerPartValid4_0001 outsideHistoryChunk0001
  decide

def outsideAggregateLocalPartValid5_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0001 :
    outsideAggregateLocalPartValid5_0001 outsideHistoryChunk0001 := by
  unfold outsideAggregateLocalPartValid5_0001 outsideHistoryChunk0001
  decide

def outsideAggregateMarkerPartValid5_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 1664
  | _ => True

theorem outsideAggregateMarkerPart5_0001 :
    outsideAggregateMarkerPartValid5_0001 outsideHistoryChunk0001 := by
  unfold outsideAggregateMarkerPartValid5_0001 outsideHistoryChunk0001
  decide

def outsideAggregateLocalPartValid6_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0001 :
    outsideAggregateLocalPartValid6_0001 outsideHistoryChunk0001 := by
  unfold outsideAggregateLocalPartValid6_0001 outsideHistoryChunk0001
  decide

def outsideAggregateMarkerPartValid6_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 1792
  | _ => True

theorem outsideAggregateMarkerPart6_0001 :
    outsideAggregateMarkerPartValid6_0001 outsideHistoryChunk0001 := by
  unfold outsideAggregateMarkerPartValid6_0001 outsideHistoryChunk0001
  decide

def outsideAggregateLocalPartValid7_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0001 :
    outsideAggregateLocalPartValid7_0001 outsideHistoryChunk0001 := by
  unfold outsideAggregateLocalPartValid7_0001 outsideHistoryChunk0001
  decide

def outsideAggregateMarkerPartValid7_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 1920
  | _ => True

theorem outsideAggregateMarkerPart7_0001 :
    outsideAggregateMarkerPartValid7_0001 outsideHistoryChunk0001 := by
  unfold outsideAggregateMarkerPartValid7_0001 outsideHistoryChunk0001
  decide

theorem outsideRange_0001 :
    outsideHistoryChunk0001.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 1024 := by
  have hl0 := outsideAggregateLocalPart0_0001
  simp only [outsideAggregateLocalPartValid0_0001, outsideHistoryChunk0001] at hl0
  have hl1 := outsideAggregateLocalPart1_0001
  simp only [outsideAggregateLocalPartValid1_0001, outsideHistoryChunk0001] at hl1
  have hl2 := outsideAggregateLocalPart2_0001
  simp only [outsideAggregateLocalPartValid2_0001, outsideHistoryChunk0001] at hl2
  have hl3 := outsideAggregateLocalPart3_0001
  simp only [outsideAggregateLocalPartValid3_0001, outsideHistoryChunk0001] at hl3
  have hl4 := outsideAggregateLocalPart4_0001
  simp only [outsideAggregateLocalPartValid4_0001, outsideHistoryChunk0001] at hl4
  have hl5 := outsideAggregateLocalPart5_0001
  simp only [outsideAggregateLocalPartValid5_0001, outsideHistoryChunk0001] at hl5
  have hl6 := outsideAggregateLocalPart6_0001
  simp only [outsideAggregateLocalPartValid6_0001, outsideHistoryChunk0001] at hl6
  have hl7 := outsideAggregateLocalPart7_0001
  simp only [outsideAggregateLocalPartValid7_0001, outsideHistoryChunk0001] at hl7
  have hm0 := outsideAggregateMarkerPart0_0001
  simp only [outsideAggregateMarkerPartValid0_0001, outsideHistoryChunk0001] at hm0
  have hm1 := outsideAggregateMarkerPart1_0001
  simp only [outsideAggregateMarkerPartValid1_0001, outsideHistoryChunk0001] at hm1
  have hm2 := outsideAggregateMarkerPart2_0001
  simp only [outsideAggregateMarkerPartValid2_0001, outsideHistoryChunk0001] at hm2
  have hm3 := outsideAggregateMarkerPart3_0001
  simp only [outsideAggregateMarkerPartValid3_0001, outsideHistoryChunk0001] at hm3
  have hm4 := outsideAggregateMarkerPart4_0001
  simp only [outsideAggregateMarkerPartValid4_0001, outsideHistoryChunk0001] at hm4
  have hm5 := outsideAggregateMarkerPart5_0001
  simp only [outsideAggregateMarkerPartValid5_0001, outsideHistoryChunk0001] at hm5
  have hm6 := outsideAggregateMarkerPart6_0001
  simp only [outsideAggregateMarkerPartValid6_0001, outsideHistoryChunk0001] at hm6
  have hm7 := outsideAggregateMarkerPart7_0001
  simp only [outsideAggregateMarkerPartValid7_0001, outsideHistoryChunk0001] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0001
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0001
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0002 :
    outsideAggregateLocalPartValid0_0002 outsideHistoryChunk0002 := by
  unfold outsideAggregateLocalPartValid0_0002 outsideHistoryChunk0002
  decide

def outsideAggregateMarkerPartValid0_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 2048
  | _ => True

theorem outsideAggregateMarkerPart0_0002 :
    outsideAggregateMarkerPartValid0_0002 outsideHistoryChunk0002 := by
  unfold outsideAggregateMarkerPartValid0_0002 outsideHistoryChunk0002
  decide

def outsideAggregateLocalPartValid1_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0002 :
    outsideAggregateLocalPartValid1_0002 outsideHistoryChunk0002 := by
  unfold outsideAggregateLocalPartValid1_0002 outsideHistoryChunk0002
  decide

def outsideAggregateMarkerPartValid1_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 2176
  | _ => True

theorem outsideAggregateMarkerPart1_0002 :
    outsideAggregateMarkerPartValid1_0002 outsideHistoryChunk0002 := by
  unfold outsideAggregateMarkerPartValid1_0002 outsideHistoryChunk0002
  decide

def outsideAggregateLocalPartValid2_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0002 :
    outsideAggregateLocalPartValid2_0002 outsideHistoryChunk0002 := by
  unfold outsideAggregateLocalPartValid2_0002 outsideHistoryChunk0002
  decide

def outsideAggregateMarkerPartValid2_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 2304
  | _ => True

theorem outsideAggregateMarkerPart2_0002 :
    outsideAggregateMarkerPartValid2_0002 outsideHistoryChunk0002 := by
  unfold outsideAggregateMarkerPartValid2_0002 outsideHistoryChunk0002
  decide

def outsideAggregateLocalPartValid3_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0002 :
    outsideAggregateLocalPartValid3_0002 outsideHistoryChunk0002 := by
  unfold outsideAggregateLocalPartValid3_0002 outsideHistoryChunk0002
  decide

def outsideAggregateMarkerPartValid3_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 2432
  | _ => True

theorem outsideAggregateMarkerPart3_0002 :
    outsideAggregateMarkerPartValid3_0002 outsideHistoryChunk0002 := by
  unfold outsideAggregateMarkerPartValid3_0002 outsideHistoryChunk0002
  decide

def outsideAggregateLocalPartValid4_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0002 :
    outsideAggregateLocalPartValid4_0002 outsideHistoryChunk0002 := by
  unfold outsideAggregateLocalPartValid4_0002 outsideHistoryChunk0002
  decide

def outsideAggregateMarkerPartValid4_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 2560
  | _ => True

theorem outsideAggregateMarkerPart4_0002 :
    outsideAggregateMarkerPartValid4_0002 outsideHistoryChunk0002 := by
  unfold outsideAggregateMarkerPartValid4_0002 outsideHistoryChunk0002
  decide

def outsideAggregateLocalPartValid5_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0002 :
    outsideAggregateLocalPartValid5_0002 outsideHistoryChunk0002 := by
  unfold outsideAggregateLocalPartValid5_0002 outsideHistoryChunk0002
  decide

def outsideAggregateMarkerPartValid5_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 2688
  | _ => True

theorem outsideAggregateMarkerPart5_0002 :
    outsideAggregateMarkerPartValid5_0002 outsideHistoryChunk0002 := by
  unfold outsideAggregateMarkerPartValid5_0002 outsideHistoryChunk0002
  decide

def outsideAggregateLocalPartValid6_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0002 :
    outsideAggregateLocalPartValid6_0002 outsideHistoryChunk0002 := by
  unfold outsideAggregateLocalPartValid6_0002 outsideHistoryChunk0002
  decide

def outsideAggregateMarkerPartValid6_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 2816
  | _ => True

theorem outsideAggregateMarkerPart6_0002 :
    outsideAggregateMarkerPartValid6_0002 outsideHistoryChunk0002 := by
  unfold outsideAggregateMarkerPartValid6_0002 outsideHistoryChunk0002
  decide

def outsideAggregateLocalPartValid7_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0002 :
    outsideAggregateLocalPartValid7_0002 outsideHistoryChunk0002 := by
  unfold outsideAggregateLocalPartValid7_0002 outsideHistoryChunk0002
  decide

def outsideAggregateMarkerPartValid7_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 2944
  | _ => True

theorem outsideAggregateMarkerPart7_0002 :
    outsideAggregateMarkerPartValid7_0002 outsideHistoryChunk0002 := by
  unfold outsideAggregateMarkerPartValid7_0002 outsideHistoryChunk0002
  decide

theorem outsideRange_0002 :
    outsideHistoryChunk0002.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 2048 := by
  have hl0 := outsideAggregateLocalPart0_0002
  simp only [outsideAggregateLocalPartValid0_0002, outsideHistoryChunk0002] at hl0
  have hl1 := outsideAggregateLocalPart1_0002
  simp only [outsideAggregateLocalPartValid1_0002, outsideHistoryChunk0002] at hl1
  have hl2 := outsideAggregateLocalPart2_0002
  simp only [outsideAggregateLocalPartValid2_0002, outsideHistoryChunk0002] at hl2
  have hl3 := outsideAggregateLocalPart3_0002
  simp only [outsideAggregateLocalPartValid3_0002, outsideHistoryChunk0002] at hl3
  have hl4 := outsideAggregateLocalPart4_0002
  simp only [outsideAggregateLocalPartValid4_0002, outsideHistoryChunk0002] at hl4
  have hl5 := outsideAggregateLocalPart5_0002
  simp only [outsideAggregateLocalPartValid5_0002, outsideHistoryChunk0002] at hl5
  have hl6 := outsideAggregateLocalPart6_0002
  simp only [outsideAggregateLocalPartValid6_0002, outsideHistoryChunk0002] at hl6
  have hl7 := outsideAggregateLocalPart7_0002
  simp only [outsideAggregateLocalPartValid7_0002, outsideHistoryChunk0002] at hl7
  have hm0 := outsideAggregateMarkerPart0_0002
  simp only [outsideAggregateMarkerPartValid0_0002, outsideHistoryChunk0002] at hm0
  have hm1 := outsideAggregateMarkerPart1_0002
  simp only [outsideAggregateMarkerPartValid1_0002, outsideHistoryChunk0002] at hm1
  have hm2 := outsideAggregateMarkerPart2_0002
  simp only [outsideAggregateMarkerPartValid2_0002, outsideHistoryChunk0002] at hm2
  have hm3 := outsideAggregateMarkerPart3_0002
  simp only [outsideAggregateMarkerPartValid3_0002, outsideHistoryChunk0002] at hm3
  have hm4 := outsideAggregateMarkerPart4_0002
  simp only [outsideAggregateMarkerPartValid4_0002, outsideHistoryChunk0002] at hm4
  have hm5 := outsideAggregateMarkerPart5_0002
  simp only [outsideAggregateMarkerPartValid5_0002, outsideHistoryChunk0002] at hm5
  have hm6 := outsideAggregateMarkerPart6_0002
  simp only [outsideAggregateMarkerPartValid6_0002, outsideHistoryChunk0002] at hm6
  have hm7 := outsideAggregateMarkerPart7_0002
  simp only [outsideAggregateMarkerPartValid7_0002, outsideHistoryChunk0002] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0002
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0002
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0003 :
    outsideAggregateLocalPartValid0_0003 outsideHistoryChunk0003 := by
  unfold outsideAggregateLocalPartValid0_0003 outsideHistoryChunk0003
  decide

def outsideAggregateMarkerPartValid0_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 3072
  | _ => True

theorem outsideAggregateMarkerPart0_0003 :
    outsideAggregateMarkerPartValid0_0003 outsideHistoryChunk0003 := by
  unfold outsideAggregateMarkerPartValid0_0003 outsideHistoryChunk0003
  decide

def outsideAggregateLocalPartValid1_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0003 :
    outsideAggregateLocalPartValid1_0003 outsideHistoryChunk0003 := by
  unfold outsideAggregateLocalPartValid1_0003 outsideHistoryChunk0003
  decide

def outsideAggregateMarkerPartValid1_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 3200
  | _ => True

theorem outsideAggregateMarkerPart1_0003 :
    outsideAggregateMarkerPartValid1_0003 outsideHistoryChunk0003 := by
  unfold outsideAggregateMarkerPartValid1_0003 outsideHistoryChunk0003
  decide

def outsideAggregateLocalPartValid2_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0003 :
    outsideAggregateLocalPartValid2_0003 outsideHistoryChunk0003 := by
  unfold outsideAggregateLocalPartValid2_0003 outsideHistoryChunk0003
  decide

def outsideAggregateMarkerPartValid2_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 3328
  | _ => True

theorem outsideAggregateMarkerPart2_0003 :
    outsideAggregateMarkerPartValid2_0003 outsideHistoryChunk0003 := by
  unfold outsideAggregateMarkerPartValid2_0003 outsideHistoryChunk0003
  decide

def outsideAggregateLocalPartValid3_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0003 :
    outsideAggregateLocalPartValid3_0003 outsideHistoryChunk0003 := by
  unfold outsideAggregateLocalPartValid3_0003 outsideHistoryChunk0003
  decide

def outsideAggregateMarkerPartValid3_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 3456
  | _ => True

theorem outsideAggregateMarkerPart3_0003 :
    outsideAggregateMarkerPartValid3_0003 outsideHistoryChunk0003 := by
  unfold outsideAggregateMarkerPartValid3_0003 outsideHistoryChunk0003
  decide

def outsideAggregateLocalPartValid4_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0003 :
    outsideAggregateLocalPartValid4_0003 outsideHistoryChunk0003 := by
  unfold outsideAggregateLocalPartValid4_0003 outsideHistoryChunk0003
  decide

def outsideAggregateMarkerPartValid4_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 3584
  | _ => True

theorem outsideAggregateMarkerPart4_0003 :
    outsideAggregateMarkerPartValid4_0003 outsideHistoryChunk0003 := by
  unfold outsideAggregateMarkerPartValid4_0003 outsideHistoryChunk0003
  decide

def outsideAggregateLocalPartValid5_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0003 :
    outsideAggregateLocalPartValid5_0003 outsideHistoryChunk0003 := by
  unfold outsideAggregateLocalPartValid5_0003 outsideHistoryChunk0003
  decide

def outsideAggregateMarkerPartValid5_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 3712
  | _ => True

theorem outsideAggregateMarkerPart5_0003 :
    outsideAggregateMarkerPartValid5_0003 outsideHistoryChunk0003 := by
  unfold outsideAggregateMarkerPartValid5_0003 outsideHistoryChunk0003
  decide

def outsideAggregateLocalPartValid6_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0003 :
    outsideAggregateLocalPartValid6_0003 outsideHistoryChunk0003 := by
  unfold outsideAggregateLocalPartValid6_0003 outsideHistoryChunk0003
  decide

def outsideAggregateMarkerPartValid6_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 3840
  | _ => True

theorem outsideAggregateMarkerPart6_0003 :
    outsideAggregateMarkerPartValid6_0003 outsideHistoryChunk0003 := by
  unfold outsideAggregateMarkerPartValid6_0003 outsideHistoryChunk0003
  decide

def outsideAggregateLocalPartValid7_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0003 :
    outsideAggregateLocalPartValid7_0003 outsideHistoryChunk0003 := by
  unfold outsideAggregateLocalPartValid7_0003 outsideHistoryChunk0003
  decide

def outsideAggregateMarkerPartValid7_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 3968
  | _ => True

theorem outsideAggregateMarkerPart7_0003 :
    outsideAggregateMarkerPartValid7_0003 outsideHistoryChunk0003 := by
  unfold outsideAggregateMarkerPartValid7_0003 outsideHistoryChunk0003
  decide

theorem outsideRange_0003 :
    outsideHistoryChunk0003.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 3072 := by
  have hl0 := outsideAggregateLocalPart0_0003
  simp only [outsideAggregateLocalPartValid0_0003, outsideHistoryChunk0003] at hl0
  have hl1 := outsideAggregateLocalPart1_0003
  simp only [outsideAggregateLocalPartValid1_0003, outsideHistoryChunk0003] at hl1
  have hl2 := outsideAggregateLocalPart2_0003
  simp only [outsideAggregateLocalPartValid2_0003, outsideHistoryChunk0003] at hl2
  have hl3 := outsideAggregateLocalPart3_0003
  simp only [outsideAggregateLocalPartValid3_0003, outsideHistoryChunk0003] at hl3
  have hl4 := outsideAggregateLocalPart4_0003
  simp only [outsideAggregateLocalPartValid4_0003, outsideHistoryChunk0003] at hl4
  have hl5 := outsideAggregateLocalPart5_0003
  simp only [outsideAggregateLocalPartValid5_0003, outsideHistoryChunk0003] at hl5
  have hl6 := outsideAggregateLocalPart6_0003
  simp only [outsideAggregateLocalPartValid6_0003, outsideHistoryChunk0003] at hl6
  have hl7 := outsideAggregateLocalPart7_0003
  simp only [outsideAggregateLocalPartValid7_0003, outsideHistoryChunk0003] at hl7
  have hm0 := outsideAggregateMarkerPart0_0003
  simp only [outsideAggregateMarkerPartValid0_0003, outsideHistoryChunk0003] at hm0
  have hm1 := outsideAggregateMarkerPart1_0003
  simp only [outsideAggregateMarkerPartValid1_0003, outsideHistoryChunk0003] at hm1
  have hm2 := outsideAggregateMarkerPart2_0003
  simp only [outsideAggregateMarkerPartValid2_0003, outsideHistoryChunk0003] at hm2
  have hm3 := outsideAggregateMarkerPart3_0003
  simp only [outsideAggregateMarkerPartValid3_0003, outsideHistoryChunk0003] at hm3
  have hm4 := outsideAggregateMarkerPart4_0003
  simp only [outsideAggregateMarkerPartValid4_0003, outsideHistoryChunk0003] at hm4
  have hm5 := outsideAggregateMarkerPart5_0003
  simp only [outsideAggregateMarkerPartValid5_0003, outsideHistoryChunk0003] at hm5
  have hm6 := outsideAggregateMarkerPart6_0003
  simp only [outsideAggregateMarkerPartValid6_0003, outsideHistoryChunk0003] at hm6
  have hm7 := outsideAggregateMarkerPart7_0003
  simp only [outsideAggregateMarkerPartValid7_0003, outsideHistoryChunk0003] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0003
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0003
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
