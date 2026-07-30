import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0008
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0009
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0010
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0011

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0008, 0009, 0010, 0011 -/

def outsideAggregateLocalPartValid0_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0008 :
    outsideAggregateLocalPartValid0_0008 outsideHistoryChunk0008 := by
  unfold outsideAggregateLocalPartValid0_0008 outsideHistoryChunk0008
  decide

def outsideAggregateMarkerPartValid0_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 8192
  | _ => True

theorem outsideAggregateMarkerPart0_0008 :
    outsideAggregateMarkerPartValid0_0008 outsideHistoryChunk0008 := by
  unfold outsideAggregateMarkerPartValid0_0008 outsideHistoryChunk0008
  decide

def outsideAggregateLocalPartValid1_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0008 :
    outsideAggregateLocalPartValid1_0008 outsideHistoryChunk0008 := by
  unfold outsideAggregateLocalPartValid1_0008 outsideHistoryChunk0008
  decide

def outsideAggregateMarkerPartValid1_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 8320
  | _ => True

theorem outsideAggregateMarkerPart1_0008 :
    outsideAggregateMarkerPartValid1_0008 outsideHistoryChunk0008 := by
  unfold outsideAggregateMarkerPartValid1_0008 outsideHistoryChunk0008
  decide

def outsideAggregateLocalPartValid2_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0008 :
    outsideAggregateLocalPartValid2_0008 outsideHistoryChunk0008 := by
  unfold outsideAggregateLocalPartValid2_0008 outsideHistoryChunk0008
  decide

def outsideAggregateMarkerPartValid2_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 8448
  | _ => True

theorem outsideAggregateMarkerPart2_0008 :
    outsideAggregateMarkerPartValid2_0008 outsideHistoryChunk0008 := by
  unfold outsideAggregateMarkerPartValid2_0008 outsideHistoryChunk0008
  decide

def outsideAggregateLocalPartValid3_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0008 :
    outsideAggregateLocalPartValid3_0008 outsideHistoryChunk0008 := by
  unfold outsideAggregateLocalPartValid3_0008 outsideHistoryChunk0008
  decide

def outsideAggregateMarkerPartValid3_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 8576
  | _ => True

theorem outsideAggregateMarkerPart3_0008 :
    outsideAggregateMarkerPartValid3_0008 outsideHistoryChunk0008 := by
  unfold outsideAggregateMarkerPartValid3_0008 outsideHistoryChunk0008
  decide

def outsideAggregateLocalPartValid4_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0008 :
    outsideAggregateLocalPartValid4_0008 outsideHistoryChunk0008 := by
  unfold outsideAggregateLocalPartValid4_0008 outsideHistoryChunk0008
  decide

def outsideAggregateMarkerPartValid4_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 8704
  | _ => True

theorem outsideAggregateMarkerPart4_0008 :
    outsideAggregateMarkerPartValid4_0008 outsideHistoryChunk0008 := by
  unfold outsideAggregateMarkerPartValid4_0008 outsideHistoryChunk0008
  decide

def outsideAggregateLocalPartValid5_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0008 :
    outsideAggregateLocalPartValid5_0008 outsideHistoryChunk0008 := by
  unfold outsideAggregateLocalPartValid5_0008 outsideHistoryChunk0008
  decide

def outsideAggregateMarkerPartValid5_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 8832
  | _ => True

theorem outsideAggregateMarkerPart5_0008 :
    outsideAggregateMarkerPartValid5_0008 outsideHistoryChunk0008 := by
  unfold outsideAggregateMarkerPartValid5_0008 outsideHistoryChunk0008
  decide

def outsideAggregateLocalPartValid6_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0008 :
    outsideAggregateLocalPartValid6_0008 outsideHistoryChunk0008 := by
  unfold outsideAggregateLocalPartValid6_0008 outsideHistoryChunk0008
  decide

def outsideAggregateMarkerPartValid6_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 8960
  | _ => True

theorem outsideAggregateMarkerPart6_0008 :
    outsideAggregateMarkerPartValid6_0008 outsideHistoryChunk0008 := by
  unfold outsideAggregateMarkerPartValid6_0008 outsideHistoryChunk0008
  decide

