import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0112
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0113
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0114
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0115

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0112, 0113, 0114, 0115 -/

def outsideAggregateLocalPartValid0_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0112 :
    outsideAggregateLocalPartValid0_0112 outsideHistoryChunk0112 := by
  unfold outsideAggregateLocalPartValid0_0112 outsideHistoryChunk0112
  decide

def outsideAggregateMarkerPartValid0_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 114688
  | _ => True

theorem outsideAggregateMarkerPart0_0112 :
    outsideAggregateMarkerPartValid0_0112 outsideHistoryChunk0112 := by
  unfold outsideAggregateMarkerPartValid0_0112 outsideHistoryChunk0112
  decide

def outsideAggregateLocalPartValid1_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0112 :
    outsideAggregateLocalPartValid1_0112 outsideHistoryChunk0112 := by
  unfold outsideAggregateLocalPartValid1_0112 outsideHistoryChunk0112
  decide

def outsideAggregateMarkerPartValid1_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 114816
  | _ => True

theorem outsideAggregateMarkerPart1_0112 :
    outsideAggregateMarkerPartValid1_0112 outsideHistoryChunk0112 := by
  unfold outsideAggregateMarkerPartValid1_0112 outsideHistoryChunk0112
  decide

def outsideAggregateLocalPartValid2_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0112 :
    outsideAggregateLocalPartValid2_0112 outsideHistoryChunk0112 := by
  unfold outsideAggregateLocalPartValid2_0112 outsideHistoryChunk0112
  decide

def outsideAggregateMarkerPartValid2_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 114944
  | _ => True

theorem outsideAggregateMarkerPart2_0112 :
    outsideAggregateMarkerPartValid2_0112 outsideHistoryChunk0112 := by
  unfold outsideAggregateMarkerPartValid2_0112 outsideHistoryChunk0112
  decide

def outsideAggregateLocalPartValid3_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0112 :
    outsideAggregateLocalPartValid3_0112 outsideHistoryChunk0112 := by
  unfold outsideAggregateLocalPartValid3_0112 outsideHistoryChunk0112
  decide

def outsideAggregateMarkerPartValid3_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 115072
  | _ => True

theorem outsideAggregateMarkerPart3_0112 :
    outsideAggregateMarkerPartValid3_0112 outsideHistoryChunk0112 := by
  unfold outsideAggregateMarkerPartValid3_0112 outsideHistoryChunk0112
  decide

def outsideAggregateLocalPartValid4_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0112 :
    outsideAggregateLocalPartValid4_0112 outsideHistoryChunk0112 := by
  unfold outsideAggregateLocalPartValid4_0112 outsideHistoryChunk0112
  decide

def outsideAggregateMarkerPartValid4_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 115200
  | _ => True

theorem outsideAggregateMarkerPart4_0112 :
    outsideAggregateMarkerPartValid4_0112 outsideHistoryChunk0112 := by
  unfold outsideAggregateMarkerPartValid4_0112 outsideHistoryChunk0112
  decide

def outsideAggregateLocalPartValid5_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0112 :
    outsideAggregateLocalPartValid5_0112 outsideHistoryChunk0112 := by
  unfold outsideAggregateLocalPartValid5_0112 outsideHistoryChunk0112
  decide

def outsideAggregateMarkerPartValid5_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 115328
  | _ => True

theorem outsideAggregateMarkerPart5_0112 :
    outsideAggregateMarkerPartValid5_0112 outsideHistoryChunk0112 := by
  unfold outsideAggregateMarkerPartValid5_0112 outsideHistoryChunk0112
  decide

def outsideAggregateLocalPartValid6_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0112 :
    outsideAggregateLocalPartValid6_0112 outsideHistoryChunk0112 := by
  unfold outsideAggregateLocalPartValid6_0112 outsideHistoryChunk0112
  decide

def outsideAggregateMarkerPartValid6_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 115456
  | _ => True

theorem outsideAggregateMarkerPart6_0112 :
    outsideAggregateMarkerPartValid6_0112 outsideHistoryChunk0112 := by
  unfold outsideAggregateMarkerPartValid6_0112 outsideHistoryChunk0112
  decide

