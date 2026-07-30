import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0036
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0037
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0038
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0039

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0036, 0037, 0038, 0039 -/

def outsideAggregateLocalPartValid0_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0036 :
    outsideAggregateLocalPartValid0_0036 outsideHistoryChunk0036 := by
  unfold outsideAggregateLocalPartValid0_0036 outsideHistoryChunk0036
  decide

def outsideAggregateMarkerPartValid0_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 36864
  | _ => True

theorem outsideAggregateMarkerPart0_0036 :
    outsideAggregateMarkerPartValid0_0036 outsideHistoryChunk0036 := by
  unfold outsideAggregateMarkerPartValid0_0036 outsideHistoryChunk0036
  decide

def outsideAggregateLocalPartValid1_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0036 :
    outsideAggregateLocalPartValid1_0036 outsideHistoryChunk0036 := by
  unfold outsideAggregateLocalPartValid1_0036 outsideHistoryChunk0036
  decide

def outsideAggregateMarkerPartValid1_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 36992
  | _ => True

theorem outsideAggregateMarkerPart1_0036 :
    outsideAggregateMarkerPartValid1_0036 outsideHistoryChunk0036 := by
  unfold outsideAggregateMarkerPartValid1_0036 outsideHistoryChunk0036
  decide

def outsideAggregateLocalPartValid2_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0036 :
    outsideAggregateLocalPartValid2_0036 outsideHistoryChunk0036 := by
  unfold outsideAggregateLocalPartValid2_0036 outsideHistoryChunk0036
  decide

def outsideAggregateMarkerPartValid2_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 37120
  | _ => True

theorem outsideAggregateMarkerPart2_0036 :
    outsideAggregateMarkerPartValid2_0036 outsideHistoryChunk0036 := by
  unfold outsideAggregateMarkerPartValid2_0036 outsideHistoryChunk0036
  decide

def outsideAggregateLocalPartValid3_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0036 :
    outsideAggregateLocalPartValid3_0036 outsideHistoryChunk0036 := by
  unfold outsideAggregateLocalPartValid3_0036 outsideHistoryChunk0036
  decide

def outsideAggregateMarkerPartValid3_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 37248
  | _ => True

theorem outsideAggregateMarkerPart3_0036 :
    outsideAggregateMarkerPartValid3_0036 outsideHistoryChunk0036 := by
  unfold outsideAggregateMarkerPartValid3_0036 outsideHistoryChunk0036
  decide

def outsideAggregateLocalPartValid4_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0036 :
    outsideAggregateLocalPartValid4_0036 outsideHistoryChunk0036 := by
  unfold outsideAggregateLocalPartValid4_0036 outsideHistoryChunk0036
  decide

def outsideAggregateMarkerPartValid4_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 37376
  | _ => True

theorem outsideAggregateMarkerPart4_0036 :
    outsideAggregateMarkerPartValid4_0036 outsideHistoryChunk0036 := by
  unfold outsideAggregateMarkerPartValid4_0036 outsideHistoryChunk0036
  decide

def outsideAggregateLocalPartValid5_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0036 :
    outsideAggregateLocalPartValid5_0036 outsideHistoryChunk0036 := by
  unfold outsideAggregateLocalPartValid5_0036 outsideHistoryChunk0036
  decide

def outsideAggregateMarkerPartValid5_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 37504
  | _ => True

theorem outsideAggregateMarkerPart5_0036 :
    outsideAggregateMarkerPartValid5_0036 outsideHistoryChunk0036 := by
  unfold outsideAggregateMarkerPartValid5_0036 outsideHistoryChunk0036
  decide

def outsideAggregateLocalPartValid6_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0036 :
    outsideAggregateLocalPartValid6_0036 outsideHistoryChunk0036 := by
  unfold outsideAggregateLocalPartValid6_0036 outsideHistoryChunk0036
  decide

def outsideAggregateMarkerPartValid6_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 37632
  | _ => True

theorem outsideAggregateMarkerPart6_0036 :
    outsideAggregateMarkerPartValid6_0036 outsideHistoryChunk0036 := by
  unfold outsideAggregateMarkerPartValid6_0036 outsideHistoryChunk0036
  decide

