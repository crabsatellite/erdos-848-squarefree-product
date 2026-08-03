import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0100
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0101
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0102
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0103

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0100, 0101, 0102, 0103 -/

def outsideAggregateLocalPartValid0_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0100 :
    outsideAggregateLocalPartValid0_0100 outsideHistoryChunk0100 := by
  unfold outsideAggregateLocalPartValid0_0100 outsideHistoryChunk0100
  decide

def outsideAggregateMarkerPartValid0_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 102400
  | _ => True

theorem outsideAggregateMarkerPart0_0100 :
    outsideAggregateMarkerPartValid0_0100 outsideHistoryChunk0100 := by
  unfold outsideAggregateMarkerPartValid0_0100 outsideHistoryChunk0100
  decide

def outsideAggregateLocalPartValid1_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0100 :
    outsideAggregateLocalPartValid1_0100 outsideHistoryChunk0100 := by
  unfold outsideAggregateLocalPartValid1_0100 outsideHistoryChunk0100
  decide

def outsideAggregateMarkerPartValid1_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 102528
  | _ => True

theorem outsideAggregateMarkerPart1_0100 :
    outsideAggregateMarkerPartValid1_0100 outsideHistoryChunk0100 := by
  unfold outsideAggregateMarkerPartValid1_0100 outsideHistoryChunk0100
  decide

def outsideAggregateLocalPartValid2_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0100 :
    outsideAggregateLocalPartValid2_0100 outsideHistoryChunk0100 := by
  unfold outsideAggregateLocalPartValid2_0100 outsideHistoryChunk0100
  decide

def outsideAggregateMarkerPartValid2_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 102656
  | _ => True

theorem outsideAggregateMarkerPart2_0100 :
    outsideAggregateMarkerPartValid2_0100 outsideHistoryChunk0100 := by
  unfold outsideAggregateMarkerPartValid2_0100 outsideHistoryChunk0100
  decide

def outsideAggregateLocalPartValid3_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0100 :
    outsideAggregateLocalPartValid3_0100 outsideHistoryChunk0100 := by
  unfold outsideAggregateLocalPartValid3_0100 outsideHistoryChunk0100
  decide

def outsideAggregateMarkerPartValid3_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 102784
  | _ => True

theorem outsideAggregateMarkerPart3_0100 :
    outsideAggregateMarkerPartValid3_0100 outsideHistoryChunk0100 := by
  unfold outsideAggregateMarkerPartValid3_0100 outsideHistoryChunk0100
  decide

def outsideAggregateLocalPartValid4_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0100 :
    outsideAggregateLocalPartValid4_0100 outsideHistoryChunk0100 := by
  unfold outsideAggregateLocalPartValid4_0100 outsideHistoryChunk0100
  decide

def outsideAggregateMarkerPartValid4_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 102912
  | _ => True

theorem outsideAggregateMarkerPart4_0100 :
    outsideAggregateMarkerPartValid4_0100 outsideHistoryChunk0100 := by
  unfold outsideAggregateMarkerPartValid4_0100 outsideHistoryChunk0100
  decide

def outsideAggregateLocalPartValid5_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0100 :
    outsideAggregateLocalPartValid5_0100 outsideHistoryChunk0100 := by
  unfold outsideAggregateLocalPartValid5_0100 outsideHistoryChunk0100
  decide

def outsideAggregateMarkerPartValid5_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 103040
  | _ => True

theorem outsideAggregateMarkerPart5_0100 :
    outsideAggregateMarkerPartValid5_0100 outsideHistoryChunk0100 := by
  unfold outsideAggregateMarkerPartValid5_0100 outsideHistoryChunk0100
  decide

def outsideAggregateLocalPartValid6_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0100 :
    outsideAggregateLocalPartValid6_0100 outsideHistoryChunk0100 := by
  unfold outsideAggregateLocalPartValid6_0100 outsideHistoryChunk0100
  decide

def outsideAggregateMarkerPartValid6_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 103168
  | _ => True

theorem outsideAggregateMarkerPart6_0100 :
    outsideAggregateMarkerPartValid6_0100 outsideHistoryChunk0100 := by
  unfold outsideAggregateMarkerPartValid6_0100 outsideHistoryChunk0100
  decide

