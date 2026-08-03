import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0012
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0013
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0014
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0015

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0012, 0013, 0014, 0015 -/

def outsideAggregateLocalPartValid0_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0012 :
    outsideAggregateLocalPartValid0_0012 outsideHistoryChunk0012 := by
  unfold outsideAggregateLocalPartValid0_0012 outsideHistoryChunk0012
  decide

def outsideAggregateMarkerPartValid0_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 12288
  | _ => True

theorem outsideAggregateMarkerPart0_0012 :
    outsideAggregateMarkerPartValid0_0012 outsideHistoryChunk0012 := by
  unfold outsideAggregateMarkerPartValid0_0012 outsideHistoryChunk0012
  decide

def outsideAggregateLocalPartValid1_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0012 :
    outsideAggregateLocalPartValid1_0012 outsideHistoryChunk0012 := by
  unfold outsideAggregateLocalPartValid1_0012 outsideHistoryChunk0012
  decide

def outsideAggregateMarkerPartValid1_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 12416
  | _ => True

theorem outsideAggregateMarkerPart1_0012 :
    outsideAggregateMarkerPartValid1_0012 outsideHistoryChunk0012 := by
  unfold outsideAggregateMarkerPartValid1_0012 outsideHistoryChunk0012
  decide

def outsideAggregateLocalPartValid2_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0012 :
    outsideAggregateLocalPartValid2_0012 outsideHistoryChunk0012 := by
  unfold outsideAggregateLocalPartValid2_0012 outsideHistoryChunk0012
  decide

def outsideAggregateMarkerPartValid2_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 12544
  | _ => True

theorem outsideAggregateMarkerPart2_0012 :
    outsideAggregateMarkerPartValid2_0012 outsideHistoryChunk0012 := by
  unfold outsideAggregateMarkerPartValid2_0012 outsideHistoryChunk0012
  decide

def outsideAggregateLocalPartValid3_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0012 :
    outsideAggregateLocalPartValid3_0012 outsideHistoryChunk0012 := by
  unfold outsideAggregateLocalPartValid3_0012 outsideHistoryChunk0012
  decide

def outsideAggregateMarkerPartValid3_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 12672
  | _ => True

theorem outsideAggregateMarkerPart3_0012 :
    outsideAggregateMarkerPartValid3_0012 outsideHistoryChunk0012 := by
  unfold outsideAggregateMarkerPartValid3_0012 outsideHistoryChunk0012
  decide

def outsideAggregateLocalPartValid4_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0012 :
    outsideAggregateLocalPartValid4_0012 outsideHistoryChunk0012 := by
  unfold outsideAggregateLocalPartValid4_0012 outsideHistoryChunk0012
  decide

def outsideAggregateMarkerPartValid4_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 12800
  | _ => True

theorem outsideAggregateMarkerPart4_0012 :
    outsideAggregateMarkerPartValid4_0012 outsideHistoryChunk0012 := by
  unfold outsideAggregateMarkerPartValid4_0012 outsideHistoryChunk0012
  decide

def outsideAggregateLocalPartValid5_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0012 :
    outsideAggregateLocalPartValid5_0012 outsideHistoryChunk0012 := by
  unfold outsideAggregateLocalPartValid5_0012 outsideHistoryChunk0012
  decide

def outsideAggregateMarkerPartValid5_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 12928
  | _ => True

theorem outsideAggregateMarkerPart5_0012 :
    outsideAggregateMarkerPartValid5_0012 outsideHistoryChunk0012 := by
  unfold outsideAggregateMarkerPartValid5_0012 outsideHistoryChunk0012
  decide

def outsideAggregateLocalPartValid6_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0012 :
    outsideAggregateLocalPartValid6_0012 outsideHistoryChunk0012 := by
  unfold outsideAggregateLocalPartValid6_0012 outsideHistoryChunk0012
  decide

def outsideAggregateMarkerPartValid6_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 13056
  | _ => True

theorem outsideAggregateMarkerPart6_0012 :
    outsideAggregateMarkerPartValid6_0012 outsideHistoryChunk0012 := by
  unfold outsideAggregateMarkerPartValid6_0012 outsideHistoryChunk0012
  decide