def outsideAggregateLocalPartValid7_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0036 :
    outsideAggregateLocalPartValid7_0036 outsideHistoryChunk0036 := by
  unfold outsideAggregateLocalPartValid7_0036 outsideHistoryChunk0036
  decide

def outsideAggregateMarkerPartValid7_0036 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 37760
  | _ => True

theorem outsideAggregateMarkerPart7_0036 :
    outsideAggregateMarkerPartValid7_0036 outsideHistoryChunk0036 := by
  unfold outsideAggregateMarkerPartValid7_0036 outsideHistoryChunk0036
  decide

theorem outsideRange_0036 :
    outsideHistoryChunk0036.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 36864 := by
  have hl0 := outsideAggregateLocalPart0_0036
  simp only [outsideAggregateLocalPartValid0_0036, outsideHistoryChunk0036] at hl0
  have hl1 := outsideAggregateLocalPart1_0036
  simp only [outsideAggregateLocalPartValid1_0036, outsideHistoryChunk0036] at hl1
  have hl2 := outsideAggregateLocalPart2_0036
  simp only [outsideAggregateLocalPartValid2_0036, outsideHistoryChunk0036] at hl2
  have hl3 := outsideAggregateLocalPart3_0036
  simp only [outsideAggregateLocalPartValid3_0036, outsideHistoryChunk0036] at hl3
  have hl4 := outsideAggregateLocalPart4_0036
  simp only [outsideAggregateLocalPartValid4_0036, outsideHistoryChunk0036] at hl4
  have hl5 := outsideAggregateLocalPart5_0036
  simp only [outsideAggregateLocalPartValid5_0036, outsideHistoryChunk0036] at hl5
  have hl6 := outsideAggregateLocalPart6_0036
  simp only [outsideAggregateLocalPartValid6_0036, outsideHistoryChunk0036] at hl6
  have hl7 := outsideAggregateLocalPart7_0036
  simp only [outsideAggregateLocalPartValid7_0036, outsideHistoryChunk0036] at hl7
  have hm0 := outsideAggregateMarkerPart0_0036
  simp only [outsideAggregateMarkerPartValid0_0036, outsideHistoryChunk0036] at hm0
  have hm1 := outsideAggregateMarkerPart1_0036
  simp only [outsideAggregateMarkerPartValid1_0036, outsideHistoryChunk0036] at hm1
  have hm2 := outsideAggregateMarkerPart2_0036
  simp only [outsideAggregateMarkerPartValid2_0036, outsideHistoryChunk0036] at hm2
  have hm3 := outsideAggregateMarkerPart3_0036
  simp only [outsideAggregateMarkerPartValid3_0036, outsideHistoryChunk0036] at hm3
  have hm4 := outsideAggregateMarkerPart4_0036
  simp only [outsideAggregateMarkerPartValid4_0036, outsideHistoryChunk0036] at hm4
  have hm5 := outsideAggregateMarkerPart5_0036
  simp only [outsideAggregateMarkerPartValid5_0036, outsideHistoryChunk0036] at hm5
  have hm6 := outsideAggregateMarkerPart6_0036
  simp only [outsideAggregateMarkerPartValid6_0036, outsideHistoryChunk0036] at hm6
  have hm7 := outsideAggregateMarkerPart7_0036
  simp only [outsideAggregateMarkerPartValid7_0036, outsideHistoryChunk0036] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0036
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0036
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0037 :
    outsideAggregateLocalPartValid0_0037 outsideHistoryChunk0037 := by
  unfold outsideAggregateLocalPartValid0_0037 outsideHistoryChunk0037
  decide

def outsideAggregateMarkerPartValid0_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 37888
  | _ => True

theorem outsideAggregateMarkerPart0_0037 :
    outsideAggregateMarkerPartValid0_0037 outsideHistoryChunk0037 := by
  unfold outsideAggregateMarkerPartValid0_0037 outsideHistoryChunk0037
  decide

def outsideAggregateLocalPartValid1_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0037 :
    outsideAggregateLocalPartValid1_0037 outsideHistoryChunk0037 := by
  unfold outsideAggregateLocalPartValid1_0037 outsideHistoryChunk0037
  decide

def outsideAggregateMarkerPartValid1_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 38016
  | _ => True

