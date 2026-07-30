import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0056
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0057
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0058
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0059

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0056, 0057, 0058, 0059 -/

def outsideAggregateLocalPartValid0_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0056 :
    outsideAggregateLocalPartValid0_0056 outsideHistoryChunk0056 := by
  unfold outsideAggregateLocalPartValid0_0056 outsideHistoryChunk0056
  decide

def outsideAggregateMarkerPartValid0_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 57344
  | _ => True

theorem outsideAggregateMarkerPart0_0056 :
    outsideAggregateMarkerPartValid0_0056 outsideHistoryChunk0056 := by
  unfold outsideAggregateMarkerPartValid0_0056 outsideHistoryChunk0056
  decide

def outsideAggregateLocalPartValid1_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0056 :
    outsideAggregateLocalPartValid1_0056 outsideHistoryChunk0056 := by
  unfold outsideAggregateLocalPartValid1_0056 outsideHistoryChunk0056
  decide

def outsideAggregateMarkerPartValid1_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 57472
  | _ => True

theorem outsideAggregateMarkerPart1_0056 :
    outsideAggregateMarkerPartValid1_0056 outsideHistoryChunk0056 := by
  unfold outsideAggregateMarkerPartValid1_0056 outsideHistoryChunk0056
  decide

def outsideAggregateLocalPartValid2_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0056 :
    outsideAggregateLocalPartValid2_0056 outsideHistoryChunk0056 := by
  unfold outsideAggregateLocalPartValid2_0056 outsideHistoryChunk0056
  decide

def outsideAggregateMarkerPartValid2_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 57600
  | _ => True

theorem outsideAggregateMarkerPart2_0056 :
    outsideAggregateMarkerPartValid2_0056 outsideHistoryChunk0056 := by
  unfold outsideAggregateMarkerPartValid2_0056 outsideHistoryChunk0056
  decide

def outsideAggregateLocalPartValid3_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0056 :
    outsideAggregateLocalPartValid3_0056 outsideHistoryChunk0056 := by
  unfold outsideAggregateLocalPartValid3_0056 outsideHistoryChunk0056
  decide

def outsideAggregateMarkerPartValid3_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 57728
  | _ => True

theorem outsideAggregateMarkerPart3_0056 :
    outsideAggregateMarkerPartValid3_0056 outsideHistoryChunk0056 := by
  unfold outsideAggregateMarkerPartValid3_0056 outsideHistoryChunk0056
  decide

def outsideAggregateLocalPartValid4_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0056 :
    outsideAggregateLocalPartValid4_0056 outsideHistoryChunk0056 := by
  unfold outsideAggregateLocalPartValid4_0056 outsideHistoryChunk0056
  decide

def outsideAggregateMarkerPartValid4_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 57856
  | _ => True

theorem outsideAggregateMarkerPart4_0056 :
    outsideAggregateMarkerPartValid4_0056 outsideHistoryChunk0056 := by
  unfold outsideAggregateMarkerPartValid4_0056 outsideHistoryChunk0056
  decide

def outsideAggregateLocalPartValid5_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0056 :
    outsideAggregateLocalPartValid5_0056 outsideHistoryChunk0056 := by
  unfold outsideAggregateLocalPartValid5_0056 outsideHistoryChunk0056
  decide

def outsideAggregateMarkerPartValid5_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 57984
  | _ => True

theorem outsideAggregateMarkerPart5_0056 :
    outsideAggregateMarkerPartValid5_0056 outsideHistoryChunk0056 := by
  unfold outsideAggregateMarkerPartValid5_0056 outsideHistoryChunk0056
  decide

def outsideAggregateLocalPartValid6_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0056 :
    outsideAggregateLocalPartValid6_0056 outsideHistoryChunk0056 := by
  unfold outsideAggregateLocalPartValid6_0056 outsideHistoryChunk0056
  decide

def outsideAggregateMarkerPartValid6_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 58112
  | _ => True

theorem outsideAggregateMarkerPart6_0056 :
    outsideAggregateMarkerPartValid6_0056 outsideHistoryChunk0056 := by
  unfold outsideAggregateMarkerPartValid6_0056 outsideHistoryChunk0056
  decide