def outsideAggregateLocalPartValid7_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0008 :
    outsideAggregateLocalPartValid7_0008 outsideHistoryChunk0008 := by
  unfold outsideAggregateLocalPartValid7_0008 outsideHistoryChunk0008
  decide

def outsideAggregateMarkerPartValid7_0008 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 9088
  | _ => True

theorem outsideAggregateMarkerPart7_0008 :
    outsideAggregateMarkerPartValid7_0008 outsideHistoryChunk0008 := by
  unfold outsideAggregateMarkerPartValid7_0008 outsideHistoryChunk0008
  decide

theorem outsideRange_0008 :
    outsideHistoryChunk0008.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 8192 := by
  have hl0 := outsideAggregateLocalPart0_0008
  simp only [outsideAggregateLocalPartValid0_0008, outsideHistoryChunk0008] at hl0
  have hl1 := outsideAggregateLocalPart1_0008
  simp only [outsideAggregateLocalPartValid1_0008, outsideHistoryChunk0008] at hl1
  have hl2 := outsideAggregateLocalPart2_0008
  simp only [outsideAggregateLocalPartValid2_0008, outsideHistoryChunk0008] at hl2
  have hl3 := outsideAggregateLocalPart3_0008
  simp only [outsideAggregateLocalPartValid3_0008, outsideHistoryChunk0008] at hl3
  have hl4 := outsideAggregateLocalPart4_0008
  simp only [outsideAggregateLocalPartValid4_0008, outsideHistoryChunk0008] at hl4
  have hl5 := outsideAggregateLocalPart5_0008
  simp only [outsideAggregateLocalPartValid5_0008, outsideHistoryChunk0008] at hl5
  have hl6 := outsideAggregateLocalPart6_0008
  simp only [outsideAggregateLocalPartValid6_0008, outsideHistoryChunk0008] at hl6
  have hl7 := outsideAggregateLocalPart7_0008
  simp only [outsideAggregateLocalPartValid7_0008, outsideHistoryChunk0008] at hl7
  have hm0 := outsideAggregateMarkerPart0_0008
  simp only [outsideAggregateMarkerPartValid0_0008, outsideHistoryChunk0008] at hm0
  have hm1 := outsideAggregateMarkerPart1_0008
  simp only [outsideAggregateMarkerPartValid1_0008, outsideHistoryChunk0008] at hm1
  have hm2 := outsideAggregateMarkerPart2_0008
  simp only [outsideAggregateMarkerPartValid2_0008, outsideHistoryChunk0008] at hm2
  have hm3 := outsideAggregateMarkerPart3_0008
  simp only [outsideAggregateMarkerPartValid3_0008, outsideHistoryChunk0008] at hm3
  have hm4 := outsideAggregateMarkerPart4_0008
  simp only [outsideAggregateMarkerPartValid4_0008, outsideHistoryChunk0008] at hm4
  have hm5 := outsideAggregateMarkerPart5_0008
  simp only [outsideAggregateMarkerPartValid5_0008, outsideHistoryChunk0008] at hm5
  have hm6 := outsideAggregateMarkerPart6_0008
  simp only [outsideAggregateMarkerPartValid6_0008, outsideHistoryChunk0008] at hm6
  have hm7 := outsideAggregateMarkerPart7_0008
  simp only [outsideAggregateMarkerPartValid7_0008, outsideHistoryChunk0008] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0008
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0008
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0009 :
    outsideAggregateLocalPartValid0_0009 outsideHistoryChunk0009 := by
  unfold outsideAggregateLocalPartValid0_0009 outsideHistoryChunk0009
  decide

def outsideAggregateMarkerPartValid0_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 9216
  | _ => True

theorem outsideAggregateMarkerPart0_0009 :
    outsideAggregateMarkerPartValid0_0009 outsideHistoryChunk0009 := by
  unfold outsideAggregateMarkerPartValid0_0009 outsideHistoryChunk0009
  decide

def outsideAggregateLocalPartValid1_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0009 :
    outsideAggregateLocalPartValid1_0009 outsideHistoryChunk0009 := by
  unfold outsideAggregateLocalPartValid1_0009 outsideHistoryChunk0009
  decide

def outsideAggregateMarkerPartValid1_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 9344
  | _ => True

