import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0004
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0005
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0006
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0007

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0004, 0005, 0006, 0007 -/

def outsideAggregateLocalPartValid0_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0004 :
    outsideAggregateLocalPartValid0_0004 outsideHistoryChunk0004 := by
  unfold outsideAggregateLocalPartValid0_0004 outsideHistoryChunk0004
  decide

def outsideAggregateMarkerPartValid0_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 4096
  | _ => True

theorem outsideAggregateMarkerPart0_0004 :
    outsideAggregateMarkerPartValid0_0004 outsideHistoryChunk0004 := by
  unfold outsideAggregateMarkerPartValid0_0004 outsideHistoryChunk0004
  decide

def outsideAggregateLocalPartValid1_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0004 :
    outsideAggregateLocalPartValid1_0004 outsideHistoryChunk0004 := by
  unfold outsideAggregateLocalPartValid1_0004 outsideHistoryChunk0004
  decide

def outsideAggregateMarkerPartValid1_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 4224
  | _ => True

theorem outsideAggregateMarkerPart1_0004 :
    outsideAggregateMarkerPartValid1_0004 outsideHistoryChunk0004 := by
  unfold outsideAggregateMarkerPartValid1_0004 outsideHistoryChunk0004
  decide

def outsideAggregateLocalPartValid2_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0004 :
    outsideAggregateLocalPartValid2_0004 outsideHistoryChunk0004 := by
  unfold outsideAggregateLocalPartValid2_0004 outsideHistoryChunk0004
  decide

def outsideAggregateMarkerPartValid2_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 4352
  | _ => True

theorem outsideAggregateMarkerPart2_0004 :
    outsideAggregateMarkerPartValid2_0004 outsideHistoryChunk0004 := by
  unfold outsideAggregateMarkerPartValid2_0004 outsideHistoryChunk0004
  decide

def outsideAggregateLocalPartValid3_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0004 :
    outsideAggregateLocalPartValid3_0004 outsideHistoryChunk0004 := by
  unfold outsideAggregateLocalPartValid3_0004 outsideHistoryChunk0004
  decide

def outsideAggregateMarkerPartValid3_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 4480
  | _ => True

theorem outsideAggregateMarkerPart3_0004 :
    outsideAggregateMarkerPartValid3_0004 outsideHistoryChunk0004 := by
  unfold outsideAggregateMarkerPartValid3_0004 outsideHistoryChunk0004
  decide

def outsideAggregateLocalPartValid4_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0004 :
    outsideAggregateLocalPartValid4_0004 outsideHistoryChunk0004 := by
  unfold outsideAggregateLocalPartValid4_0004 outsideHistoryChunk0004
  decide

def outsideAggregateMarkerPartValid4_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 4608
  | _ => True

theorem outsideAggregateMarkerPart4_0004 :
    outsideAggregateMarkerPartValid4_0004 outsideHistoryChunk0004 := by
  unfold outsideAggregateMarkerPartValid4_0004 outsideHistoryChunk0004
  decide

def outsideAggregateLocalPartValid5_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0004 :
    outsideAggregateLocalPartValid5_0004 outsideHistoryChunk0004 := by
  unfold outsideAggregateLocalPartValid5_0004 outsideHistoryChunk0004
  decide

def outsideAggregateMarkerPartValid5_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 4736
  | _ => True

theorem outsideAggregateMarkerPart5_0004 :
    outsideAggregateMarkerPartValid5_0004 outsideHistoryChunk0004 := by
  unfold outsideAggregateMarkerPartValid5_0004 outsideHistoryChunk0004
  decide

def outsideAggregateLocalPartValid6_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0004 :
    outsideAggregateLocalPartValid6_0004 outsideHistoryChunk0004 := by
  unfold outsideAggregateLocalPartValid6_0004 outsideHistoryChunk0004
  decide

def outsideAggregateMarkerPartValid6_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 4864
  | _ => True

theorem outsideAggregateMarkerPart6_0004 :
    outsideAggregateMarkerPartValid6_0004 outsideHistoryChunk0004 := by
  unfold outsideAggregateMarkerPartValid6_0004 outsideHistoryChunk0004
  decide

