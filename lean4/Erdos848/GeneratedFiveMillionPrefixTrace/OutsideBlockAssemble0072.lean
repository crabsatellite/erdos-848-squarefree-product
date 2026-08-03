import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0072
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0073
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0074
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0075

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0072, 0073, 0074, 0075 -/

def outsideAggregateLocalPartValid0_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0072 :
    outsideAggregateLocalPartValid0_0072 outsideHistoryChunk0072 := by
  unfold outsideAggregateLocalPartValid0_0072 outsideHistoryChunk0072
  decide

def outsideAggregateMarkerPartValid0_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 73728
  | _ => True

theorem outsideAggregateMarkerPart0_0072 :
    outsideAggregateMarkerPartValid0_0072 outsideHistoryChunk0072 := by
  unfold outsideAggregateMarkerPartValid0_0072 outsideHistoryChunk0072
  decide

def outsideAggregateLocalPartValid1_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0072 :
    outsideAggregateLocalPartValid1_0072 outsideHistoryChunk0072 := by
  unfold outsideAggregateLocalPartValid1_0072 outsideHistoryChunk0072
  decide

def outsideAggregateMarkerPartValid1_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 73856
  | _ => True

theorem outsideAggregateMarkerPart1_0072 :
    outsideAggregateMarkerPartValid1_0072 outsideHistoryChunk0072 := by
  unfold outsideAggregateMarkerPartValid1_0072 outsideHistoryChunk0072
  decide

def outsideAggregateLocalPartValid2_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0072 :
    outsideAggregateLocalPartValid2_0072 outsideHistoryChunk0072 := by
  unfold outsideAggregateLocalPartValid2_0072 outsideHistoryChunk0072
  decide

def outsideAggregateMarkerPartValid2_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 73984
  | _ => True

theorem outsideAggregateMarkerPart2_0072 :
    outsideAggregateMarkerPartValid2_0072 outsideHistoryChunk0072 := by
  unfold outsideAggregateMarkerPartValid2_0072 outsideHistoryChunk0072
  decide

def outsideAggregateLocalPartValid3_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0072 :
    outsideAggregateLocalPartValid3_0072 outsideHistoryChunk0072 := by
  unfold outsideAggregateLocalPartValid3_0072 outsideHistoryChunk0072
  decide

def outsideAggregateMarkerPartValid3_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 74112
  | _ => True

theorem outsideAggregateMarkerPart3_0072 :
    outsideAggregateMarkerPartValid3_0072 outsideHistoryChunk0072 := by
  unfold outsideAggregateMarkerPartValid3_0072 outsideHistoryChunk0072
  decide

def outsideAggregateLocalPartValid4_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0072 :
    outsideAggregateLocalPartValid4_0072 outsideHistoryChunk0072 := by
  unfold outsideAggregateLocalPartValid4_0072 outsideHistoryChunk0072
  decide

def outsideAggregateMarkerPartValid4_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 74240
  | _ => True

theorem outsideAggregateMarkerPart4_0072 :
    outsideAggregateMarkerPartValid4_0072 outsideHistoryChunk0072 := by
  unfold outsideAggregateMarkerPartValid4_0072 outsideHistoryChunk0072
  decide

def outsideAggregateLocalPartValid5_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0072 :
    outsideAggregateLocalPartValid5_0072 outsideHistoryChunk0072 := by
  unfold outsideAggregateLocalPartValid5_0072 outsideHistoryChunk0072
  decide

def outsideAggregateMarkerPartValid5_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 74368
  | _ => True

theorem outsideAggregateMarkerPart5_0072 :
    outsideAggregateMarkerPartValid5_0072 outsideHistoryChunk0072 := by
  unfold outsideAggregateMarkerPartValid5_0072 outsideHistoryChunk0072
  decide

def outsideAggregateLocalPartValid6_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0072 :
    outsideAggregateLocalPartValid6_0072 outsideHistoryChunk0072 := by
  unfold outsideAggregateLocalPartValid6_0072 outsideHistoryChunk0072
  decide

def outsideAggregateMarkerPartValid6_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 74496
  | _ => True

theorem outsideAggregateMarkerPart6_0072 :
    outsideAggregateMarkerPartValid6_0072 outsideHistoryChunk0072 := by
  unfold outsideAggregateMarkerPartValid6_0072 outsideHistoryChunk0072
  decide