def outsideAggregateLocalPartValid7_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0056 :
    outsideAggregateLocalPartValid7_0056 outsideHistoryChunk0056 := by
  unfold outsideAggregateLocalPartValid7_0056 outsideHistoryChunk0056
  decide

def outsideAggregateMarkerPartValid7_0056 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 58240
  | _ => True

theorem outsideAggregateMarkerPart7_0056 :
    outsideAggregateMarkerPartValid7_0056 outsideHistoryChunk0056 := by
  unfold outsideAggregateMarkerPartValid7_0056 outsideHistoryChunk0056
  decide

theorem outsideRange_0056 :
    outsideHistoryChunk0056.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 57344 := by
  have hl0 := outsideAggregateLocalPart0_0056
  simp only [outsideAggregateLocalPartValid0_0056, outsideHistoryChunk0056] at hl0
  have hl1 := outsideAggregateLocalPart1_0056
  simp only [outsideAggregateLocalPartValid1_0056, outsideHistoryChunk0056] at hl1
  have hl2 := outsideAggregateLocalPart2_0056
  simp only [outsideAggregateLocalPartValid2_0056, outsideHistoryChunk0056] at hl2
  have hl3 := outsideAggregateLocalPart3_0056
  simp only [outsideAggregateLocalPartValid3_0056, outsideHistoryChunk0056] at hl3
  have hl4 := outsideAggregateLocalPart4_0056
  simp only [outsideAggregateLocalPartValid4_0056, outsideHistoryChunk0056] at hl4
  have hl5 := outsideAggregateLocalPart5_0056
  simp only [outsideAggregateLocalPartValid5_0056, outsideHistoryChunk0056] at hl5
  have hl6 := outsideAggregateLocalPart6_0056
  simp only [outsideAggregateLocalPartValid6_0056, outsideHistoryChunk0056] at hl6
  have hl7 := outsideAggregateLocalPart7_0056
  simp only [outsideAggregateLocalPartValid7_0056, outsideHistoryChunk0056] at hl7
  have hm0 := outsideAggregateMarkerPart0_0056
  simp only [outsideAggregateMarkerPartValid0_0056, outsideHistoryChunk0056] at hm0
  have hm1 := outsideAggregateMarkerPart1_0056
  simp only [outsideAggregateMarkerPartValid1_0056, outsideHistoryChunk0056] at hm1
  have hm2 := outsideAggregateMarkerPart2_0056
  simp only [outsideAggregateMarkerPartValid2_0056, outsideHistoryChunk0056] at hm2
  have hm3 := outsideAggregateMarkerPart3_0056
  simp only [outsideAggregateMarkerPartValid3_0056, outsideHistoryChunk0056] at hm3
  have hm4 := outsideAggregateMarkerPart4_0056
  simp only [outsideAggregateMarkerPartValid4_0056, outsideHistoryChunk0056] at hm4
  have hm5 := outsideAggregateMarkerPart5_0056
  simp only [outsideAggregateMarkerPartValid5_0056, outsideHistoryChunk0056] at hm5
  have hm6 := outsideAggregateMarkerPart6_0056
  simp only [outsideAggregateMarkerPartValid6_0056, outsideHistoryChunk0056] at hm6
  have hm7 := outsideAggregateMarkerPart7_0056
  simp only [outsideAggregateMarkerPartValid7_0056, outsideHistoryChunk0056] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0056
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0056
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0057 :
    outsideAggregateLocalPartValid0_0057 outsideHistoryChunk0057 := by
  unfold outsideAggregateLocalPartValid0_0057 outsideHistoryChunk0057
  decide

def outsideAggregateMarkerPartValid0_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 58368
  | _ => True

theorem outsideAggregateMarkerPart0_0057 :
    outsideAggregateMarkerPartValid0_0057 outsideHistoryChunk0057 := by
  unfold outsideAggregateMarkerPartValid0_0057 outsideHistoryChunk0057
  decide

def outsideAggregateLocalPartValid1_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0057 :
    outsideAggregateLocalPartValid1_0057 outsideHistoryChunk0057 := by
  unfold outsideAggregateLocalPartValid1_0057 outsideHistoryChunk0057
  decide

def outsideAggregateMarkerPartValid1_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 58496
  | _ => True