def outsideAggregateLocalPartValid7_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0112 :
    outsideAggregateLocalPartValid7_0112 outsideHistoryChunk0112 := by
  unfold outsideAggregateLocalPartValid7_0112 outsideHistoryChunk0112
  decide

def outsideAggregateMarkerPartValid7_0112 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 115584
  | _ => True

theorem outsideAggregateMarkerPart7_0112 :
    outsideAggregateMarkerPartValid7_0112 outsideHistoryChunk0112 := by
  unfold outsideAggregateMarkerPartValid7_0112 outsideHistoryChunk0112
  decide

theorem outsideRange_0112 :
    outsideHistoryChunk0112.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 114688 := by
  have hl0 := outsideAggregateLocalPart0_0112
  simp only [outsideAggregateLocalPartValid0_0112, outsideHistoryChunk0112] at hl0
  have hl1 := outsideAggregateLocalPart1_0112
  simp only [outsideAggregateLocalPartValid1_0112, outsideHistoryChunk0112] at hl1
  have hl2 := outsideAggregateLocalPart2_0112
  simp only [outsideAggregateLocalPartValid2_0112, outsideHistoryChunk0112] at hl2
  have hl3 := outsideAggregateLocalPart3_0112
  simp only [outsideAggregateLocalPartValid3_0112, outsideHistoryChunk0112] at hl3
  have hl4 := outsideAggregateLocalPart4_0112
  simp only [outsideAggregateLocalPartValid4_0112, outsideHistoryChunk0112] at hl4
  have hl5 := outsideAggregateLocalPart5_0112
  simp only [outsideAggregateLocalPartValid5_0112, outsideHistoryChunk0112] at hl5
  have hl6 := outsideAggregateLocalPart6_0112
  simp only [outsideAggregateLocalPartValid6_0112, outsideHistoryChunk0112] at hl6
  have hl7 := outsideAggregateLocalPart7_0112
  simp only [outsideAggregateLocalPartValid7_0112, outsideHistoryChunk0112] at hl7
  have hm0 := outsideAggregateMarkerPart0_0112
  simp only [outsideAggregateMarkerPartValid0_0112, outsideHistoryChunk0112] at hm0
  have hm1 := outsideAggregateMarkerPart1_0112
  simp only [outsideAggregateMarkerPartValid1_0112, outsideHistoryChunk0112] at hm1
  have hm2 := outsideAggregateMarkerPart2_0112
  simp only [outsideAggregateMarkerPartValid2_0112, outsideHistoryChunk0112] at hm2
  have hm3 := outsideAggregateMarkerPart3_0112
  simp only [outsideAggregateMarkerPartValid3_0112, outsideHistoryChunk0112] at hm3
  have hm4 := outsideAggregateMarkerPart4_0112
  simp only [outsideAggregateMarkerPartValid4_0112, outsideHistoryChunk0112] at hm4
  have hm5 := outsideAggregateMarkerPart5_0112
  simp only [outsideAggregateMarkerPartValid5_0112, outsideHistoryChunk0112] at hm5
  have hm6 := outsideAggregateMarkerPart6_0112
  simp only [outsideAggregateMarkerPartValid6_0112, outsideHistoryChunk0112] at hm6
  have hm7 := outsideAggregateMarkerPart7_0112
  simp only [outsideAggregateMarkerPartValid7_0112, outsideHistoryChunk0112] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0112
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0112
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0113 :
    outsideAggregateLocalPartValid0_0113 outsideHistoryChunk0113 := by
  unfold outsideAggregateLocalPartValid0_0113 outsideHistoryChunk0113
  decide

def outsideAggregateMarkerPartValid0_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 115712
  | _ => True

theorem outsideAggregateMarkerPart0_0113 :
    outsideAggregateMarkerPartValid0_0113 outsideHistoryChunk0113 := by
  unfold outsideAggregateMarkerPartValid0_0113 outsideHistoryChunk0113
  decide

def outsideAggregateLocalPartValid1_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0113 :
    outsideAggregateLocalPartValid1_0113 outsideHistoryChunk0113 := by
  unfold outsideAggregateLocalPartValid1_0113 outsideHistoryChunk0113
  decide

def outsideAggregateMarkerPartValid1_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 115840
  | _ => True