def outsideAggregateLocalPartValid7_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0072 :
    outsideAggregateLocalPartValid7_0072 outsideHistoryChunk0072 := by
  unfold outsideAggregateLocalPartValid7_0072 outsideHistoryChunk0072
  decide

def outsideAggregateMarkerPartValid7_0072 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 74624
  | _ => True

theorem outsideAggregateMarkerPart7_0072 :
    outsideAggregateMarkerPartValid7_0072 outsideHistoryChunk0072 := by
  unfold outsideAggregateMarkerPartValid7_0072 outsideHistoryChunk0072
  decide

theorem outsideRange_0072 :
    outsideHistoryChunk0072.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 73728 := by
  have hl0 := outsideAggregateLocalPart0_0072
  simp only [outsideAggregateLocalPartValid0_0072, outsideHistoryChunk0072] at hl0
  have hl1 := outsideAggregateLocalPart1_0072
  simp only [outsideAggregateLocalPartValid1_0072, outsideHistoryChunk0072] at hl1
  have hl2 := outsideAggregateLocalPart2_0072
  simp only [outsideAggregateLocalPartValid2_0072, outsideHistoryChunk0072] at hl2
  have hl3 := outsideAggregateLocalPart3_0072
  simp only [outsideAggregateLocalPartValid3_0072, outsideHistoryChunk0072] at hl3
  have hl4 := outsideAggregateLocalPart4_0072
  simp only [outsideAggregateLocalPartValid4_0072, outsideHistoryChunk0072] at hl4
  have hl5 := outsideAggregateLocalPart5_0072
  simp only [outsideAggregateLocalPartValid5_0072, outsideHistoryChunk0072] at hl5
  have hl6 := outsideAggregateLocalPart6_0072
  simp only [outsideAggregateLocalPartValid6_0072, outsideHistoryChunk0072] at hl6
  have hl7 := outsideAggregateLocalPart7_0072
  simp only [outsideAggregateLocalPartValid7_0072, outsideHistoryChunk0072] at hl7
  have hm0 := outsideAggregateMarkerPart0_0072
  simp only [outsideAggregateMarkerPartValid0_0072, outsideHistoryChunk0072] at hm0
  have hm1 := outsideAggregateMarkerPart1_0072
  simp only [outsideAggregateMarkerPartValid1_0072, outsideHistoryChunk0072] at hm1
  have hm2 := outsideAggregateMarkerPart2_0072
  simp only [outsideAggregateMarkerPartValid2_0072, outsideHistoryChunk0072] at hm2
  have hm3 := outsideAggregateMarkerPart3_0072
  simp only [outsideAggregateMarkerPartValid3_0072, outsideHistoryChunk0072] at hm3
  have hm4 := outsideAggregateMarkerPart4_0072
  simp only [outsideAggregateMarkerPartValid4_0072, outsideHistoryChunk0072] at hm4
  have hm5 := outsideAggregateMarkerPart5_0072
  simp only [outsideAggregateMarkerPartValid5_0072, outsideHistoryChunk0072] at hm5
  have hm6 := outsideAggregateMarkerPart6_0072
  simp only [outsideAggregateMarkerPartValid6_0072, outsideHistoryChunk0072] at hm6
  have hm7 := outsideAggregateMarkerPart7_0072
  simp only [outsideAggregateMarkerPartValid7_0072, outsideHistoryChunk0072] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0072
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0072
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0073 :
    outsideAggregateLocalPartValid0_0073 outsideHistoryChunk0073 := by
  unfold outsideAggregateLocalPartValid0_0073 outsideHistoryChunk0073
  decide

def outsideAggregateMarkerPartValid0_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 74752
  | _ => True

theorem outsideAggregateMarkerPart0_0073 :
    outsideAggregateMarkerPartValid0_0073 outsideHistoryChunk0073 := by
  unfold outsideAggregateMarkerPartValid0_0073 outsideHistoryChunk0073
  decide

def outsideAggregateLocalPartValid1_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0073 :
    outsideAggregateLocalPartValid1_0073 outsideHistoryChunk0073 := by
  unfold outsideAggregateLocalPartValid1_0073 outsideHistoryChunk0073
  decide