theorem outsideAggregateMarkerPart1_0037 :
    outsideAggregateMarkerPartValid1_0037 outsideHistoryChunk0037 := by
  unfold outsideAggregateMarkerPartValid1_0037 outsideHistoryChunk0037
  decide

def outsideAggregateLocalPartValid2_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0037 :
    outsideAggregateLocalPartValid2_0037 outsideHistoryChunk0037 := by
  unfold outsideAggregateLocalPartValid2_0037 outsideHistoryChunk0037
  decide

def outsideAggregateMarkerPartValid2_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 38144
  | _ => True

theorem outsideAggregateMarkerPart2_0037 :
    outsideAggregateMarkerPartValid2_0037 outsideHistoryChunk0037 := by
  unfold outsideAggregateMarkerPartValid2_0037 outsideHistoryChunk0037
  decide

def outsideAggregateLocalPartValid3_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0037 :
    outsideAggregateLocalPartValid3_0037 outsideHistoryChunk0037 := by
  unfold outsideAggregateLocalPartValid3_0037 outsideHistoryChunk0037
  decide

def outsideAggregateMarkerPartValid3_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 38272
  | _ => True

theorem outsideAggregateMarkerPart3_0037 :
    outsideAggregateMarkerPartValid3_0037 outsideHistoryChunk0037 := by
  unfold outsideAggregateMarkerPartValid3_0037 outsideHistoryChunk0037
  decide

def outsideAggregateLocalPartValid4_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0037 :
    outsideAggregateLocalPartValid4_0037 outsideHistoryChunk0037 := by
  unfold outsideAggregateLocalPartValid4_0037 outsideHistoryChunk0037
  decide

def outsideAggregateMarkerPartValid4_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 38400
  | _ => True

theorem outsideAggregateMarkerPart4_0037 :
    outsideAggregateMarkerPartValid4_0037 outsideHistoryChunk0037 := by
  unfold outsideAggregateMarkerPartValid4_0037 outsideHistoryChunk0037
  decide

def outsideAggregateLocalPartValid5_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0037 :
    outsideAggregateLocalPartValid5_0037 outsideHistoryChunk0037 := by
  unfold outsideAggregateLocalPartValid5_0037 outsideHistoryChunk0037
  decide

def outsideAggregateMarkerPartValid5_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 38528
  | _ => True

theorem outsideAggregateMarkerPart5_0037 :
    outsideAggregateMarkerPartValid5_0037 outsideHistoryChunk0037 := by
  unfold outsideAggregateMarkerPartValid5_0037 outsideHistoryChunk0037
  decide

def outsideAggregateLocalPartValid6_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0037 :
    outsideAggregateLocalPartValid6_0037 outsideHistoryChunk0037 := by
  unfold outsideAggregateLocalPartValid6_0037 outsideHistoryChunk0037
  decide

def outsideAggregateMarkerPartValid6_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 38656
  | _ => True

theorem outsideAggregateMarkerPart6_0037 :
    outsideAggregateMarkerPartValid6_0037 outsideHistoryChunk0037 := by
  unfold outsideAggregateMarkerPartValid6_0037 outsideHistoryChunk0037
  decide

def outsideAggregateLocalPartValid7_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0037 :
    outsideAggregateLocalPartValid7_0037 outsideHistoryChunk0037 := by
  unfold outsideAggregateLocalPartValid7_0037 outsideHistoryChunk0037
  decide

def outsideAggregateMarkerPartValid7_0037 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 38784
  | _ => True

theorem outsideAggregateMarkerPart7_0037 :
    outsideAggregateMarkerPartValid7_0037 outsideHistoryChunk0037 := by
  unfold outsideAggregateMarkerPartValid7_0037 outsideHistoryChunk0037
  decide