theorem outsideAggregateMarkerPart1_0009 :
    outsideAggregateMarkerPartValid1_0009 outsideHistoryChunk0009 := by
  unfold outsideAggregateMarkerPartValid1_0009 outsideHistoryChunk0009
  decide

def outsideAggregateLocalPartValid2_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0009 :
    outsideAggregateLocalPartValid2_0009 outsideHistoryChunk0009 := by
  unfold outsideAggregateLocalPartValid2_0009 outsideHistoryChunk0009
  decide

def outsideAggregateMarkerPartValid2_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 9472
  | _ => True

theorem outsideAggregateMarkerPart2_0009 :
    outsideAggregateMarkerPartValid2_0009 outsideHistoryChunk0009 := by
  unfold outsideAggregateMarkerPartValid2_0009 outsideHistoryChunk0009
  decide

def outsideAggregateLocalPartValid3_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0009 :
    outsideAggregateLocalPartValid3_0009 outsideHistoryChunk0009 := by
  unfold outsideAggregateLocalPartValid3_0009 outsideHistoryChunk0009
  decide

def outsideAggregateMarkerPartValid3_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 9600
  | _ => True

theorem outsideAggregateMarkerPart3_0009 :
    outsideAggregateMarkerPartValid3_0009 outsideHistoryChunk0009 := by
  unfold outsideAggregateMarkerPartValid3_0009 outsideHistoryChunk0009
  decide

def outsideAggregateLocalPartValid4_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0009 :
    outsideAggregateLocalPartValid4_0009 outsideHistoryChunk0009 := by
  unfold outsideAggregateLocalPartValid4_0009 outsideHistoryChunk0009
  decide

def outsideAggregateMarkerPartValid4_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 9728
  | _ => True

theorem outsideAggregateMarkerPart4_0009 :
    outsideAggregateMarkerPartValid4_0009 outsideHistoryChunk0009 := by
  unfold outsideAggregateMarkerPartValid4_0009 outsideHistoryChunk0009
  decide

def outsideAggregateLocalPartValid5_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0009 :
    outsideAggregateLocalPartValid5_0009 outsideHistoryChunk0009 := by
  unfold outsideAggregateLocalPartValid5_0009 outsideHistoryChunk0009
  decide

def outsideAggregateMarkerPartValid5_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 9856
  | _ => True

theorem outsideAggregateMarkerPart5_0009 :
    outsideAggregateMarkerPartValid5_0009 outsideHistoryChunk0009 := by
  unfold outsideAggregateMarkerPartValid5_0009 outsideHistoryChunk0009
  decide

def outsideAggregateLocalPartValid6_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0009 :
    outsideAggregateLocalPartValid6_0009 outsideHistoryChunk0009 := by
  unfold outsideAggregateLocalPartValid6_0009 outsideHistoryChunk0009
  decide

def outsideAggregateMarkerPartValid6_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 9984
  | _ => True

theorem outsideAggregateMarkerPart6_0009 :
    outsideAggregateMarkerPartValid6_0009 outsideHistoryChunk0009 := by
  unfold outsideAggregateMarkerPartValid6_0009 outsideHistoryChunk0009
  decide

def outsideAggregateLocalPartValid7_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0009 :
    outsideAggregateLocalPartValid7_0009 outsideHistoryChunk0009 := by
  unfold outsideAggregateLocalPartValid7_0009 outsideHistoryChunk0009
  decide

def outsideAggregateMarkerPartValid7_0009 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 10112
  | _ => True

theorem outsideAggregateMarkerPart7_0009 :
    outsideAggregateMarkerPartValid7_0009 outsideHistoryChunk0009 := by
  unfold outsideAggregateMarkerPartValid7_0009 outsideHistoryChunk0009
  decide