def outsideAggregateMarkerPartValid1_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 74880
  | _ => True

theorem outsideAggregateMarkerPart1_0073 :
    outsideAggregateMarkerPartValid1_0073 outsideHistoryChunk0073 := by
  unfold outsideAggregateMarkerPartValid1_0073 outsideHistoryChunk0073
  decide

def outsideAggregateLocalPartValid2_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0073 :
    outsideAggregateLocalPartValid2_0073 outsideHistoryChunk0073 := by
  unfold outsideAggregateLocalPartValid2_0073 outsideHistoryChunk0073
  decide

def outsideAggregateMarkerPartValid2_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 75008
  | _ => True

theorem outsideAggregateMarkerPart2_0073 :
    outsideAggregateMarkerPartValid2_0073 outsideHistoryChunk0073 := by
  unfold outsideAggregateMarkerPartValid2_0073 outsideHistoryChunk0073
  decide

def outsideAggregateLocalPartValid3_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0073 :
    outsideAggregateLocalPartValid3_0073 outsideHistoryChunk0073 := by
  unfold outsideAggregateLocalPartValid3_0073 outsideHistoryChunk0073
  decide

def outsideAggregateMarkerPartValid3_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 75136
  | _ => True

theorem outsideAggregateMarkerPart3_0073 :
    outsideAggregateMarkerPartValid3_0073 outsideHistoryChunk0073 := by
  unfold outsideAggregateMarkerPartValid3_0073 outsideHistoryChunk0073
  decide

def outsideAggregateLocalPartValid4_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0073 :
    outsideAggregateLocalPartValid4_0073 outsideHistoryChunk0073 := by
  unfold outsideAggregateLocalPartValid4_0073 outsideHistoryChunk0073
  decide

def outsideAggregateMarkerPartValid4_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 75264
  | _ => True

theorem outsideAggregateMarkerPart4_0073 :
    outsideAggregateMarkerPartValid4_0073 outsideHistoryChunk0073 := by
  unfold outsideAggregateMarkerPartValid4_0073 outsideHistoryChunk0073
  decide

def outsideAggregateLocalPartValid5_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0073 :
    outsideAggregateLocalPartValid5_0073 outsideHistoryChunk0073 := by
  unfold outsideAggregateLocalPartValid5_0073 outsideHistoryChunk0073
  decide

def outsideAggregateMarkerPartValid5_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 75392
  | _ => True

theorem outsideAggregateMarkerPart5_0073 :
    outsideAggregateMarkerPartValid5_0073 outsideHistoryChunk0073 := by
  unfold outsideAggregateMarkerPartValid5_0073 outsideHistoryChunk0073
  decide

def outsideAggregateLocalPartValid6_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0073 :
    outsideAggregateLocalPartValid6_0073 outsideHistoryChunk0073 := by
  unfold outsideAggregateLocalPartValid6_0073 outsideHistoryChunk0073
  decide

def outsideAggregateMarkerPartValid6_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 75520
  | _ => True

theorem outsideAggregateMarkerPart6_0073 :
    outsideAggregateMarkerPartValid6_0073 outsideHistoryChunk0073 := by
  unfold outsideAggregateMarkerPartValid6_0073 outsideHistoryChunk0073
  decide

def outsideAggregateLocalPartValid7_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0073 :
    outsideAggregateLocalPartValid7_0073 outsideHistoryChunk0073 := by
  unfold outsideAggregateLocalPartValid7_0073 outsideHistoryChunk0073
  decide

def outsideAggregateMarkerPartValid7_0073 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 75648
  | _ => True

theorem outsideAggregateMarkerPart7_0073 :
    outsideAggregateMarkerPartValid7_0073 outsideHistoryChunk0073 := by
  unfold outsideAggregateMarkerPartValid7_0073 outsideHistoryChunk0073
  decide

