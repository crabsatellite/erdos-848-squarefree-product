import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0096
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0097
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0098
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0099

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0096, 0097, 0098, 0099 -/

def outsideAggregateLocalPartValid0_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0096 :
    outsideAggregateLocalPartValid0_0096 outsideHistoryChunk0096 := by
  unfold outsideAggregateLocalPartValid0_0096 outsideHistoryChunk0096
  decide

def outsideAggregateMarkerPartValid0_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 98304
  | _ => True

theorem outsideAggregateMarkerPart0_0096 :
    outsideAggregateMarkerPartValid0_0096 outsideHistoryChunk0096 := by
  unfold outsideAggregateMarkerPartValid0_0096 outsideHistoryChunk0096
  decide

def outsideAggregateLocalPartValid1_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0096 :
    outsideAggregateLocalPartValid1_0096 outsideHistoryChunk0096 := by
  unfold outsideAggregateLocalPartValid1_0096 outsideHistoryChunk0096
  decide

def outsideAggregateMarkerPartValid1_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 98432
  | _ => True

theorem outsideAggregateMarkerPart1_0096 :
    outsideAggregateMarkerPartValid1_0096 outsideHistoryChunk0096 := by
  unfold outsideAggregateMarkerPartValid1_0096 outsideHistoryChunk0096
  decide

def outsideAggregateLocalPartValid2_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0096 :
    outsideAggregateLocalPartValid2_0096 outsideHistoryChunk0096 := by
  unfold outsideAggregateLocalPartValid2_0096 outsideHistoryChunk0096
  decide

def outsideAggregateMarkerPartValid2_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 98560
  | _ => True

theorem outsideAggregateMarkerPart2_0096 :
    outsideAggregateMarkerPartValid2_0096 outsideHistoryChunk0096 := by
  unfold outsideAggregateMarkerPartValid2_0096 outsideHistoryChunk0096
  decide

def outsideAggregateLocalPartValid3_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0096 :
    outsideAggregateLocalPartValid3_0096 outsideHistoryChunk0096 := by
  unfold outsideAggregateLocalPartValid3_0096 outsideHistoryChunk0096
  decide

def outsideAggregateMarkerPartValid3_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 98688
  | _ => True

theorem outsideAggregateMarkerPart3_0096 :
    outsideAggregateMarkerPartValid3_0096 outsideHistoryChunk0096 := by
  unfold outsideAggregateMarkerPartValid3_0096 outsideHistoryChunk0096
  decide

def outsideAggregateLocalPartValid4_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0096 :
    outsideAggregateLocalPartValid4_0096 outsideHistoryChunk0096 := by
  unfold outsideAggregateLocalPartValid4_0096 outsideHistoryChunk0096
  decide

def outsideAggregateMarkerPartValid4_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 98816
  | _ => True

theorem outsideAggregateMarkerPart4_0096 :
    outsideAggregateMarkerPartValid4_0096 outsideHistoryChunk0096 := by
  unfold outsideAggregateMarkerPartValid4_0096 outsideHistoryChunk0096
  decide

def outsideAggregateLocalPartValid5_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0096 :
    outsideAggregateLocalPartValid5_0096 outsideHistoryChunk0096 := by
  unfold outsideAggregateLocalPartValid5_0096 outsideHistoryChunk0096
  decide

def outsideAggregateMarkerPartValid5_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 98944
  | _ => True

theorem outsideAggregateMarkerPart5_0096 :
    outsideAggregateMarkerPartValid5_0096 outsideHistoryChunk0096 := by
  unfold outsideAggregateMarkerPartValid5_0096 outsideHistoryChunk0096
  decide

def outsideAggregateLocalPartValid6_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0096 :
    outsideAggregateLocalPartValid6_0096 outsideHistoryChunk0096 := by
  unfold outsideAggregateLocalPartValid6_0096 outsideHistoryChunk0096
  decide

def outsideAggregateMarkerPartValid6_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 99072
  | _ => True

theorem outsideAggregateMarkerPart6_0096 :
    outsideAggregateMarkerPartValid6_0096 outsideHistoryChunk0096 := by
  unfold outsideAggregateMarkerPartValid6_0096 outsideHistoryChunk0096
  decide