def outsideAggregateLocalPartValid7_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0012 :
    outsideAggregateLocalPartValid7_0012 outsideHistoryChunk0012 := by
  unfold outsideAggregateLocalPartValid7_0012 outsideHistoryChunk0012
  decide

def outsideAggregateMarkerPartValid7_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 13184
  | _ => True

theorem outsideAggregateMarkerPart7_0012 :
    outsideAggregateMarkerPartValid7_0012 outsideHistoryChunk0012 := by
  unfold outsideAggregateMarkerPartValid7_0012 outsideHistoryChunk0012
  decide

theorem outsideRange_0012 :
    outsideHistoryChunk0012.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 12288 := by
  have hl0 := outsideAggregateLocalPart0_0012
  simp only [outsideAggregateLocalPartValid0_0012, outsideHistoryChunk0012] at hl0
  have hl1 := outsideAggregateLocalPart1_0012
  simp only [outsideAggregateLocalPartValid1_0012, outsideHistoryChunk0012] at hl1
  have hl2 := outsideAggregateLocalPart2_0012
  simp only [outsideAggregateLocalPartValid2_0012, outsideHistoryChunk0012] at hl2
  have hl3 := outsideAggregateLocalPart3_0012
  simp only [outsideAggregateLocalPartValid3_0012, outsideHistoryChunk0012] at hl3
  have hl4 := outsideAggregateLocalPart4_0012
  simp only [outsideAggregateLocalPartValid4_0012, outsideHistoryChunk0012] at hl4
  have hl5 := outsideAggregateLocalPart5_0012
  simp only [outsideAggregateLocalPartValid5_0012, outsideHistoryChunk0012] at hl5
  have hl6 := outsideAggregateLocalPart6_0012
  simp only [outsideAggregateLocalPartValid6_0012, outsideHistoryChunk0012] at hl6
  have hl7 := outsideAggregateLocalPart7_0012
  simp only [outsideAggregateLocalPartValid7_0012, outsideHistoryChunk0012] at hl7
  have hm0 := outsideAggregateMarkerPart0_0012
  simp only [outsideAggregateMarkerPartValid0_0012, outsideHistoryChunk0012] at hm0
  have hm1 := outsideAggregateMarkerPart1_0012
  simp only [outsideAggregateMarkerPartValid1_0012, outsideHistoryChunk0012] at hm1
  have hm2 := outsideAggregateMarkerPart2_0012
  simp only [outsideAggregateMarkerPartValid2_0012, outsideHistoryChunk0012] at hm2
  have hm3 := outsideAggregateMarkerPart3_0012
  simp only [outsideAggregateMarkerPartValid3_0012, outsideHistoryChunk0012] at hm3
  have hm4 := outsideAggregateMarkerPart4_0012
  simp only [outsideAggregateMarkerPartValid4_0012, outsideHistoryChunk0012] at hm4
  have hm5 := outsideAggregateMarkerPart5_0012
  simp only [outsideAggregateMarkerPartValid5_0012, outsideHistoryChunk0012] at hm5
  have hm6 := outsideAggregateMarkerPart6_0012
  simp only [outsideAggregateMarkerPartValid6_0012, outsideHistoryChunk0012] at hm6
  have hm7 := outsideAggregateMarkerPart7_0012
  simp only [outsideAggregateMarkerPartValid7_0012, outsideHistoryChunk0012] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0012
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0012
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0013 :
    outsideAggregateLocalPartValid0_0013 outsideHistoryChunk0013 := by
  unfold outsideAggregateLocalPartValid0_0013 outsideHistoryChunk0013
  decide

def outsideAggregateMarkerPartValid0_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 13312
  | _ => True

theorem outsideAggregateMarkerPart0_0013 :
    outsideAggregateMarkerPartValid0_0013 outsideHistoryChunk0013 := by
  unfold outsideAggregateMarkerPartValid0_0013 outsideHistoryChunk0013
  decide

def outsideAggregateLocalPartValid1_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0013 :
    outsideAggregateLocalPartValid1_0013 outsideHistoryChunk0013 := by
  unfold outsideAggregateLocalPartValid1_0013 outsideHistoryChunk0013
  decide

def outsideAggregateMarkerPartValid1_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 13440
  | _ => True