theorem outsideRange_0073 :
    outsideHistoryChunk0073.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 74752 := by
  have hl0 := outsideAggregateLocalPart0_0073
  simp only [outsideAggregateLocalPartValid0_0073, outsideHistoryChunk0073] at hl0
  have hl1 := outsideAggregateLocalPart1_0073
  simp only [outsideAggregateLocalPartValid1_0073, outsideHistoryChunk0073] at hl1
  have hl2 := outsideAggregateLocalPart2_0073
  simp only [outsideAggregateLocalPartValid2_0073, outsideHistoryChunk0073] at hl2
  have hl3 := outsideAggregateLocalPart3_0073
  simp only [outsideAggregateLocalPartValid3_0073, outsideHistoryChunk0073] at hl3
  have hl4 := outsideAggregateLocalPart4_0073
  simp only [outsideAggregateLocalPartValid4_0073, outsideHistoryChunk0073] at hl4
  have hl5 := outsideAggregateLocalPart5_0073
  simp only [outsideAggregateLocalPartValid5_0073, outsideHistoryChunk0073] at hl5
  have hl6 := outsideAggregateLocalPart6_0073
  simp only [outsideAggregateLocalPartValid6_0073, outsideHistoryChunk0073] at hl6
  have hl7 := outsideAggregateLocalPart7_0073
  simp only [outsideAggregateLocalPartValid7_0073, outsideHistoryChunk0073] at hl7
  have hm0 := outsideAggregateMarkerPart0_0073
  simp only [outsideAggregateMarkerPartValid0_0073, outsideHistoryChunk0073] at hm0
  have hm1 := outsideAggregateMarkerPart1_0073
  simp only [outsideAggregateMarkerPartValid1_0073, outsideHistoryChunk0073] at hm1
  have hm2 := outsideAggregateMarkerPart2_0073
  simp only [outsideAggregateMarkerPartValid2_0073, outsideHistoryChunk0073] at hm2
  have hm3 := outsideAggregateMarkerPart3_0073
  simp only [outsideAggregateMarkerPartValid3_0073, outsideHistoryChunk0073] at hm3
  have hm4 := outsideAggregateMarkerPart4_0073
  simp only [outsideAggregateMarkerPartValid4_0073, outsideHistoryChunk0073] at hm4
  have hm5 := outsideAggregateMarkerPart5_0073
  simp only [outsideAggregateMarkerPartValid5_0073, outsideHistoryChunk0073] at hm5
  have hm6 := outsideAggregateMarkerPart6_0073
  simp only [outsideAggregateMarkerPartValid6_0073, outsideHistoryChunk0073] at hm6
  have hm7 := outsideAggregateMarkerPart7_0073
  simp only [outsideAggregateMarkerPartValid7_0073, outsideHistoryChunk0073] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0073
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0073
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0074 :
    outsideAggregateLocalPartValid0_0074 outsideHistoryChunk0074 := by
  unfold outsideAggregateLocalPartValid0_0074 outsideHistoryChunk0074
  decide

def outsideAggregateMarkerPartValid0_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 75776
  | _ => True

theorem outsideAggregateMarkerPart0_0074 :
    outsideAggregateMarkerPartValid0_0074 outsideHistoryChunk0074 := by
  unfold outsideAggregateMarkerPartValid0_0074 outsideHistoryChunk0074
  decide

def outsideAggregateLocalPartValid1_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0074 :
    outsideAggregateLocalPartValid1_0074 outsideHistoryChunk0074 := by
  unfold outsideAggregateLocalPartValid1_0074 outsideHistoryChunk0074
  decide

def outsideAggregateMarkerPartValid1_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 75904
  | _ => True

theorem outsideAggregateMarkerPart1_0074 :
    outsideAggregateMarkerPartValid1_0074 outsideHistoryChunk0074 := by
  unfold outsideAggregateMarkerPartValid1_0074 outsideHistoryChunk0074
  decide

def outsideAggregateLocalPartValid2_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0074 :
    outsideAggregateLocalPartValid2_0074 outsideHistoryChunk0074 := by
  unfold outsideAggregateLocalPartValid2_0074 outsideHistoryChunk0074
  decide

def outsideAggregateMarkerPartValid2_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 76032
  | _ => True

theorem outsideAggregateMarkerPart2_0074 :
    outsideAggregateMarkerPartValid2_0074 outsideHistoryChunk0074 := by
  unfold outsideAggregateMarkerPartValid2_0074 outsideHistoryChunk0074
  decide

def outsideAggregateLocalPartValid3_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0074 :
    outsideAggregateLocalPartValid3_0074 outsideHistoryChunk0074 := by
  unfold outsideAggregateLocalPartValid3_0074 outsideHistoryChunk0074
  decide