def outsideAggregateLocalPartValid7_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0100 :
    outsideAggregateLocalPartValid7_0100 outsideHistoryChunk0100 := by
  unfold outsideAggregateLocalPartValid7_0100 outsideHistoryChunk0100
  decide

def outsideAggregateMarkerPartValid7_0100 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 103296
  | _ => True

theorem outsideAggregateMarkerPart7_0100 :
    outsideAggregateMarkerPartValid7_0100 outsideHistoryChunk0100 := by
  unfold outsideAggregateMarkerPartValid7_0100 outsideHistoryChunk0100
  decide

theorem outsideRange_0100 :
    outsideHistoryChunk0100.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 102400 := by
  have hl0 := outsideAggregateLocalPart0_0100
  simp only [outsideAggregateLocalPartValid0_0100, outsideHistoryChunk0100] at hl0
  have hl1 := outsideAggregateLocalPart1_0100
  simp only [outsideAggregateLocalPartValid1_0100, outsideHistoryChunk0100] at hl1
  have hl2 := outsideAggregateLocalPart2_0100
  simp only [outsideAggregateLocalPartValid2_0100, outsideHistoryChunk0100] at hl2
  have hl3 := outsideAggregateLocalPart3_0100
  simp only [outsideAggregateLocalPartValid3_0100, outsideHistoryChunk0100] at hl3
  have hl4 := outsideAggregateLocalPart4_0100
  simp only [outsideAggregateLocalPartValid4_0100, outsideHistoryChunk0100] at hl4
  have hl5 := outsideAggregateLocalPart5_0100
  simp only [outsideAggregateLocalPartValid5_0100, outsideHistoryChunk0100] at hl5
  have hl6 := outsideAggregateLocalPart6_0100
  simp only [outsideAggregateLocalPartValid6_0100, outsideHistoryChunk0100] at hl6
  have hl7 := outsideAggregateLocalPart7_0100
  simp only [outsideAggregateLocalPartValid7_0100, outsideHistoryChunk0100] at hl7
  have hm0 := outsideAggregateMarkerPart0_0100
  simp only [outsideAggregateMarkerPartValid0_0100, outsideHistoryChunk0100] at hm0
  have hm1 := outsideAggregateMarkerPart1_0100
  simp only [outsideAggregateMarkerPartValid1_0100, outsideHistoryChunk0100] at hm1
  have hm2 := outsideAggregateMarkerPart2_0100
  simp only [outsideAggregateMarkerPartValid2_0100, outsideHistoryChunk0100] at hm2
  have hm3 := outsideAggregateMarkerPart3_0100
  simp only [outsideAggregateMarkerPartValid3_0100, outsideHistoryChunk0100] at hm3
  have hm4 := outsideAggregateMarkerPart4_0100
  simp only [outsideAggregateMarkerPartValid4_0100, outsideHistoryChunk0100] at hm4
  have hm5 := outsideAggregateMarkerPart5_0100
  simp only [outsideAggregateMarkerPartValid5_0100, outsideHistoryChunk0100] at hm5
  have hm6 := outsideAggregateMarkerPart6_0100
  simp only [outsideAggregateMarkerPartValid6_0100, outsideHistoryChunk0100] at hm6
  have hm7 := outsideAggregateMarkerPart7_0100
  simp only [outsideAggregateMarkerPartValid7_0100, outsideHistoryChunk0100] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0100
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0100
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0101 :
    outsideAggregateLocalPartValid0_0101 outsideHistoryChunk0101 := by
  unfold outsideAggregateLocalPartValid0_0101 outsideHistoryChunk0101
  decide

def outsideAggregateMarkerPartValid0_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 103424
  | _ => True

theorem outsideAggregateMarkerPart0_0101 :
    outsideAggregateMarkerPartValid0_0101 outsideHistoryChunk0101 := by
  unfold outsideAggregateMarkerPartValid0_0101 outsideHistoryChunk0101
  decide

def outsideAggregateLocalPartValid1_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0101 :
    outsideAggregateLocalPartValid1_0101 outsideHistoryChunk0101 := by
  unfold outsideAggregateLocalPartValid1_0101 outsideHistoryChunk0101
  decide

def outsideAggregateMarkerPartValid1_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 103552
  | _ => True