def outsideAggregateLocalPartValid7_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0096 :
    outsideAggregateLocalPartValid7_0096 outsideHistoryChunk0096 := by
  unfold outsideAggregateLocalPartValid7_0096 outsideHistoryChunk0096
  decide

def outsideAggregateMarkerPartValid7_0096 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 99200
  | _ => True

theorem outsideAggregateMarkerPart7_0096 :
    outsideAggregateMarkerPartValid7_0096 outsideHistoryChunk0096 := by
  unfold outsideAggregateMarkerPartValid7_0096 outsideHistoryChunk0096
  decide

theorem outsideRange_0096 :
    outsideHistoryChunk0096.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 98304 := by
  have hl0 := outsideAggregateLocalPart0_0096
  simp only [outsideAggregateLocalPartValid0_0096, outsideHistoryChunk0096] at hl0
  have hl1 := outsideAggregateLocalPart1_0096
  simp only [outsideAggregateLocalPartValid1_0096, outsideHistoryChunk0096] at hl1
  have hl2 := outsideAggregateLocalPart2_0096
  simp only [outsideAggregateLocalPartValid2_0096, outsideHistoryChunk0096] at hl2
  have hl3 := outsideAggregateLocalPart3_0096
  simp only [outsideAggregateLocalPartValid3_0096, outsideHistoryChunk0096] at hl3
  have hl4 := outsideAggregateLocalPart4_0096
  simp only [outsideAggregateLocalPartValid4_0096, outsideHistoryChunk0096] at hl4
  have hl5 := outsideAggregateLocalPart5_0096
  simp only [outsideAggregateLocalPartValid5_0096, outsideHistoryChunk0096] at hl5
  have hl6 := outsideAggregateLocalPart6_0096
  simp only [outsideAggregateLocalPartValid6_0096, outsideHistoryChunk0096] at hl6
  have hl7 := outsideAggregateLocalPart7_0096
  simp only [outsideAggregateLocalPartValid7_0096, outsideHistoryChunk0096] at hl7
  have hm0 := outsideAggregateMarkerPart0_0096
  simp only [outsideAggregateMarkerPartValid0_0096, outsideHistoryChunk0096] at hm0
  have hm1 := outsideAggregateMarkerPart1_0096
  simp only [outsideAggregateMarkerPartValid1_0096, outsideHistoryChunk0096] at hm1
  have hm2 := outsideAggregateMarkerPart2_0096
  simp only [outsideAggregateMarkerPartValid2_0096, outsideHistoryChunk0096] at hm2
  have hm3 := outsideAggregateMarkerPart3_0096
  simp only [outsideAggregateMarkerPartValid3_0096, outsideHistoryChunk0096] at hm3
  have hm4 := outsideAggregateMarkerPart4_0096
  simp only [outsideAggregateMarkerPartValid4_0096, outsideHistoryChunk0096] at hm4
  have hm5 := outsideAggregateMarkerPart5_0096
  simp only [outsideAggregateMarkerPartValid5_0096, outsideHistoryChunk0096] at hm5
  have hm6 := outsideAggregateMarkerPart6_0096
  simp only [outsideAggregateMarkerPartValid6_0096, outsideHistoryChunk0096] at hm6
  have hm7 := outsideAggregateMarkerPart7_0096
  simp only [outsideAggregateMarkerPartValid7_0096, outsideHistoryChunk0096] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0096
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0096
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0097 :
    outsideAggregateLocalPartValid0_0097 outsideHistoryChunk0097 := by
  unfold outsideAggregateLocalPartValid0_0097 outsideHistoryChunk0097
  decide

def outsideAggregateMarkerPartValid0_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 99328
  | _ => True

theorem outsideAggregateMarkerPart0_0097 :
    outsideAggregateMarkerPartValid0_0097 outsideHistoryChunk0097 := by
  unfold outsideAggregateMarkerPartValid0_0097 outsideHistoryChunk0097
  decide

def outsideAggregateLocalPartValid1_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0097 :
    outsideAggregateLocalPartValid1_0097 outsideHistoryChunk0097 := by
  unfold outsideAggregateLocalPartValid1_0097 outsideHistoryChunk0097
  decide

def outsideAggregateMarkerPartValid1_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 99456
  | _ => True