def outsideAggregateMarkerPartValid3_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 76160
  | _ => True

theorem outsideAggregateMarkerPart3_0074 :
    outsideAggregateMarkerPartValid3_0074 outsideHistoryChunk0074 := by
  unfold outsideAggregateMarkerPartValid3_0074 outsideHistoryChunk0074
  decide

def outsideAggregateLocalPartValid4_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0074 :
    outsideAggregateLocalPartValid4_0074 outsideHistoryChunk0074 := by
  unfold outsideAggregateLocalPartValid4_0074 outsideHistoryChunk0074
  decide

def outsideAggregateMarkerPartValid4_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 76288
  | _ => True

theorem outsideAggregateMarkerPart4_0074 :
    outsideAggregateMarkerPartValid4_0074 outsideHistoryChunk0074 := by
  unfold outsideAggregateMarkerPartValid4_0074 outsideHistoryChunk0074
  decide

def outsideAggregateLocalPartValid5_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0074 :
    outsideAggregateLocalPartValid5_0074 outsideHistoryChunk0074 := by
  unfold outsideAggregateLocalPartValid5_0074 outsideHistoryChunk0074
  decide

def outsideAggregateMarkerPartValid5_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 76416
  | _ => True

theorem outsideAggregateMarkerPart5_0074 :
    outsideAggregateMarkerPartValid5_0074 outsideHistoryChunk0074 := by
  unfold outsideAggregateMarkerPartValid5_0074 outsideHistoryChunk0074
  decide

def outsideAggregateLocalPartValid6_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0074 :
    outsideAggregateLocalPartValid6_0074 outsideHistoryChunk0074 := by
  unfold outsideAggregateLocalPartValid6_0074 outsideHistoryChunk0074
  decide

def outsideAggregateMarkerPartValid6_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 76544
  | _ => True

theorem outsideAggregateMarkerPart6_0074 :
    outsideAggregateMarkerPartValid6_0074 outsideHistoryChunk0074 := by
  unfold outsideAggregateMarkerPartValid6_0074 outsideHistoryChunk0074
  decide

def outsideAggregateLocalPartValid7_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0074 :
    outsideAggregateLocalPartValid7_0074 outsideHistoryChunk0074 := by
  unfold outsideAggregateLocalPartValid7_0074 outsideHistoryChunk0074
  decide

def outsideAggregateMarkerPartValid7_0074 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 76672
  | _ => True

theorem outsideAggregateMarkerPart7_0074 :
    outsideAggregateMarkerPartValid7_0074 outsideHistoryChunk0074 := by
  unfold outsideAggregateMarkerPartValid7_0074 outsideHistoryChunk0074
  decide

theorem outsideRange_0074 :
    outsideHistoryChunk0074.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 75776 := by
  have hl0 := outsideAggregateLocalPart0_0074
  simp only [outsideAggregateLocalPartValid0_0074, outsideHistoryChunk0074] at hl0
  have hl1 := outsideAggregateLocalPart1_0074
  simp only [outsideAggregateLocalPartValid1_0074, outsideHistoryChunk0074] at hl1
  have hl2 := outsideAggregateLocalPart2_0074
  simp only [outsideAggregateLocalPartValid2_0074, outsideHistoryChunk0074] at hl2
  have hl3 := outsideAggregateLocalPart3_0074
  simp only [outsideAggregateLocalPartValid3_0074, outsideHistoryChunk0074] at hl3
  have hl4 := outsideAggregateLocalPart4_0074
  simp only [outsideAggregateLocalPartValid4_0074, outsideHistoryChunk0074] at hl4
  have hl5 := outsideAggregateLocalPart5_0074
  simp only [outsideAggregateLocalPartValid5_0074, outsideHistoryChunk0074] at hl5
  have hl6 := outsideAggregateLocalPart6_0074
  simp only [outsideAggregateLocalPartValid6_0074, outsideHistoryChunk0074] at hl6
  have hl7 := outsideAggregateLocalPart7_0074
  simp only [outsideAggregateLocalPartValid7_0074, outsideHistoryChunk0074] at hl7
  have hm0 := outsideAggregateMarkerPart0_0074
  simp only [outsideAggregateMarkerPartValid0_0074, outsideHistoryChunk0074] at hm0
  have hm1 := outsideAggregateMarkerPart1_0074
  simp only [outsideAggregateMarkerPartValid1_0074, outsideHistoryChunk0074] at hm1
  have hm2 := outsideAggregateMarkerPart2_0074
  simp only [outsideAggregateMarkerPartValid2_0074, outsideHistoryChunk0074] at hm2
  have hm3 := outsideAggregateMarkerPart3_0074
  simp only [outsideAggregateMarkerPartValid3_0074, outsideHistoryChunk0074] at hm3
  have hm4 := outsideAggregateMarkerPart4_0074
  simp only [outsideAggregateMarkerPartValid4_0074, outsideHistoryChunk0074] at hm4
  have hm5 := outsideAggregateMarkerPart5_0074
  simp only [outsideAggregateMarkerPartValid5_0074, outsideHistoryChunk0074] at hm5
  have hm6 := outsideAggregateMarkerPart6_0074
  simp only [outsideAggregateMarkerPartValid6_0074, outsideHistoryChunk0074] at hm6
  have hm7 := outsideAggregateMarkerPart7_0074
  simp only [outsideAggregateMarkerPartValid7_0074, outsideHistoryChunk0074] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0074
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0074
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0075 :
    outsideAggregateLocalPartValid0_0075 outsideHistoryChunk0075 := by
  unfold outsideAggregateLocalPartValid0_0075 outsideHistoryChunk0075
  decide