theorem outsideAggregateMarkerPart1_0101 :
    outsideAggregateMarkerPartValid1_0101 outsideHistoryChunk0101 := by
  unfold outsideAggregateMarkerPartValid1_0101 outsideHistoryChunk0101
  decide

def outsideAggregateLocalPartValid2_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0101 :
    outsideAggregateLocalPartValid2_0101 outsideHistoryChunk0101 := by
  unfold outsideAggregateLocalPartValid2_0101 outsideHistoryChunk0101
  decide

def outsideAggregateMarkerPartValid2_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 103680
  | _ => True

theorem outsideAggregateMarkerPart2_0101 :
    outsideAggregateMarkerPartValid2_0101 outsideHistoryChunk0101 := by
  unfold outsideAggregateMarkerPartValid2_0101 outsideHistoryChunk0101
  decide

def outsideAggregateLocalPartValid3_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0101 :
    outsideAggregateLocalPartValid3_0101 outsideHistoryChunk0101 := by
  unfold outsideAggregateLocalPartValid3_0101 outsideHistoryChunk0101
  decide

def outsideAggregateMarkerPartValid3_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 103808
  | _ => True

theorem outsideAggregateMarkerPart3_0101 :
    outsideAggregateMarkerPartValid3_0101 outsideHistoryChunk0101 := by
  unfold outsideAggregateMarkerPartValid3_0101 outsideHistoryChunk0101
  decide

def outsideAggregateLocalPartValid4_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0101 :
    outsideAggregateLocalPartValid4_0101 outsideHistoryChunk0101 := by
  unfold outsideAggregateLocalPartValid4_0101 outsideHistoryChunk0101
  decide

def outsideAggregateMarkerPartValid4_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 103936
  | _ => True

theorem outsideAggregateMarkerPart4_0101 :
    outsideAggregateMarkerPartValid4_0101 outsideHistoryChunk0101 := by
  unfold outsideAggregateMarkerPartValid4_0101 outsideHistoryChunk0101
  decide

def outsideAggregateLocalPartValid5_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0101 :
    outsideAggregateLocalPartValid5_0101 outsideHistoryChunk0101 := by
  unfold outsideAggregateLocalPartValid5_0101 outsideHistoryChunk0101
  decide

def outsideAggregateMarkerPartValid5_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 104064
  | _ => True

theorem outsideAggregateMarkerPart5_0101 :
    outsideAggregateMarkerPartValid5_0101 outsideHistoryChunk0101 := by
  unfold outsideAggregateMarkerPartValid5_0101 outsideHistoryChunk0101
  decide

def outsideAggregateLocalPartValid6_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0101 :
    outsideAggregateLocalPartValid6_0101 outsideHistoryChunk0101 := by
  unfold outsideAggregateLocalPartValid6_0101 outsideHistoryChunk0101
  decide

def outsideAggregateMarkerPartValid6_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 104192
  | _ => True

theorem outsideAggregateMarkerPart6_0101 :
    outsideAggregateMarkerPartValid6_0101 outsideHistoryChunk0101 := by
  unfold outsideAggregateMarkerPartValid6_0101 outsideHistoryChunk0101
  decide

def outsideAggregateLocalPartValid7_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0101 :
    outsideAggregateLocalPartValid7_0101 outsideHistoryChunk0101 := by
  unfold outsideAggregateLocalPartValid7_0101 outsideHistoryChunk0101
  decide

def outsideAggregateMarkerPartValid7_0101 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 104320
  | _ => True

theorem outsideAggregateMarkerPart7_0101 :
    outsideAggregateMarkerPartValid7_0101 outsideHistoryChunk0101 := by
  unfold outsideAggregateMarkerPartValid7_0101 outsideHistoryChunk0101
  decide

