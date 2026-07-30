import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0064
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0065
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0066
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0067

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0064, 0065, 0066, 0067 -/

def outsideAggregateLocalPartValid0_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0064 :
    outsideAggregateLocalPartValid0_0064 outsideHistoryChunk0064 := by
  unfold outsideAggregateLocalPartValid0_0064 outsideHistoryChunk0064
  decide

def outsideAggregateMarkerPartValid0_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 65536
  | _ => True

theorem outsideAggregateMarkerPart0_0064 :
    outsideAggregateMarkerPartValid0_0064 outsideHistoryChunk0064 := by
  unfold outsideAggregateMarkerPartValid0_0064 outsideHistoryChunk0064
  decide

def outsideAggregateLocalPartValid1_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0064 :
    outsideAggregateLocalPartValid1_0064 outsideHistoryChunk0064 := by
  unfold outsideAggregateLocalPartValid1_0064 outsideHistoryChunk0064
  decide

def outsideAggregateMarkerPartValid1_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 65664
  | _ => True

theorem outsideAggregateMarkerPart1_0064 :
    outsideAggregateMarkerPartValid1_0064 outsideHistoryChunk0064 := by
  unfold outsideAggregateMarkerPartValid1_0064 outsideHistoryChunk0064
  decide

def outsideAggregateLocalPartValid2_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0064 :
    outsideAggregateLocalPartValid2_0064 outsideHistoryChunk0064 := by
  unfold outsideAggregateLocalPartValid2_0064 outsideHistoryChunk0064
  decide

def outsideAggregateMarkerPartValid2_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 65792
  | _ => True

theorem outsideAggregateMarkerPart2_0064 :
    outsideAggregateMarkerPartValid2_0064 outsideHistoryChunk0064 := by
  unfold outsideAggregateMarkerPartValid2_0064 outsideHistoryChunk0064
  decide

def outsideAggregateLocalPartValid3_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0064 :
    outsideAggregateLocalPartValid3_0064 outsideHistoryChunk0064 := by
  unfold outsideAggregateLocalPartValid3_0064 outsideHistoryChunk0064
  decide

def outsideAggregateMarkerPartValid3_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 65920
  | _ => True

theorem outsideAggregateMarkerPart3_0064 :
    outsideAggregateMarkerPartValid3_0064 outsideHistoryChunk0064 := by
  unfold outsideAggregateMarkerPartValid3_0064 outsideHistoryChunk0064
  decide

def outsideAggregateLocalPartValid4_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0064 :
    outsideAggregateLocalPartValid4_0064 outsideHistoryChunk0064 := by
  unfold outsideAggregateLocalPartValid4_0064 outsideHistoryChunk0064
  decide

def outsideAggregateMarkerPartValid4_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 66048
  | _ => True

theorem outsideAggregateMarkerPart4_0064 :
    outsideAggregateMarkerPartValid4_0064 outsideHistoryChunk0064 := by
  unfold outsideAggregateMarkerPartValid4_0064 outsideHistoryChunk0064
  decide

def outsideAggregateLocalPartValid5_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0064 :
    outsideAggregateLocalPartValid5_0064 outsideHistoryChunk0064 := by
  unfold outsideAggregateLocalPartValid5_0064 outsideHistoryChunk0064
  decide

def outsideAggregateMarkerPartValid5_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 66176
  | _ => True

theorem outsideAggregateMarkerPart5_0064 :
    outsideAggregateMarkerPartValid5_0064 outsideHistoryChunk0064 := by
  unfold outsideAggregateMarkerPartValid5_0064 outsideHistoryChunk0064
  decide

def outsideAggregateLocalPartValid6_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0064 :
    outsideAggregateLocalPartValid6_0064 outsideHistoryChunk0064 := by
  unfold outsideAggregateLocalPartValid6_0064 outsideHistoryChunk0064
  decide

def outsideAggregateMarkerPartValid6_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 66304
  | _ => True

theorem outsideAggregateMarkerPart6_0064 :
    outsideAggregateMarkerPartValid6_0064 outsideHistoryChunk0064 := by
  unfold outsideAggregateMarkerPartValid6_0064 outsideHistoryChunk0064
  decide