theorem outsideAggregateMarkerPart1_0057 :
    outsideAggregateMarkerPartValid1_0057 outsideHistoryChunk0057 := by
  unfold outsideAggregateMarkerPartValid1_0057 outsideHistoryChunk0057
  decide

def outsideAggregateLocalPartValid2_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0057 :
    outsideAggregateLocalPartValid2_0057 outsideHistoryChunk0057 := by
  unfold outsideAggregateLocalPartValid2_0057 outsideHistoryChunk0057
  decide

def outsideAggregateMarkerPartValid2_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 58624
  | _ => True

theorem outsideAggregateMarkerPart2_0057 :
    outsideAggregateMarkerPartValid2_0057 outsideHistoryChunk0057 := by
  unfold outsideAggregateMarkerPartValid2_0057 outsideHistoryChunk0057
  decide

def outsideAggregateLocalPartValid3_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0057 :
    outsideAggregateLocalPartValid3_0057 outsideHistoryChunk0057 := by
  unfold outsideAggregateLocalPartValid3_0057 outsideHistoryChunk0057
  decide

def outsideAggregateMarkerPartValid3_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 58752
  | _ => True

theorem outsideAggregateMarkerPart3_0057 :
    outsideAggregateMarkerPartValid3_0057 outsideHistoryChunk0057 := by
  unfold outsideAggregateMarkerPartValid3_0057 outsideHistoryChunk0057
  decide

def outsideAggregateLocalPartValid4_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0057 :
    outsideAggregateLocalPartValid4_0057 outsideHistoryChunk0057 := by
  unfold outsideAggregateLocalPartValid4_0057 outsideHistoryChunk0057
  decide

def outsideAggregateMarkerPartValid4_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 58880
  | _ => True

theorem outsideAggregateMarkerPart4_0057 :
    outsideAggregateMarkerPartValid4_0057 outsideHistoryChunk0057 := by
  unfold outsideAggregateMarkerPartValid4_0057 outsideHistoryChunk0057
  decide

def outsideAggregateLocalPartValid5_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0057 :
    outsideAggregateLocalPartValid5_0057 outsideHistoryChunk0057 := by
  unfold outsideAggregateLocalPartValid5_0057 outsideHistoryChunk0057
  decide

def outsideAggregateMarkerPartValid5_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 59008
  | _ => True

theorem outsideAggregateMarkerPart5_0057 :
    outsideAggregateMarkerPartValid5_0057 outsideHistoryChunk0057 := by
  unfold outsideAggregateMarkerPartValid5_0057 outsideHistoryChunk0057
  decide

def outsideAggregateLocalPartValid6_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0057 :
    outsideAggregateLocalPartValid6_0057 outsideHistoryChunk0057 := by
  unfold outsideAggregateLocalPartValid6_0057 outsideHistoryChunk0057
  decide

def outsideAggregateMarkerPartValid6_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 59136
  | _ => True

theorem outsideAggregateMarkerPart6_0057 :
    outsideAggregateMarkerPartValid6_0057 outsideHistoryChunk0057 := by
  unfold outsideAggregateMarkerPartValid6_0057 outsideHistoryChunk0057
  decide

def outsideAggregateLocalPartValid7_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0057 :
    outsideAggregateLocalPartValid7_0057 outsideHistoryChunk0057 := by
  unfold outsideAggregateLocalPartValid7_0057 outsideHistoryChunk0057
  decide

def outsideAggregateMarkerPartValid7_0057 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 59264
  | _ => True

theorem outsideAggregateMarkerPart7_0057 :
    outsideAggregateMarkerPartValid7_0057 outsideHistoryChunk0057 := by
  unfold outsideAggregateMarkerPartValid7_0057 outsideHistoryChunk0057
  decide