theorem outsideRange_0101 :
    outsideHistoryChunk0101.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 103424 := by
  have hl0 := outsideAggregateLocalPart0_0101
  simp only [outsideAggregateLocalPartValid0_0101, outsideHistoryChunk0101] at hl0
  have hl1 := outsideAggregateLocalPart1_0101
  simp only [outsideAggregateLocalPartValid1_0101, outsideHistoryChunk0101] at hl1
  have hl2 := outsideAggregateLocalPart2_0101
  simp only [outsideAggregateLocalPartValid2_0101, outsideHistoryChunk0101] at hl2
  have hl3 := outsideAggregateLocalPart3_0101
  simp only [outsideAggregateLocalPartValid3_0101, outsideHistoryChunk0101] at hl3
  have hl4 := outsideAggregateLocalPart4_0101
  simp only [outsideAggregateLocalPartValid4_0101, outsideHistoryChunk0101] at hl4
  have hl5 := outsideAggregateLocalPart5_0101
  simp only [outsideAggregateLocalPartValid5_0101, outsideHistoryChunk0101] at hl5
  have hl6 := outsideAggregateLocalPart6_0101
  simp only [outsideAggregateLocalPartValid6_0101, outsideHistoryChunk0101] at hl6
  have hl7 := outsideAggregateLocalPart7_0101
  simp only [outsideAggregateLocalPartValid7_0101, outsideHistoryChunk0101] at hl7
  have hm0 := outsideAggregateMarkerPart0_0101
  simp only [outsideAggregateMarkerPartValid0_0101, outsideHistoryChunk0101] at hm0
  have hm1 := outsideAggregateMarkerPart1_0101
  simp only [outsideAggregateMarkerPartValid1_0101, outsideHistoryChunk0101] at hm1
  have hm2 := outsideAggregateMarkerPart2_0101
  simp only [outsideAggregateMarkerPartValid2_0101, outsideHistoryChunk0101] at hm2
  have hm3 := outsideAggregateMarkerPart3_0101
  simp only [outsideAggregateMarkerPartValid3_0101, outsideHistoryChunk0101] at hm3
  have hm4 := outsideAggregateMarkerPart4_0101
  simp only [outsideAggregateMarkerPartValid4_0101, outsideHistoryChunk0101] at hm4
  have hm5 := outsideAggregateMarkerPart5_0101
  simp only [outsideAggregateMarkerPartValid5_0101, outsideHistoryChunk0101] at hm5
  have hm6 := outsideAggregateMarkerPart6_0101
  simp only [outsideAggregateMarkerPartValid6_0101, outsideHistoryChunk0101] at hm6
  have hm7 := outsideAggregateMarkerPart7_0101
  simp only [outsideAggregateMarkerPartValid7_0101, outsideHistoryChunk0101] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0101
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0101
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0102 :
    outsideAggregateLocalPartValid0_0102 outsideHistoryChunk0102 := by
  unfold outsideAggregateLocalPartValid0_0102 outsideHistoryChunk0102
  decide

def outsideAggregateMarkerPartValid0_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 104448
  | _ => True

theorem outsideAggregateMarkerPart0_0102 :
    outsideAggregateMarkerPartValid0_0102 outsideHistoryChunk0102 := by
  unfold outsideAggregateMarkerPartValid0_0102 outsideHistoryChunk0102
  decide

def outsideAggregateLocalPartValid1_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0102 :
    outsideAggregateLocalPartValid1_0102 outsideHistoryChunk0102 := by
  unfold outsideAggregateLocalPartValid1_0102 outsideHistoryChunk0102
  decide

def outsideAggregateMarkerPartValid1_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 104576
  | _ => True

theorem outsideAggregateMarkerPart1_0102 :
    outsideAggregateMarkerPartValid1_0102 outsideHistoryChunk0102 := by
  unfold outsideAggregateMarkerPartValid1_0102 outsideHistoryChunk0102
  decide

def outsideAggregateLocalPartValid2_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0102 :
    outsideAggregateLocalPartValid2_0102 outsideHistoryChunk0102 := by
  unfold outsideAggregateLocalPartValid2_0102 outsideHistoryChunk0102
  decide

def outsideAggregateMarkerPartValid2_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 104704
  | _ => True

theorem outsideAggregateMarkerPart2_0102 :
    outsideAggregateMarkerPartValid2_0102 outsideHistoryChunk0102 := by
  unfold outsideAggregateMarkerPartValid2_0102 outsideHistoryChunk0102
  decide

def outsideAggregateLocalPartValid3_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0102 :
    outsideAggregateLocalPartValid3_0102 outsideHistoryChunk0102 := by
  unfold outsideAggregateLocalPartValid3_0102 outsideHistoryChunk0102
  decide

def outsideAggregateMarkerPartValid3_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 104832
  | _ => True