def outsideAggregateLocalPartValid7_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0064 :
    outsideAggregateLocalPartValid7_0064 outsideHistoryChunk0064 := by
  unfold outsideAggregateLocalPartValid7_0064 outsideHistoryChunk0064
  decide

def outsideAggregateMarkerPartValid7_0064 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 66432
  | _ => True

theorem outsideAggregateMarkerPart7_0064 :
    outsideAggregateMarkerPartValid7_0064 outsideHistoryChunk0064 := by
  unfold outsideAggregateMarkerPartValid7_0064 outsideHistoryChunk0064
  decide

theorem outsideRange_0064 :
    outsideHistoryChunk0064.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 65536 := by
  have hl0 := outsideAggregateLocalPart0_0064
  simp only [outsideAggregateLocalPartValid0_0064, outsideHistoryChunk0064] at hl0
  have hl1 := outsideAggregateLocalPart1_0064
  simp only [outsideAggregateLocalPartValid1_0064, outsideHistoryChunk0064] at hl1
  have hl2 := outsideAggregateLocalPart2_0064
  simp only [outsideAggregateLocalPartValid2_0064, outsideHistoryChunk0064] at hl2
  have hl3 := outsideAggregateLocalPart3_0064
  simp only [outsideAggregateLocalPartValid3_0064, outsideHistoryChunk0064] at hl3
  have hl4 := outsideAggregateLocalPart4_0064
  simp only [outsideAggregateLocalPartValid4_0064, outsideHistoryChunk0064] at hl4
  have hl5 := outsideAggregateLocalPart5_0064
  simp only [outsideAggregateLocalPartValid5_0064, outsideHistoryChunk0064] at hl5
  have hl6 := outsideAggregateLocalPart6_0064
  simp only [outsideAggregateLocalPartValid6_0064, outsideHistoryChunk0064] at hl6
  have hl7 := outsideAggregateLocalPart7_0064
  simp only [outsideAggregateLocalPartValid7_0064, outsideHistoryChunk0064] at hl7
  have hm0 := outsideAggregateMarkerPart0_0064
  simp only [outsideAggregateMarkerPartValid0_0064, outsideHistoryChunk0064] at hm0
  have hm1 := outsideAggregateMarkerPart1_0064
  simp only [outsideAggregateMarkerPartValid1_0064, outsideHistoryChunk0064] at hm1
  have hm2 := outsideAggregateMarkerPart2_0064
  simp only [outsideAggregateMarkerPartValid2_0064, outsideHistoryChunk0064] at hm2
  have hm3 := outsideAggregateMarkerPart3_0064
  simp only [outsideAggregateMarkerPartValid3_0064, outsideHistoryChunk0064] at hm3
  have hm4 := outsideAggregateMarkerPart4_0064
  simp only [outsideAggregateMarkerPartValid4_0064, outsideHistoryChunk0064] at hm4
  have hm5 := outsideAggregateMarkerPart5_0064
  simp only [outsideAggregateMarkerPartValid5_0064, outsideHistoryChunk0064] at hm5
  have hm6 := outsideAggregateMarkerPart6_0064
  simp only [outsideAggregateMarkerPartValid6_0064, outsideHistoryChunk0064] at hm6
  have hm7 := outsideAggregateMarkerPart7_0064
  simp only [outsideAggregateMarkerPartValid7_0064, outsideHistoryChunk0064] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0064
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0064
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0065 :
    outsideAggregateLocalPartValid0_0065 outsideHistoryChunk0065 := by
  unfold outsideAggregateLocalPartValid0_0065 outsideHistoryChunk0065
  decide

def outsideAggregateMarkerPartValid0_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 66560
  | _ => True

theorem outsideAggregateMarkerPart0_0065 :
    outsideAggregateMarkerPartValid0_0065 outsideHistoryChunk0065 := by
  unfold outsideAggregateMarkerPartValid0_0065 outsideHistoryChunk0065
  decide

def outsideAggregateLocalPartValid1_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0065 :
    outsideAggregateLocalPartValid1_0065 outsideHistoryChunk0065 := by
  unfold outsideAggregateLocalPartValid1_0065 outsideHistoryChunk0065
  decide

def outsideAggregateMarkerPartValid1_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 66688
  | _ => True