theorem outsideRange_0057 :
    outsideHistoryChunk0057.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 58368 := by
  have hl0 := outsideAggregateLocalPart0_0057
  simp only [outsideAggregateLocalPartValid0_0057, outsideHistoryChunk0057] at hl0
  have hl1 := outsideAggregateLocalPart1_0057
  simp only [outsideAggregateLocalPartValid1_0057, outsideHistoryChunk0057] at hl1
  have hl2 := outsideAggregateLocalPart2_0057
  simp only [outsideAggregateLocalPartValid2_0057, outsideHistoryChunk0057] at hl2
  have hl3 := outsideAggregateLocalPart3_0057
  simp only [outsideAggregateLocalPartValid3_0057, outsideHistoryChunk0057] at hl3
  have hl4 := outsideAggregateLocalPart4_0057
  simp only [outsideAggregateLocalPartValid4_0057, outsideHistoryChunk0057] at hl4
  have hl5 := outsideAggregateLocalPart5_0057
  simp only [outsideAggregateLocalPartValid5_0057, outsideHistoryChunk0057] at hl5
  have hl6 := outsideAggregateLocalPart6_0057
  simp only [outsideAggregateLocalPartValid6_0057, outsideHistoryChunk0057] at hl6
  have hl7 := outsideAggregateLocalPart7_0057
  simp only [outsideAggregateLocalPartValid7_0057, outsideHistoryChunk0057] at hl7
  have hm0 := outsideAggregateMarkerPart0_0057
  simp only [outsideAggregateMarkerPartValid0_0057, outsideHistoryChunk0057] at hm0
  have hm1 := outsideAggregateMarkerPart1_0057
  simp only [outsideAggregateMarkerPartValid1_0057, outsideHistoryChunk0057] at hm1
  have hm2 := outsideAggregateMarkerPart2_0057
  simp only [outsideAggregateMarkerPartValid2_0057, outsideHistoryChunk0057] at hm2
  have hm3 := outsideAggregateMarkerPart3_0057
  simp only [outsideAggregateMarkerPartValid3_0057, outsideHistoryChunk0057] at hm3
  have hm4 := outsideAggregateMarkerPart4_0057
  simp only [outsideAggregateMarkerPartValid4_0057, outsideHistoryChunk0057] at hm4
  have hm5 := outsideAggregateMarkerPart5_0057
  simp only [outsideAggregateMarkerPartValid5_0057, outsideHistoryChunk0057] at hm5
  have hm6 := outsideAggregateMarkerPart6_0057
  simp only [outsideAggregateMarkerPartValid6_0057, outsideHistoryChunk0057] at hm6
  have hm7 := outsideAggregateMarkerPart7_0057
  simp only [outsideAggregateMarkerPartValid7_0057, outsideHistoryChunk0057] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0057
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0057
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0058 :
    outsideAggregateLocalPartValid0_0058 outsideHistoryChunk0058 := by
  unfold outsideAggregateLocalPartValid0_0058 outsideHistoryChunk0058
  decide

def outsideAggregateMarkerPartValid0_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 59392
  | _ => True

theorem outsideAggregateMarkerPart0_0058 :
    outsideAggregateMarkerPartValid0_0058 outsideHistoryChunk0058 := by
  unfold outsideAggregateMarkerPartValid0_0058 outsideHistoryChunk0058
  decide

def outsideAggregateLocalPartValid1_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0058 :
    outsideAggregateLocalPartValid1_0058 outsideHistoryChunk0058 := by
  unfold outsideAggregateLocalPartValid1_0058 outsideHistoryChunk0058
  decide

def outsideAggregateMarkerPartValid1_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 59520
  | _ => True

theorem outsideAggregateMarkerPart1_0058 :
    outsideAggregateMarkerPartValid1_0058 outsideHistoryChunk0058 := by
  unfold outsideAggregateMarkerPartValid1_0058 outsideHistoryChunk0058
  decide

def outsideAggregateLocalPartValid2_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0058 :
    outsideAggregateLocalPartValid2_0058 outsideHistoryChunk0058 := by
  unfold outsideAggregateLocalPartValid2_0058 outsideHistoryChunk0058
  decide

def outsideAggregateMarkerPartValid2_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 59648
  | _ => True

theorem outsideAggregateMarkerPart2_0058 :
    outsideAggregateMarkerPartValid2_0058 outsideHistoryChunk0058 := by
  unfold outsideAggregateMarkerPartValid2_0058 outsideHistoryChunk0058
  decide

def outsideAggregateLocalPartValid3_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0058 :
    outsideAggregateLocalPartValid3_0058 outsideHistoryChunk0058 := by
  unfold outsideAggregateLocalPartValid3_0058 outsideHistoryChunk0058
  decide

def outsideAggregateMarkerPartValid3_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 59776
  | _ => True

