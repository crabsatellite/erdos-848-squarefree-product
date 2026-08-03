import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0104
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0105
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0106
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0107

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0104, 0105, 0106, 0107 -/

def outsideAggregateLocalPartValid0_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0104 :
    outsideAggregateLocalPartValid0_0104 outsideHistoryChunk0104 := by
  unfold outsideAggregateLocalPartValid0_0104 outsideHistoryChunk0104
  decide

def outsideAggregateMarkerPartValid0_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 106496
  | _ => True

theorem outsideAggregateMarkerPart0_0104 :
    outsideAggregateMarkerPartValid0_0104 outsideHistoryChunk0104 := by
  unfold outsideAggregateMarkerPartValid0_0104 outsideHistoryChunk0104
  decide

def outsideAggregateLocalPartValid1_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0104 :
    outsideAggregateLocalPartValid1_0104 outsideHistoryChunk0104 := by
  unfold outsideAggregateLocalPartValid1_0104 outsideHistoryChunk0104
  decide

def outsideAggregateMarkerPartValid1_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 106624
  | _ => True

theorem outsideAggregateMarkerPart1_0104 :
    outsideAggregateMarkerPartValid1_0104 outsideHistoryChunk0104 := by
  unfold outsideAggregateMarkerPartValid1_0104 outsideHistoryChunk0104
  decide

def outsideAggregateLocalPartValid2_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0104 :
    outsideAggregateLocalPartValid2_0104 outsideHistoryChunk0104 := by
  unfold outsideAggregateLocalPartValid2_0104 outsideHistoryChunk0104
  decide

def outsideAggregateMarkerPartValid2_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 106752
  | _ => True

theorem outsideAggregateMarkerPart2_0104 :
    outsideAggregateMarkerPartValid2_0104 outsideHistoryChunk0104 := by
  unfold outsideAggregateMarkerPartValid2_0104 outsideHistoryChunk0104
  decide

def outsideAggregateLocalPartValid3_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0104 :
    outsideAggregateLocalPartValid3_0104 outsideHistoryChunk0104 := by
  unfold outsideAggregateLocalPartValid3_0104 outsideHistoryChunk0104
  decide

def outsideAggregateMarkerPartValid3_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 106880
  | _ => True

theorem outsideAggregateMarkerPart3_0104 :
    outsideAggregateMarkerPartValid3_0104 outsideHistoryChunk0104 := by
  unfold outsideAggregateMarkerPartValid3_0104 outsideHistoryChunk0104
  decide

def outsideAggregateLocalPartValid4_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0104 :
    outsideAggregateLocalPartValid4_0104 outsideHistoryChunk0104 := by
  unfold outsideAggregateLocalPartValid4_0104 outsideHistoryChunk0104
  decide

def outsideAggregateMarkerPartValid4_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 107008
  | _ => True

theorem outsideAggregateMarkerPart4_0104 :
    outsideAggregateMarkerPartValid4_0104 outsideHistoryChunk0104 := by
  unfold outsideAggregateMarkerPartValid4_0104 outsideHistoryChunk0104
  decide

def outsideAggregateLocalPartValid5_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0104 :
    outsideAggregateLocalPartValid5_0104 outsideHistoryChunk0104 := by
  unfold outsideAggregateLocalPartValid5_0104 outsideHistoryChunk0104
  decide

def outsideAggregateMarkerPartValid5_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 107136
  | _ => True

theorem outsideAggregateMarkerPart5_0104 :
    outsideAggregateMarkerPartValid5_0104 outsideHistoryChunk0104 := by
  unfold outsideAggregateMarkerPartValid5_0104 outsideHistoryChunk0104
  decide

def outsideAggregateLocalPartValid6_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0104 :
    outsideAggregateLocalPartValid6_0104 outsideHistoryChunk0104 := by
  unfold outsideAggregateLocalPartValid6_0104 outsideHistoryChunk0104
  decide

def outsideAggregateMarkerPartValid6_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 107264
  | _ => True

theorem outsideAggregateMarkerPart6_0104 :
    outsideAggregateMarkerPartValid6_0104 outsideHistoryChunk0104 := by
  unfold outsideAggregateMarkerPartValid6_0104 outsideHistoryChunk0104
  decide