theorem outsideAggregateMarkerPart1_0113 :
    outsideAggregateMarkerPartValid1_0113 outsideHistoryChunk0113 := by
  unfold outsideAggregateMarkerPartValid1_0113 outsideHistoryChunk0113
  decide

def outsideAggregateLocalPartValid2_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0113 :
    outsideAggregateLocalPartValid2_0113 outsideHistoryChunk0113 := by
  unfold outsideAggregateLocalPartValid2_0113 outsideHistoryChunk0113
  decide

def outsideAggregateMarkerPartValid2_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 115968
  | _ => True

theorem outsideAggregateMarkerPart2_0113 :
    outsideAggregateMarkerPartValid2_0113 outsideHistoryChunk0113 := by
  unfold outsideAggregateMarkerPartValid2_0113 outsideHistoryChunk0113
  decide

def outsideAggregateLocalPartValid3_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0113 :
    outsideAggregateLocalPartValid3_0113 outsideHistoryChunk0113 := by
  unfold outsideAggregateLocalPartValid3_0113 outsideHistoryChunk0113
  decide

def outsideAggregateMarkerPartValid3_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 116096
  | _ => True

theorem outsideAggregateMarkerPart3_0113 :
    outsideAggregateMarkerPartValid3_0113 outsideHistoryChunk0113 := by
  unfold outsideAggregateMarkerPartValid3_0113 outsideHistoryChunk0113
  decide

def outsideAggregateLocalPartValid4_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0113 :
    outsideAggregateLocalPartValid4_0113 outsideHistoryChunk0113 := by
  unfold outsideAggregateLocalPartValid4_0113 outsideHistoryChunk0113
  decide

def outsideAggregateMarkerPartValid4_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 116224
  | _ => True

theorem outsideAggregateMarkerPart4_0113 :
    outsideAggregateMarkerPartValid4_0113 outsideHistoryChunk0113 := by
  unfold outsideAggregateMarkerPartValid4_0113 outsideHistoryChunk0113
  decide

def outsideAggregateLocalPartValid5_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0113 :
    outsideAggregateLocalPartValid5_0113 outsideHistoryChunk0113 := by
  unfold outsideAggregateLocalPartValid5_0113 outsideHistoryChunk0113
  decide

def outsideAggregateMarkerPartValid5_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 116352
  | _ => True

theorem outsideAggregateMarkerPart5_0113 :
    outsideAggregateMarkerPartValid5_0113 outsideHistoryChunk0113 := by
  unfold outsideAggregateMarkerPartValid5_0113 outsideHistoryChunk0113
  decide

def outsideAggregateLocalPartValid6_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0113 :
    outsideAggregateLocalPartValid6_0113 outsideHistoryChunk0113 := by
  unfold outsideAggregateLocalPartValid6_0113 outsideHistoryChunk0113
  decide

def outsideAggregateMarkerPartValid6_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 116480
  | _ => True

theorem outsideAggregateMarkerPart6_0113 :
    outsideAggregateMarkerPartValid6_0113 outsideHistoryChunk0113 := by
  unfold outsideAggregateMarkerPartValid6_0113 outsideHistoryChunk0113
  decide

def outsideAggregateLocalPartValid7_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0113 :
    outsideAggregateLocalPartValid7_0113 outsideHistoryChunk0113 := by
  unfold outsideAggregateLocalPartValid7_0113 outsideHistoryChunk0113
  decide

def outsideAggregateMarkerPartValid7_0113 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 116608
  | _ => True

theorem outsideAggregateMarkerPart7_0113 :
    outsideAggregateMarkerPartValid7_0113 outsideHistoryChunk0113 := by
  unfold outsideAggregateMarkerPartValid7_0113 outsideHistoryChunk0113
  decide