theorem outsideAggregateMarkerPart1_0013 :
    outsideAggregateMarkerPartValid1_0013 outsideHistoryChunk0013 := by
  unfold outsideAggregateMarkerPartValid1_0013 outsideHistoryChunk0013
  decide

def outsideAggregateLocalPartValid2_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0013 :
    outsideAggregateLocalPartValid2_0013 outsideHistoryChunk0013 := by
  unfold outsideAggregateLocalPartValid2_0013 outsideHistoryChunk0013
  decide

def outsideAggregateMarkerPartValid2_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 13568
  | _ => True

theorem outsideAggregateMarkerPart2_0013 :
    outsideAggregateMarkerPartValid2_0013 outsideHistoryChunk0013 := by
  unfold outsideAggregateMarkerPartValid2_0013 outsideHistoryChunk0013
  decide

def outsideAggregateLocalPartValid3_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0013 :
    outsideAggregateLocalPartValid3_0013 outsideHistoryChunk0013 := by
  unfold outsideAggregateLocalPartValid3_0013 outsideHistoryChunk0013
  decide

def outsideAggregateMarkerPartValid3_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 13696
  | _ => True

theorem outsideAggregateMarkerPart3_0013 :
    outsideAggregateMarkerPartValid3_0013 outsideHistoryChunk0013 := by
  unfold outsideAggregateMarkerPartValid3_0013 outsideHistoryChunk0013
  decide

def outsideAggregateLocalPartValid4_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0013 :
    outsideAggregateLocalPartValid4_0013 outsideHistoryChunk0013 := by
  unfold outsideAggregateLocalPartValid4_0013 outsideHistoryChunk0013
  decide

def outsideAggregateMarkerPartValid4_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 13824
  | _ => True

theorem outsideAggregateMarkerPart4_0013 :
    outsideAggregateMarkerPartValid4_0013 outsideHistoryChunk0013 := by
  unfold outsideAggregateMarkerPartValid4_0013 outsideHistoryChunk0013
  decide

def outsideAggregateLocalPartValid5_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0013 :
    outsideAggregateLocalPartValid5_0013 outsideHistoryChunk0013 := by
  unfold outsideAggregateLocalPartValid5_0013 outsideHistoryChunk0013
  decide

def outsideAggregateMarkerPartValid5_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 13952
  | _ => True

theorem outsideAggregateMarkerPart5_0013 :
    outsideAggregateMarkerPartValid5_0013 outsideHistoryChunk0013 := by
  unfold outsideAggregateMarkerPartValid5_0013 outsideHistoryChunk0013
  decide

def outsideAggregateLocalPartValid6_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0013 :
    outsideAggregateLocalPartValid6_0013 outsideHistoryChunk0013 := by
  unfold outsideAggregateLocalPartValid6_0013 outsideHistoryChunk0013
  decide

def outsideAggregateMarkerPartValid6_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 14080
  | _ => True

theorem outsideAggregateMarkerPart6_0013 :
    outsideAggregateMarkerPartValid6_0013 outsideHistoryChunk0013 := by
  unfold outsideAggregateMarkerPartValid6_0013 outsideHistoryChunk0013
  decide

def outsideAggregateLocalPartValid7_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0013 :
    outsideAggregateLocalPartValid7_0013 outsideHistoryChunk0013 := by
  unfold outsideAggregateLocalPartValid7_0013 outsideHistoryChunk0013
  decide

def outsideAggregateMarkerPartValid7_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 14208
  | _ => True

theorem outsideAggregateMarkerPart7_0013 :
    outsideAggregateMarkerPartValid7_0013 outsideHistoryChunk0013 := by
  unfold outsideAggregateMarkerPartValid7_0013 outsideHistoryChunk0013
  decide