def outsideAggregateLocalPartValid7_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0004 :
    outsideAggregateLocalPartValid7_0004 outsideHistoryChunk0004 := by
  unfold outsideAggregateLocalPartValid7_0004 outsideHistoryChunk0004
  decide

def outsideAggregateMarkerPartValid7_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 4992
  | _ => True

theorem outsideAggregateMarkerPart7_0004 :
    outsideAggregateMarkerPartValid7_0004 outsideHistoryChunk0004 := by
  unfold outsideAggregateMarkerPartValid7_0004 outsideHistoryChunk0004
  decide

theorem outsideRange_0004 :
    outsideHistoryChunk0004.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 4096 := by
  have hl0 := outsideAggregateLocalPart0_0004
  simp only [outsideAggregateLocalPartValid0_0004, outsideHistoryChunk0004] at hl0
  have hl1 := outsideAggregateLocalPart1_0004
  simp only [outsideAggregateLocalPartValid1_0004, outsideHistoryChunk0004] at hl1
  have hl2 := outsideAggregateLocalPart2_0004
  simp only [outsideAggregateLocalPartValid2_0004, outsideHistoryChunk0004] at hl2
  have hl3 := outsideAggregateLocalPart3_0004
  simp only [outsideAggregateLocalPartValid3_0004, outsideHistoryChunk0004] at hl3
  have hl4 := outsideAggregateLocalPart4_0004
  simp only [outsideAggregateLocalPartValid4_0004, outsideHistoryChunk0004] at hl4
  have hl5 := outsideAggregateLocalPart5_0004
  simp only [outsideAggregateLocalPartValid5_0004, outsideHistoryChunk0004] at hl5
  have hl6 := outsideAggregateLocalPart6_0004
  simp only [outsideAggregateLocalPartValid6_0004, outsideHistoryChunk0004] at hl6
  have hl7 := outsideAggregateLocalPart7_0004
  simp only [outsideAggregateLocalPartValid7_0004, outsideHistoryChunk0004] at hl7
  have hm0 := outsideAggregateMarkerPart0_0004
  simp only [outsideAggregateMarkerPartValid0_0004, outsideHistoryChunk0004] at hm0
  have hm1 := outsideAggregateMarkerPart1_0004
  simp only [outsideAggregateMarkerPartValid1_0004, outsideHistoryChunk0004] at hm1
  have hm2 := outsideAggregateMarkerPart2_0004
  simp only [outsideAggregateMarkerPartValid2_0004, outsideHistoryChunk0004] at hm2
  have hm3 := outsideAggregateMarkerPart3_0004
  simp only [outsideAggregateMarkerPartValid3_0004, outsideHistoryChunk0004] at hm3
  have hm4 := outsideAggregateMarkerPart4_0004
  simp only [outsideAggregateMarkerPartValid4_0004, outsideHistoryChunk0004] at hm4
  have hm5 := outsideAggregateMarkerPart5_0004
  simp only [outsideAggregateMarkerPartValid5_0004, outsideHistoryChunk0004] at hm5
  have hm6 := outsideAggregateMarkerPart6_0004
  simp only [outsideAggregateMarkerPartValid6_0004, outsideHistoryChunk0004] at hm6
  have hm7 := outsideAggregateMarkerPart7_0004
  simp only [outsideAggregateMarkerPartValid7_0004, outsideHistoryChunk0004] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0004
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0004
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0005 :
    outsideAggregateLocalPartValid0_0005 outsideHistoryChunk0005 := by
  unfold outsideAggregateLocalPartValid0_0005 outsideHistoryChunk0005
  decide

def outsideAggregateMarkerPartValid0_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 5120
  | _ => True

theorem outsideAggregateMarkerPart0_0005 :
    outsideAggregateMarkerPartValid0_0005 outsideHistoryChunk0005 := by
  unfold outsideAggregateMarkerPartValid0_0005 outsideHistoryChunk0005
  decide

def outsideAggregateLocalPartValid1_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0005 :
    outsideAggregateLocalPartValid1_0005 outsideHistoryChunk0005 := by
  unfold outsideAggregateLocalPartValid1_0005 outsideHistoryChunk0005
  decide

def outsideAggregateMarkerPartValid1_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 5248
  | _ => True