theorem outsideAggregateMarkerPart3_0102 :
    outsideAggregateMarkerPartValid3_0102 outsideHistoryChunk0102 := by
  unfold outsideAggregateMarkerPartValid3_0102 outsideHistoryChunk0102
  decide

def outsideAggregateLocalPartValid4_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0102 :
    outsideAggregateLocalPartValid4_0102 outsideHistoryChunk0102 := by
  unfold outsideAggregateLocalPartValid4_0102 outsideHistoryChunk0102
  decide

def outsideAggregateMarkerPartValid4_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 104960
  | _ => True

theorem outsideAggregateMarkerPart4_0102 :
    outsideAggregateMarkerPartValid4_0102 outsideHistoryChunk0102 := by
  unfold outsideAggregateMarkerPartValid4_0102 outsideHistoryChunk0102
  decide

def outsideAggregateLocalPartValid5_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0102 :
    outsideAggregateLocalPartValid5_0102 outsideHistoryChunk0102 := by
  unfold outsideAggregateLocalPartValid5_0102 outsideHistoryChunk0102
  decide

def outsideAggregateMarkerPartValid5_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 105088
  | _ => True

theorem outsideAggregateMarkerPart5_0102 :
    outsideAggregateMarkerPartValid5_0102 outsideHistoryChunk0102 := by
  unfold outsideAggregateMarkerPartValid5_0102 outsideHistoryChunk0102
  decide

def outsideAggregateLocalPartValid6_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0102 :
    outsideAggregateLocalPartValid6_0102 outsideHistoryChunk0102 := by
  unfold outsideAggregateLocalPartValid6_0102 outsideHistoryChunk0102
  decide

def outsideAggregateMarkerPartValid6_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 105216
  | _ => True

theorem outsideAggregateMarkerPart6_0102 :
    outsideAggregateMarkerPartValid6_0102 outsideHistoryChunk0102 := by
  unfold outsideAggregateMarkerPartValid6_0102 outsideHistoryChunk0102
  decide

def outsideAggregateLocalPartValid7_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0102 :
    outsideAggregateLocalPartValid7_0102 outsideHistoryChunk0102 := by
  unfold outsideAggregateLocalPartValid7_0102 outsideHistoryChunk0102
  decide

def outsideAggregateMarkerPartValid7_0102 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 105344
  | _ => True

theorem outsideAggregateMarkerPart7_0102 :
    outsideAggregateMarkerPartValid7_0102 outsideHistoryChunk0102 := by
  unfold outsideAggregateMarkerPartValid7_0102 outsideHistoryChunk0102
  decide

theorem outsideRange_0102 :
    outsideHistoryChunk0102.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 104448 := by
  have hl0 := outsideAggregateLocalPart0_0102
  simp only [outsideAggregateLocalPartValid0_0102, outsideHistoryChunk0102] at hl0
  have hl1 := outsideAggregateLocalPart1_0102
  simp only [outsideAggregateLocalPartValid1_0102, outsideHistoryChunk0102] at hl1
  have hl2 := outsideAggregateLocalPart2_0102
  simp only [outsideAggregateLocalPartValid2_0102, outsideHistoryChunk0102] at hl2
  have hl3 := outsideAggregateLocalPart3_0102
  simp only [outsideAggregateLocalPartValid3_0102, outsideHistoryChunk0102] at hl3
  have hl4 := outsideAggregateLocalPart4_0102
  simp only [outsideAggregateLocalPartValid4_0102, outsideHistoryChunk0102] at hl4
  have hl5 := outsideAggregateLocalPart5_0102
  simp only [outsideAggregateLocalPartValid5_0102, outsideHistoryChunk0102] at hl5
  have hl6 := outsideAggregateLocalPart6_0102
  simp only [outsideAggregateLocalPartValid6_0102, outsideHistoryChunk0102] at hl6
  have hl7 := outsideAggregateLocalPart7_0102
  simp only [outsideAggregateLocalPartValid7_0102, outsideHistoryChunk0102] at hl7
  have hm0 := outsideAggregateMarkerPart0_0102
  simp only [outsideAggregateMarkerPartValid0_0102, outsideHistoryChunk0102] at hm0
  have hm1 := outsideAggregateMarkerPart1_0102
  simp only [outsideAggregateMarkerPartValid1_0102, outsideHistoryChunk0102] at hm1
  have hm2 := outsideAggregateMarkerPart2_0102
  simp only [outsideAggregateMarkerPartValid2_0102, outsideHistoryChunk0102] at hm2
  have hm3 := outsideAggregateMarkerPart3_0102
  simp only [outsideAggregateMarkerPartValid3_0102, outsideHistoryChunk0102] at hm3
  have hm4 := outsideAggregateMarkerPart4_0102
  simp only [outsideAggregateMarkerPartValid4_0102, outsideHistoryChunk0102] at hm4
  have hm5 := outsideAggregateMarkerPart5_0102
  simp only [outsideAggregateMarkerPartValid5_0102, outsideHistoryChunk0102] at hm5
  have hm6 := outsideAggregateMarkerPart6_0102
  simp only [outsideAggregateMarkerPartValid6_0102, outsideHistoryChunk0102] at hm6
  have hm7 := outsideAggregateMarkerPart7_0102
  simp only [outsideAggregateMarkerPartValid7_0102, outsideHistoryChunk0102] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0102
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0102
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0103 :
    outsideAggregateLocalPartValid0_0103 outsideHistoryChunk0103 := by
  unfold outsideAggregateLocalPartValid0_0103 outsideHistoryChunk0103
  decide