theorem outsideRange_0013 :
    outsideHistoryChunk0013.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 13312 := by
  have hl0 := outsideAggregateLocalPart0_0013
  simp only [outsideAggregateLocalPartValid0_0013, outsideHistoryChunk0013] at hl0
  have hl1 := outsideAggregateLocalPart1_0013
  simp only [outsideAggregateLocalPartValid1_0013, outsideHistoryChunk0013] at hl1
  have hl2 := outsideAggregateLocalPart2_0013
  simp only [outsideAggregateLocalPartValid2_0013, outsideHistoryChunk0013] at hl2
  have hl3 := outsideAggregateLocalPart3_0013
  simp only [outsideAggregateLocalPartValid3_0013, outsideHistoryChunk0013] at hl3
  have hl4 := outsideAggregateLocalPart4_0013
  simp only [outsideAggregateLocalPartValid4_0013, outsideHistoryChunk0013] at hl4
  have hl5 := outsideAggregateLocalPart5_0013
  simp only [outsideAggregateLocalPartValid5_0013, outsideHistoryChunk0013] at hl5
  have hl6 := outsideAggregateLocalPart6_0013
  simp only [outsideAggregateLocalPartValid6_0013, outsideHistoryChunk0013] at hl6
  have hl7 := outsideAggregateLocalPart7_0013
  simp only [outsideAggregateLocalPartValid7_0013, outsideHistoryChunk0013] at hl7
  have hm0 := outsideAggregateMarkerPart0_0013
  simp only [outsideAggregateMarkerPartValid0_0013, outsideHistoryChunk0013] at hm0
  have hm1 := outsideAggregateMarkerPart1_0013
  simp only [outsideAggregateMarkerPartValid1_0013, outsideHistoryChunk0013] at hm1
  have hm2 := outsideAggregateMarkerPart2_0013
  simp only [outsideAggregateMarkerPartValid2_0013, outsideHistoryChunk0013] at hm2
  have hm3 := outsideAggregateMarkerPart3_0013
  simp only [outsideAggregateMarkerPartValid3_0013, outsideHistoryChunk0013] at hm3
  have hm4 := outsideAggregateMarkerPart4_0013
  simp only [outsideAggregateMarkerPartValid4_0013, outsideHistoryChunk0013] at hm4
  have hm5 := outsideAggregateMarkerPart5_0013
  simp only [outsideAggregateMarkerPartValid5_0013, outsideHistoryChunk0013] at hm5
  have hm6 := outsideAggregateMarkerPart6_0013
  simp only [outsideAggregateMarkerPartValid6_0013, outsideHistoryChunk0013] at hm6
  have hm7 := outsideAggregateMarkerPart7_0013
  simp only [outsideAggregateMarkerPartValid7_0013, outsideHistoryChunk0013] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0013
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0013
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0014 :
    outsideAggregateLocalPartValid0_0014 outsideHistoryChunk0014 := by
  unfold outsideAggregateLocalPartValid0_0014 outsideHistoryChunk0014
  decide

def outsideAggregateMarkerPartValid0_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 14336
  | _ => True

theorem outsideAggregateMarkerPart0_0014 :
    outsideAggregateMarkerPartValid0_0014 outsideHistoryChunk0014 := by
  unfold outsideAggregateMarkerPartValid0_0014 outsideHistoryChunk0014
  decide

def outsideAggregateLocalPartValid1_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0014 :
    outsideAggregateLocalPartValid1_0014 outsideHistoryChunk0014 := by
  unfold outsideAggregateLocalPartValid1_0014 outsideHistoryChunk0014
  decide

def outsideAggregateMarkerPartValid1_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 14464
  | _ => True

theorem outsideAggregateMarkerPart1_0014 :
    outsideAggregateMarkerPartValid1_0014 outsideHistoryChunk0014 := by
  unfold outsideAggregateMarkerPartValid1_0014 outsideHistoryChunk0014
  decide

def outsideAggregateLocalPartValid2_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0014 :
    outsideAggregateLocalPartValid2_0014 outsideHistoryChunk0014 := by
  unfold outsideAggregateLocalPartValid2_0014 outsideHistoryChunk0014
  decide

def outsideAggregateMarkerPartValid2_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 14592
  | _ => True

theorem outsideAggregateMarkerPart2_0014 :
    outsideAggregateMarkerPartValid2_0014 outsideHistoryChunk0014 := by
  unfold outsideAggregateMarkerPartValid2_0014 outsideHistoryChunk0014
  decide

def outsideAggregateLocalPartValid3_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0014 :
    outsideAggregateLocalPartValid3_0014 outsideHistoryChunk0014 := by
  unfold outsideAggregateLocalPartValid3_0014 outsideHistoryChunk0014
  decide

def outsideAggregateMarkerPartValid3_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 14720
  | _ => True