def outsideAggregateLocalPartValid7_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0104 :
    outsideAggregateLocalPartValid7_0104 outsideHistoryChunk0104 := by
  unfold outsideAggregateLocalPartValid7_0104 outsideHistoryChunk0104
  decide

def outsideAggregateMarkerPartValid7_0104 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 107392
  | _ => True

theorem outsideAggregateMarkerPart7_0104 :
    outsideAggregateMarkerPartValid7_0104 outsideHistoryChunk0104 := by
  unfold outsideAggregateMarkerPartValid7_0104 outsideHistoryChunk0104
  decide

theorem outsideRange_0104 :
    outsideHistoryChunk0104.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 106496 := by
  have hl0 := outsideAggregateLocalPart0_0104
  simp only [outsideAggregateLocalPartValid0_0104, outsideHistoryChunk0104] at hl0
  have hl1 := outsideAggregateLocalPart1_0104
  simp only [outsideAggregateLocalPartValid1_0104, outsideHistoryChunk0104] at hl1
  have hl2 := outsideAggregateLocalPart2_0104
  simp only [outsideAggregateLocalPartValid2_0104, outsideHistoryChunk0104] at hl2
  have hl3 := outsideAggregateLocalPart3_0104
  simp only [outsideAggregateLocalPartValid3_0104, outsideHistoryChunk0104] at hl3
  have hl4 := outsideAggregateLocalPart4_0104
  simp only [outsideAggregateLocalPartValid4_0104, outsideHistoryChunk0104] at hl4
  have hl5 := outsideAggregateLocalPart5_0104
  simp only [outsideAggregateLocalPartValid5_0104, outsideHistoryChunk0104] at hl5
  have hl6 := outsideAggregateLocalPart6_0104
  simp only [outsideAggregateLocalPartValid6_0104, outsideHistoryChunk0104] at hl6
  have hl7 := outsideAggregateLocalPart7_0104
  simp only [outsideAggregateLocalPartValid7_0104, outsideHistoryChunk0104] at hl7
  have hm0 := outsideAggregateMarkerPart0_0104
  simp only [outsideAggregateMarkerPartValid0_0104, outsideHistoryChunk0104] at hm0
  have hm1 := outsideAggregateMarkerPart1_0104
  simp only [outsideAggregateMarkerPartValid1_0104, outsideHistoryChunk0104] at hm1
  have hm2 := outsideAggregateMarkerPart2_0104
  simp only [outsideAggregateMarkerPartValid2_0104, outsideHistoryChunk0104] at hm2
  have hm3 := outsideAggregateMarkerPart3_0104
  simp only [outsideAggregateMarkerPartValid3_0104, outsideHistoryChunk0104] at hm3
  have hm4 := outsideAggregateMarkerPart4_0104
  simp only [outsideAggregateMarkerPartValid4_0104, outsideHistoryChunk0104] at hm4
  have hm5 := outsideAggregateMarkerPart5_0104
  simp only [outsideAggregateMarkerPartValid5_0104, outsideHistoryChunk0104] at hm5
  have hm6 := outsideAggregateMarkerPart6_0104
  simp only [outsideAggregateMarkerPartValid6_0104, outsideHistoryChunk0104] at hm6
  have hm7 := outsideAggregateMarkerPart7_0104
  simp only [outsideAggregateMarkerPartValid7_0104, outsideHistoryChunk0104] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0104
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0104
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0105 :
    outsideAggregateLocalPartValid0_0105 outsideHistoryChunk0105 := by
  unfold outsideAggregateLocalPartValid0_0105 outsideHistoryChunk0105
  decide

def outsideAggregateMarkerPartValid0_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 107520
  | _ => True

theorem outsideAggregateMarkerPart0_0105 :
    outsideAggregateMarkerPartValid0_0105 outsideHistoryChunk0105 := by
  unfold outsideAggregateMarkerPartValid0_0105 outsideHistoryChunk0105
  decide

def outsideAggregateLocalPartValid1_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0105 :
    outsideAggregateLocalPartValid1_0105 outsideHistoryChunk0105 := by
  unfold outsideAggregateLocalPartValid1_0105 outsideHistoryChunk0105
  decide

def outsideAggregateMarkerPartValid1_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 107648
  | _ => True