theorem outsideRange_0009 :
    outsideHistoryChunk0009.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 9216 := by
  have hl0 := outsideAggregateLocalPart0_0009
  simp only [outsideAggregateLocalPartValid0_0009, outsideHistoryChunk0009] at hl0
  have hl1 := outsideAggregateLocalPart1_0009
  simp only [outsideAggregateLocalPartValid1_0009, outsideHistoryChunk0009] at hl1
  have hl2 := outsideAggregateLocalPart2_0009
  simp only [outsideAggregateLocalPartValid2_0009, outsideHistoryChunk0009] at hl2
  have hl3 := outsideAggregateLocalPart3_0009
  simp only [outsideAggregateLocalPartValid3_0009, outsideHistoryChunk0009] at hl3
  have hl4 := outsideAggregateLocalPart4_0009
  simp only [outsideAggregateLocalPartValid4_0009, outsideHistoryChunk0009] at hl4
  have hl5 := outsideAggregateLocalPart5_0009
  simp only [outsideAggregateLocalPartValid5_0009, outsideHistoryChunk0009] at hl5
  have hl6 := outsideAggregateLocalPart6_0009
  simp only [outsideAggregateLocalPartValid6_0009, outsideHistoryChunk0009] at hl6
  have hl7 := outsideAggregateLocalPart7_0009
  simp only [outsideAggregateLocalPartValid7_0009, outsideHistoryChunk0009] at hl7
  have hm0 := outsideAggregateMarkerPart0_0009
  simp only [outsideAggregateMarkerPartValid0_0009, outsideHistoryChunk0009] at hm0
  have hm1 := outsideAggregateMarkerPart1_0009
  simp only [outsideAggregateMarkerPartValid1_0009, outsideHistoryChunk0009] at hm1
  have hm2 := outsideAggregateMarkerPart2_0009
  simp only [outsideAggregateMarkerPartValid2_0009, outsideHistoryChunk0009] at hm2
  have hm3 := outsideAggregateMarkerPart3_0009
  simp only [outsideAggregateMarkerPartValid3_0009, outsideHistoryChunk0009] at hm3
  have hm4 := outsideAggregateMarkerPart4_0009
  simp only [outsideAggregateMarkerPartValid4_0009, outsideHistoryChunk0009] at hm4
  have hm5 := outsideAggregateMarkerPart5_0009
  simp only [outsideAggregateMarkerPartValid5_0009, outsideHistoryChunk0009] at hm5
  have hm6 := outsideAggregateMarkerPart6_0009
  simp only [outsideAggregateMarkerPartValid6_0009, outsideHistoryChunk0009] at hm6
  have hm7 := outsideAggregateMarkerPart7_0009
  simp only [outsideAggregateMarkerPartValid7_0009, outsideHistoryChunk0009] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0009
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0009
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0010 :
    outsideAggregateLocalPartValid0_0010 outsideHistoryChunk0010 := by
  unfold outsideAggregateLocalPartValid0_0010 outsideHistoryChunk0010
  decide

def outsideAggregateMarkerPartValid0_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 10240
  | _ => True

theorem outsideAggregateMarkerPart0_0010 :
    outsideAggregateMarkerPartValid0_0010 outsideHistoryChunk0010 := by
  unfold outsideAggregateMarkerPartValid0_0010 outsideHistoryChunk0010
  decide

def outsideAggregateLocalPartValid1_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0010 :
    outsideAggregateLocalPartValid1_0010 outsideHistoryChunk0010 := by
  unfold outsideAggregateLocalPartValid1_0010 outsideHistoryChunk0010
  decide

def outsideAggregateMarkerPartValid1_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 10368
  | _ => True

theorem outsideAggregateMarkerPart1_0010 :
    outsideAggregateMarkerPartValid1_0010 outsideHistoryChunk0010 := by
  unfold outsideAggregateMarkerPartValid1_0010 outsideHistoryChunk0010
  decide

def outsideAggregateLocalPartValid2_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0010 :
    outsideAggregateLocalPartValid2_0010 outsideHistoryChunk0010 := by
  unfold outsideAggregateLocalPartValid2_0010 outsideHistoryChunk0010
  decide

def outsideAggregateMarkerPartValid2_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 10496
  | _ => True

theorem outsideAggregateMarkerPart2_0010 :
    outsideAggregateMarkerPartValid2_0010 outsideHistoryChunk0010 := by
  unfold outsideAggregateMarkerPartValid2_0010 outsideHistoryChunk0010
  decide

def outsideAggregateLocalPartValid3_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0010 :
    outsideAggregateLocalPartValid3_0010 outsideHistoryChunk0010 := by
  unfold outsideAggregateLocalPartValid3_0010 outsideHistoryChunk0010
  decide

def outsideAggregateMarkerPartValid3_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 10624
  | _ => True