def outsideAggregateMarkerPartValid0_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 105472
  | _ => True

theorem outsideAggregateMarkerPart0_0103 :
    outsideAggregateMarkerPartValid0_0103 outsideHistoryChunk0103 := by
  unfold outsideAggregateMarkerPartValid0_0103 outsideHistoryChunk0103
  decide

def outsideAggregateLocalPartValid1_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0103 :
    outsideAggregateLocalPartValid1_0103 outsideHistoryChunk0103 := by
  unfold outsideAggregateLocalPartValid1_0103 outsideHistoryChunk0103
  decide

def outsideAggregateMarkerPartValid1_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 105600
  | _ => True

theorem outsideAggregateMarkerPart1_0103 :
    outsideAggregateMarkerPartValid1_0103 outsideHistoryChunk0103 := by
  unfold outsideAggregateMarkerPartValid1_0103 outsideHistoryChunk0103
  decide

def outsideAggregateLocalPartValid2_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0103 :
    outsideAggregateLocalPartValid2_0103 outsideHistoryChunk0103 := by
  unfold outsideAggregateLocalPartValid2_0103 outsideHistoryChunk0103
  decide

def outsideAggregateMarkerPartValid2_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 105728
  | _ => True

theorem outsideAggregateMarkerPart2_0103 :
    outsideAggregateMarkerPartValid2_0103 outsideHistoryChunk0103 := by
  unfold outsideAggregateMarkerPartValid2_0103 outsideHistoryChunk0103
  decide

def outsideAggregateLocalPartValid3_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0103 :
    outsideAggregateLocalPartValid3_0103 outsideHistoryChunk0103 := by
  unfold outsideAggregateLocalPartValid3_0103 outsideHistoryChunk0103
  decide

def outsideAggregateMarkerPartValid3_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 105856
  | _ => True

theorem outsideAggregateMarkerPart3_0103 :
    outsideAggregateMarkerPartValid3_0103 outsideHistoryChunk0103 := by
  unfold outsideAggregateMarkerPartValid3_0103 outsideHistoryChunk0103
  decide

def outsideAggregateLocalPartValid4_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0103 :
    outsideAggregateLocalPartValid4_0103 outsideHistoryChunk0103 := by
  unfold outsideAggregateLocalPartValid4_0103 outsideHistoryChunk0103
  decide

def outsideAggregateMarkerPartValid4_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 105984
  | _ => True

theorem outsideAggregateMarkerPart4_0103 :
    outsideAggregateMarkerPartValid4_0103 outsideHistoryChunk0103 := by
  unfold outsideAggregateMarkerPartValid4_0103 outsideHistoryChunk0103
  decide

def outsideAggregateLocalPartValid5_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0103 :
    outsideAggregateLocalPartValid5_0103 outsideHistoryChunk0103 := by
  unfold outsideAggregateLocalPartValid5_0103 outsideHistoryChunk0103
  decide

def outsideAggregateMarkerPartValid5_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 106112
  | _ => True