theorem outsideRange_0037 :
    outsideHistoryChunk0037.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 37888 := by
  have hl0 := outsideAggregateLocalPart0_0037
  simp only [outsideAggregateLocalPartValid0_0037, outsideHistoryChunk0037] at hl0
  have hl1 := outsideAggregateLocalPart1_0037
  simp only [outsideAggregateLocalPartValid1_0037, outsideHistoryChunk0037] at hl1
  have hl2 := outsideAggregateLocalPart2_0037
  simp only [outsideAggregateLocalPartValid2_0037, outsideHistoryChunk0037] at hl2
  have hl3 := outsideAggregateLocalPart3_0037
  simp only [outsideAggregateLocalPartValid3_0037, outsideHistoryChunk0037] at hl3
  have hl4 := outsideAggregateLocalPart4_0037
  simp only [outsideAggregateLocalPartValid4_0037, outsideHistoryChunk0037] at hl4
  have hl5 := outsideAggregateLocalPart5_0037
  simp only [outsideAggregateLocalPartValid5_0037, outsideHistoryChunk0037] at hl5
  have hl6 := outsideAggregateLocalPart6_0037
  simp only [outsideAggregateLocalPartValid6_0037, outsideHistoryChunk0037] at hl6
  have hl7 := outsideAggregateLocalPart7_0037
  simp only [outsideAggregateLocalPartValid7_0037, outsideHistoryChunk0037] at hl7
  have hm0 := outsideAggregateMarkerPart0_0037
  simp only [outsideAggregateMarkerPartValid0_0037, outsideHistoryChunk0037] at hm0
  have hm1 := outsideAggregateMarkerPart1_0037
  simp only [outsideAggregateMarkerPartValid1_0037, outsideHistoryChunk0037] at hm1
  have hm2 := outsideAggregateMarkerPart2_0037
  simp only [outsideAggregateMarkerPartValid2_0037, outsideHistoryChunk0037] at hm2
  have hm3 := outsideAggregateMarkerPart3_0037
  simp only [outsideAggregateMarkerPartValid3_0037, outsideHistoryChunk0037] at hm3
  have hm4 := outsideAggregateMarkerPart4_0037
  simp only [outsideAggregateMarkerPartValid4_0037, outsideHistoryChunk0037] at hm4
  have hm5 := outsideAggregateMarkerPart5_0037
  simp only [outsideAggregateMarkerPartValid5_0037, outsideHistoryChunk0037] at hm5
  have hm6 := outsideAggregateMarkerPart6_0037
  simp only [outsideAggregateMarkerPartValid6_0037, outsideHistoryChunk0037] at hm6
  have hm7 := outsideAggregateMarkerPart7_0037
  simp only [outsideAggregateMarkerPartValid7_0037, outsideHistoryChunk0037] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0037
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0037
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0038 :
    outsideAggregateLocalPartValid0_0038 outsideHistoryChunk0038 := by
  unfold outsideAggregateLocalPartValid0_0038 outsideHistoryChunk0038
  decide

def outsideAggregateMarkerPartValid0_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 38912
  | _ => True

theorem outsideAggregateMarkerPart0_0038 :
    outsideAggregateMarkerPartValid0_0038 outsideHistoryChunk0038 := by
  unfold outsideAggregateMarkerPartValid0_0038 outsideHistoryChunk0038
  decide

def outsideAggregateLocalPartValid1_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0038 :
    outsideAggregateLocalPartValid1_0038 outsideHistoryChunk0038 := by
  unfold outsideAggregateLocalPartValid1_0038 outsideHistoryChunk0038
  decide

def outsideAggregateMarkerPartValid1_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 39040
  | _ => True

theorem outsideAggregateMarkerPart1_0038 :
    outsideAggregateMarkerPartValid1_0038 outsideHistoryChunk0038 := by
  unfold outsideAggregateMarkerPartValid1_0038 outsideHistoryChunk0038
  decide

def outsideAggregateLocalPartValid2_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0038 :
    outsideAggregateLocalPartValid2_0038 outsideHistoryChunk0038 := by
  unfold outsideAggregateLocalPartValid2_0038 outsideHistoryChunk0038
  decide

def outsideAggregateMarkerPartValid2_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 39168
  | _ => True

theorem outsideAggregateMarkerPart2_0038 :
    outsideAggregateMarkerPartValid2_0038 outsideHistoryChunk0038 := by
  unfold outsideAggregateMarkerPartValid2_0038 outsideHistoryChunk0038
  decide

def outsideAggregateLocalPartValid3_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0038 :
    outsideAggregateLocalPartValid3_0038 outsideHistoryChunk0038 := by
  unfold outsideAggregateLocalPartValid3_0038 outsideHistoryChunk0038
  decide

def outsideAggregateMarkerPartValid3_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 39296
  | _ => True