theorem outsideRange_0113 :
    outsideHistoryChunk0113.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 115712 := by
  have hl0 := outsideAggregateLocalPart0_0113
  simp only [outsideAggregateLocalPartValid0_0113, outsideHistoryChunk0113] at hl0
  have hl1 := outsideAggregateLocalPart1_0113
  simp only [outsideAggregateLocalPartValid1_0113, outsideHistoryChunk0113] at hl1
  have hl2 := outsideAggregateLocalPart2_0113
  simp only [outsideAggregateLocalPartValid2_0113, outsideHistoryChunk0113] at hl2
  have hl3 := outsideAggregateLocalPart3_0113
  simp only [outsideAggregateLocalPartValid3_0113, outsideHistoryChunk0113] at hl3
  have hl4 := outsideAggregateLocalPart4_0113
  simp only [outsideAggregateLocalPartValid4_0113, outsideHistoryChunk0113] at hl4
  have hl5 := outsideAggregateLocalPart5_0113
  simp only [outsideAggregateLocalPartValid5_0113, outsideHistoryChunk0113] at hl5
  have hl6 := outsideAggregateLocalPart6_0113
  simp only [outsideAggregateLocalPartValid6_0113, outsideHistoryChunk0113] at hl6
  have hl7 := outsideAggregateLocalPart7_0113
  simp only [outsideAggregateLocalPartValid7_0113, outsideHistoryChunk0113] at hl7
  have hm0 := outsideAggregateMarkerPart0_0113
  simp only [outsideAggregateMarkerPartValid0_0113, outsideHistoryChunk0113] at hm0
  have hm1 := outsideAggregateMarkerPart1_0113
  simp only [outsideAggregateMarkerPartValid1_0113, outsideHistoryChunk0113] at hm1
  have hm2 := outsideAggregateMarkerPart2_0113
  simp only [outsideAggregateMarkerPartValid2_0113, outsideHistoryChunk0113] at hm2
  have hm3 := outsideAggregateMarkerPart3_0113
  simp only [outsideAggregateMarkerPartValid3_0113, outsideHistoryChunk0113] at hm3
  have hm4 := outsideAggregateMarkerPart4_0113
  simp only [outsideAggregateMarkerPartValid4_0113, outsideHistoryChunk0113] at hm4
  have hm5 := outsideAggregateMarkerPart5_0113
  simp only [outsideAggregateMarkerPartValid5_0113, outsideHistoryChunk0113] at hm5
  have hm6 := outsideAggregateMarkerPart6_0113
  simp only [outsideAggregateMarkerPartValid6_0113, outsideHistoryChunk0113] at hm6
  have hm7 := outsideAggregateMarkerPart7_0113
  simp only [outsideAggregateMarkerPartValid7_0113, outsideHistoryChunk0113] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0113
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0113
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0114 :
    outsideAggregateLocalPartValid0_0114 outsideHistoryChunk0114 := by
  unfold outsideAggregateLocalPartValid0_0114 outsideHistoryChunk0114
  decide

def outsideAggregateMarkerPartValid0_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 116736
  | _ => True

theorem outsideAggregateMarkerPart0_0114 :
    outsideAggregateMarkerPartValid0_0114 outsideHistoryChunk0114 := by
  unfold outsideAggregateMarkerPartValid0_0114 outsideHistoryChunk0114
  decide

def outsideAggregateLocalPartValid1_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0114 :
    outsideAggregateLocalPartValid1_0114 outsideHistoryChunk0114 := by
  unfold outsideAggregateLocalPartValid1_0114 outsideHistoryChunk0114
  decide

def outsideAggregateMarkerPartValid1_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 116864
  | _ => True

theorem outsideAggregateMarkerPart1_0114 :
    outsideAggregateMarkerPartValid1_0114 outsideHistoryChunk0114 := by
  unfold outsideAggregateMarkerPartValid1_0114 outsideHistoryChunk0114
  decide

def outsideAggregateLocalPartValid2_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0114 :
    outsideAggregateLocalPartValid2_0114 outsideHistoryChunk0114 := by
  unfold outsideAggregateLocalPartValid2_0114 outsideHistoryChunk0114
  decide

def outsideAggregateMarkerPartValid2_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 116992
  | _ => True

theorem outsideAggregateMarkerPart2_0114 :
    outsideAggregateMarkerPartValid2_0114 outsideHistoryChunk0114 := by
  unfold outsideAggregateMarkerPartValid2_0114 outsideHistoryChunk0114
  decide

def outsideAggregateLocalPartValid3_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0114 :
    outsideAggregateLocalPartValid3_0114 outsideHistoryChunk0114 := by
  unfold outsideAggregateLocalPartValid3_0114 outsideHistoryChunk0114
  decide

def outsideAggregateMarkerPartValid3_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 117120
  | _ => True