theorem outsideAggregateMarkerPart3_0014 :
    outsideAggregateMarkerPartValid3_0014 outsideHistoryChunk0014 := by
  unfold outsideAggregateMarkerPartValid3_0014 outsideHistoryChunk0014
  decide

def outsideAggregateLocalPartValid4_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0014 :
    outsideAggregateLocalPartValid4_0014 outsideHistoryChunk0014 := by
  unfold outsideAggregateLocalPartValid4_0014 outsideHistoryChunk0014
  decide

def outsideAggregateMarkerPartValid4_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 14848
  | _ => True

theorem outsideAggregateMarkerPart4_0014 :
    outsideAggregateMarkerPartValid4_0014 outsideHistoryChunk0014 := by
  unfold outsideAggregateMarkerPartValid4_0014 outsideHistoryChunk0014
  decide

def outsideAggregateLocalPartValid5_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0014 :
    outsideAggregateLocalPartValid5_0014 outsideHistoryChunk0014 := by
  unfold outsideAggregateLocalPartValid5_0014 outsideHistoryChunk0014
  decide

def outsideAggregateMarkerPartValid5_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 14976
  | _ => True

theorem outsideAggregateMarkerPart5_0014 :
    outsideAggregateMarkerPartValid5_0014 outsideHistoryChunk0014 := by
  unfold outsideAggregateMarkerPartValid5_0014 outsideHistoryChunk0014
  decide

def outsideAggregateLocalPartValid6_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0014 :
    outsideAggregateLocalPartValid6_0014 outsideHistoryChunk0014 := by
  unfold outsideAggregateLocalPartValid6_0014 outsideHistoryChunk0014
  decide

def outsideAggregateMarkerPartValid6_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 15104
  | _ => True

theorem outsideAggregateMarkerPart6_0014 :
    outsideAggregateMarkerPartValid6_0014 outsideHistoryChunk0014 := by
  unfold outsideAggregateMarkerPartValid6_0014 outsideHistoryChunk0014
  decide

def outsideAggregateLocalPartValid7_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0014 :
    outsideAggregateLocalPartValid7_0014 outsideHistoryChunk0014 := by
  unfold outsideAggregateLocalPartValid7_0014 outsideHistoryChunk0014
  decide

def outsideAggregateMarkerPartValid7_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 15232
  | _ => True

theorem outsideAggregateMarkerPart7_0014 :
    outsideAggregateMarkerPartValid7_0014 outsideHistoryChunk0014 := by
  unfold outsideAggregateMarkerPartValid7_0014 outsideHistoryChunk0014
  decide

theorem outsideRange_0014 :
    outsideHistoryChunk0014.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 14336 := by
  have hl0 := outsideAggregateLocalPart0_0014
  simp only [outsideAggregateLocalPartValid0_0014, outsideHistoryChunk0014] at hl0
  have hl1 := outsideAggregateLocalPart1_0014
  simp only [outsideAggregateLocalPartValid1_0014, outsideHistoryChunk0014] at hl1
  have hl2 := outsideAggregateLocalPart2_0014
  simp only [outsideAggregateLocalPartValid2_0014, outsideHistoryChunk0014] at hl2
  have hl3 := outsideAggregateLocalPart3_0014
  simp only [outsideAggregateLocalPartValid3_0014, outsideHistoryChunk0014] at hl3
  have hl4 := outsideAggregateLocalPart4_0014
  simp only [outsideAggregateLocalPartValid4_0014, outsideHistoryChunk0014] at hl4
  have hl5 := outsideAggregateLocalPart5_0014
  simp only [outsideAggregateLocalPartValid5_0014, outsideHistoryChunk0014] at hl5
  have hl6 := outsideAggregateLocalPart6_0014
  simp only [outsideAggregateLocalPartValid6_0014, outsideHistoryChunk0014] at hl6
  have hl7 := outsideAggregateLocalPart7_0014
  simp only [outsideAggregateLocalPartValid7_0014, outsideHistoryChunk0014] at hl7
  have hm0 := outsideAggregateMarkerPart0_0014
  simp only [outsideAggregateMarkerPartValid0_0014, outsideHistoryChunk0014] at hm0
  have hm1 := outsideAggregateMarkerPart1_0014
  simp only [outsideAggregateMarkerPartValid1_0014, outsideHistoryChunk0014] at hm1
  have hm2 := outsideAggregateMarkerPart2_0014
  simp only [outsideAggregateMarkerPartValid2_0014, outsideHistoryChunk0014] at hm2
  have hm3 := outsideAggregateMarkerPart3_0014
  simp only [outsideAggregateMarkerPartValid3_0014, outsideHistoryChunk0014] at hm3
  have hm4 := outsideAggregateMarkerPart4_0014
  simp only [outsideAggregateMarkerPartValid4_0014, outsideHistoryChunk0014] at hm4
  have hm5 := outsideAggregateMarkerPart5_0014
  simp only [outsideAggregateMarkerPartValid5_0014, outsideHistoryChunk0014] at hm5
  have hm6 := outsideAggregateMarkerPart6_0014
  simp only [outsideAggregateMarkerPartValid6_0014, outsideHistoryChunk0014] at hm6
  have hm7 := outsideAggregateMarkerPart7_0014
  simp only [outsideAggregateMarkerPartValid7_0014, outsideHistoryChunk0014] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0014
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0014
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0015 :
    outsideAggregateLocalPartValid0_0015 outsideHistoryChunk0015 := by
  unfold outsideAggregateLocalPartValid0_0015 outsideHistoryChunk0015
  decide