theorem outsideAggregateMarkerPart3_0038 :
    outsideAggregateMarkerPartValid3_0038 outsideHistoryChunk0038 := by
  unfold outsideAggregateMarkerPartValid3_0038 outsideHistoryChunk0038
  decide

def outsideAggregateLocalPartValid4_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0038 :
    outsideAggregateLocalPartValid4_0038 outsideHistoryChunk0038 := by
  unfold outsideAggregateLocalPartValid4_0038 outsideHistoryChunk0038
  decide

def outsideAggregateMarkerPartValid4_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 39424
  | _ => True

theorem outsideAggregateMarkerPart4_0038 :
    outsideAggregateMarkerPartValid4_0038 outsideHistoryChunk0038 := by
  unfold outsideAggregateMarkerPartValid4_0038 outsideHistoryChunk0038
  decide

def outsideAggregateLocalPartValid5_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0038 :
    outsideAggregateLocalPartValid5_0038 outsideHistoryChunk0038 := by
  unfold outsideAggregateLocalPartValid5_0038 outsideHistoryChunk0038
  decide

def outsideAggregateMarkerPartValid5_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 39552
  | _ => True

theorem outsideAggregateMarkerPart5_0038 :
    outsideAggregateMarkerPartValid5_0038 outsideHistoryChunk0038 := by
  unfold outsideAggregateMarkerPartValid5_0038 outsideHistoryChunk0038
  decide

def outsideAggregateLocalPartValid6_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0038 :
    outsideAggregateLocalPartValid6_0038 outsideHistoryChunk0038 := by
  unfold outsideAggregateLocalPartValid6_0038 outsideHistoryChunk0038
  decide

def outsideAggregateMarkerPartValid6_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 39680
  | _ => True

theorem outsideAggregateMarkerPart6_0038 :
    outsideAggregateMarkerPartValid6_0038 outsideHistoryChunk0038 := by
  unfold outsideAggregateMarkerPartValid6_0038 outsideHistoryChunk0038
  decide

def outsideAggregateLocalPartValid7_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0038 :
    outsideAggregateLocalPartValid7_0038 outsideHistoryChunk0038 := by
  unfold outsideAggregateLocalPartValid7_0038 outsideHistoryChunk0038
  decide

def outsideAggregateMarkerPartValid7_0038 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 39808
  | _ => True

theorem outsideAggregateMarkerPart7_0038 :
    outsideAggregateMarkerPartValid7_0038 outsideHistoryChunk0038 := by
  unfold outsideAggregateMarkerPartValid7_0038 outsideHistoryChunk0038
  decide

theorem outsideRange_0038 :
    outsideHistoryChunk0038.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 38912 := by
  have hl0 := outsideAggregateLocalPart0_0038
  simp only [outsideAggregateLocalPartValid0_0038, outsideHistoryChunk0038] at hl0
  have hl1 := outsideAggregateLocalPart1_0038
  simp only [outsideAggregateLocalPartValid1_0038, outsideHistoryChunk0038] at hl1
  have hl2 := outsideAggregateLocalPart2_0038
  simp only [outsideAggregateLocalPartValid2_0038, outsideHistoryChunk0038] at hl2
  have hl3 := outsideAggregateLocalPart3_0038
  simp only [outsideAggregateLocalPartValid3_0038, outsideHistoryChunk0038] at hl3
  have hl4 := outsideAggregateLocalPart4_0038
  simp only [outsideAggregateLocalPartValid4_0038, outsideHistoryChunk0038] at hl4
  have hl5 := outsideAggregateLocalPart5_0038
  simp only [outsideAggregateLocalPartValid5_0038, outsideHistoryChunk0038] at hl5
  have hl6 := outsideAggregateLocalPart6_0038
  simp only [outsideAggregateLocalPartValid6_0038, outsideHistoryChunk0038] at hl6
  have hl7 := outsideAggregateLocalPart7_0038
  simp only [outsideAggregateLocalPartValid7_0038, outsideHistoryChunk0038] at hl7
  have hm0 := outsideAggregateMarkerPart0_0038
  simp only [outsideAggregateMarkerPartValid0_0038, outsideHistoryChunk0038] at hm0
  have hm1 := outsideAggregateMarkerPart1_0038
  simp only [outsideAggregateMarkerPartValid1_0038, outsideHistoryChunk0038] at hm1
  have hm2 := outsideAggregateMarkerPart2_0038
  simp only [outsideAggregateMarkerPartValid2_0038, outsideHistoryChunk0038] at hm2
  have hm3 := outsideAggregateMarkerPart3_0038
  simp only [outsideAggregateMarkerPartValid3_0038, outsideHistoryChunk0038] at hm3
  have hm4 := outsideAggregateMarkerPart4_0038
  simp only [outsideAggregateMarkerPartValid4_0038, outsideHistoryChunk0038] at hm4
  have hm5 := outsideAggregateMarkerPart5_0038
  simp only [outsideAggregateMarkerPartValid5_0038, outsideHistoryChunk0038] at hm5
  have hm6 := outsideAggregateMarkerPart6_0038
  simp only [outsideAggregateMarkerPartValid6_0038, outsideHistoryChunk0038] at hm6
  have hm7 := outsideAggregateMarkerPart7_0038
  simp only [outsideAggregateMarkerPartValid7_0038, outsideHistoryChunk0038] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0038
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0038
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0039 :
    outsideAggregateLocalPartValid0_0039 outsideHistoryChunk0039 := by
  unfold outsideAggregateLocalPartValid0_0039 outsideHistoryChunk0039
  decide