theorem outsideAggregateMarkerPart5_0103 :
    outsideAggregateMarkerPartValid5_0103 outsideHistoryChunk0103 := by
  unfold outsideAggregateMarkerPartValid5_0103 outsideHistoryChunk0103
  decide

def outsideAggregateLocalPartValid6_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0103 :
    outsideAggregateLocalPartValid6_0103 outsideHistoryChunk0103 := by
  unfold outsideAggregateLocalPartValid6_0103 outsideHistoryChunk0103
  decide

def outsideAggregateMarkerPartValid6_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 106240
  | _ => True

theorem outsideAggregateMarkerPart6_0103 :
    outsideAggregateMarkerPartValid6_0103 outsideHistoryChunk0103 := by
  unfold outsideAggregateMarkerPartValid6_0103 outsideHistoryChunk0103
  decide

def outsideAggregateLocalPartValid7_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0103 :
    outsideAggregateLocalPartValid7_0103 outsideHistoryChunk0103 := by
  unfold outsideAggregateLocalPartValid7_0103 outsideHistoryChunk0103
  decide

def outsideAggregateMarkerPartValid7_0103 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 106368
  | _ => True

theorem outsideAggregateMarkerPart7_0103 :
    outsideAggregateMarkerPartValid7_0103 outsideHistoryChunk0103 := by
  unfold outsideAggregateMarkerPartValid7_0103 outsideHistoryChunk0103
  decide

theorem outsideRange_0103 :
    outsideHistoryChunk0103.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 105472 := by
  have hl0 := outsideAggregateLocalPart0_0103
  simp only [outsideAggregateLocalPartValid0_0103, outsideHistoryChunk0103] at hl0
  have hl1 := outsideAggregateLocalPart1_0103
  simp only [outsideAggregateLocalPartValid1_0103, outsideHistoryChunk0103] at hl1
  have hl2 := outsideAggregateLocalPart2_0103
  simp only [outsideAggregateLocalPartValid2_0103, outsideHistoryChunk0103] at hl2
  have hl3 := outsideAggregateLocalPart3_0103
  simp only [outsideAggregateLocalPartValid3_0103, outsideHistoryChunk0103] at hl3
  have hl4 := outsideAggregateLocalPart4_0103
  simp only [outsideAggregateLocalPartValid4_0103, outsideHistoryChunk0103] at hl4
  have hl5 := outsideAggregateLocalPart5_0103
  simp only [outsideAggregateLocalPartValid5_0103, outsideHistoryChunk0103] at hl5
  have hl6 := outsideAggregateLocalPart6_0103
  simp only [outsideAggregateLocalPartValid6_0103, outsideHistoryChunk0103] at hl6
  have hl7 := outsideAggregateLocalPart7_0103
  simp only [outsideAggregateLocalPartValid7_0103, outsideHistoryChunk0103] at hl7
  have hm0 := outsideAggregateMarkerPart0_0103
  simp only [outsideAggregateMarkerPartValid0_0103, outsideHistoryChunk0103] at hm0
  have hm1 := outsideAggregateMarkerPart1_0103
  simp only [outsideAggregateMarkerPartValid1_0103, outsideHistoryChunk0103] at hm1
  have hm2 := outsideAggregateMarkerPart2_0103
  simp only [outsideAggregateMarkerPartValid2_0103, outsideHistoryChunk0103] at hm2
  have hm3 := outsideAggregateMarkerPart3_0103
  simp only [outsideAggregateMarkerPartValid3_0103, outsideHistoryChunk0103] at hm3
  have hm4 := outsideAggregateMarkerPart4_0103
  simp only [outsideAggregateMarkerPartValid4_0103, outsideHistoryChunk0103] at hm4
  have hm5 := outsideAggregateMarkerPart5_0103
  simp only [outsideAggregateMarkerPartValid5_0103, outsideHistoryChunk0103] at hm5
  have hm6 := outsideAggregateMarkerPart6_0103
  simp only [outsideAggregateMarkerPartValid6_0103, outsideHistoryChunk0103] at hm6
  have hm7 := outsideAggregateMarkerPart7_0103
  simp only [outsideAggregateMarkerPartValid7_0103, outsideHistoryChunk0103] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0103
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0103
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