def outsideAggregateMarkerPartValid0_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 76800
  | _ => True

theorem outsideAggregateMarkerPart0_0075 :
    outsideAggregateMarkerPartValid0_0075 outsideHistoryChunk0075 := by
  unfold outsideAggregateMarkerPartValid0_0075 outsideHistoryChunk0075
  decide

def outsideAggregateLocalPartValid1_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0075 :
    outsideAggregateLocalPartValid1_0075 outsideHistoryChunk0075 := by
  unfold outsideAggregateLocalPartValid1_0075 outsideHistoryChunk0075
  decide

def outsideAggregateMarkerPartValid1_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 76928
  | _ => True

theorem outsideAggregateMarkerPart1_0075 :
    outsideAggregateMarkerPartValid1_0075 outsideHistoryChunk0075 := by
  unfold outsideAggregateMarkerPartValid1_0075 outsideHistoryChunk0075
  decide

def outsideAggregateLocalPartValid2_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0075 :
    outsideAggregateLocalPartValid2_0075 outsideHistoryChunk0075 := by
  unfold outsideAggregateLocalPartValid2_0075 outsideHistoryChunk0075
  decide

def outsideAggregateMarkerPartValid2_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 77056
  | _ => True

theorem outsideAggregateMarkerPart2_0075 :
    outsideAggregateMarkerPartValid2_0075 outsideHistoryChunk0075 := by
  unfold outsideAggregateMarkerPartValid2_0075 outsideHistoryChunk0075
  decide

def outsideAggregateLocalPartValid3_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0075 :
    outsideAggregateLocalPartValid3_0075 outsideHistoryChunk0075 := by
  unfold outsideAggregateLocalPartValid3_0075 outsideHistoryChunk0075
  decide

def outsideAggregateMarkerPartValid3_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 77184
  | _ => True

theorem outsideAggregateMarkerPart3_0075 :
    outsideAggregateMarkerPartValid3_0075 outsideHistoryChunk0075 := by
  unfold outsideAggregateMarkerPartValid3_0075 outsideHistoryChunk0075
  decide

def outsideAggregateLocalPartValid4_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0075 :
    outsideAggregateLocalPartValid4_0075 outsideHistoryChunk0075 := by
  unfold outsideAggregateLocalPartValid4_0075 outsideHistoryChunk0075
  decide

def outsideAggregateMarkerPartValid4_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 77312
  | _ => True

theorem outsideAggregateMarkerPart4_0075 :
    outsideAggregateMarkerPartValid4_0075 outsideHistoryChunk0075 := by
  unfold outsideAggregateMarkerPartValid4_0075 outsideHistoryChunk0075
  decide

def outsideAggregateLocalPartValid5_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0075 :
    outsideAggregateLocalPartValid5_0075 outsideHistoryChunk0075 := by
  unfold outsideAggregateLocalPartValid5_0075 outsideHistoryChunk0075
  decide