theorem outsideAggregateMarkerPart1_0065 :
    outsideAggregateMarkerPartValid1_0065 outsideHistoryChunk0065 := by
  unfold outsideAggregateMarkerPartValid1_0065 outsideHistoryChunk0065
  decide

def outsideAggregateLocalPartValid2_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0065 :
    outsideAggregateLocalPartValid2_0065 outsideHistoryChunk0065 := by
  unfold outsideAggregateLocalPartValid2_0065 outsideHistoryChunk0065
  decide

def outsideAggregateMarkerPartValid2_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 66816
  | _ => True

theorem outsideAggregateMarkerPart2_0065 :
    outsideAggregateMarkerPartValid2_0065 outsideHistoryChunk0065 := by
  unfold outsideAggregateMarkerPartValid2_0065 outsideHistoryChunk0065
  decide

def outsideAggregateLocalPartValid3_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0065 :
    outsideAggregateLocalPartValid3_0065 outsideHistoryChunk0065 := by
  unfold outsideAggregateLocalPartValid3_0065 outsideHistoryChunk0065
  decide

def outsideAggregateMarkerPartValid3_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 66944
  | _ => True

theorem outsideAggregateMarkerPart3_0065 :
    outsideAggregateMarkerPartValid3_0065 outsideHistoryChunk0065 := by
  unfold outsideAggregateMarkerPartValid3_0065 outsideHistoryChunk0065
  decide

def outsideAggregateLocalPartValid4_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0065 :
    outsideAggregateLocalPartValid4_0065 outsideHistoryChunk0065 := by
  unfold outsideAggregateLocalPartValid4_0065 outsideHistoryChunk0065
  decide

def outsideAggregateMarkerPartValid4_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 67072
  | _ => True

theorem outsideAggregateMarkerPart4_0065 :
    outsideAggregateMarkerPartValid4_0065 outsideHistoryChunk0065 := by
  unfold outsideAggregateMarkerPartValid4_0065 outsideHistoryChunk0065
  decide

def outsideAggregateLocalPartValid5_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0065 :
    outsideAggregateLocalPartValid5_0065 outsideHistoryChunk0065 := by
  unfold outsideAggregateLocalPartValid5_0065 outsideHistoryChunk0065
  decide

def outsideAggregateMarkerPartValid5_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 67200
  | _ => True

theorem outsideAggregateMarkerPart5_0065 :
    outsideAggregateMarkerPartValid5_0065 outsideHistoryChunk0065 := by
  unfold outsideAggregateMarkerPartValid5_0065 outsideHistoryChunk0065
  decide

def outsideAggregateLocalPartValid6_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0065 :
    outsideAggregateLocalPartValid6_0065 outsideHistoryChunk0065 := by
  unfold outsideAggregateLocalPartValid6_0065 outsideHistoryChunk0065
  decide

def outsideAggregateMarkerPartValid6_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 67328
  | _ => True

theorem outsideAggregateMarkerPart6_0065 :
    outsideAggregateMarkerPartValid6_0065 outsideHistoryChunk0065 := by
  unfold outsideAggregateMarkerPartValid6_0065 outsideHistoryChunk0065
  decide

def outsideAggregateLocalPartValid7_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0065 :
    outsideAggregateLocalPartValid7_0065 outsideHistoryChunk0065 := by
  unfold outsideAggregateLocalPartValid7_0065 outsideHistoryChunk0065
  decide

def outsideAggregateMarkerPartValid7_0065 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 67456
  | _ => True

theorem outsideAggregateMarkerPart7_0065 :
    outsideAggregateMarkerPartValid7_0065 outsideHistoryChunk0065 := by
  unfold outsideAggregateMarkerPartValid7_0065 outsideHistoryChunk0065
  decide