theorem outsideAggregateMarkerPart1_0005 :
    outsideAggregateMarkerPartValid1_0005 outsideHistoryChunk0005 := by
  unfold outsideAggregateMarkerPartValid1_0005 outsideHistoryChunk0005
  decide

def outsideAggregateLocalPartValid2_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0005 :
    outsideAggregateLocalPartValid2_0005 outsideHistoryChunk0005 := by
  unfold outsideAggregateLocalPartValid2_0005 outsideHistoryChunk0005
  decide

def outsideAggregateMarkerPartValid2_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 5376
  | _ => True

theorem outsideAggregateMarkerPart2_0005 :
    outsideAggregateMarkerPartValid2_0005 outsideHistoryChunk0005 := by
  unfold outsideAggregateMarkerPartValid2_0005 outsideHistoryChunk0005
  decide

def outsideAggregateLocalPartValid3_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0005 :
    outsideAggregateLocalPartValid3_0005 outsideHistoryChunk0005 := by
  unfold outsideAggregateLocalPartValid3_0005 outsideHistoryChunk0005
  decide

def outsideAggregateMarkerPartValid3_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 5504
  | _ => True

theorem outsideAggregateMarkerPart3_0005 :
    outsideAggregateMarkerPartValid3_0005 outsideHistoryChunk0005 := by
  unfold outsideAggregateMarkerPartValid3_0005 outsideHistoryChunk0005
  decide

def outsideAggregateLocalPartValid4_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0005 :
    outsideAggregateLocalPartValid4_0005 outsideHistoryChunk0005 := by
  unfold outsideAggregateLocalPartValid4_0005 outsideHistoryChunk0005
  decide

def outsideAggregateMarkerPartValid4_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 5632
  | _ => True

theorem outsideAggregateMarkerPart4_0005 :
    outsideAggregateMarkerPartValid4_0005 outsideHistoryChunk0005 := by
  unfold outsideAggregateMarkerPartValid4_0005 outsideHistoryChunk0005
  decide

def outsideAggregateLocalPartValid5_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0005 :
    outsideAggregateLocalPartValid5_0005 outsideHistoryChunk0005 := by
  unfold outsideAggregateLocalPartValid5_0005 outsideHistoryChunk0005
  decide

def outsideAggregateMarkerPartValid5_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 5760
  | _ => True

theorem outsideAggregateMarkerPart5_0005 :
    outsideAggregateMarkerPartValid5_0005 outsideHistoryChunk0005 := by
  unfold outsideAggregateMarkerPartValid5_0005 outsideHistoryChunk0005
  decide

def outsideAggregateLocalPartValid6_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0005 :
    outsideAggregateLocalPartValid6_0005 outsideHistoryChunk0005 := by
  unfold outsideAggregateLocalPartValid6_0005 outsideHistoryChunk0005
  decide

def outsideAggregateMarkerPartValid6_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 5888
  | _ => True

theorem outsideAggregateMarkerPart6_0005 :
    outsideAggregateMarkerPartValid6_0005 outsideHistoryChunk0005 := by
  unfold outsideAggregateMarkerPartValid6_0005 outsideHistoryChunk0005
  decide

def outsideAggregateLocalPartValid7_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0005 :
    outsideAggregateLocalPartValid7_0005 outsideHistoryChunk0005 := by
  unfold outsideAggregateLocalPartValid7_0005 outsideHistoryChunk0005
  decide

def outsideAggregateMarkerPartValid7_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 6016
  | _ => True

theorem outsideAggregateMarkerPart7_0005 :
    outsideAggregateMarkerPartValid7_0005 outsideHistoryChunk0005 := by
  unfold outsideAggregateMarkerPartValid7_0005 outsideHistoryChunk0005
  decide