theorem outsideAggregateMarkerPart1_0097 :
    outsideAggregateMarkerPartValid1_0097 outsideHistoryChunk0097 := by
  unfold outsideAggregateMarkerPartValid1_0097 outsideHistoryChunk0097
  decide

def outsideAggregateLocalPartValid2_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0097 :
    outsideAggregateLocalPartValid2_0097 outsideHistoryChunk0097 := by
  unfold outsideAggregateLocalPartValid2_0097 outsideHistoryChunk0097
  decide

def outsideAggregateMarkerPartValid2_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 99584
  | _ => True

theorem outsideAggregateMarkerPart2_0097 :
    outsideAggregateMarkerPartValid2_0097 outsideHistoryChunk0097 := by
  unfold outsideAggregateMarkerPartValid2_0097 outsideHistoryChunk0097
  decide

def outsideAggregateLocalPartValid3_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0097 :
    outsideAggregateLocalPartValid3_0097 outsideHistoryChunk0097 := by
  unfold outsideAggregateLocalPartValid3_0097 outsideHistoryChunk0097
  decide

def outsideAggregateMarkerPartValid3_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 99712
  | _ => True

theorem outsideAggregateMarkerPart3_0097 :
    outsideAggregateMarkerPartValid3_0097 outsideHistoryChunk0097 := by
  unfold outsideAggregateMarkerPartValid3_0097 outsideHistoryChunk0097
  decide

def outsideAggregateLocalPartValid4_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0097 :
    outsideAggregateLocalPartValid4_0097 outsideHistoryChunk0097 := by
  unfold outsideAggregateLocalPartValid4_0097 outsideHistoryChunk0097
  decide

def outsideAggregateMarkerPartValid4_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 99840
  | _ => True

theorem outsideAggregateMarkerPart4_0097 :
    outsideAggregateMarkerPartValid4_0097 outsideHistoryChunk0097 := by
  unfold outsideAggregateMarkerPartValid4_0097 outsideHistoryChunk0097
  decide

def outsideAggregateLocalPartValid5_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0097 :
    outsideAggregateLocalPartValid5_0097 outsideHistoryChunk0097 := by
  unfold outsideAggregateLocalPartValid5_0097 outsideHistoryChunk0097
  decide

def outsideAggregateMarkerPartValid5_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 99968
  | _ => True

theorem outsideAggregateMarkerPart5_0097 :
    outsideAggregateMarkerPartValid5_0097 outsideHistoryChunk0097 := by
  unfold outsideAggregateMarkerPartValid5_0097 outsideHistoryChunk0097
  decide

def outsideAggregateLocalPartValid6_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0097 :
    outsideAggregateLocalPartValid6_0097 outsideHistoryChunk0097 := by
  unfold outsideAggregateLocalPartValid6_0097 outsideHistoryChunk0097
  decide

def outsideAggregateMarkerPartValid6_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 100096
  | _ => True

theorem outsideAggregateMarkerPart6_0097 :
    outsideAggregateMarkerPartValid6_0097 outsideHistoryChunk0097 := by
  unfold outsideAggregateMarkerPartValid6_0097 outsideHistoryChunk0097
  decide

def outsideAggregateLocalPartValid7_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0097 :
    outsideAggregateLocalPartValid7_0097 outsideHistoryChunk0097 := by
  unfold outsideAggregateLocalPartValid7_0097 outsideHistoryChunk0097
  decide

def outsideAggregateMarkerPartValid7_0097 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 100224
  | _ => True

theorem outsideAggregateMarkerPart7_0097 :
    outsideAggregateMarkerPartValid7_0097 outsideHistoryChunk0097 := by
  unfold outsideAggregateMarkerPartValid7_0097 outsideHistoryChunk0097
  decide