theorem outsideAggregateMarkerPart1_0105 :
    outsideAggregateMarkerPartValid1_0105 outsideHistoryChunk0105 := by
  unfold outsideAggregateMarkerPartValid1_0105 outsideHistoryChunk0105
  decide

def outsideAggregateLocalPartValid2_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0105 :
    outsideAggregateLocalPartValid2_0105 outsideHistoryChunk0105 := by
  unfold outsideAggregateLocalPartValid2_0105 outsideHistoryChunk0105
  decide

def outsideAggregateMarkerPartValid2_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 107776
  | _ => True

theorem outsideAggregateMarkerPart2_0105 :
    outsideAggregateMarkerPartValid2_0105 outsideHistoryChunk0105 := by
  unfold outsideAggregateMarkerPartValid2_0105 outsideHistoryChunk0105
  decide

def outsideAggregateLocalPartValid3_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0105 :
    outsideAggregateLocalPartValid3_0105 outsideHistoryChunk0105 := by
  unfold outsideAggregateLocalPartValid3_0105 outsideHistoryChunk0105
  decide

def outsideAggregateMarkerPartValid3_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 107904
  | _ => True

theorem outsideAggregateMarkerPart3_0105 :
    outsideAggregateMarkerPartValid3_0105 outsideHistoryChunk0105 := by
  unfold outsideAggregateMarkerPartValid3_0105 outsideHistoryChunk0105
  decide

def outsideAggregateLocalPartValid4_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0105 :
    outsideAggregateLocalPartValid4_0105 outsideHistoryChunk0105 := by
  unfold outsideAggregateLocalPartValid4_0105 outsideHistoryChunk0105
  decide

def outsideAggregateMarkerPartValid4_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 108032
  | _ => True

theorem outsideAggregateMarkerPart4_0105 :
    outsideAggregateMarkerPartValid4_0105 outsideHistoryChunk0105 := by
  unfold outsideAggregateMarkerPartValid4_0105 outsideHistoryChunk0105
  decide

def outsideAggregateLocalPartValid5_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0105 :
    outsideAggregateLocalPartValid5_0105 outsideHistoryChunk0105 := by
  unfold outsideAggregateLocalPartValid5_0105 outsideHistoryChunk0105
  decide

def outsideAggregateMarkerPartValid5_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 108160
  | _ => True

theorem outsideAggregateMarkerPart5_0105 :
    outsideAggregateMarkerPartValid5_0105 outsideHistoryChunk0105 := by
  unfold outsideAggregateMarkerPartValid5_0105 outsideHistoryChunk0105
  decide

def outsideAggregateLocalPartValid6_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0105 :
    outsideAggregateLocalPartValid6_0105 outsideHistoryChunk0105 := by
  unfold outsideAggregateLocalPartValid6_0105 outsideHistoryChunk0105
  decide

def outsideAggregateMarkerPartValid6_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 108288
  | _ => True

theorem outsideAggregateMarkerPart6_0105 :
    outsideAggregateMarkerPartValid6_0105 outsideHistoryChunk0105 := by
  unfold outsideAggregateMarkerPartValid6_0105 outsideHistoryChunk0105
  decide

def outsideAggregateLocalPartValid7_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0105 :
    outsideAggregateLocalPartValid7_0105 outsideHistoryChunk0105 := by
  unfold outsideAggregateLocalPartValid7_0105 outsideHistoryChunk0105
  decide

def outsideAggregateMarkerPartValid7_0105 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 108416
  | _ => True

theorem outsideAggregateMarkerPart7_0105 :
    outsideAggregateMarkerPartValid7_0105 outsideHistoryChunk0105 := by
  unfold outsideAggregateMarkerPartValid7_0105 outsideHistoryChunk0105
  decide