theorem outsideRange_0065 :
    outsideHistoryChunk0065.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 66560 := by
  have hl0 := outsideAggregateLocalPart0_0065
  simp only [outsideAggregateLocalPartValid0_0065, outsideHistoryChunk0065] at hl0
  have hl1 := outsideAggregateLocalPart1_0065
  simp only [outsideAggregateLocalPartValid1_0065, outsideHistoryChunk0065] at hl1
  have hl2 := outsideAggregateLocalPart2_0065
  simp only [outsideAggregateLocalPartValid2_0065, outsideHistoryChunk0065] at hl2
  have hl3 := outsideAggregateLocalPart3_0065
  simp only [outsideAggregateLocalPartValid3_0065, outsideHistoryChunk0065] at hl3
  have hl4 := outsideAggregateLocalPart4_0065
  simp only [outsideAggregateLocalPartValid4_0065, outsideHistoryChunk0065] at hl4
  have hl5 := outsideAggregateLocalPart5_0065
  simp only [outsideAggregateLocalPartValid5_0065, outsideHistoryChunk0065] at hl5
  have hl6 := outsideAggregateLocalPart6_0065
  simp only [outsideAggregateLocalPartValid6_0065, outsideHistoryChunk0065] at hl6
  have hl7 := outsideAggregateLocalPart7_0065
  simp only [outsideAggregateLocalPartValid7_0065, outsideHistoryChunk0065] at hl7
  have hm0 := outsideAggregateMarkerPart0_0065
  simp only [outsideAggregateMarkerPartValid0_0065, outsideHistoryChunk0065] at hm0
  have hm1 := outsideAggregateMarkerPart1_0065
  simp only [outsideAggregateMarkerPartValid1_0065, outsideHistoryChunk0065] at hm1
  have hm2 := outsideAggregateMarkerPart2_0065
  simp only [outsideAggregateMarkerPartValid2_0065, outsideHistoryChunk0065] at hm2
  have hm3 := outsideAggregateMarkerPart3_0065
  simp only [outsideAggregateMarkerPartValid3_0065, outsideHistoryChunk0065] at hm3
  have hm4 := outsideAggregateMarkerPart4_0065
  simp only [outsideAggregateMarkerPartValid4_0065, outsideHistoryChunk0065] at hm4
  have hm5 := outsideAggregateMarkerPart5_0065
  simp only [outsideAggregateMarkerPartValid5_0065, outsideHistoryChunk0065] at hm5
  have hm6 := outsideAggregateMarkerPart6_0065
  simp only [outsideAggregateMarkerPartValid6_0065, outsideHistoryChunk0065] at hm6
  have hm7 := outsideAggregateMarkerPart7_0065
  simp only [outsideAggregateMarkerPartValid7_0065, outsideHistoryChunk0065] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0065
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0065
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0066 :
    outsideAggregateLocalPartValid0_0066 outsideHistoryChunk0066 := by
  unfold outsideAggregateLocalPartValid0_0066 outsideHistoryChunk0066
  decide

def outsideAggregateMarkerPartValid0_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 67584
  | _ => True

theorem outsideAggregateMarkerPart0_0066 :
    outsideAggregateMarkerPartValid0_0066 outsideHistoryChunk0066 := by
  unfold outsideAggregateMarkerPartValid0_0066 outsideHistoryChunk0066
  decide

def outsideAggregateLocalPartValid1_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0066 :
    outsideAggregateLocalPartValid1_0066 outsideHistoryChunk0066 := by
  unfold outsideAggregateLocalPartValid1_0066 outsideHistoryChunk0066
  decide

def outsideAggregateMarkerPartValid1_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 67712
  | _ => True

theorem outsideAggregateMarkerPart1_0066 :
    outsideAggregateMarkerPartValid1_0066 outsideHistoryChunk0066 := by
  unfold outsideAggregateMarkerPartValid1_0066 outsideHistoryChunk0066
  decide

def outsideAggregateLocalPartValid2_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0066 :
    outsideAggregateLocalPartValid2_0066 outsideHistoryChunk0066 := by
  unfold outsideAggregateLocalPartValid2_0066 outsideHistoryChunk0066
  decide

def outsideAggregateMarkerPartValid2_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 67840
  | _ => True

theorem outsideAggregateMarkerPart2_0066 :
    outsideAggregateMarkerPartValid2_0066 outsideHistoryChunk0066 := by
  unfold outsideAggregateMarkerPartValid2_0066 outsideHistoryChunk0066
  decide

def outsideAggregateLocalPartValid3_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0066 :
    outsideAggregateLocalPartValid3_0066 outsideHistoryChunk0066 := by
  unfold outsideAggregateLocalPartValid3_0066 outsideHistoryChunk0066
  decide

def outsideAggregateMarkerPartValid3_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 67968
  | _ => True