def outsideAggregateMarkerPartValid0_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 15360
  | _ => True

theorem outsideAggregateMarkerPart0_0015 :
    outsideAggregateMarkerPartValid0_0015 outsideHistoryChunk0015 := by
  unfold outsideAggregateMarkerPartValid0_0015 outsideHistoryChunk0015
  decide

def outsideAggregateLocalPartValid1_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0015 :
    outsideAggregateLocalPartValid1_0015 outsideHistoryChunk0015 := by
  unfold outsideAggregateLocalPartValid1_0015 outsideHistoryChunk0015
  decide

def outsideAggregateMarkerPartValid1_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 15488
  | _ => True

theorem outsideAggregateMarkerPart1_0015 :
    outsideAggregateMarkerPartValid1_0015 outsideHistoryChunk0015 := by
  unfold outsideAggregateMarkerPartValid1_0015 outsideHistoryChunk0015
  decide

def outsideAggregateLocalPartValid2_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0015 :
    outsideAggregateLocalPartValid2_0015 outsideHistoryChunk0015 := by
  unfold outsideAggregateLocalPartValid2_0015 outsideHistoryChunk0015
  decide

def outsideAggregateMarkerPartValid2_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 15616
  | _ => True

theorem outsideAggregateMarkerPart2_0015 :
    outsideAggregateMarkerPartValid2_0015 outsideHistoryChunk0015 := by
  unfold outsideAggregateMarkerPartValid2_0015 outsideHistoryChunk0015
  decide

def outsideAggregateLocalPartValid3_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0015 :
    outsideAggregateLocalPartValid3_0015 outsideHistoryChunk0015 := by
  unfold outsideAggregateLocalPartValid3_0015 outsideHistoryChunk0015
  decide

def outsideAggregateMarkerPartValid3_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 15744
  | _ => True

theorem outsideAggregateMarkerPart3_0015 :
    outsideAggregateMarkerPartValid3_0015 outsideHistoryChunk0015 := by
  unfold outsideAggregateMarkerPartValid3_0015 outsideHistoryChunk0015
  decide

def outsideAggregateLocalPartValid4_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0015 :
    outsideAggregateLocalPartValid4_0015 outsideHistoryChunk0015 := by
  unfold outsideAggregateLocalPartValid4_0015 outsideHistoryChunk0015
  decide

def outsideAggregateMarkerPartValid4_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 15872
  | _ => True

theorem outsideAggregateMarkerPart4_0015 :
    outsideAggregateMarkerPartValid4_0015 outsideHistoryChunk0015 := by
  unfold outsideAggregateMarkerPartValid4_0015 outsideHistoryChunk0015
  decide

def outsideAggregateLocalPartValid5_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0015 :
    outsideAggregateLocalPartValid5_0015 outsideHistoryChunk0015 := by
  unfold outsideAggregateLocalPartValid5_0015 outsideHistoryChunk0015
  decide

def outsideAggregateMarkerPartValid5_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 16000
  | _ => True