theorem outsideRange_0105 :
    outsideHistoryChunk0105.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 107520 := by
  have hl0 := outsideAggregateLocalPart0_0105
  simp only [outsideAggregateLocalPartValid0_0105, outsideHistoryChunk0105] at hl0
  have hl1 := outsideAggregateLocalPart1_0105
  simp only [outsideAggregateLocalPartValid1_0105, outsideHistoryChunk0105] at hl1
  have hl2 := outsideAggregateLocalPart2_0105
  simp only [outsideAggregateLocalPartValid2_0105, outsideHistoryChunk0105] at hl2
  have hl3 := outsideAggregateLocalPart3_0105
  simp only [outsideAggregateLocalPartValid3_0105, outsideHistoryChunk0105] at hl3
  have hl4 := outsideAggregateLocalPart4_0105
  simp only [outsideAggregateLocalPartValid4_0105, outsideHistoryChunk0105] at hl4
  have hl5 := outsideAggregateLocalPart5_0105
  simp only [outsideAggregateLocalPartValid5_0105, outsideHistoryChunk0105] at hl5
  have hl6 := outsideAggregateLocalPart6_0105
  simp only [outsideAggregateLocalPartValid6_0105, outsideHistoryChunk0105] at hl6
  have hl7 := outsideAggregateLocalPart7_0105
  simp only [outsideAggregateLocalPartValid7_0105, outsideHistoryChunk0105] at hl7
  have hm0 := outsideAggregateMarkerPart0_0105
  simp only [outsideAggregateMarkerPartValid0_0105, outsideHistoryChunk0105] at hm0
  have hm1 := outsideAggregateMarkerPart1_0105
  simp only [outsideAggregateMarkerPartValid1_0105, outsideHistoryChunk0105] at hm1
  have hm2 := outsideAggregateMarkerPart2_0105
  simp only [outsideAggregateMarkerPartValid2_0105, outsideHistoryChunk0105] at hm2
  have hm3 := outsideAggregateMarkerPart3_0105
  simp only [outsideAggregateMarkerPartValid3_0105, outsideHistoryChunk0105] at hm3
  have hm4 := outsideAggregateMarkerPart4_0105
  simp only [outsideAggregateMarkerPartValid4_0105, outsideHistoryChunk0105] at hm4
  have hm5 := outsideAggregateMarkerPart5_0105
  simp only [outsideAggregateMarkerPartValid5_0105, outsideHistoryChunk0105] at hm5
  have hm6 := outsideAggregateMarkerPart6_0105
  simp only [outsideAggregateMarkerPartValid6_0105, outsideHistoryChunk0105] at hm6
  have hm7 := outsideAggregateMarkerPart7_0105
  simp only [outsideAggregateMarkerPartValid7_0105, outsideHistoryChunk0105] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0105
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0105
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0106 :
    outsideAggregateLocalPartValid0_0106 outsideHistoryChunk0106 := by
  unfold outsideAggregateLocalPartValid0_0106 outsideHistoryChunk0106
  decide

def outsideAggregateMarkerPartValid0_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 108544
  | _ => True

theorem outsideAggregateMarkerPart0_0106 :
    outsideAggregateMarkerPartValid0_0106 outsideHistoryChunk0106 := by
  unfold outsideAggregateMarkerPartValid0_0106 outsideHistoryChunk0106
  decide

def outsideAggregateLocalPartValid1_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0106 :
    outsideAggregateLocalPartValid1_0106 outsideHistoryChunk0106 := by
  unfold outsideAggregateLocalPartValid1_0106 outsideHistoryChunk0106
  decide

def outsideAggregateMarkerPartValid1_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 108672
  | _ => True

theorem outsideAggregateMarkerPart1_0106 :
    outsideAggregateMarkerPartValid1_0106 outsideHistoryChunk0106 := by
  unfold outsideAggregateMarkerPartValid1_0106 outsideHistoryChunk0106
  decide

def outsideAggregateLocalPartValid2_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0106 :
    outsideAggregateLocalPartValid2_0106 outsideHistoryChunk0106 := by
  unfold outsideAggregateLocalPartValid2_0106 outsideHistoryChunk0106
  decide

def outsideAggregateMarkerPartValid2_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 108800
  | _ => True

theorem outsideAggregateMarkerPart2_0106 :
    outsideAggregateMarkerPartValid2_0106 outsideHistoryChunk0106 := by
  unfold outsideAggregateMarkerPartValid2_0106 outsideHistoryChunk0106
  decide

def outsideAggregateLocalPartValid3_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0106 :
    outsideAggregateLocalPartValid3_0106 outsideHistoryChunk0106 := by
  unfold outsideAggregateLocalPartValid3_0106 outsideHistoryChunk0106
  decide

def outsideAggregateMarkerPartValid3_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 108928
  | _ => True