theorem outsideRange_0005 :
    outsideHistoryChunk0005.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 5120 := by
  have hl0 := outsideAggregateLocalPart0_0005
  simp only [outsideAggregateLocalPartValid0_0005, outsideHistoryChunk0005] at hl0
  have hl1 := outsideAggregateLocalPart1_0005
  simp only [outsideAggregateLocalPartValid1_0005, outsideHistoryChunk0005] at hl1
  have hl2 := outsideAggregateLocalPart2_0005
  simp only [outsideAggregateLocalPartValid2_0005, outsideHistoryChunk0005] at hl2
  have hl3 := outsideAggregateLocalPart3_0005
  simp only [outsideAggregateLocalPartValid3_0005, outsideHistoryChunk0005] at hl3
  have hl4 := outsideAggregateLocalPart4_0005
  simp only [outsideAggregateLocalPartValid4_0005, outsideHistoryChunk0005] at hl4
  have hl5 := outsideAggregateLocalPart5_0005
  simp only [outsideAggregateLocalPartValid5_0005, outsideHistoryChunk0005] at hl5
  have hl6 := outsideAggregateLocalPart6_0005
  simp only [outsideAggregateLocalPartValid6_0005, outsideHistoryChunk0005] at hl6
  have hl7 := outsideAggregateLocalPart7_0005
  simp only [outsideAggregateLocalPartValid7_0005, outsideHistoryChunk0005] at hl7
  have hm0 := outsideAggregateMarkerPart0_0005
  simp only [outsideAggregateMarkerPartValid0_0005, outsideHistoryChunk0005] at hm0
  have hm1 := outsideAggregateMarkerPart1_0005
  simp only [outsideAggregateMarkerPartValid1_0005, outsideHistoryChunk0005] at hm1
  have hm2 := outsideAggregateMarkerPart2_0005
  simp only [outsideAggregateMarkerPartValid2_0005, outsideHistoryChunk0005] at hm2
  have hm3 := outsideAggregateMarkerPart3_0005
  simp only [outsideAggregateMarkerPartValid3_0005, outsideHistoryChunk0005] at hm3
  have hm4 := outsideAggregateMarkerPart4_0005
  simp only [outsideAggregateMarkerPartValid4_0005, outsideHistoryChunk0005] at hm4
  have hm5 := outsideAggregateMarkerPart5_0005
  simp only [outsideAggregateMarkerPartValid5_0005, outsideHistoryChunk0005] at hm5
  have hm6 := outsideAggregateMarkerPart6_0005
  simp only [outsideAggregateMarkerPartValid6_0005, outsideHistoryChunk0005] at hm6
  have hm7 := outsideAggregateMarkerPart7_0005
  simp only [outsideAggregateMarkerPartValid7_0005, outsideHistoryChunk0005] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0005
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0005
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0006 :
    outsideAggregateLocalPartValid0_0006 outsideHistoryChunk0006 := by
  unfold outsideAggregateLocalPartValid0_0006 outsideHistoryChunk0006
  decide

def outsideAggregateMarkerPartValid0_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 6144
  | _ => True

theorem outsideAggregateMarkerPart0_0006 :
    outsideAggregateMarkerPartValid0_0006 outsideHistoryChunk0006 := by
  unfold outsideAggregateMarkerPartValid0_0006 outsideHistoryChunk0006
  decide

def outsideAggregateLocalPartValid1_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0006 :
    outsideAggregateLocalPartValid1_0006 outsideHistoryChunk0006 := by
  unfold outsideAggregateLocalPartValid1_0006 outsideHistoryChunk0006
  decide

def outsideAggregateMarkerPartValid1_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 6272
  | _ => True

theorem outsideAggregateMarkerPart1_0006 :
    outsideAggregateMarkerPartValid1_0006 outsideHistoryChunk0006 := by
  unfold outsideAggregateMarkerPartValid1_0006 outsideHistoryChunk0006
  decide

def outsideAggregateLocalPartValid2_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0006 :
    outsideAggregateLocalPartValid2_0006 outsideHistoryChunk0006 := by
  unfold outsideAggregateLocalPartValid2_0006 outsideHistoryChunk0006
  decide

def outsideAggregateMarkerPartValid2_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 6400
  | _ => True

theorem outsideAggregateMarkerPart2_0006 :
    outsideAggregateMarkerPartValid2_0006 outsideHistoryChunk0006 := by
  unfold outsideAggregateMarkerPartValid2_0006 outsideHistoryChunk0006
  decide

def outsideAggregateLocalPartValid3_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0006 :
    outsideAggregateLocalPartValid3_0006 outsideHistoryChunk0006 := by
  unfold outsideAggregateLocalPartValid3_0006 outsideHistoryChunk0006
  decide

def outsideAggregateMarkerPartValid3_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 6528
  | _ => True