theorem outsideRange_0097 :
    outsideHistoryChunk0097.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 99328 := by
  have hl0 := outsideAggregateLocalPart0_0097
  simp only [outsideAggregateLocalPartValid0_0097, outsideHistoryChunk0097] at hl0
  have hl1 := outsideAggregateLocalPart1_0097
  simp only [outsideAggregateLocalPartValid1_0097, outsideHistoryChunk0097] at hl1
  have hl2 := outsideAggregateLocalPart2_0097
  simp only [outsideAggregateLocalPartValid2_0097, outsideHistoryChunk0097] at hl2
  have hl3 := outsideAggregateLocalPart3_0097
  simp only [outsideAggregateLocalPartValid3_0097, outsideHistoryChunk0097] at hl3
  have hl4 := outsideAggregateLocalPart4_0097
  simp only [outsideAggregateLocalPartValid4_0097, outsideHistoryChunk0097] at hl4
  have hl5 := outsideAggregateLocalPart5_0097
  simp only [outsideAggregateLocalPartValid5_0097, outsideHistoryChunk0097] at hl5
  have hl6 := outsideAggregateLocalPart6_0097
  simp only [outsideAggregateLocalPartValid6_0097, outsideHistoryChunk0097] at hl6
  have hl7 := outsideAggregateLocalPart7_0097
  simp only [outsideAggregateLocalPartValid7_0097, outsideHistoryChunk0097] at hl7
  have hm0 := outsideAggregateMarkerPart0_0097
  simp only [outsideAggregateMarkerPartValid0_0097, outsideHistoryChunk0097] at hm0
  have hm1 := outsideAggregateMarkerPart1_0097
  simp only [outsideAggregateMarkerPartValid1_0097, outsideHistoryChunk0097] at hm1
  have hm2 := outsideAggregateMarkerPart2_0097
  simp only [outsideAggregateMarkerPartValid2_0097, outsideHistoryChunk0097] at hm2
  have hm3 := outsideAggregateMarkerPart3_0097
  simp only [outsideAggregateMarkerPartValid3_0097, outsideHistoryChunk0097] at hm3
  have hm4 := outsideAggregateMarkerPart4_0097
  simp only [outsideAggregateMarkerPartValid4_0097, outsideHistoryChunk0097] at hm4
  have hm5 := outsideAggregateMarkerPart5_0097
  simp only [outsideAggregateMarkerPartValid5_0097, outsideHistoryChunk0097] at hm5
  have hm6 := outsideAggregateMarkerPart6_0097
  simp only [outsideAggregateMarkerPartValid6_0097, outsideHistoryChunk0097] at hm6
  have hm7 := outsideAggregateMarkerPart7_0097
  simp only [outsideAggregateMarkerPartValid7_0097, outsideHistoryChunk0097] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0097
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0097
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0098 :
    outsideAggregateLocalPartValid0_0098 outsideHistoryChunk0098 := by
  unfold outsideAggregateLocalPartValid0_0098 outsideHistoryChunk0098
  decide

def outsideAggregateMarkerPartValid0_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 100352
  | _ => True

theorem outsideAggregateMarkerPart0_0098 :
    outsideAggregateMarkerPartValid0_0098 outsideHistoryChunk0098 := by
  unfold outsideAggregateMarkerPartValid0_0098 outsideHistoryChunk0098
  decide

def outsideAggregateLocalPartValid1_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0098 :
    outsideAggregateLocalPartValid1_0098 outsideHistoryChunk0098 := by
  unfold outsideAggregateLocalPartValid1_0098 outsideHistoryChunk0098
  decide

def outsideAggregateMarkerPartValid1_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 100480
  | _ => True

theorem outsideAggregateMarkerPart1_0098 :
    outsideAggregateMarkerPartValid1_0098 outsideHistoryChunk0098 := by
  unfold outsideAggregateMarkerPartValid1_0098 outsideHistoryChunk0098
  decide

def outsideAggregateLocalPartValid2_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0098 :
    outsideAggregateLocalPartValid2_0098 outsideHistoryChunk0098 := by
  unfold outsideAggregateLocalPartValid2_0098 outsideHistoryChunk0098
  decide

def outsideAggregateMarkerPartValid2_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 100608
  | _ => True

theorem outsideAggregateMarkerPart2_0098 :
    outsideAggregateMarkerPartValid2_0098 outsideHistoryChunk0098 := by
  unfold outsideAggregateMarkerPartValid2_0098 outsideHistoryChunk0098
  decide

def outsideAggregateLocalPartValid3_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0098 :
    outsideAggregateLocalPartValid3_0098 outsideHistoryChunk0098 := by
  unfold outsideAggregateLocalPartValid3_0098 outsideHistoryChunk0098
  decide

def outsideAggregateMarkerPartValid3_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 100736
  | _ => True