theorem outsideAggregateMarkerPart3_0106 :
    outsideAggregateMarkerPartValid3_0106 outsideHistoryChunk0106 := by
  unfold outsideAggregateMarkerPartValid3_0106 outsideHistoryChunk0106
  decide

def outsideAggregateLocalPartValid4_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0106 :
    outsideAggregateLocalPartValid4_0106 outsideHistoryChunk0106 := by
  unfold outsideAggregateLocalPartValid4_0106 outsideHistoryChunk0106
  decide

def outsideAggregateMarkerPartValid4_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 109056
  | _ => True

theorem outsideAggregateMarkerPart4_0106 :
    outsideAggregateMarkerPartValid4_0106 outsideHistoryChunk0106 := by
  unfold outsideAggregateMarkerPartValid4_0106 outsideHistoryChunk0106
  decide

def outsideAggregateLocalPartValid5_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0106 :
    outsideAggregateLocalPartValid5_0106 outsideHistoryChunk0106 := by
  unfold outsideAggregateLocalPartValid5_0106 outsideHistoryChunk0106
  decide

def outsideAggregateMarkerPartValid5_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 109184
  | _ => True

theorem outsideAggregateMarkerPart5_0106 :
    outsideAggregateMarkerPartValid5_0106 outsideHistoryChunk0106 := by
  unfold outsideAggregateMarkerPartValid5_0106 outsideHistoryChunk0106
  decide

def outsideAggregateLocalPartValid6_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0106 :
    outsideAggregateLocalPartValid6_0106 outsideHistoryChunk0106 := by
  unfold outsideAggregateLocalPartValid6_0106 outsideHistoryChunk0106
  decide

def outsideAggregateMarkerPartValid6_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 109312
  | _ => True

theorem outsideAggregateMarkerPart6_0106 :
    outsideAggregateMarkerPartValid6_0106 outsideHistoryChunk0106 := by
  unfold outsideAggregateMarkerPartValid6_0106 outsideHistoryChunk0106
  decide

def outsideAggregateLocalPartValid7_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0106 :
    outsideAggregateLocalPartValid7_0106 outsideHistoryChunk0106 := by
  unfold outsideAggregateLocalPartValid7_0106 outsideHistoryChunk0106
  decide

def outsideAggregateMarkerPartValid7_0106 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 109440
  | _ => True

theorem outsideAggregateMarkerPart7_0106 :
    outsideAggregateMarkerPartValid7_0106 outsideHistoryChunk0106 := by
  unfold outsideAggregateMarkerPartValid7_0106 outsideHistoryChunk0106
  decide

theorem outsideRange_0106 :
    outsideHistoryChunk0106.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 108544 := by
  have hl0 := outsideAggregateLocalPart0_0106
  simp only [outsideAggregateLocalPartValid0_0106, outsideHistoryChunk0106] at hl0
  have hl1 := outsideAggregateLocalPart1_0106
  simp only [outsideAggregateLocalPartValid1_0106, outsideHistoryChunk0106] at hl1
  have hl2 := outsideAggregateLocalPart2_0106
  simp only [outsideAggregateLocalPartValid2_0106, outsideHistoryChunk0106] at hl2
  have hl3 := outsideAggregateLocalPart3_0106
  simp only [outsideAggregateLocalPartValid3_0106, outsideHistoryChunk0106] at hl3
  have hl4 := outsideAggregateLocalPart4_0106
  simp only [outsideAggregateLocalPartValid4_0106, outsideHistoryChunk0106] at hl4
  have hl5 := outsideAggregateLocalPart5_0106
  simp only [outsideAggregateLocalPartValid5_0106, outsideHistoryChunk0106] at hl5
  have hl6 := outsideAggregateLocalPart6_0106
  simp only [outsideAggregateLocalPartValid6_0106, outsideHistoryChunk0106] at hl6
  have hl7 := outsideAggregateLocalPart7_0106
  simp only [outsideAggregateLocalPartValid7_0106, outsideHistoryChunk0106] at hl7
  have hm0 := outsideAggregateMarkerPart0_0106
  simp only [outsideAggregateMarkerPartValid0_0106, outsideHistoryChunk0106] at hm0
  have hm1 := outsideAggregateMarkerPart1_0106
  simp only [outsideAggregateMarkerPartValid1_0106, outsideHistoryChunk0106] at hm1
  have hm2 := outsideAggregateMarkerPart2_0106
  simp only [outsideAggregateMarkerPartValid2_0106, outsideHistoryChunk0106] at hm2
  have hm3 := outsideAggregateMarkerPart3_0106
  simp only [outsideAggregateMarkerPartValid3_0106, outsideHistoryChunk0106] at hm3
  have hm4 := outsideAggregateMarkerPart4_0106
  simp only [outsideAggregateMarkerPartValid4_0106, outsideHistoryChunk0106] at hm4
  have hm5 := outsideAggregateMarkerPart5_0106
  simp only [outsideAggregateMarkerPartValid5_0106, outsideHistoryChunk0106] at hm5
  have hm6 := outsideAggregateMarkerPart6_0106
  simp only [outsideAggregateMarkerPartValid6_0106, outsideHistoryChunk0106] at hm6
  have hm7 := outsideAggregateMarkerPart7_0106
  simp only [outsideAggregateMarkerPartValid7_0106, outsideHistoryChunk0106] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0106
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0106
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0107 :
    outsideAggregateLocalPartValid0_0107 outsideHistoryChunk0107 := by
  unfold outsideAggregateLocalPartValid0_0107 outsideHistoryChunk0107
  decide