theorem outsideAggregateMarkerPart3_0058 :
    outsideAggregateMarkerPartValid3_0058 outsideHistoryChunk0058 := by
  unfold outsideAggregateMarkerPartValid3_0058 outsideHistoryChunk0058
  decide

def outsideAggregateLocalPartValid4_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0058 :
    outsideAggregateLocalPartValid4_0058 outsideHistoryChunk0058 := by
  unfold outsideAggregateLocalPartValid4_0058 outsideHistoryChunk0058
  decide

def outsideAggregateMarkerPartValid4_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 59904
  | _ => True

theorem outsideAggregateMarkerPart4_0058 :
    outsideAggregateMarkerPartValid4_0058 outsideHistoryChunk0058 := by
  unfold outsideAggregateMarkerPartValid4_0058 outsideHistoryChunk0058
  decide

def outsideAggregateLocalPartValid5_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0058 :
    outsideAggregateLocalPartValid5_0058 outsideHistoryChunk0058 := by
  unfold outsideAggregateLocalPartValid5_0058 outsideHistoryChunk0058
  decide

def outsideAggregateMarkerPartValid5_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 60032
  | _ => True

theorem outsideAggregateMarkerPart5_0058 :
    outsideAggregateMarkerPartValid5_0058 outsideHistoryChunk0058 := by
  unfold outsideAggregateMarkerPartValid5_0058 outsideHistoryChunk0058
  decide

def outsideAggregateLocalPartValid6_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0058 :
    outsideAggregateLocalPartValid6_0058 outsideHistoryChunk0058 := by
  unfold outsideAggregateLocalPartValid6_0058 outsideHistoryChunk0058
  decide

def outsideAggregateMarkerPartValid6_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 60160
  | _ => True

theorem outsideAggregateMarkerPart6_0058 :
    outsideAggregateMarkerPartValid6_0058 outsideHistoryChunk0058 := by
  unfold outsideAggregateMarkerPartValid6_0058 outsideHistoryChunk0058
  decide

def outsideAggregateLocalPartValid7_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0058 :
    outsideAggregateLocalPartValid7_0058 outsideHistoryChunk0058 := by
  unfold outsideAggregateLocalPartValid7_0058 outsideHistoryChunk0058
  decide

def outsideAggregateMarkerPartValid7_0058 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 60288
  | _ => True

theorem outsideAggregateMarkerPart7_0058 :
    outsideAggregateMarkerPartValid7_0058 outsideHistoryChunk0058 := by
  unfold outsideAggregateMarkerPartValid7_0058 outsideHistoryChunk0058
  decide

theorem outsideRange_0058 :
    outsideHistoryChunk0058.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 59392 := by
  have hl0 := outsideAggregateLocalPart0_0058
  simp only [outsideAggregateLocalPartValid0_0058, outsideHistoryChunk0058] at hl0
  have hl1 := outsideAggregateLocalPart1_0058
  simp only [outsideAggregateLocalPartValid1_0058, outsideHistoryChunk0058] at hl1
  have hl2 := outsideAggregateLocalPart2_0058
  simp only [outsideAggregateLocalPartValid2_0058, outsideHistoryChunk0058] at hl2
  have hl3 := outsideAggregateLocalPart3_0058
  simp only [outsideAggregateLocalPartValid3_0058, outsideHistoryChunk0058] at hl3
  have hl4 := outsideAggregateLocalPart4_0058
  simp only [outsideAggregateLocalPartValid4_0058, outsideHistoryChunk0058] at hl4
  have hl5 := outsideAggregateLocalPart5_0058
  simp only [outsideAggregateLocalPartValid5_0058, outsideHistoryChunk0058] at hl5
  have hl6 := outsideAggregateLocalPart6_0058
  simp only [outsideAggregateLocalPartValid6_0058, outsideHistoryChunk0058] at hl6
  have hl7 := outsideAggregateLocalPart7_0058
  simp only [outsideAggregateLocalPartValid7_0058, outsideHistoryChunk0058] at hl7
  have hm0 := outsideAggregateMarkerPart0_0058
  simp only [outsideAggregateMarkerPartValid0_0058, outsideHistoryChunk0058] at hm0
  have hm1 := outsideAggregateMarkerPart1_0058
  simp only [outsideAggregateMarkerPartValid1_0058, outsideHistoryChunk0058] at hm1
  have hm2 := outsideAggregateMarkerPart2_0058
  simp only [outsideAggregateMarkerPartValid2_0058, outsideHistoryChunk0058] at hm2
  have hm3 := outsideAggregateMarkerPart3_0058
  simp only [outsideAggregateMarkerPartValid3_0058, outsideHistoryChunk0058] at hm3
  have hm4 := outsideAggregateMarkerPart4_0058
  simp only [outsideAggregateMarkerPartValid4_0058, outsideHistoryChunk0058] at hm4
  have hm5 := outsideAggregateMarkerPart5_0058
  simp only [outsideAggregateMarkerPartValid5_0058, outsideHistoryChunk0058] at hm5
  have hm6 := outsideAggregateMarkerPart6_0058
  simp only [outsideAggregateMarkerPartValid6_0058, outsideHistoryChunk0058] at hm6
  have hm7 := outsideAggregateMarkerPart7_0058
  simp only [outsideAggregateMarkerPartValid7_0058, outsideHistoryChunk0058] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0058
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0058
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0059 :
    outsideAggregateLocalPartValid0_0059 outsideHistoryChunk0059 := by
  unfold outsideAggregateLocalPartValid0_0059 outsideHistoryChunk0059
  decide