theorem outsideAggregateMarkerPart3_0010 :
    outsideAggregateMarkerPartValid3_0010 outsideHistoryChunk0010 := by
  unfold outsideAggregateMarkerPartValid3_0010 outsideHistoryChunk0010
  decide

def outsideAggregateLocalPartValid4_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0010 :
    outsideAggregateLocalPartValid4_0010 outsideHistoryChunk0010 := by
  unfold outsideAggregateLocalPartValid4_0010 outsideHistoryChunk0010
  decide

def outsideAggregateMarkerPartValid4_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 10752
  | _ => True

theorem outsideAggregateMarkerPart4_0010 :
    outsideAggregateMarkerPartValid4_0010 outsideHistoryChunk0010 := by
  unfold outsideAggregateMarkerPartValid4_0010 outsideHistoryChunk0010
  decide

def outsideAggregateLocalPartValid5_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0010 :
    outsideAggregateLocalPartValid5_0010 outsideHistoryChunk0010 := by
  unfold outsideAggregateLocalPartValid5_0010 outsideHistoryChunk0010
  decide

def outsideAggregateMarkerPartValid5_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 10880
  | _ => True

theorem outsideAggregateMarkerPart5_0010 :
    outsideAggregateMarkerPartValid5_0010 outsideHistoryChunk0010 := by
  unfold outsideAggregateMarkerPartValid5_0010 outsideHistoryChunk0010
  decide

def outsideAggregateLocalPartValid6_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0010 :
    outsideAggregateLocalPartValid6_0010 outsideHistoryChunk0010 := by
  unfold outsideAggregateLocalPartValid6_0010 outsideHistoryChunk0010
  decide

def outsideAggregateMarkerPartValid6_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 11008
  | _ => True

theorem outsideAggregateMarkerPart6_0010 :
    outsideAggregateMarkerPartValid6_0010 outsideHistoryChunk0010 := by
  unfold outsideAggregateMarkerPartValid6_0010 outsideHistoryChunk0010
  decide

def outsideAggregateLocalPartValid7_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0010 :
    outsideAggregateLocalPartValid7_0010 outsideHistoryChunk0010 := by
  unfold outsideAggregateLocalPartValid7_0010 outsideHistoryChunk0010
  decide

def outsideAggregateMarkerPartValid7_0010 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 11136
  | _ => True

theorem outsideAggregateMarkerPart7_0010 :
    outsideAggregateMarkerPartValid7_0010 outsideHistoryChunk0010 := by
  unfold outsideAggregateMarkerPartValid7_0010 outsideHistoryChunk0010
  decide

theorem outsideRange_0010 :
    outsideHistoryChunk0010.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 10240 := by
  have hl0 := outsideAggregateLocalPart0_0010
  simp only [outsideAggregateLocalPartValid0_0010, outsideHistoryChunk0010] at hl0
  have hl1 := outsideAggregateLocalPart1_0010
  simp only [outsideAggregateLocalPartValid1_0010, outsideHistoryChunk0010] at hl1
  have hl2 := outsideAggregateLocalPart2_0010
  simp only [outsideAggregateLocalPartValid2_0010, outsideHistoryChunk0010] at hl2
  have hl3 := outsideAggregateLocalPart3_0010
  simp only [outsideAggregateLocalPartValid3_0010, outsideHistoryChunk0010] at hl3
  have hl4 := outsideAggregateLocalPart4_0010
  simp only [outsideAggregateLocalPartValid4_0010, outsideHistoryChunk0010] at hl4
  have hl5 := outsideAggregateLocalPart5_0010
  simp only [outsideAggregateLocalPartValid5_0010, outsideHistoryChunk0010] at hl5
  have hl6 := outsideAggregateLocalPart6_0010
  simp only [outsideAggregateLocalPartValid6_0010, outsideHistoryChunk0010] at hl6
  have hl7 := outsideAggregateLocalPart7_0010
  simp only [outsideAggregateLocalPartValid7_0010, outsideHistoryChunk0010] at hl7
  have hm0 := outsideAggregateMarkerPart0_0010
  simp only [outsideAggregateMarkerPartValid0_0010, outsideHistoryChunk0010] at hm0
  have hm1 := outsideAggregateMarkerPart1_0010
  simp only [outsideAggregateMarkerPartValid1_0010, outsideHistoryChunk0010] at hm1
  have hm2 := outsideAggregateMarkerPart2_0010
  simp only [outsideAggregateMarkerPartValid2_0010, outsideHistoryChunk0010] at hm2
  have hm3 := outsideAggregateMarkerPart3_0010
  simp only [outsideAggregateMarkerPartValid3_0010, outsideHistoryChunk0010] at hm3
  have hm4 := outsideAggregateMarkerPart4_0010
  simp only [outsideAggregateMarkerPartValid4_0010, outsideHistoryChunk0010] at hm4
  have hm5 := outsideAggregateMarkerPart5_0010
  simp only [outsideAggregateMarkerPartValid5_0010, outsideHistoryChunk0010] at hm5
  have hm6 := outsideAggregateMarkerPart6_0010
  simp only [outsideAggregateMarkerPartValid6_0010, outsideHistoryChunk0010] at hm6
  have hm7 := outsideAggregateMarkerPart7_0010
  simp only [outsideAggregateMarkerPartValid7_0010, outsideHistoryChunk0010] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0010
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0010
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0011 :
    outsideAggregateLocalPartValid0_0011 outsideHistoryChunk0011 := by
  unfold outsideAggregateLocalPartValid0_0011 outsideHistoryChunk0011
  decide