theorem outsideAggregateMarkerPart3_0098 :
    outsideAggregateMarkerPartValid3_0098 outsideHistoryChunk0098 := by
  unfold outsideAggregateMarkerPartValid3_0098 outsideHistoryChunk0098
  decide

def outsideAggregateLocalPartValid4_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0098 :
    outsideAggregateLocalPartValid4_0098 outsideHistoryChunk0098 := by
  unfold outsideAggregateLocalPartValid4_0098 outsideHistoryChunk0098
  decide

def outsideAggregateMarkerPartValid4_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 100864
  | _ => True

theorem outsideAggregateMarkerPart4_0098 :
    outsideAggregateMarkerPartValid4_0098 outsideHistoryChunk0098 := by
  unfold outsideAggregateMarkerPartValid4_0098 outsideHistoryChunk0098
  decide

def outsideAggregateLocalPartValid5_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0098 :
    outsideAggregateLocalPartValid5_0098 outsideHistoryChunk0098 := by
  unfold outsideAggregateLocalPartValid5_0098 outsideHistoryChunk0098
  decide

def outsideAggregateMarkerPartValid5_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 100992
  | _ => True

theorem outsideAggregateMarkerPart5_0098 :
    outsideAggregateMarkerPartValid5_0098 outsideHistoryChunk0098 := by
  unfold outsideAggregateMarkerPartValid5_0098 outsideHistoryChunk0098
  decide

def outsideAggregateLocalPartValid6_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0098 :
    outsideAggregateLocalPartValid6_0098 outsideHistoryChunk0098 := by
  unfold outsideAggregateLocalPartValid6_0098 outsideHistoryChunk0098
  decide

def outsideAggregateMarkerPartValid6_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 101120
  | _ => True

theorem outsideAggregateMarkerPart6_0098 :
    outsideAggregateMarkerPartValid6_0098 outsideHistoryChunk0098 := by
  unfold outsideAggregateMarkerPartValid6_0098 outsideHistoryChunk0098
  decide

def outsideAggregateLocalPartValid7_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0098 :
    outsideAggregateLocalPartValid7_0098 outsideHistoryChunk0098 := by
  unfold outsideAggregateLocalPartValid7_0098 outsideHistoryChunk0098
  decide

def outsideAggregateMarkerPartValid7_0098 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 101248
  | _ => True

theorem outsideAggregateMarkerPart7_0098 :
    outsideAggregateMarkerPartValid7_0098 outsideHistoryChunk0098 := by
  unfold outsideAggregateMarkerPartValid7_0098 outsideHistoryChunk0098
  decide

theorem outsideRange_0098 :
    outsideHistoryChunk0098.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 100352 := by
  have hl0 := outsideAggregateLocalPart0_0098
  simp only [outsideAggregateLocalPartValid0_0098, outsideHistoryChunk0098] at hl0
  have hl1 := outsideAggregateLocalPart1_0098
  simp only [outsideAggregateLocalPartValid1_0098, outsideHistoryChunk0098] at hl1
  have hl2 := outsideAggregateLocalPart2_0098
  simp only [outsideAggregateLocalPartValid2_0098, outsideHistoryChunk0098] at hl2
  have hl3 := outsideAggregateLocalPart3_0098
  simp only [outsideAggregateLocalPartValid3_0098, outsideHistoryChunk0098] at hl3
  have hl4 := outsideAggregateLocalPart4_0098
  simp only [outsideAggregateLocalPartValid4_0098, outsideHistoryChunk0098] at hl4
  have hl5 := outsideAggregateLocalPart5_0098
  simp only [outsideAggregateLocalPartValid5_0098, outsideHistoryChunk0098] at hl5
  have hl6 := outsideAggregateLocalPart6_0098
  simp only [outsideAggregateLocalPartValid6_0098, outsideHistoryChunk0098] at hl6
  have hl7 := outsideAggregateLocalPart7_0098
  simp only [outsideAggregateLocalPartValid7_0098, outsideHistoryChunk0098] at hl7
  have hm0 := outsideAggregateMarkerPart0_0098
  simp only [outsideAggregateMarkerPartValid0_0098, outsideHistoryChunk0098] at hm0
  have hm1 := outsideAggregateMarkerPart1_0098
  simp only [outsideAggregateMarkerPartValid1_0098, outsideHistoryChunk0098] at hm1
  have hm2 := outsideAggregateMarkerPart2_0098
  simp only [outsideAggregateMarkerPartValid2_0098, outsideHistoryChunk0098] at hm2
  have hm3 := outsideAggregateMarkerPart3_0098
  simp only [outsideAggregateMarkerPartValid3_0098, outsideHistoryChunk0098] at hm3
  have hm4 := outsideAggregateMarkerPart4_0098
  simp only [outsideAggregateMarkerPartValid4_0098, outsideHistoryChunk0098] at hm4
  have hm5 := outsideAggregateMarkerPart5_0098
  simp only [outsideAggregateMarkerPartValid5_0098, outsideHistoryChunk0098] at hm5
  have hm6 := outsideAggregateMarkerPart6_0098
  simp only [outsideAggregateMarkerPartValid6_0098, outsideHistoryChunk0098] at hm6
  have hm7 := outsideAggregateMarkerPart7_0098
  simp only [outsideAggregateMarkerPartValid7_0098, outsideHistoryChunk0098] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0098
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0098
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0099 :
    outsideAggregateLocalPartValid0_0099 outsideHistoryChunk0099 := by
  unfold outsideAggregateLocalPartValid0_0099 outsideHistoryChunk0099
  decide