def outsideAggregateMarkerPartValid5_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 77440
  | _ => True

theorem outsideAggregateMarkerPart5_0075 :
    outsideAggregateMarkerPartValid5_0075 outsideHistoryChunk0075 := by
  unfold outsideAggregateMarkerPartValid5_0075 outsideHistoryChunk0075
  decide

def outsideAggregateLocalPartValid6_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0075 :
    outsideAggregateLocalPartValid6_0075 outsideHistoryChunk0075 := by
  unfold outsideAggregateLocalPartValid6_0075 outsideHistoryChunk0075
  decide

def outsideAggregateMarkerPartValid6_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 77568
  | _ => True

theorem outsideAggregateMarkerPart6_0075 :
    outsideAggregateMarkerPartValid6_0075 outsideHistoryChunk0075 := by
  unfold outsideAggregateMarkerPartValid6_0075 outsideHistoryChunk0075
  decide

def outsideAggregateLocalPartValid7_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0075 :
    outsideAggregateLocalPartValid7_0075 outsideHistoryChunk0075 := by
  unfold outsideAggregateLocalPartValid7_0075 outsideHistoryChunk0075
  decide

def outsideAggregateMarkerPartValid7_0075 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 77696
  | _ => True

theorem outsideAggregateMarkerPart7_0075 :
    outsideAggregateMarkerPartValid7_0075 outsideHistoryChunk0075 := by
  unfold outsideAggregateMarkerPartValid7_0075 outsideHistoryChunk0075
  decide

theorem outsideRange_0075 :
    outsideHistoryChunk0075.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 76800 := by
  have hl0 := outsideAggregateLocalPart0_0075
  simp only [outsideAggregateLocalPartValid0_0075, outsideHistoryChunk0075] at hl0
  have hl1 := outsideAggregateLocalPart1_0075
  simp only [outsideAggregateLocalPartValid1_0075, outsideHistoryChunk0075] at hl1
  have hl2 := outsideAggregateLocalPart2_0075
  simp only [outsideAggregateLocalPartValid2_0075, outsideHistoryChunk0075] at hl2
  have hl3 := outsideAggregateLocalPart3_0075
  simp only [outsideAggregateLocalPartValid3_0075, outsideHistoryChunk0075] at hl3
  have hl4 := outsideAggregateLocalPart4_0075
  simp only [outsideAggregateLocalPartValid4_0075, outsideHistoryChunk0075] at hl4
  have hl5 := outsideAggregateLocalPart5_0075
  simp only [outsideAggregateLocalPartValid5_0075, outsideHistoryChunk0075] at hl5
  have hl6 := outsideAggregateLocalPart6_0075
  simp only [outsideAggregateLocalPartValid6_0075, outsideHistoryChunk0075] at hl6
  have hl7 := outsideAggregateLocalPart7_0075
  simp only [outsideAggregateLocalPartValid7_0075, outsideHistoryChunk0075] at hl7
  have hm0 := outsideAggregateMarkerPart0_0075
  simp only [outsideAggregateMarkerPartValid0_0075, outsideHistoryChunk0075] at hm0
  have hm1 := outsideAggregateMarkerPart1_0075
  simp only [outsideAggregateMarkerPartValid1_0075, outsideHistoryChunk0075] at hm1
  have hm2 := outsideAggregateMarkerPart2_0075
  simp only [outsideAggregateMarkerPartValid2_0075, outsideHistoryChunk0075] at hm2
  have hm3 := outsideAggregateMarkerPart3_0075
  simp only [outsideAggregateMarkerPartValid3_0075, outsideHistoryChunk0075] at hm3
  have hm4 := outsideAggregateMarkerPart4_0075
  simp only [outsideAggregateMarkerPartValid4_0075, outsideHistoryChunk0075] at hm4
  have hm5 := outsideAggregateMarkerPart5_0075
  simp only [outsideAggregateMarkerPartValid5_0075, outsideHistoryChunk0075] at hm5
  have hm6 := outsideAggregateMarkerPart6_0075
  simp only [outsideAggregateMarkerPartValid6_0075, outsideHistoryChunk0075] at hm6
  have hm7 := outsideAggregateMarkerPart7_0075
  simp only [outsideAggregateMarkerPartValid7_0075, outsideHistoryChunk0075] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0075
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0075
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