theorem outsideAggregateMarkerPart3_0006 :
    outsideAggregateMarkerPartValid3_0006 outsideHistoryChunk0006 := by
  unfold outsideAggregateMarkerPartValid3_0006 outsideHistoryChunk0006
  decide

def outsideAggregateLocalPartValid4_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0006 :
    outsideAggregateLocalPartValid4_0006 outsideHistoryChunk0006 := by
  unfold outsideAggregateLocalPartValid4_0006 outsideHistoryChunk0006
  decide

def outsideAggregateMarkerPartValid4_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 6656
  | _ => True

theorem outsideAggregateMarkerPart4_0006 :
    outsideAggregateMarkerPartValid4_0006 outsideHistoryChunk0006 := by
  unfold outsideAggregateMarkerPartValid4_0006 outsideHistoryChunk0006
  decide

def outsideAggregateLocalPartValid5_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0006 :
    outsideAggregateLocalPartValid5_0006 outsideHistoryChunk0006 := by
  unfold outsideAggregateLocalPartValid5_0006 outsideHistoryChunk0006
  decide

def outsideAggregateMarkerPartValid5_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 6784
  | _ => True

theorem outsideAggregateMarkerPart5_0006 :
    outsideAggregateMarkerPartValid5_0006 outsideHistoryChunk0006 := by
  unfold outsideAggregateMarkerPartValid5_0006 outsideHistoryChunk0006
  decide

def outsideAggregateLocalPartValid6_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0006 :
    outsideAggregateLocalPartValid6_0006 outsideHistoryChunk0006 := by
  unfold outsideAggregateLocalPartValid6_0006 outsideHistoryChunk0006
  decide

def outsideAggregateMarkerPartValid6_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 6912
  | _ => True

theorem outsideAggregateMarkerPart6_0006 :
    outsideAggregateMarkerPartValid6_0006 outsideHistoryChunk0006 := by
  unfold outsideAggregateMarkerPartValid6_0006 outsideHistoryChunk0006
  decide

def outsideAggregateLocalPartValid7_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0006 :
    outsideAggregateLocalPartValid7_0006 outsideHistoryChunk0006 := by
  unfold outsideAggregateLocalPartValid7_0006 outsideHistoryChunk0006
  decide

def outsideAggregateMarkerPartValid7_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 7040
  | _ => True

theorem outsideAggregateMarkerPart7_0006 :
    outsideAggregateMarkerPartValid7_0006 outsideHistoryChunk0006 := by
  unfold outsideAggregateMarkerPartValid7_0006 outsideHistoryChunk0006
  decide

theorem outsideRange_0006 :
    outsideHistoryChunk0006.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 6144 := by
  have hl0 := outsideAggregateLocalPart0_0006
  simp only [outsideAggregateLocalPartValid0_0006, outsideHistoryChunk0006] at hl0
  have hl1 := outsideAggregateLocalPart1_0006
  simp only [outsideAggregateLocalPartValid1_0006, outsideHistoryChunk0006] at hl1
  have hl2 := outsideAggregateLocalPart2_0006
  simp only [outsideAggregateLocalPartValid2_0006, outsideHistoryChunk0006] at hl2
  have hl3 := outsideAggregateLocalPart3_0006
  simp only [outsideAggregateLocalPartValid3_0006, outsideHistoryChunk0006] at hl3
  have hl4 := outsideAggregateLocalPart4_0006
  simp only [outsideAggregateLocalPartValid4_0006, outsideHistoryChunk0006] at hl4
  have hl5 := outsideAggregateLocalPart5_0006
  simp only [outsideAggregateLocalPartValid5_0006, outsideHistoryChunk0006] at hl5
  have hl6 := outsideAggregateLocalPart6_0006
  simp only [outsideAggregateLocalPartValid6_0006, outsideHistoryChunk0006] at hl6
  have hl7 := outsideAggregateLocalPart7_0006
  simp only [outsideAggregateLocalPartValid7_0006, outsideHistoryChunk0006] at hl7
  have hm0 := outsideAggregateMarkerPart0_0006
  simp only [outsideAggregateMarkerPartValid0_0006, outsideHistoryChunk0006] at hm0
  have hm1 := outsideAggregateMarkerPart1_0006
  simp only [outsideAggregateMarkerPartValid1_0006, outsideHistoryChunk0006] at hm1
  have hm2 := outsideAggregateMarkerPart2_0006
  simp only [outsideAggregateMarkerPartValid2_0006, outsideHistoryChunk0006] at hm2
  have hm3 := outsideAggregateMarkerPart3_0006
  simp only [outsideAggregateMarkerPartValid3_0006, outsideHistoryChunk0006] at hm3
  have hm4 := outsideAggregateMarkerPart4_0006
  simp only [outsideAggregateMarkerPartValid4_0006, outsideHistoryChunk0006] at hm4
  have hm5 := outsideAggregateMarkerPart5_0006
  simp only [outsideAggregateMarkerPartValid5_0006, outsideHistoryChunk0006] at hm5
  have hm6 := outsideAggregateMarkerPart6_0006
  simp only [outsideAggregateMarkerPartValid6_0006, outsideHistoryChunk0006] at hm6
  have hm7 := outsideAggregateMarkerPart7_0006
  simp only [outsideAggregateMarkerPartValid7_0006, outsideHistoryChunk0006] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0006
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0006
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0007 :
    outsideAggregateLocalPartValid0_0007 outsideHistoryChunk0007 := by
  unfold outsideAggregateLocalPartValid0_0007 outsideHistoryChunk0007
  decide