def outsideAggregateMarkerPartValid0_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 60416
  | _ => True

theorem outsideAggregateMarkerPart0_0059 :
    outsideAggregateMarkerPartValid0_0059 outsideHistoryChunk0059 := by
  unfold outsideAggregateMarkerPartValid0_0059 outsideHistoryChunk0059
  decide

def outsideAggregateLocalPartValid1_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0059 :
    outsideAggregateLocalPartValid1_0059 outsideHistoryChunk0059 := by
  unfold outsideAggregateLocalPartValid1_0059 outsideHistoryChunk0059
  decide

def outsideAggregateMarkerPartValid1_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 60544
  | _ => True

theorem outsideAggregateMarkerPart1_0059 :
    outsideAggregateMarkerPartValid1_0059 outsideHistoryChunk0059 := by
  unfold outsideAggregateMarkerPartValid1_0059 outsideHistoryChunk0059
  decide

def outsideAggregateLocalPartValid2_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0059 :
    outsideAggregateLocalPartValid2_0059 outsideHistoryChunk0059 := by
  unfold outsideAggregateLocalPartValid2_0059 outsideHistoryChunk0059
  decide

def outsideAggregateMarkerPartValid2_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 60672
  | _ => True

theorem outsideAggregateMarkerPart2_0059 :
    outsideAggregateMarkerPartValid2_0059 outsideHistoryChunk0059 := by
  unfold outsideAggregateMarkerPartValid2_0059 outsideHistoryChunk0059
  decide

def outsideAggregateLocalPartValid3_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0059 :
    outsideAggregateLocalPartValid3_0059 outsideHistoryChunk0059 := by
  unfold outsideAggregateLocalPartValid3_0059 outsideHistoryChunk0059
  decide

def outsideAggregateMarkerPartValid3_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 60800
  | _ => True

theorem outsideAggregateMarkerPart3_0059 :
    outsideAggregateMarkerPartValid3_0059 outsideHistoryChunk0059 := by
  unfold outsideAggregateMarkerPartValid3_0059 outsideHistoryChunk0059
  decide

def outsideAggregateLocalPartValid4_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0059 :
    outsideAggregateLocalPartValid4_0059 outsideHistoryChunk0059 := by
  unfold outsideAggregateLocalPartValid4_0059 outsideHistoryChunk0059
  decide

def outsideAggregateMarkerPartValid4_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 60928
  | _ => True

theorem outsideAggregateMarkerPart4_0059 :
    outsideAggregateMarkerPartValid4_0059 outsideHistoryChunk0059 := by
  unfold outsideAggregateMarkerPartValid4_0059 outsideHistoryChunk0059
  decide

def outsideAggregateLocalPartValid5_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0059 :
    outsideAggregateLocalPartValid5_0059 outsideHistoryChunk0059 := by
  unfold outsideAggregateLocalPartValid5_0059 outsideHistoryChunk0059
  decide

def outsideAggregateMarkerPartValid5_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 61056
  | _ => True