def outsideAggregateMarkerPartValid0_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 11264
  | _ => True

theorem outsideAggregateMarkerPart0_0011 :
    outsideAggregateMarkerPartValid0_0011 outsideHistoryChunk0011 := by
  unfold outsideAggregateMarkerPartValid0_0011 outsideHistoryChunk0011
  decide

def outsideAggregateLocalPartValid1_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0011 :
    outsideAggregateLocalPartValid1_0011 outsideHistoryChunk0011 := by
  unfold outsideAggregateLocalPartValid1_0011 outsideHistoryChunk0011
  decide

def outsideAggregateMarkerPartValid1_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 11392
  | _ => True

theorem outsideAggregateMarkerPart1_0011 :
    outsideAggregateMarkerPartValid1_0011 outsideHistoryChunk0011 := by
  unfold outsideAggregateMarkerPartValid1_0011 outsideHistoryChunk0011
  decide

def outsideAggregateLocalPartValid2_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0011 :
    outsideAggregateLocalPartValid2_0011 outsideHistoryChunk0011 := by
  unfold outsideAggregateLocalPartValid2_0011 outsideHistoryChunk0011
  decide

def outsideAggregateMarkerPartValid2_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 11520
  | _ => True

theorem outsideAggregateMarkerPart2_0011 :
    outsideAggregateMarkerPartValid2_0011 outsideHistoryChunk0011 := by
  unfold outsideAggregateMarkerPartValid2_0011 outsideHistoryChunk0011
  decide

def outsideAggregateLocalPartValid3_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0011 :
    outsideAggregateLocalPartValid3_0011 outsideHistoryChunk0011 := by
  unfold outsideAggregateLocalPartValid3_0011 outsideHistoryChunk0011
  decide

def outsideAggregateMarkerPartValid3_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 11648
  | _ => True

theorem outsideAggregateMarkerPart3_0011 :
    outsideAggregateMarkerPartValid3_0011 outsideHistoryChunk0011 := by
  unfold outsideAggregateMarkerPartValid3_0011 outsideHistoryChunk0011
  decide

def outsideAggregateLocalPartValid4_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0011 :
    outsideAggregateLocalPartValid4_0011 outsideHistoryChunk0011 := by
  unfold outsideAggregateLocalPartValid4_0011 outsideHistoryChunk0011
  decide

def outsideAggregateMarkerPartValid4_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 11776
  | _ => True

theorem outsideAggregateMarkerPart4_0011 :
    outsideAggregateMarkerPartValid4_0011 outsideHistoryChunk0011 := by
  unfold outsideAggregateMarkerPartValid4_0011 outsideHistoryChunk0011
  decide

def outsideAggregateLocalPartValid5_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0011 :
    outsideAggregateLocalPartValid5_0011 outsideHistoryChunk0011 := by
  unfold outsideAggregateLocalPartValid5_0011 outsideHistoryChunk0011
  decide

def outsideAggregateMarkerPartValid5_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 11904
  | _ => True