def outsideAggregateMarkerPartValid0_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 7168
  | _ => True

theorem outsideAggregateMarkerPart0_0007 :
    outsideAggregateMarkerPartValid0_0007 outsideHistoryChunk0007 := by
  unfold outsideAggregateMarkerPartValid0_0007 outsideHistoryChunk0007
  decide

def outsideAggregateLocalPartValid1_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0007 :
    outsideAggregateLocalPartValid1_0007 outsideHistoryChunk0007 := by
  unfold outsideAggregateLocalPartValid1_0007 outsideHistoryChunk0007
  decide

def outsideAggregateMarkerPartValid1_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 7296
  | _ => True

theorem outsideAggregateMarkerPart1_0007 :
    outsideAggregateMarkerPartValid1_0007 outsideHistoryChunk0007 := by
  unfold outsideAggregateMarkerPartValid1_0007 outsideHistoryChunk0007
  decide

def outsideAggregateLocalPartValid2_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0007 :
    outsideAggregateLocalPartValid2_0007 outsideHistoryChunk0007 := by
  unfold outsideAggregateLocalPartValid2_0007 outsideHistoryChunk0007
  decide

def outsideAggregateMarkerPartValid2_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 7424
  | _ => True

theorem outsideAggregateMarkerPart2_0007 :
    outsideAggregateMarkerPartValid2_0007 outsideHistoryChunk0007 := by
  unfold outsideAggregateMarkerPartValid2_0007 outsideHistoryChunk0007
  decide

def outsideAggregateLocalPartValid3_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0007 :
    outsideAggregateLocalPartValid3_0007 outsideHistoryChunk0007 := by
  unfold outsideAggregateLocalPartValid3_0007 outsideHistoryChunk0007
  decide

def outsideAggregateMarkerPartValid3_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 7552
  | _ => True

theorem outsideAggregateMarkerPart3_0007 :
    outsideAggregateMarkerPartValid3_0007 outsideHistoryChunk0007 := by
  unfold outsideAggregateMarkerPartValid3_0007 outsideHistoryChunk0007
  decide

def outsideAggregateLocalPartValid4_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0007 :
    outsideAggregateLocalPartValid4_0007 outsideHistoryChunk0007 := by
  unfold outsideAggregateLocalPartValid4_0007 outsideHistoryChunk0007
  decide

def outsideAggregateMarkerPartValid4_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 7680
  | _ => True

theorem outsideAggregateMarkerPart4_0007 :
    outsideAggregateMarkerPartValid4_0007 outsideHistoryChunk0007 := by
  unfold outsideAggregateMarkerPartValid4_0007 outsideHistoryChunk0007
  decide

def outsideAggregateLocalPartValid5_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0007 :
    outsideAggregateLocalPartValid5_0007 outsideHistoryChunk0007 := by
  unfold outsideAggregateLocalPartValid5_0007 outsideHistoryChunk0007
  decide

def outsideAggregateMarkerPartValid5_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 7808
  | _ => True