theorem outsideAggregateMarkerPart3_0114 :
    outsideAggregateMarkerPartValid3_0114 outsideHistoryChunk0114 := by
  unfold outsideAggregateMarkerPartValid3_0114 outsideHistoryChunk0114
  decide

def outsideAggregateLocalPartValid4_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0114 :
    outsideAggregateLocalPartValid4_0114 outsideHistoryChunk0114 := by
  unfold outsideAggregateLocalPartValid4_0114 outsideHistoryChunk0114
  decide

def outsideAggregateMarkerPartValid4_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 117248
  | _ => True

theorem outsideAggregateMarkerPart4_0114 :
    outsideAggregateMarkerPartValid4_0114 outsideHistoryChunk0114 := by
  unfold outsideAggregateMarkerPartValid4_0114 outsideHistoryChunk0114
  decide

def outsideAggregateLocalPartValid5_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0114 :
    outsideAggregateLocalPartValid5_0114 outsideHistoryChunk0114 := by
  unfold outsideAggregateLocalPartValid5_0114 outsideHistoryChunk0114
  decide

def outsideAggregateMarkerPartValid5_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 117376
  | _ => True

theorem outsideAggregateMarkerPart5_0114 :
    outsideAggregateMarkerPartValid5_0114 outsideHistoryChunk0114 := by
  unfold outsideAggregateMarkerPartValid5_0114 outsideHistoryChunk0114
  decide

def outsideAggregateLocalPartValid6_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0114 :
    outsideAggregateLocalPartValid6_0114 outsideHistoryChunk0114 := by
  unfold outsideAggregateLocalPartValid6_0114 outsideHistoryChunk0114
  decide

def outsideAggregateMarkerPartValid6_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 117504
  | _ => True

theorem outsideAggregateMarkerPart6_0114 :
    outsideAggregateMarkerPartValid6_0114 outsideHistoryChunk0114 := by
  unfold outsideAggregateMarkerPartValid6_0114 outsideHistoryChunk0114
  decide

def outsideAggregateLocalPartValid7_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0114 :
    outsideAggregateLocalPartValid7_0114 outsideHistoryChunk0114 := by
  unfold outsideAggregateLocalPartValid7_0114 outsideHistoryChunk0114
  decide

def outsideAggregateMarkerPartValid7_0114 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 117632
  | _ => True

theorem outsideAggregateMarkerPart7_0114 :
    outsideAggregateMarkerPartValid7_0114 outsideHistoryChunk0114 := by
  unfold outsideAggregateMarkerPartValid7_0114 outsideHistoryChunk0114
  decide

theorem outsideRange_0114 :
    outsideHistoryChunk0114.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 116736 := by
  have hl0 := outsideAggregateLocalPart0_0114
  simp only [outsideAggregateLocalPartValid0_0114, outsideHistoryChunk0114] at hl0
  have hl1 := outsideAggregateLocalPart1_0114
  simp only [outsideAggregateLocalPartValid1_0114, outsideHistoryChunk0114] at hl1
  have hl2 := outsideAggregateLocalPart2_0114
  simp only [outsideAggregateLocalPartValid2_0114, outsideHistoryChunk0114] at hl2
  have hl3 := outsideAggregateLocalPart3_0114
  simp only [outsideAggregateLocalPartValid3_0114, outsideHistoryChunk0114] at hl3
  have hl4 := outsideAggregateLocalPart4_0114
  simp only [outsideAggregateLocalPartValid4_0114, outsideHistoryChunk0114] at hl4
  have hl5 := outsideAggregateLocalPart5_0114
  simp only [outsideAggregateLocalPartValid5_0114, outsideHistoryChunk0114] at hl5
  have hl6 := outsideAggregateLocalPart6_0114
  simp only [outsideAggregateLocalPartValid6_0114, outsideHistoryChunk0114] at hl6
  have hl7 := outsideAggregateLocalPart7_0114
  simp only [outsideAggregateLocalPartValid7_0114, outsideHistoryChunk0114] at hl7
  have hm0 := outsideAggregateMarkerPart0_0114
  simp only [outsideAggregateMarkerPartValid0_0114, outsideHistoryChunk0114] at hm0
  have hm1 := outsideAggregateMarkerPart1_0114
  simp only [outsideAggregateMarkerPartValid1_0114, outsideHistoryChunk0114] at hm1
  have hm2 := outsideAggregateMarkerPart2_0114
  simp only [outsideAggregateMarkerPartValid2_0114, outsideHistoryChunk0114] at hm2
  have hm3 := outsideAggregateMarkerPart3_0114
  simp only [outsideAggregateMarkerPartValid3_0114, outsideHistoryChunk0114] at hm3
  have hm4 := outsideAggregateMarkerPart4_0114
  simp only [outsideAggregateMarkerPartValid4_0114, outsideHistoryChunk0114] at hm4
  have hm5 := outsideAggregateMarkerPart5_0114
  simp only [outsideAggregateMarkerPartValid5_0114, outsideHistoryChunk0114] at hm5
  have hm6 := outsideAggregateMarkerPart6_0114
  simp only [outsideAggregateMarkerPartValid6_0114, outsideHistoryChunk0114] at hm6
  have hm7 := outsideAggregateMarkerPart7_0114
  simp only [outsideAggregateMarkerPartValid7_0114, outsideHistoryChunk0114] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0114
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0114
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0115 :
    outsideAggregateLocalPartValid0_0115 outsideHistoryChunk0115 := by
  unfold outsideAggregateLocalPartValid0_0115 outsideHistoryChunk0115
  decide