def outsideAggregateMarkerPartValid0_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 39936
  | _ => True

theorem outsideAggregateMarkerPart0_0039 :
    outsideAggregateMarkerPartValid0_0039 outsideHistoryChunk0039 := by
  unfold outsideAggregateMarkerPartValid0_0039 outsideHistoryChunk0039
  decide

def outsideAggregateLocalPartValid1_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0039 :
    outsideAggregateLocalPartValid1_0039 outsideHistoryChunk0039 := by
  unfold outsideAggregateLocalPartValid1_0039 outsideHistoryChunk0039
  decide

def outsideAggregateMarkerPartValid1_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 40064
  | _ => True

theorem outsideAggregateMarkerPart1_0039 :
    outsideAggregateMarkerPartValid1_0039 outsideHistoryChunk0039 := by
  unfold outsideAggregateMarkerPartValid1_0039 outsideHistoryChunk0039
  decide

def outsideAggregateLocalPartValid2_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0039 :
    outsideAggregateLocalPartValid2_0039 outsideHistoryChunk0039 := by
  unfold outsideAggregateLocalPartValid2_0039 outsideHistoryChunk0039
  decide

def outsideAggregateMarkerPartValid2_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 40192
  | _ => True

theorem outsideAggregateMarkerPart2_0039 :
    outsideAggregateMarkerPartValid2_0039 outsideHistoryChunk0039 := by
  unfold outsideAggregateMarkerPartValid2_0039 outsideHistoryChunk0039
  decide

def outsideAggregateLocalPartValid3_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0039 :
    outsideAggregateLocalPartValid3_0039 outsideHistoryChunk0039 := by
  unfold outsideAggregateLocalPartValid3_0039 outsideHistoryChunk0039
  decide

def outsideAggregateMarkerPartValid3_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 40320
  | _ => True

theorem outsideAggregateMarkerPart3_0039 :
    outsideAggregateMarkerPartValid3_0039 outsideHistoryChunk0039 := by
  unfold outsideAggregateMarkerPartValid3_0039 outsideHistoryChunk0039
  decide

def outsideAggregateLocalPartValid4_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0039 :
    outsideAggregateLocalPartValid4_0039 outsideHistoryChunk0039 := by
  unfold outsideAggregateLocalPartValid4_0039 outsideHistoryChunk0039
  decide

def outsideAggregateMarkerPartValid4_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 40448
  | _ => True

theorem outsideAggregateMarkerPart4_0039 :
    outsideAggregateMarkerPartValid4_0039 outsideHistoryChunk0039 := by
  unfold outsideAggregateMarkerPartValid4_0039 outsideHistoryChunk0039
  decide

def outsideAggregateLocalPartValid5_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0039 :
    outsideAggregateLocalPartValid5_0039 outsideHistoryChunk0039 := by
  unfold outsideAggregateLocalPartValid5_0039 outsideHistoryChunk0039
  decide

def outsideAggregateMarkerPartValid5_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 40576
  | _ => True