theorem outsideAggregateMarkerPart5_0007 :
    outsideAggregateMarkerPartValid5_0007 outsideHistoryChunk0007 := by
  unfold outsideAggregateMarkerPartValid5_0007 outsideHistoryChunk0007
  decide

def outsideAggregateLocalPartValid6_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0007 :
    outsideAggregateLocalPartValid6_0007 outsideHistoryChunk0007 := by
  unfold outsideAggregateLocalPartValid6_0007 outsideHistoryChunk0007
  decide

def outsideAggregateMarkerPartValid6_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 7936
  | _ => True

theorem outsideAggregateMarkerPart6_0007 :
    outsideAggregateMarkerPartValid6_0007 outsideHistoryChunk0007 := by
  unfold outsideAggregateMarkerPartValid6_0007 outsideHistoryChunk0007
  decide

def outsideAggregateLocalPartValid7_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0007 :
    outsideAggregateLocalPartValid7_0007 outsideHistoryChunk0007 := by
  unfold outsideAggregateLocalPartValid7_0007 outsideHistoryChunk0007
  decide

def outsideAggregateMarkerPartValid7_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 8064
  | _ => True

theorem outsideAggregateMarkerPart7_0007 :
    outsideAggregateMarkerPartValid7_0007 outsideHistoryChunk0007 := by
  unfold outsideAggregateMarkerPartValid7_0007 outsideHistoryChunk0007
  decide

theorem outsideRange_0007 :
    outsideHistoryChunk0007.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 7168 := by
  have hl0 := outsideAggregateLocalPart0_0007
  simp only [outsideAggregateLocalPartValid0_0007, outsideHistoryChunk0007] at hl0
  have hl1 := outsideAggregateLocalPart1_0007
  simp only [outsideAggregateLocalPartValid1_0007, outsideHistoryChunk0007] at hl1
  have hl2 := outsideAggregateLocalPart2_0007
  simp only [outsideAggregateLocalPartValid2_0007, outsideHistoryChunk0007] at hl2
  have hl3 := outsideAggregateLocalPart3_0007
  simp only [outsideAggregateLocalPartValid3_0007, outsideHistoryChunk0007] at hl3
  have hl4 := outsideAggregateLocalPart4_0007
  simp only [outsideAggregateLocalPartValid4_0007, outsideHistoryChunk0007] at hl4
  have hl5 := outsideAggregateLocalPart5_0007
  simp only [outsideAggregateLocalPartValid5_0007, outsideHistoryChunk0007] at hl5
  have hl6 := outsideAggregateLocalPart6_0007
  simp only [outsideAggregateLocalPartValid6_0007, outsideHistoryChunk0007] at hl6
  have hl7 := outsideAggregateLocalPart7_0007
  simp only [outsideAggregateLocalPartValid7_0007, outsideHistoryChunk0007] at hl7
  have hm0 := outsideAggregateMarkerPart0_0007
  simp only [outsideAggregateMarkerPartValid0_0007, outsideHistoryChunk0007] at hm0
  have hm1 := outsideAggregateMarkerPart1_0007
  simp only [outsideAggregateMarkerPartValid1_0007, outsideHistoryChunk0007] at hm1
  have hm2 := outsideAggregateMarkerPart2_0007
  simp only [outsideAggregateMarkerPartValid2_0007, outsideHistoryChunk0007] at hm2
  have hm3 := outsideAggregateMarkerPart3_0007
  simp only [outsideAggregateMarkerPartValid3_0007, outsideHistoryChunk0007] at hm3
  have hm4 := outsideAggregateMarkerPart4_0007
  simp only [outsideAggregateMarkerPartValid4_0007, outsideHistoryChunk0007] at hm4
  have hm5 := outsideAggregateMarkerPart5_0007
  simp only [outsideAggregateMarkerPartValid5_0007, outsideHistoryChunk0007] at hm5
  have hm6 := outsideAggregateMarkerPart6_0007
  simp only [outsideAggregateMarkerPartValid6_0007, outsideHistoryChunk0007] at hm6
  have hm7 := outsideAggregateMarkerPart7_0007
  simp only [outsideAggregateMarkerPartValid7_0007, outsideHistoryChunk0007] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0007
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0007
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