def outsideAggregateMarkerPartValid0_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 117760
  | _ => True

theorem outsideAggregateMarkerPart0_0115 :
    outsideAggregateMarkerPartValid0_0115 outsideHistoryChunk0115 := by
  unfold outsideAggregateMarkerPartValid0_0115 outsideHistoryChunk0115
  decide

def outsideAggregateLocalPartValid1_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0115 :
    outsideAggregateLocalPartValid1_0115 outsideHistoryChunk0115 := by
  unfold outsideAggregateLocalPartValid1_0115 outsideHistoryChunk0115
  decide

def outsideAggregateMarkerPartValid1_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 117888
  | _ => True

theorem outsideAggregateMarkerPart1_0115 :
    outsideAggregateMarkerPartValid1_0115 outsideHistoryChunk0115 := by
  unfold outsideAggregateMarkerPartValid1_0115 outsideHistoryChunk0115
  decide

def outsideAggregateLocalPartValid2_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0115 :
    outsideAggregateLocalPartValid2_0115 outsideHistoryChunk0115 := by
  unfold outsideAggregateLocalPartValid2_0115 outsideHistoryChunk0115
  decide

def outsideAggregateMarkerPartValid2_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 118016
  | _ => True

theorem outsideAggregateMarkerPart2_0115 :
    outsideAggregateMarkerPartValid2_0115 outsideHistoryChunk0115 := by
  unfold outsideAggregateMarkerPartValid2_0115 outsideHistoryChunk0115
  decide

def outsideAggregateLocalPartValid3_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0115 :
    outsideAggregateLocalPartValid3_0115 outsideHistoryChunk0115 := by
  unfold outsideAggregateLocalPartValid3_0115 outsideHistoryChunk0115
  decide

def outsideAggregateMarkerPartValid3_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 118144
  | _ => True

theorem outsideAggregateMarkerPart3_0115 :
    outsideAggregateMarkerPartValid3_0115 outsideHistoryChunk0115 := by
  unfold outsideAggregateMarkerPartValid3_0115 outsideHistoryChunk0115
  decide

def outsideAggregateLocalPartValid4_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0115 :
    outsideAggregateLocalPartValid4_0115 outsideHistoryChunk0115 := by
  unfold outsideAggregateLocalPartValid4_0115 outsideHistoryChunk0115
  decide

def outsideAggregateMarkerPartValid4_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 118272
  | _ => True

theorem outsideAggregateMarkerPart4_0115 :
    outsideAggregateMarkerPartValid4_0115 outsideHistoryChunk0115 := by
  unfold outsideAggregateMarkerPartValid4_0115 outsideHistoryChunk0115
  decide

def outsideAggregateLocalPartValid5_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0115 :
    outsideAggregateLocalPartValid5_0115 outsideHistoryChunk0115 := by
  unfold outsideAggregateLocalPartValid5_0115 outsideHistoryChunk0115
  decide

def outsideAggregateMarkerPartValid5_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 118400
  | _ => True