theorem outsideAggregateMarkerPart3_0066 :
    outsideAggregateMarkerPartValid3_0066 outsideHistoryChunk0066 := by
  unfold outsideAggregateMarkerPartValid3_0066 outsideHistoryChunk0066
  decide

def outsideAggregateLocalPartValid4_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0066 :
    outsideAggregateLocalPartValid4_0066 outsideHistoryChunk0066 := by
  unfold outsideAggregateLocalPartValid4_0066 outsideHistoryChunk0066
  decide

def outsideAggregateMarkerPartValid4_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 68096
  | _ => True

theorem outsideAggregateMarkerPart4_0066 :
    outsideAggregateMarkerPartValid4_0066 outsideHistoryChunk0066 := by
  unfold outsideAggregateMarkerPartValid4_0066 outsideHistoryChunk0066
  decide

def outsideAggregateLocalPartValid5_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0066 :
    outsideAggregateLocalPartValid5_0066 outsideHistoryChunk0066 := by
  unfold outsideAggregateLocalPartValid5_0066 outsideHistoryChunk0066
  decide

def outsideAggregateMarkerPartValid5_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 68224
  | _ => True

theorem outsideAggregateMarkerPart5_0066 :
    outsideAggregateMarkerPartValid5_0066 outsideHistoryChunk0066 := by
  unfold outsideAggregateMarkerPartValid5_0066 outsideHistoryChunk0066
  decide

def outsideAggregateLocalPartValid6_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0066 :
    outsideAggregateLocalPartValid6_0066 outsideHistoryChunk0066 := by
  unfold outsideAggregateLocalPartValid6_0066 outsideHistoryChunk0066
  decide

def outsideAggregateMarkerPartValid6_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 68352
  | _ => True

theorem outsideAggregateMarkerPart6_0066 :
    outsideAggregateMarkerPartValid6_0066 outsideHistoryChunk0066 := by
  unfold outsideAggregateMarkerPartValid6_0066 outsideHistoryChunk0066
  decide

def outsideAggregateLocalPartValid7_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0066 :
    outsideAggregateLocalPartValid7_0066 outsideHistoryChunk0066 := by
  unfold outsideAggregateLocalPartValid7_0066 outsideHistoryChunk0066
  decide

def outsideAggregateMarkerPartValid7_0066 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 68480
  | _ => True

theorem outsideAggregateMarkerPart7_0066 :
    outsideAggregateMarkerPartValid7_0066 outsideHistoryChunk0066 := by
  unfold outsideAggregateMarkerPartValid7_0066 outsideHistoryChunk0066
  decide

theorem outsideRange_0066 :
    outsideHistoryChunk0066.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 67584 := by
  have hl0 := outsideAggregateLocalPart0_0066
  simp only [outsideAggregateLocalPartValid0_0066, outsideHistoryChunk0066] at hl0
  have hl1 := outsideAggregateLocalPart1_0066
  simp only [outsideAggregateLocalPartValid1_0066, outsideHistoryChunk0066] at hl1
  have hl2 := outsideAggregateLocalPart2_0066
  simp only [outsideAggregateLocalPartValid2_0066, outsideHistoryChunk0066] at hl2
  have hl3 := outsideAggregateLocalPart3_0066
  simp only [outsideAggregateLocalPartValid3_0066, outsideHistoryChunk0066] at hl3
  have hl4 := outsideAggregateLocalPart4_0066
  simp only [outsideAggregateLocalPartValid4_0066, outsideHistoryChunk0066] at hl4
  have hl5 := outsideAggregateLocalPart5_0066
  simp only [outsideAggregateLocalPartValid5_0066, outsideHistoryChunk0066] at hl5
  have hl6 := outsideAggregateLocalPart6_0066
  simp only [outsideAggregateLocalPartValid6_0066, outsideHistoryChunk0066] at hl6
  have hl7 := outsideAggregateLocalPart7_0066
  simp only [outsideAggregateLocalPartValid7_0066, outsideHistoryChunk0066] at hl7
  have hm0 := outsideAggregateMarkerPart0_0066
  simp only [outsideAggregateMarkerPartValid0_0066, outsideHistoryChunk0066] at hm0
  have hm1 := outsideAggregateMarkerPart1_0066
  simp only [outsideAggregateMarkerPartValid1_0066, outsideHistoryChunk0066] at hm1
  have hm2 := outsideAggregateMarkerPart2_0066
  simp only [outsideAggregateMarkerPartValid2_0066, outsideHistoryChunk0066] at hm2
  have hm3 := outsideAggregateMarkerPart3_0066
  simp only [outsideAggregateMarkerPartValid3_0066, outsideHistoryChunk0066] at hm3
  have hm4 := outsideAggregateMarkerPart4_0066
  simp only [outsideAggregateMarkerPartValid4_0066, outsideHistoryChunk0066] at hm4
  have hm5 := outsideAggregateMarkerPart5_0066
  simp only [outsideAggregateMarkerPartValid5_0066, outsideHistoryChunk0066] at hm5
  have hm6 := outsideAggregateMarkerPart6_0066
  simp only [outsideAggregateMarkerPartValid6_0066, outsideHistoryChunk0066] at hm6
  have hm7 := outsideAggregateMarkerPart7_0066
  simp only [outsideAggregateMarkerPartValid7_0066, outsideHistoryChunk0066] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0066
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0066
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0067 :
    outsideAggregateLocalPartValid0_0067 outsideHistoryChunk0067 := by
  unfold outsideAggregateLocalPartValid0_0067 outsideHistoryChunk0067
  decide