def outsideAggregateMarkerPartValid0_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 101376
  | _ => True

theorem outsideAggregateMarkerPart0_0099 :
    outsideAggregateMarkerPartValid0_0099 outsideHistoryChunk0099 := by
  unfold outsideAggregateMarkerPartValid0_0099 outsideHistoryChunk0099
  decide

def outsideAggregateLocalPartValid1_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0099 :
    outsideAggregateLocalPartValid1_0099 outsideHistoryChunk0099 := by
  unfold outsideAggregateLocalPartValid1_0099 outsideHistoryChunk0099
  decide

def outsideAggregateMarkerPartValid1_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 101504
  | _ => True

theorem outsideAggregateMarkerPart1_0099 :
    outsideAggregateMarkerPartValid1_0099 outsideHistoryChunk0099 := by
  unfold outsideAggregateMarkerPartValid1_0099 outsideHistoryChunk0099
  decide

def outsideAggregateLocalPartValid2_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0099 :
    outsideAggregateLocalPartValid2_0099 outsideHistoryChunk0099 := by
  unfold outsideAggregateLocalPartValid2_0099 outsideHistoryChunk0099
  decide

def outsideAggregateMarkerPartValid2_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 101632
  | _ => True

theorem outsideAggregateMarkerPart2_0099 :
    outsideAggregateMarkerPartValid2_0099 outsideHistoryChunk0099 := by
  unfold outsideAggregateMarkerPartValid2_0099 outsideHistoryChunk0099
  decide

def outsideAggregateLocalPartValid3_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0099 :
    outsideAggregateLocalPartValid3_0099 outsideHistoryChunk0099 := by
  unfold outsideAggregateLocalPartValid3_0099 outsideHistoryChunk0099
  decide

def outsideAggregateMarkerPartValid3_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 101760
  | _ => True

theorem outsideAggregateMarkerPart3_0099 :
    outsideAggregateMarkerPartValid3_0099 outsideHistoryChunk0099 := by
  unfold outsideAggregateMarkerPartValid3_0099 outsideHistoryChunk0099
  decide

def outsideAggregateLocalPartValid4_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0099 :
    outsideAggregateLocalPartValid4_0099 outsideHistoryChunk0099 := by
  unfold outsideAggregateLocalPartValid4_0099 outsideHistoryChunk0099
  decide

def outsideAggregateMarkerPartValid4_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 101888
  | _ => True

theorem outsideAggregateMarkerPart4_0099 :
    outsideAggregateMarkerPartValid4_0099 outsideHistoryChunk0099 := by
  unfold outsideAggregateMarkerPartValid4_0099 outsideHistoryChunk0099
  decide

def outsideAggregateLocalPartValid5_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0099 :
    outsideAggregateLocalPartValid5_0099 outsideHistoryChunk0099 := by
  unfold outsideAggregateLocalPartValid5_0099 outsideHistoryChunk0099
  decide

def outsideAggregateMarkerPartValid5_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 102016
  | _ => True