theorem outsideAggregateMarkerPart5_0039 :
    outsideAggregateMarkerPartValid5_0039 outsideHistoryChunk0039 := by
  unfold outsideAggregateMarkerPartValid5_0039 outsideHistoryChunk0039
  decide

def outsideAggregateLocalPartValid6_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0039 :
    outsideAggregateLocalPartValid6_0039 outsideHistoryChunk0039 := by
  unfold outsideAggregateLocalPartValid6_0039 outsideHistoryChunk0039
  decide

def outsideAggregateMarkerPartValid6_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 40704
  | _ => True

theorem outsideAggregateMarkerPart6_0039 :
    outsideAggregateMarkerPartValid6_0039 outsideHistoryChunk0039 := by
  unfold outsideAggregateMarkerPartValid6_0039 outsideHistoryChunk0039
  decide

def outsideAggregateLocalPartValid7_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0039 :
    outsideAggregateLocalPartValid7_0039 outsideHistoryChunk0039 := by
  unfold outsideAggregateLocalPartValid7_0039 outsideHistoryChunk0039
  decide

def outsideAggregateMarkerPartValid7_0039 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 40832
  | _ => True

theorem outsideAggregateMarkerPart7_0039 :
    outsideAggregateMarkerPartValid7_0039 outsideHistoryChunk0039 := by
  unfold outsideAggregateMarkerPartValid7_0039 outsideHistoryChunk0039
  decide

theorem outsideRange_0039 :
    outsideHistoryChunk0039.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 39936 := by
  have hl0 := outsideAggregateLocalPart0_0039
  simp only [outsideAggregateLocalPartValid0_0039, outsideHistoryChunk0039] at hl0
  have hl1 := outsideAggregateLocalPart1_0039
  simp only [outsideAggregateLocalPartValid1_0039, outsideHistoryChunk0039] at hl1
  have hl2 := outsideAggregateLocalPart2_0039
  simp only [outsideAggregateLocalPartValid2_0039, outsideHistoryChunk0039] at hl2
  have hl3 := outsideAggregateLocalPart3_0039
  simp only [outsideAggregateLocalPartValid3_0039, outsideHistoryChunk0039] at hl3
  have hl4 := outsideAggregateLocalPart4_0039
  simp only [outsideAggregateLocalPartValid4_0039, outsideHistoryChunk0039] at hl4
  have hl5 := outsideAggregateLocalPart5_0039
  simp only [outsideAggregateLocalPartValid5_0039, outsideHistoryChunk0039] at hl5
  have hl6 := outsideAggregateLocalPart6_0039
  simp only [outsideAggregateLocalPartValid6_0039, outsideHistoryChunk0039] at hl6
  have hl7 := outsideAggregateLocalPart7_0039
  simp only [outsideAggregateLocalPartValid7_0039, outsideHistoryChunk0039] at hl7
  have hm0 := outsideAggregateMarkerPart0_0039
  simp only [outsideAggregateMarkerPartValid0_0039, outsideHistoryChunk0039] at hm0
  have hm1 := outsideAggregateMarkerPart1_0039
  simp only [outsideAggregateMarkerPartValid1_0039, outsideHistoryChunk0039] at hm1
  have hm2 := outsideAggregateMarkerPart2_0039
  simp only [outsideAggregateMarkerPartValid2_0039, outsideHistoryChunk0039] at hm2
  have hm3 := outsideAggregateMarkerPart3_0039
  simp only [outsideAggregateMarkerPartValid3_0039, outsideHistoryChunk0039] at hm3
  have hm4 := outsideAggregateMarkerPart4_0039
  simp only [outsideAggregateMarkerPartValid4_0039, outsideHistoryChunk0039] at hm4
  have hm5 := outsideAggregateMarkerPart5_0039
  simp only [outsideAggregateMarkerPartValid5_0039, outsideHistoryChunk0039] at hm5
  have hm6 := outsideAggregateMarkerPart6_0039
  simp only [outsideAggregateMarkerPartValid6_0039, outsideHistoryChunk0039] at hm6
  have hm7 := outsideAggregateMarkerPart7_0039
  simp only [outsideAggregateMarkerPartValid7_0039, outsideHistoryChunk0039] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0039
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0039
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