def outsideAggregateMarkerPartValid0_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 68608
  | _ => True

theorem outsideAggregateMarkerPart0_0067 :
    outsideAggregateMarkerPartValid0_0067 outsideHistoryChunk0067 := by
  unfold outsideAggregateMarkerPartValid0_0067 outsideHistoryChunk0067
  decide

def outsideAggregateLocalPartValid1_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0067 :
    outsideAggregateLocalPartValid1_0067 outsideHistoryChunk0067 := by
  unfold outsideAggregateLocalPartValid1_0067 outsideHistoryChunk0067
  decide

def outsideAggregateMarkerPartValid1_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 68736
  | _ => True

theorem outsideAggregateMarkerPart1_0067 :
    outsideAggregateMarkerPartValid1_0067 outsideHistoryChunk0067 := by
  unfold outsideAggregateMarkerPartValid1_0067 outsideHistoryChunk0067
  decide

def outsideAggregateLocalPartValid2_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0067 :
    outsideAggregateLocalPartValid2_0067 outsideHistoryChunk0067 := by
  unfold outsideAggregateLocalPartValid2_0067 outsideHistoryChunk0067
  decide

def outsideAggregateMarkerPartValid2_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 68864
  | _ => True

theorem outsideAggregateMarkerPart2_0067 :
    outsideAggregateMarkerPartValid2_0067 outsideHistoryChunk0067 := by
  unfold outsideAggregateMarkerPartValid2_0067 outsideHistoryChunk0067
  decide

def outsideAggregateLocalPartValid3_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0067 :
    outsideAggregateLocalPartValid3_0067 outsideHistoryChunk0067 := by
  unfold outsideAggregateLocalPartValid3_0067 outsideHistoryChunk0067
  decide

def outsideAggregateMarkerPartValid3_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 68992
  | _ => True

theorem outsideAggregateMarkerPart3_0067 :
    outsideAggregateMarkerPartValid3_0067 outsideHistoryChunk0067 := by
  unfold outsideAggregateMarkerPartValid3_0067 outsideHistoryChunk0067
  decide

def outsideAggregateLocalPartValid4_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0067 :
    outsideAggregateLocalPartValid4_0067 outsideHistoryChunk0067 := by
  unfold outsideAggregateLocalPartValid4_0067 outsideHistoryChunk0067
  decide

def outsideAggregateMarkerPartValid4_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 69120
  | _ => True

theorem outsideAggregateMarkerPart4_0067 :
    outsideAggregateMarkerPartValid4_0067 outsideHistoryChunk0067 := by
  unfold outsideAggregateMarkerPartValid4_0067 outsideHistoryChunk0067
  decide

def outsideAggregateLocalPartValid5_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0067 :
    outsideAggregateLocalPartValid5_0067 outsideHistoryChunk0067 := by
  unfold outsideAggregateLocalPartValid5_0067 outsideHistoryChunk0067
  decide

def outsideAggregateMarkerPartValid5_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 69248
  | _ => True