theorem outsideAggregateMarkerPart5_0015 :
    outsideAggregateMarkerPartValid5_0015 outsideHistoryChunk0015 := by
  unfold outsideAggregateMarkerPartValid5_0015 outsideHistoryChunk0015
  decide

def outsideAggregateLocalPartValid6_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0015 :
    outsideAggregateLocalPartValid6_0015 outsideHistoryChunk0015 := by
  unfold outsideAggregateLocalPartValid6_0015 outsideHistoryChunk0015
  decide

def outsideAggregateMarkerPartValid6_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 16128
  | _ => True

theorem outsideAggregateMarkerPart6_0015 :
    outsideAggregateMarkerPartValid6_0015 outsideHistoryChunk0015 := by
  unfold outsideAggregateMarkerPartValid6_0015 outsideHistoryChunk0015
  decide

def outsideAggregateLocalPartValid7_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0015 :
    outsideAggregateLocalPartValid7_0015 outsideHistoryChunk0015 := by
  unfold outsideAggregateLocalPartValid7_0015 outsideHistoryChunk0015
  decide

def outsideAggregateMarkerPartValid7_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 16256
  | _ => True

theorem outsideAggregateMarkerPart7_0015 :
    outsideAggregateMarkerPartValid7_0015 outsideHistoryChunk0015 := by
  unfold outsideAggregateMarkerPartValid7_0015 outsideHistoryChunk0015
  decide

theorem outsideRange_0015 :
    outsideHistoryChunk0015.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 15360 := by
  have hl0 := outsideAggregateLocalPart0_0015
  simp only [outsideAggregateLocalPartValid0_0015, outsideHistoryChunk0015] at hl0
  have hl1 := outsideAggregateLocalPart1_0015
  simp only [outsideAggregateLocalPartValid1_0015, outsideHistoryChunk0015] at hl1
  have hl2 := outsideAggregateLocalPart2_0015
  simp only [outsideAggregateLocalPartValid2_0015, outsideHistoryChunk0015] at hl2
  have hl3 := outsideAggregateLocalPart3_0015
  simp only [outsideAggregateLocalPartValid3_0015, outsideHistoryChunk0015] at hl3
  have hl4 := outsideAggregateLocalPart4_0015
  simp only [outsideAggregateLocalPartValid4_0015, outsideHistoryChunk0015] at hl4
  have hl5 := outsideAggregateLocalPart5_0015
  simp only [outsideAggregateLocalPartValid5_0015, outsideHistoryChunk0015] at hl5
  have hl6 := outsideAggregateLocalPart6_0015
  simp only [outsideAggregateLocalPartValid6_0015, outsideHistoryChunk0015] at hl6
  have hl7 := outsideAggregateLocalPart7_0015
  simp only [outsideAggregateLocalPartValid7_0015, outsideHistoryChunk0015] at hl7
  have hm0 := outsideAggregateMarkerPart0_0015
  simp only [outsideAggregateMarkerPartValid0_0015, outsideHistoryChunk0015] at hm0
  have hm1 := outsideAggregateMarkerPart1_0015
  simp only [outsideAggregateMarkerPartValid1_0015, outsideHistoryChunk0015] at hm1
  have hm2 := outsideAggregateMarkerPart2_0015
  simp only [outsideAggregateMarkerPartValid2_0015, outsideHistoryChunk0015] at hm2
  have hm3 := outsideAggregateMarkerPart3_0015
  simp only [outsideAggregateMarkerPartValid3_0015, outsideHistoryChunk0015] at hm3
  have hm4 := outsideAggregateMarkerPart4_0015
  simp only [outsideAggregateMarkerPartValid4_0015, outsideHistoryChunk0015] at hm4
  have hm5 := outsideAggregateMarkerPart5_0015
  simp only [outsideAggregateMarkerPartValid5_0015, outsideHistoryChunk0015] at hm5
  have hm6 := outsideAggregateMarkerPart6_0015
  simp only [outsideAggregateMarkerPartValid6_0015, outsideHistoryChunk0015] at hm6
  have hm7 := outsideAggregateMarkerPart7_0015
  simp only [outsideAggregateMarkerPartValid7_0015, outsideHistoryChunk0015] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0015
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0015
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