def outsideAggregateMarkerPartValid0_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 109568
  | _ => True

theorem outsideAggregateMarkerPart0_0107 :
    outsideAggregateMarkerPartValid0_0107 outsideHistoryChunk0107 := by
  unfold outsideAggregateMarkerPartValid0_0107 outsideHistoryChunk0107
  decide

def outsideAggregateLocalPartValid1_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0107 :
    outsideAggregateLocalPartValid1_0107 outsideHistoryChunk0107 := by
  unfold outsideAggregateLocalPartValid1_0107 outsideHistoryChunk0107
  decide

def outsideAggregateMarkerPartValid1_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 109696
  | _ => True

theorem outsideAggregateMarkerPart1_0107 :
    outsideAggregateMarkerPartValid1_0107 outsideHistoryChunk0107 := by
  unfold outsideAggregateMarkerPartValid1_0107 outsideHistoryChunk0107
  decide

def outsideAggregateLocalPartValid2_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0107 :
    outsideAggregateLocalPartValid2_0107 outsideHistoryChunk0107 := by
  unfold outsideAggregateLocalPartValid2_0107 outsideHistoryChunk0107
  decide

def outsideAggregateMarkerPartValid2_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 109824
  | _ => True

theorem outsideAggregateMarkerPart2_0107 :
    outsideAggregateMarkerPartValid2_0107 outsideHistoryChunk0107 := by
  unfold outsideAggregateMarkerPartValid2_0107 outsideHistoryChunk0107
  decide

def outsideAggregateLocalPartValid3_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0107 :
    outsideAggregateLocalPartValid3_0107 outsideHistoryChunk0107 := by
  unfold outsideAggregateLocalPartValid3_0107 outsideHistoryChunk0107
  decide

def outsideAggregateMarkerPartValid3_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 109952
  | _ => True

theorem outsideAggregateMarkerPart3_0107 :
    outsideAggregateMarkerPartValid3_0107 outsideHistoryChunk0107 := by
  unfold outsideAggregateMarkerPartValid3_0107 outsideHistoryChunk0107
  decide

def outsideAggregateLocalPartValid4_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0107 :
    outsideAggregateLocalPartValid4_0107 outsideHistoryChunk0107 := by
  unfold outsideAggregateLocalPartValid4_0107 outsideHistoryChunk0107
  decide

def outsideAggregateMarkerPartValid4_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 110080
  | _ => True

theorem outsideAggregateMarkerPart4_0107 :
    outsideAggregateMarkerPartValid4_0107 outsideHistoryChunk0107 := by
  unfold outsideAggregateMarkerPartValid4_0107 outsideHistoryChunk0107
  decide

def outsideAggregateLocalPartValid5_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0107 :
    outsideAggregateLocalPartValid5_0107 outsideHistoryChunk0107 := by
  unfold outsideAggregateLocalPartValid5_0107 outsideHistoryChunk0107
  decide

def outsideAggregateMarkerPartValid5_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 110208
  | _ => True