theorem outsideAggregateMarkerPart5_0059 :
    outsideAggregateMarkerPartValid5_0059 outsideHistoryChunk0059 := by
  unfold outsideAggregateMarkerPartValid5_0059 outsideHistoryChunk0059
  decide

def outsideAggregateLocalPartValid6_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0059 :
    outsideAggregateLocalPartValid6_0059 outsideHistoryChunk0059 := by
  unfold outsideAggregateLocalPartValid6_0059 outsideHistoryChunk0059
  decide

def outsideAggregateMarkerPartValid6_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 61184
  | _ => True

theorem outsideAggregateMarkerPart6_0059 :
    outsideAggregateMarkerPartValid6_0059 outsideHistoryChunk0059 := by
  unfold outsideAggregateMarkerPartValid6_0059 outsideHistoryChunk0059
  decide

def outsideAggregateLocalPartValid7_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0059 :
    outsideAggregateLocalPartValid7_0059 outsideHistoryChunk0059 := by
  unfold outsideAggregateLocalPartValid7_0059 outsideHistoryChunk0059
  decide

def outsideAggregateMarkerPartValid7_0059 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 61312
  | _ => True

theorem outsideAggregateMarkerPart7_0059 :
    outsideAggregateMarkerPartValid7_0059 outsideHistoryChunk0059 := by
  unfold outsideAggregateMarkerPartValid7_0059 outsideHistoryChunk0059
  decide

theorem outsideRange_0059 :
    outsideHistoryChunk0059.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 60416 := by
  have hl0 := outsideAggregateLocalPart0_0059
  simp only [outsideAggregateLocalPartValid0_0059, outsideHistoryChunk0059] at hl0
  have hl1 := outsideAggregateLocalPart1_0059
  simp only [outsideAggregateLocalPartValid1_0059, outsideHistoryChunk0059] at hl1
  have hl2 := outsideAggregateLocalPart2_0059
  simp only [outsideAggregateLocalPartValid2_0059, outsideHistoryChunk0059] at hl2
  have hl3 := outsideAggregateLocalPart3_0059
  simp only [outsideAggregateLocalPartValid3_0059, outsideHistoryChunk0059] at hl3
  have hl4 := outsideAggregateLocalPart4_0059
  simp only [outsideAggregateLocalPartValid4_0059, outsideHistoryChunk0059] at hl4
  have hl5 := outsideAggregateLocalPart5_0059
  simp only [outsideAggregateLocalPartValid5_0059, outsideHistoryChunk0059] at hl5
  have hl6 := outsideAggregateLocalPart6_0059
  simp only [outsideAggregateLocalPartValid6_0059, outsideHistoryChunk0059] at hl6
  have hl7 := outsideAggregateLocalPart7_0059
  simp only [outsideAggregateLocalPartValid7_0059, outsideHistoryChunk0059] at hl7
  have hm0 := outsideAggregateMarkerPart0_0059
  simp only [outsideAggregateMarkerPartValid0_0059, outsideHistoryChunk0059] at hm0
  have hm1 := outsideAggregateMarkerPart1_0059
  simp only [outsideAggregateMarkerPartValid1_0059, outsideHistoryChunk0059] at hm1
  have hm2 := outsideAggregateMarkerPart2_0059
  simp only [outsideAggregateMarkerPartValid2_0059, outsideHistoryChunk0059] at hm2
  have hm3 := outsideAggregateMarkerPart3_0059
  simp only [outsideAggregateMarkerPartValid3_0059, outsideHistoryChunk0059] at hm3
  have hm4 := outsideAggregateMarkerPart4_0059
  simp only [outsideAggregateMarkerPartValid4_0059, outsideHistoryChunk0059] at hm4
  have hm5 := outsideAggregateMarkerPart5_0059
  simp only [outsideAggregateMarkerPartValid5_0059, outsideHistoryChunk0059] at hm5
  have hm6 := outsideAggregateMarkerPart6_0059
  simp only [outsideAggregateMarkerPartValid6_0059, outsideHistoryChunk0059] at hm6
  have hm7 := outsideAggregateMarkerPart7_0059
  simp only [outsideAggregateMarkerPartValid7_0059, outsideHistoryChunk0059] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0059
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0059
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