theorem outsideAggregateMarkerPart5_0067 :
    outsideAggregateMarkerPartValid5_0067 outsideHistoryChunk0067 := by
  unfold outsideAggregateMarkerPartValid5_0067 outsideHistoryChunk0067
  decide

def outsideAggregateLocalPartValid6_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0067 :
    outsideAggregateLocalPartValid6_0067 outsideHistoryChunk0067 := by
  unfold outsideAggregateLocalPartValid6_0067 outsideHistoryChunk0067
  decide

def outsideAggregateMarkerPartValid6_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 69376
  | _ => True

theorem outsideAggregateMarkerPart6_0067 :
    outsideAggregateMarkerPartValid6_0067 outsideHistoryChunk0067 := by
  unfold outsideAggregateMarkerPartValid6_0067 outsideHistoryChunk0067
  decide

def outsideAggregateLocalPartValid7_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0067 :
    outsideAggregateLocalPartValid7_0067 outsideHistoryChunk0067 := by
  unfold outsideAggregateLocalPartValid7_0067 outsideHistoryChunk0067
  decide

def outsideAggregateMarkerPartValid7_0067 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 69504
  | _ => True

theorem outsideAggregateMarkerPart7_0067 :
    outsideAggregateMarkerPartValid7_0067 outsideHistoryChunk0067 := by
  unfold outsideAggregateMarkerPartValid7_0067 outsideHistoryChunk0067
  decide

theorem outsideRange_0067 :
    outsideHistoryChunk0067.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 68608 := by
  have hl0 := outsideAggregateLocalPart0_0067
  simp only [outsideAggregateLocalPartValid0_0067, outsideHistoryChunk0067] at hl0
  have hl1 := outsideAggregateLocalPart1_0067
  simp only [outsideAggregateLocalPartValid1_0067, outsideHistoryChunk0067] at hl1
  have hl2 := outsideAggregateLocalPart2_0067
  simp only [outsideAggregateLocalPartValid2_0067, outsideHistoryChunk0067] at hl2
  have hl3 := outsideAggregateLocalPart3_0067
  simp only [outsideAggregateLocalPartValid3_0067, outsideHistoryChunk0067] at hl3
  have hl4 := outsideAggregateLocalPart4_0067
  simp only [outsideAggregateLocalPartValid4_0067, outsideHistoryChunk0067] at hl4
  have hl5 := outsideAggregateLocalPart5_0067
  simp only [outsideAggregateLocalPartValid5_0067, outsideHistoryChunk0067] at hl5
  have hl6 := outsideAggregateLocalPart6_0067
  simp only [outsideAggregateLocalPartValid6_0067, outsideHistoryChunk0067] at hl6
  have hl7 := outsideAggregateLocalPart7_0067
  simp only [outsideAggregateLocalPartValid7_0067, outsideHistoryChunk0067] at hl7
  have hm0 := outsideAggregateMarkerPart0_0067
  simp only [outsideAggregateMarkerPartValid0_0067, outsideHistoryChunk0067] at hm0
  have hm1 := outsideAggregateMarkerPart1_0067
  simp only [outsideAggregateMarkerPartValid1_0067, outsideHistoryChunk0067] at hm1
  have hm2 := outsideAggregateMarkerPart2_0067
  simp only [outsideAggregateMarkerPartValid2_0067, outsideHistoryChunk0067] at hm2
  have hm3 := outsideAggregateMarkerPart3_0067
  simp only [outsideAggregateMarkerPartValid3_0067, outsideHistoryChunk0067] at hm3
  have hm4 := outsideAggregateMarkerPart4_0067
  simp only [outsideAggregateMarkerPartValid4_0067, outsideHistoryChunk0067] at hm4
  have hm5 := outsideAggregateMarkerPart5_0067
  simp only [outsideAggregateMarkerPartValid5_0067, outsideHistoryChunk0067] at hm5
  have hm6 := outsideAggregateMarkerPart6_0067
  simp only [outsideAggregateMarkerPartValid6_0067, outsideHistoryChunk0067] at hm6
  have hm7 := outsideAggregateMarkerPart7_0067
  simp only [outsideAggregateMarkerPartValid7_0067, outsideHistoryChunk0067] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0067
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0067
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