theorem outsideAggregateMarkerPart5_0107 :
    outsideAggregateMarkerPartValid5_0107 outsideHistoryChunk0107 := by
  unfold outsideAggregateMarkerPartValid5_0107 outsideHistoryChunk0107
  decide

def outsideAggregateLocalPartValid6_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0107 :
    outsideAggregateLocalPartValid6_0107 outsideHistoryChunk0107 := by
  unfold outsideAggregateLocalPartValid6_0107 outsideHistoryChunk0107
  decide

def outsideAggregateMarkerPartValid6_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 110336
  | _ => True

theorem outsideAggregateMarkerPart6_0107 :
    outsideAggregateMarkerPartValid6_0107 outsideHistoryChunk0107 := by
  unfold outsideAggregateMarkerPartValid6_0107 outsideHistoryChunk0107
  decide

def outsideAggregateLocalPartValid7_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0107 :
    outsideAggregateLocalPartValid7_0107 outsideHistoryChunk0107 := by
  unfold outsideAggregateLocalPartValid7_0107 outsideHistoryChunk0107
  decide

def outsideAggregateMarkerPartValid7_0107 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 110464
  | _ => True

theorem outsideAggregateMarkerPart7_0107 :
    outsideAggregateMarkerPartValid7_0107 outsideHistoryChunk0107 := by
  unfold outsideAggregateMarkerPartValid7_0107 outsideHistoryChunk0107
  decide

theorem outsideRange_0107 :
    outsideHistoryChunk0107.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 109568 := by
  have hl0 := outsideAggregateLocalPart0_0107
  simp only [outsideAggregateLocalPartValid0_0107, outsideHistoryChunk0107] at hl0
  have hl1 := outsideAggregateLocalPart1_0107
  simp only [outsideAggregateLocalPartValid1_0107, outsideHistoryChunk0107] at hl1
  have hl2 := outsideAggregateLocalPart2_0107
  simp only [outsideAggregateLocalPartValid2_0107, outsideHistoryChunk0107] at hl2
  have hl3 := outsideAggregateLocalPart3_0107
  simp only [outsideAggregateLocalPartValid3_0107, outsideHistoryChunk0107] at hl3
  have hl4 := outsideAggregateLocalPart4_0107
  simp only [outsideAggregateLocalPartValid4_0107, outsideHistoryChunk0107] at hl4
  have hl5 := outsideAggregateLocalPart5_0107
  simp only [outsideAggregateLocalPartValid5_0107, outsideHistoryChunk0107] at hl5
  have hl6 := outsideAggregateLocalPart6_0107
  simp only [outsideAggregateLocalPartValid6_0107, outsideHistoryChunk0107] at hl6
  have hl7 := outsideAggregateLocalPart7_0107
  simp only [outsideAggregateLocalPartValid7_0107, outsideHistoryChunk0107] at hl7
  have hm0 := outsideAggregateMarkerPart0_0107
  simp only [outsideAggregateMarkerPartValid0_0107, outsideHistoryChunk0107] at hm0
  have hm1 := outsideAggregateMarkerPart1_0107
  simp only [outsideAggregateMarkerPartValid1_0107, outsideHistoryChunk0107] at hm1
  have hm2 := outsideAggregateMarkerPart2_0107
  simp only [outsideAggregateMarkerPartValid2_0107, outsideHistoryChunk0107] at hm2
  have hm3 := outsideAggregateMarkerPart3_0107
  simp only [outsideAggregateMarkerPartValid3_0107, outsideHistoryChunk0107] at hm3
  have hm4 := outsideAggregateMarkerPart4_0107
  simp only [outsideAggregateMarkerPartValid4_0107, outsideHistoryChunk0107] at hm4
  have hm5 := outsideAggregateMarkerPart5_0107
  simp only [outsideAggregateMarkerPartValid5_0107, outsideHistoryChunk0107] at hm5
  have hm6 := outsideAggregateMarkerPart6_0107
  simp only [outsideAggregateMarkerPartValid6_0107, outsideHistoryChunk0107] at hm6
  have hm7 := outsideAggregateMarkerPart7_0107
  simp only [outsideAggregateMarkerPartValid7_0107, outsideHistoryChunk0107] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0107
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0107
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