theorem outsideAggregateMarkerPart5_0011 :
    outsideAggregateMarkerPartValid5_0011 outsideHistoryChunk0011 := by
  unfold outsideAggregateMarkerPartValid5_0011 outsideHistoryChunk0011
  decide

def outsideAggregateLocalPartValid6_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0011 :
    outsideAggregateLocalPartValid6_0011 outsideHistoryChunk0011 := by
  unfold outsideAggregateLocalPartValid6_0011 outsideHistoryChunk0011
  decide

def outsideAggregateMarkerPartValid6_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 12032
  | _ => True

theorem outsideAggregateMarkerPart6_0011 :
    outsideAggregateMarkerPartValid6_0011 outsideHistoryChunk0011 := by
  unfold outsideAggregateMarkerPartValid6_0011 outsideHistoryChunk0011
  decide

def outsideAggregateLocalPartValid7_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0011 :
    outsideAggregateLocalPartValid7_0011 outsideHistoryChunk0011 := by
  unfold outsideAggregateLocalPartValid7_0011 outsideHistoryChunk0011
  decide

def outsideAggregateMarkerPartValid7_0011 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 12160
  | _ => True

theorem outsideAggregateMarkerPart7_0011 :
    outsideAggregateMarkerPartValid7_0011 outsideHistoryChunk0011 := by
  unfold outsideAggregateMarkerPartValid7_0011 outsideHistoryChunk0011
  decide

theorem outsideRange_0011 :
    outsideHistoryChunk0011.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 11264 := by
  have hl0 := outsideAggregateLocalPart0_0011
  simp only [outsideAggregateLocalPartValid0_0011, outsideHistoryChunk0011] at hl0
  have hl1 := outsideAggregateLocalPart1_0011
  simp only [outsideAggregateLocalPartValid1_0011, outsideHistoryChunk0011] at hl1
  have hl2 := outsideAggregateLocalPart2_0011
  simp only [outsideAggregateLocalPartValid2_0011, outsideHistoryChunk0011] at hl2
  have hl3 := outsideAggregateLocalPart3_0011
  simp only [outsideAggregateLocalPartValid3_0011, outsideHistoryChunk0011] at hl3
  have hl4 := outsideAggregateLocalPart4_0011
  simp only [outsideAggregateLocalPartValid4_0011, outsideHistoryChunk0011] at hl4
  have hl5 := outsideAggregateLocalPart5_0011
  simp only [outsideAggregateLocalPartValid5_0011, outsideHistoryChunk0011] at hl5
  have hl6 := outsideAggregateLocalPart6_0011
  simp only [outsideAggregateLocalPartValid6_0011, outsideHistoryChunk0011] at hl6
  have hl7 := outsideAggregateLocalPart7_0011
  simp only [outsideAggregateLocalPartValid7_0011, outsideHistoryChunk0011] at hl7
  have hm0 := outsideAggregateMarkerPart0_0011
  simp only [outsideAggregateMarkerPartValid0_0011, outsideHistoryChunk0011] at hm0
  have hm1 := outsideAggregateMarkerPart1_0011
  simp only [outsideAggregateMarkerPartValid1_0011, outsideHistoryChunk0011] at hm1
  have hm2 := outsideAggregateMarkerPart2_0011
  simp only [outsideAggregateMarkerPartValid2_0011, outsideHistoryChunk0011] at hm2
  have hm3 := outsideAggregateMarkerPart3_0011
  simp only [outsideAggregateMarkerPartValid3_0011, outsideHistoryChunk0011] at hm3
  have hm4 := outsideAggregateMarkerPart4_0011
  simp only [outsideAggregateMarkerPartValid4_0011, outsideHistoryChunk0011] at hm4
  have hm5 := outsideAggregateMarkerPart5_0011
  simp only [outsideAggregateMarkerPartValid5_0011, outsideHistoryChunk0011] at hm5
  have hm6 := outsideAggregateMarkerPart6_0011
  simp only [outsideAggregateMarkerPartValid6_0011, outsideHistoryChunk0011] at hm6
  have hm7 := outsideAggregateMarkerPart7_0011
  simp only [outsideAggregateMarkerPartValid7_0011, outsideHistoryChunk0011] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0011
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0011
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