theorem outsideAggregateMarkerPart5_0115 :
    outsideAggregateMarkerPartValid5_0115 outsideHistoryChunk0115 := by
  unfold outsideAggregateMarkerPartValid5_0115 outsideHistoryChunk0115
  decide

def outsideAggregateLocalPartValid6_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0115 :
    outsideAggregateLocalPartValid6_0115 outsideHistoryChunk0115 := by
  unfold outsideAggregateLocalPartValid6_0115 outsideHistoryChunk0115
  decide

def outsideAggregateMarkerPartValid6_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 118528
  | _ => True

theorem outsideAggregateMarkerPart6_0115 :
    outsideAggregateMarkerPartValid6_0115 outsideHistoryChunk0115 := by
  unfold outsideAggregateMarkerPartValid6_0115 outsideHistoryChunk0115
  decide

def outsideAggregateLocalPartValid7_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0115 :
    outsideAggregateLocalPartValid7_0115 outsideHistoryChunk0115 := by
  unfold outsideAggregateLocalPartValid7_0115 outsideHistoryChunk0115
  decide

def outsideAggregateMarkerPartValid7_0115 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 118656
  | _ => True

theorem outsideAggregateMarkerPart7_0115 :
    outsideAggregateMarkerPartValid7_0115 outsideHistoryChunk0115 := by
  unfold outsideAggregateMarkerPartValid7_0115 outsideHistoryChunk0115
  decide

theorem outsideRange_0115 :
    outsideHistoryChunk0115.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 117760 := by
  have hl0 := outsideAggregateLocalPart0_0115
  simp only [outsideAggregateLocalPartValid0_0115, outsideHistoryChunk0115] at hl0
  have hl1 := outsideAggregateLocalPart1_0115
  simp only [outsideAggregateLocalPartValid1_0115, outsideHistoryChunk0115] at hl1
  have hl2 := outsideAggregateLocalPart2_0115
  simp only [outsideAggregateLocalPartValid2_0115, outsideHistoryChunk0115] at hl2
  have hl3 := outsideAggregateLocalPart3_0115
  simp only [outsideAggregateLocalPartValid3_0115, outsideHistoryChunk0115] at hl3
  have hl4 := outsideAggregateLocalPart4_0115
  simp only [outsideAggregateLocalPartValid4_0115, outsideHistoryChunk0115] at hl4
  have hl5 := outsideAggregateLocalPart5_0115
  simp only [outsideAggregateLocalPartValid5_0115, outsideHistoryChunk0115] at hl5
  have hl6 := outsideAggregateLocalPart6_0115
  simp only [outsideAggregateLocalPartValid6_0115, outsideHistoryChunk0115] at hl6
  have hl7 := outsideAggregateLocalPart7_0115
  simp only [outsideAggregateLocalPartValid7_0115, outsideHistoryChunk0115] at hl7
  have hm0 := outsideAggregateMarkerPart0_0115
  simp only [outsideAggregateMarkerPartValid0_0115, outsideHistoryChunk0115] at hm0
  have hm1 := outsideAggregateMarkerPart1_0115
  simp only [outsideAggregateMarkerPartValid1_0115, outsideHistoryChunk0115] at hm1
  have hm2 := outsideAggregateMarkerPart2_0115
  simp only [outsideAggregateMarkerPartValid2_0115, outsideHistoryChunk0115] at hm2
  have hm3 := outsideAggregateMarkerPart3_0115
  simp only [outsideAggregateMarkerPartValid3_0115, outsideHistoryChunk0115] at hm3
  have hm4 := outsideAggregateMarkerPart4_0115
  simp only [outsideAggregateMarkerPartValid4_0115, outsideHistoryChunk0115] at hm4
  have hm5 := outsideAggregateMarkerPart5_0115
  simp only [outsideAggregateMarkerPartValid5_0115, outsideHistoryChunk0115] at hm5
  have hm6 := outsideAggregateMarkerPart6_0115
  simp only [outsideAggregateMarkerPartValid6_0115, outsideHistoryChunk0115] at hm6
  have hm7 := outsideAggregateMarkerPart7_0115
  simp only [outsideAggregateMarkerPartValid7_0115, outsideHistoryChunk0115] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0115
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0115
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