theorem outsideAggregateMarkerPart5_0099 :
    outsideAggregateMarkerPartValid5_0099 outsideHistoryChunk0099 := by
  unfold outsideAggregateMarkerPartValid5_0099 outsideHistoryChunk0099
  decide

def outsideAggregateLocalPartValid6_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0099 :
    outsideAggregateLocalPartValid6_0099 outsideHistoryChunk0099 := by
  unfold outsideAggregateLocalPartValid6_0099 outsideHistoryChunk0099
  decide

def outsideAggregateMarkerPartValid6_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 102144
  | _ => True

theorem outsideAggregateMarkerPart6_0099 :
    outsideAggregateMarkerPartValid6_0099 outsideHistoryChunk0099 := by
  unfold outsideAggregateMarkerPartValid6_0099 outsideHistoryChunk0099
  decide

def outsideAggregateLocalPartValid7_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0099 :
    outsideAggregateLocalPartValid7_0099 outsideHistoryChunk0099 := by
  unfold outsideAggregateLocalPartValid7_0099 outsideHistoryChunk0099
  decide

def outsideAggregateMarkerPartValid7_0099 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 102272
  | _ => True

theorem outsideAggregateMarkerPart7_0099 :
    outsideAggregateMarkerPartValid7_0099 outsideHistoryChunk0099 := by
  unfold outsideAggregateMarkerPartValid7_0099 outsideHistoryChunk0099
  decide

theorem outsideRange_0099 :
    outsideHistoryChunk0099.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 101376 := by
  have hl0 := outsideAggregateLocalPart0_0099
  simp only [outsideAggregateLocalPartValid0_0099, outsideHistoryChunk0099] at hl0
  have hl1 := outsideAggregateLocalPart1_0099
  simp only [outsideAggregateLocalPartValid1_0099, outsideHistoryChunk0099] at hl1
  have hl2 := outsideAggregateLocalPart2_0099
  simp only [outsideAggregateLocalPartValid2_0099, outsideHistoryChunk0099] at hl2
  have hl3 := outsideAggregateLocalPart3_0099
  simp only [outsideAggregateLocalPartValid3_0099, outsideHistoryChunk0099] at hl3
  have hl4 := outsideAggregateLocalPart4_0099
  simp only [outsideAggregateLocalPartValid4_0099, outsideHistoryChunk0099] at hl4
  have hl5 := outsideAggregateLocalPart5_0099
  simp only [outsideAggregateLocalPartValid5_0099, outsideHistoryChunk0099] at hl5
  have hl6 := outsideAggregateLocalPart6_0099
  simp only [outsideAggregateLocalPartValid6_0099, outsideHistoryChunk0099] at hl6
  have hl7 := outsideAggregateLocalPart7_0099
  simp only [outsideAggregateLocalPartValid7_0099, outsideHistoryChunk0099] at hl7
  have hm0 := outsideAggregateMarkerPart0_0099
  simp only [outsideAggregateMarkerPartValid0_0099, outsideHistoryChunk0099] at hm0
  have hm1 := outsideAggregateMarkerPart1_0099
  simp only [outsideAggregateMarkerPartValid1_0099, outsideHistoryChunk0099] at hm1
  have hm2 := outsideAggregateMarkerPart2_0099
  simp only [outsideAggregateMarkerPartValid2_0099, outsideHistoryChunk0099] at hm2
  have hm3 := outsideAggregateMarkerPart3_0099
  simp only [outsideAggregateMarkerPartValid3_0099, outsideHistoryChunk0099] at hm3
  have hm4 := outsideAggregateMarkerPart4_0099
  simp only [outsideAggregateMarkerPartValid4_0099, outsideHistoryChunk0099] at hm4
  have hm5 := outsideAggregateMarkerPart5_0099
  simp only [outsideAggregateMarkerPartValid5_0099, outsideHistoryChunk0099] at hm5
  have hm6 := outsideAggregateMarkerPart6_0099
  simp only [outsideAggregateMarkerPartValid6_0099, outsideHistoryChunk0099] at hm6
  have hm7 := outsideAggregateMarkerPart7_0099
  simp only [outsideAggregateMarkerPartValid7_0099, outsideHistoryChunk0099] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0099
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0099
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
