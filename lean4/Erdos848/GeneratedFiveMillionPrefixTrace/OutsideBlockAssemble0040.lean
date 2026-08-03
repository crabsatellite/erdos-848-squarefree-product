import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0040
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0041
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0042
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0043

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0040, 0041, 0042, 0043 -/

def outsideAggregateLocalPartValid0_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0040 :
    outsideAggregateLocalPartValid0_0040 outsideHistoryChunk0040 := by
  unfold outsideAggregateLocalPartValid0_0040 outsideHistoryChunk0040
  decide

def outsideAggregateMarkerPartValid0_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 40960
  | _ => True

theorem outsideAggregateMarkerPart0_0040 :
    outsideAggregateMarkerPartValid0_0040 outsideHistoryChunk0040 := by
  unfold outsideAggregateMarkerPartValid0_0040 outsideHistoryChunk0040
  decide

def outsideAggregateLocalPartValid1_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0040 :
    outsideAggregateLocalPartValid1_0040 outsideHistoryChunk0040 := by
  unfold outsideAggregateLocalPartValid1_0040 outsideHistoryChunk0040
  decide

def outsideAggregateMarkerPartValid1_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 41088
  | _ => True

theorem outsideAggregateMarkerPart1_0040 :
    outsideAggregateMarkerPartValid1_0040 outsideHistoryChunk0040 := by
  unfold outsideAggregateMarkerPartValid1_0040 outsideHistoryChunk0040
  decide

def outsideAggregateLocalPartValid2_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0040 :
    outsideAggregateLocalPartValid2_0040 outsideHistoryChunk0040 := by
  unfold outsideAggregateLocalPartValid2_0040 outsideHistoryChunk0040
  decide

def outsideAggregateMarkerPartValid2_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 41216
  | _ => True

theorem outsideAggregateMarkerPart2_0040 :
    outsideAggregateMarkerPartValid2_0040 outsideHistoryChunk0040 := by
  unfold outsideAggregateMarkerPartValid2_0040 outsideHistoryChunk0040
  decide

def outsideAggregateLocalPartValid3_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0040 :
    outsideAggregateLocalPartValid3_0040 outsideHistoryChunk0040 := by
  unfold outsideAggregateLocalPartValid3_0040 outsideHistoryChunk0040
  decide

def outsideAggregateMarkerPartValid3_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 41344
  | _ => True

theorem outsideAggregateMarkerPart3_0040 :
    outsideAggregateMarkerPartValid3_0040 outsideHistoryChunk0040 := by
  unfold outsideAggregateMarkerPartValid3_0040 outsideHistoryChunk0040
  decide

def outsideAggregateLocalPartValid4_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0040 :
    outsideAggregateLocalPartValid4_0040 outsideHistoryChunk0040 := by
  unfold outsideAggregateLocalPartValid4_0040 outsideHistoryChunk0040
  decide

def outsideAggregateMarkerPartValid4_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 41472
  | _ => True

theorem outsideAggregateMarkerPart4_0040 :
    outsideAggregateMarkerPartValid4_0040 outsideHistoryChunk0040 := by
  unfold outsideAggregateMarkerPartValid4_0040 outsideHistoryChunk0040
  decide

def outsideAggregateLocalPartValid5_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0040 :
    outsideAggregateLocalPartValid5_0040 outsideHistoryChunk0040 := by
  unfold outsideAggregateLocalPartValid5_0040 outsideHistoryChunk0040
  decide

def outsideAggregateMarkerPartValid5_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 41600
  | _ => True

theorem outsideAggregateMarkerPart5_0040 :
    outsideAggregateMarkerPartValid5_0040 outsideHistoryChunk0040 := by
  unfold outsideAggregateMarkerPartValid5_0040 outsideHistoryChunk0040
  decide

def outsideAggregateLocalPartValid6_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0040 :
    outsideAggregateLocalPartValid6_0040 outsideHistoryChunk0040 := by
  unfold outsideAggregateLocalPartValid6_0040 outsideHistoryChunk0040
  decide

def outsideAggregateMarkerPartValid6_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 41728
  | _ => True

theorem outsideAggregateMarkerPart6_0040 :
    outsideAggregateMarkerPartValid6_0040 outsideHistoryChunk0040 := by
  unfold outsideAggregateMarkerPartValid6_0040 outsideHistoryChunk0040
  decide

def outsideAggregateLocalPartValid7_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0040 :
    outsideAggregateLocalPartValid7_0040 outsideHistoryChunk0040 := by
  unfold outsideAggregateLocalPartValid7_0040 outsideHistoryChunk0040
  decide

def outsideAggregateMarkerPartValid7_0040 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 41856
  | _ => True

theorem outsideAggregateMarkerPart7_0040 :
    outsideAggregateMarkerPartValid7_0040 outsideHistoryChunk0040 := by
  unfold outsideAggregateMarkerPartValid7_0040 outsideHistoryChunk0040
  decide

theorem outsideRange_0040 :
    outsideHistoryChunk0040.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 40960 := by
  have hl0 := outsideAggregateLocalPart0_0040
  simp only [outsideAggregateLocalPartValid0_0040, outsideHistoryChunk0040] at hl0
  have hl1 := outsideAggregateLocalPart1_0040
  simp only [outsideAggregateLocalPartValid1_0040, outsideHistoryChunk0040] at hl1
  have hl2 := outsideAggregateLocalPart2_0040
  simp only [outsideAggregateLocalPartValid2_0040, outsideHistoryChunk0040] at hl2
  have hl3 := outsideAggregateLocalPart3_0040
  simp only [outsideAggregateLocalPartValid3_0040, outsideHistoryChunk0040] at hl3
  have hl4 := outsideAggregateLocalPart4_0040
  simp only [outsideAggregateLocalPartValid4_0040, outsideHistoryChunk0040] at hl4
  have hl5 := outsideAggregateLocalPart5_0040
  simp only [outsideAggregateLocalPartValid5_0040, outsideHistoryChunk0040] at hl5
  have hl6 := outsideAggregateLocalPart6_0040
  simp only [outsideAggregateLocalPartValid6_0040, outsideHistoryChunk0040] at hl6
  have hl7 := outsideAggregateLocalPart7_0040
  simp only [outsideAggregateLocalPartValid7_0040, outsideHistoryChunk0040] at hl7
  have hm0 := outsideAggregateMarkerPart0_0040
  simp only [outsideAggregateMarkerPartValid0_0040, outsideHistoryChunk0040] at hm0
  have hm1 := outsideAggregateMarkerPart1_0040
  simp only [outsideAggregateMarkerPartValid1_0040, outsideHistoryChunk0040] at hm1
  have hm2 := outsideAggregateMarkerPart2_0040
  simp only [outsideAggregateMarkerPartValid2_0040, outsideHistoryChunk0040] at hm2
  have hm3 := outsideAggregateMarkerPart3_0040
  simp only [outsideAggregateMarkerPartValid3_0040, outsideHistoryChunk0040] at hm3
  have hm4 := outsideAggregateMarkerPart4_0040
  simp only [outsideAggregateMarkerPartValid4_0040, outsideHistoryChunk0040] at hm4
  have hm5 := outsideAggregateMarkerPart5_0040
  simp only [outsideAggregateMarkerPartValid5_0040, outsideHistoryChunk0040] at hm5
  have hm6 := outsideAggregateMarkerPart6_0040
  simp only [outsideAggregateMarkerPartValid6_0040, outsideHistoryChunk0040] at hm6
  have hm7 := outsideAggregateMarkerPart7_0040
  simp only [outsideAggregateMarkerPartValid7_0040, outsideHistoryChunk0040] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0040
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0040
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0041 :
    outsideAggregateLocalPartValid0_0041 outsideHistoryChunk0041 := by
  unfold outsideAggregateLocalPartValid0_0041 outsideHistoryChunk0041
  decide

def outsideAggregateMarkerPartValid0_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 41984
  | _ => True

theorem outsideAggregateMarkerPart0_0041 :
    outsideAggregateMarkerPartValid0_0041 outsideHistoryChunk0041 := by
  unfold outsideAggregateMarkerPartValid0_0041 outsideHistoryChunk0041
  decide

def outsideAggregateLocalPartValid1_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0041 :
    outsideAggregateLocalPartValid1_0041 outsideHistoryChunk0041 := by
  unfold outsideAggregateLocalPartValid1_0041 outsideHistoryChunk0041
  decide

def outsideAggregateMarkerPartValid1_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 42112
  | _ => True

theorem outsideAggregateMarkerPart1_0041 :
    outsideAggregateMarkerPartValid1_0041 outsideHistoryChunk0041 := by
  unfold outsideAggregateMarkerPartValid1_0041 outsideHistoryChunk0041
  decide

def outsideAggregateLocalPartValid2_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0041 :
    outsideAggregateLocalPartValid2_0041 outsideHistoryChunk0041 := by
  unfold outsideAggregateLocalPartValid2_0041 outsideHistoryChunk0041
  decide

def outsideAggregateMarkerPartValid2_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 42240
  | _ => True

theorem outsideAggregateMarkerPart2_0041 :
    outsideAggregateMarkerPartValid2_0041 outsideHistoryChunk0041 := by
  unfold outsideAggregateMarkerPartValid2_0041 outsideHistoryChunk0041
  decide

def outsideAggregateLocalPartValid3_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0041 :
    outsideAggregateLocalPartValid3_0041 outsideHistoryChunk0041 := by
  unfold outsideAggregateLocalPartValid3_0041 outsideHistoryChunk0041
  decide

def outsideAggregateMarkerPartValid3_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 42368
  | _ => True

theorem outsideAggregateMarkerPart3_0041 :
    outsideAggregateMarkerPartValid3_0041 outsideHistoryChunk0041 := by
  unfold outsideAggregateMarkerPartValid3_0041 outsideHistoryChunk0041
  decide

def outsideAggregateLocalPartValid4_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0041 :
    outsideAggregateLocalPartValid4_0041 outsideHistoryChunk0041 := by
  unfold outsideAggregateLocalPartValid4_0041 outsideHistoryChunk0041
  decide

def outsideAggregateMarkerPartValid4_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 42496
  | _ => True

theorem outsideAggregateMarkerPart4_0041 :
    outsideAggregateMarkerPartValid4_0041 outsideHistoryChunk0041 := by
  unfold outsideAggregateMarkerPartValid4_0041 outsideHistoryChunk0041
  decide

def outsideAggregateLocalPartValid5_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0041 :
    outsideAggregateLocalPartValid5_0041 outsideHistoryChunk0041 := by
  unfold outsideAggregateLocalPartValid5_0041 outsideHistoryChunk0041
  decide

def outsideAggregateMarkerPartValid5_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 42624
  | _ => True

theorem outsideAggregateMarkerPart5_0041 :
    outsideAggregateMarkerPartValid5_0041 outsideHistoryChunk0041 := by
  unfold outsideAggregateMarkerPartValid5_0041 outsideHistoryChunk0041
  decide

def outsideAggregateLocalPartValid6_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0041 :
    outsideAggregateLocalPartValid6_0041 outsideHistoryChunk0041 := by
  unfold outsideAggregateLocalPartValid6_0041 outsideHistoryChunk0041
  decide

def outsideAggregateMarkerPartValid6_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 42752
  | _ => True

theorem outsideAggregateMarkerPart6_0041 :
    outsideAggregateMarkerPartValid6_0041 outsideHistoryChunk0041 := by
  unfold outsideAggregateMarkerPartValid6_0041 outsideHistoryChunk0041
  decide

def outsideAggregateLocalPartValid7_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0041 :
    outsideAggregateLocalPartValid7_0041 outsideHistoryChunk0041 := by
  unfold outsideAggregateLocalPartValid7_0041 outsideHistoryChunk0041
  decide

def outsideAggregateMarkerPartValid7_0041 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 42880
  | _ => True

theorem outsideAggregateMarkerPart7_0041 :
    outsideAggregateMarkerPartValid7_0041 outsideHistoryChunk0041 := by
  unfold outsideAggregateMarkerPartValid7_0041 outsideHistoryChunk0041
  decide

theorem outsideRange_0041 :
    outsideHistoryChunk0041.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 41984 := by
  have hl0 := outsideAggregateLocalPart0_0041
  simp only [outsideAggregateLocalPartValid0_0041, outsideHistoryChunk0041] at hl0
  have hl1 := outsideAggregateLocalPart1_0041
  simp only [outsideAggregateLocalPartValid1_0041, outsideHistoryChunk0041] at hl1
  have hl2 := outsideAggregateLocalPart2_0041
  simp only [outsideAggregateLocalPartValid2_0041, outsideHistoryChunk0041] at hl2
  have hl3 := outsideAggregateLocalPart3_0041
  simp only [outsideAggregateLocalPartValid3_0041, outsideHistoryChunk0041] at hl3
  have hl4 := outsideAggregateLocalPart4_0041
  simp only [outsideAggregateLocalPartValid4_0041, outsideHistoryChunk0041] at hl4
  have hl5 := outsideAggregateLocalPart5_0041
  simp only [outsideAggregateLocalPartValid5_0041, outsideHistoryChunk0041] at hl5
  have hl6 := outsideAggregateLocalPart6_0041
  simp only [outsideAggregateLocalPartValid6_0041, outsideHistoryChunk0041] at hl6
  have hl7 := outsideAggregateLocalPart7_0041
  simp only [outsideAggregateLocalPartValid7_0041, outsideHistoryChunk0041] at hl7
  have hm0 := outsideAggregateMarkerPart0_0041
  simp only [outsideAggregateMarkerPartValid0_0041, outsideHistoryChunk0041] at hm0
  have hm1 := outsideAggregateMarkerPart1_0041
  simp only [outsideAggregateMarkerPartValid1_0041, outsideHistoryChunk0041] at hm1
  have hm2 := outsideAggregateMarkerPart2_0041
  simp only [outsideAggregateMarkerPartValid2_0041, outsideHistoryChunk0041] at hm2
  have hm3 := outsideAggregateMarkerPart3_0041
  simp only [outsideAggregateMarkerPartValid3_0041, outsideHistoryChunk0041] at hm3
  have hm4 := outsideAggregateMarkerPart4_0041
  simp only [outsideAggregateMarkerPartValid4_0041, outsideHistoryChunk0041] at hm4
  have hm5 := outsideAggregateMarkerPart5_0041
  simp only [outsideAggregateMarkerPartValid5_0041, outsideHistoryChunk0041] at hm5
  have hm6 := outsideAggregateMarkerPart6_0041
  simp only [outsideAggregateMarkerPartValid6_0041, outsideHistoryChunk0041] at hm6
  have hm7 := outsideAggregateMarkerPart7_0041
  simp only [outsideAggregateMarkerPartValid7_0041, outsideHistoryChunk0041] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0041
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0041
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0042 :
    outsideAggregateLocalPartValid0_0042 outsideHistoryChunk0042 := by
  unfold outsideAggregateLocalPartValid0_0042 outsideHistoryChunk0042
  decide

def outsideAggregateMarkerPartValid0_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 43008
  | _ => True

theorem outsideAggregateMarkerPart0_0042 :
    outsideAggregateMarkerPartValid0_0042 outsideHistoryChunk0042 := by
  unfold outsideAggregateMarkerPartValid0_0042 outsideHistoryChunk0042
  decide

def outsideAggregateLocalPartValid1_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0042 :
    outsideAggregateLocalPartValid1_0042 outsideHistoryChunk0042 := by
  unfold outsideAggregateLocalPartValid1_0042 outsideHistoryChunk0042
  decide

def outsideAggregateMarkerPartValid1_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 43136
  | _ => True

theorem outsideAggregateMarkerPart1_0042 :
    outsideAggregateMarkerPartValid1_0042 outsideHistoryChunk0042 := by
  unfold outsideAggregateMarkerPartValid1_0042 outsideHistoryChunk0042
  decide

def outsideAggregateLocalPartValid2_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0042 :
    outsideAggregateLocalPartValid2_0042 outsideHistoryChunk0042 := by
  unfold outsideAggregateLocalPartValid2_0042 outsideHistoryChunk0042
  decide

def outsideAggregateMarkerPartValid2_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 43264
  | _ => True

theorem outsideAggregateMarkerPart2_0042 :
    outsideAggregateMarkerPartValid2_0042 outsideHistoryChunk0042 := by
  unfold outsideAggregateMarkerPartValid2_0042 outsideHistoryChunk0042
  decide

def outsideAggregateLocalPartValid3_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0042 :
    outsideAggregateLocalPartValid3_0042 outsideHistoryChunk0042 := by
  unfold outsideAggregateLocalPartValid3_0042 outsideHistoryChunk0042
  decide

def outsideAggregateMarkerPartValid3_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 43392
  | _ => True

theorem outsideAggregateMarkerPart3_0042 :
    outsideAggregateMarkerPartValid3_0042 outsideHistoryChunk0042 := by
  unfold outsideAggregateMarkerPartValid3_0042 outsideHistoryChunk0042
  decide

def outsideAggregateLocalPartValid4_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0042 :
    outsideAggregateLocalPartValid4_0042 outsideHistoryChunk0042 := by
  unfold outsideAggregateLocalPartValid4_0042 outsideHistoryChunk0042
  decide

def outsideAggregateMarkerPartValid4_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 43520
  | _ => True

theorem outsideAggregateMarkerPart4_0042 :
    outsideAggregateMarkerPartValid4_0042 outsideHistoryChunk0042 := by
  unfold outsideAggregateMarkerPartValid4_0042 outsideHistoryChunk0042
  decide

def outsideAggregateLocalPartValid5_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0042 :
    outsideAggregateLocalPartValid5_0042 outsideHistoryChunk0042 := by
  unfold outsideAggregateLocalPartValid5_0042 outsideHistoryChunk0042
  decide

def outsideAggregateMarkerPartValid5_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 43648
  | _ => True

theorem outsideAggregateMarkerPart5_0042 :
    outsideAggregateMarkerPartValid5_0042 outsideHistoryChunk0042 := by
  unfold outsideAggregateMarkerPartValid5_0042 outsideHistoryChunk0042
  decide

def outsideAggregateLocalPartValid6_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0042 :
    outsideAggregateLocalPartValid6_0042 outsideHistoryChunk0042 := by
  unfold outsideAggregateLocalPartValid6_0042 outsideHistoryChunk0042
  decide

def outsideAggregateMarkerPartValid6_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 43776
  | _ => True

theorem outsideAggregateMarkerPart6_0042 :
    outsideAggregateMarkerPartValid6_0042 outsideHistoryChunk0042 := by
  unfold outsideAggregateMarkerPartValid6_0042 outsideHistoryChunk0042
  decide

def outsideAggregateLocalPartValid7_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0042 :
    outsideAggregateLocalPartValid7_0042 outsideHistoryChunk0042 := by
  unfold outsideAggregateLocalPartValid7_0042 outsideHistoryChunk0042
  decide

def outsideAggregateMarkerPartValid7_0042 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 43904
  | _ => True

theorem outsideAggregateMarkerPart7_0042 :
    outsideAggregateMarkerPartValid7_0042 outsideHistoryChunk0042 := by
  unfold outsideAggregateMarkerPartValid7_0042 outsideHistoryChunk0042
  decide

theorem outsideRange_0042 :
    outsideHistoryChunk0042.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 43008 := by
  have hl0 := outsideAggregateLocalPart0_0042
  simp only [outsideAggregateLocalPartValid0_0042, outsideHistoryChunk0042] at hl0
  have hl1 := outsideAggregateLocalPart1_0042
  simp only [outsideAggregateLocalPartValid1_0042, outsideHistoryChunk0042] at hl1
  have hl2 := outsideAggregateLocalPart2_0042
  simp only [outsideAggregateLocalPartValid2_0042, outsideHistoryChunk0042] at hl2
  have hl3 := outsideAggregateLocalPart3_0042
  simp only [outsideAggregateLocalPartValid3_0042, outsideHistoryChunk0042] at hl3
  have hl4 := outsideAggregateLocalPart4_0042
  simp only [outsideAggregateLocalPartValid4_0042, outsideHistoryChunk0042] at hl4
  have hl5 := outsideAggregateLocalPart5_0042
  simp only [outsideAggregateLocalPartValid5_0042, outsideHistoryChunk0042] at hl5
  have hl6 := outsideAggregateLocalPart6_0042
  simp only [outsideAggregateLocalPartValid6_0042, outsideHistoryChunk0042] at hl6
  have hl7 := outsideAggregateLocalPart7_0042
  simp only [outsideAggregateLocalPartValid7_0042, outsideHistoryChunk0042] at hl7
  have hm0 := outsideAggregateMarkerPart0_0042
  simp only [outsideAggregateMarkerPartValid0_0042, outsideHistoryChunk0042] at hm0
  have hm1 := outsideAggregateMarkerPart1_0042
  simp only [outsideAggregateMarkerPartValid1_0042, outsideHistoryChunk0042] at hm1
  have hm2 := outsideAggregateMarkerPart2_0042
  simp only [outsideAggregateMarkerPartValid2_0042, outsideHistoryChunk0042] at hm2
  have hm3 := outsideAggregateMarkerPart3_0042
  simp only [outsideAggregateMarkerPartValid3_0042, outsideHistoryChunk0042] at hm3
  have hm4 := outsideAggregateMarkerPart4_0042
  simp only [outsideAggregateMarkerPartValid4_0042, outsideHistoryChunk0042] at hm4
  have hm5 := outsideAggregateMarkerPart5_0042
  simp only [outsideAggregateMarkerPartValid5_0042, outsideHistoryChunk0042] at hm5
  have hm6 := outsideAggregateMarkerPart6_0042
  simp only [outsideAggregateMarkerPartValid6_0042, outsideHistoryChunk0042] at hm6
  have hm7 := outsideAggregateMarkerPart7_0042
  simp only [outsideAggregateMarkerPartValid7_0042, outsideHistoryChunk0042] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0042
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0042
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0043 :
    outsideAggregateLocalPartValid0_0043 outsideHistoryChunk0043 := by
  unfold outsideAggregateLocalPartValid0_0043 outsideHistoryChunk0043
  decide

def outsideAggregateMarkerPartValid0_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 44032
  | _ => True

theorem outsideAggregateMarkerPart0_0043 :
    outsideAggregateMarkerPartValid0_0043 outsideHistoryChunk0043 := by
  unfold outsideAggregateMarkerPartValid0_0043 outsideHistoryChunk0043
  decide

def outsideAggregateLocalPartValid1_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0043 :
    outsideAggregateLocalPartValid1_0043 outsideHistoryChunk0043 := by
  unfold outsideAggregateLocalPartValid1_0043 outsideHistoryChunk0043
  decide

def outsideAggregateMarkerPartValid1_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 44160
  | _ => True

theorem outsideAggregateMarkerPart1_0043 :
    outsideAggregateMarkerPartValid1_0043 outsideHistoryChunk0043 := by
  unfold outsideAggregateMarkerPartValid1_0043 outsideHistoryChunk0043
  decide

def outsideAggregateLocalPartValid2_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0043 :
    outsideAggregateLocalPartValid2_0043 outsideHistoryChunk0043 := by
  unfold outsideAggregateLocalPartValid2_0043 outsideHistoryChunk0043
  decide

def outsideAggregateMarkerPartValid2_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 44288
  | _ => True

theorem outsideAggregateMarkerPart2_0043 :
    outsideAggregateMarkerPartValid2_0043 outsideHistoryChunk0043 := by
  unfold outsideAggregateMarkerPartValid2_0043 outsideHistoryChunk0043
  decide

def outsideAggregateLocalPartValid3_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0043 :
    outsideAggregateLocalPartValid3_0043 outsideHistoryChunk0043 := by
  unfold outsideAggregateLocalPartValid3_0043 outsideHistoryChunk0043
  decide

def outsideAggregateMarkerPartValid3_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 44416
  | _ => True

theorem outsideAggregateMarkerPart3_0043 :
    outsideAggregateMarkerPartValid3_0043 outsideHistoryChunk0043 := by
  unfold outsideAggregateMarkerPartValid3_0043 outsideHistoryChunk0043
  decide

def outsideAggregateLocalPartValid4_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0043 :
    outsideAggregateLocalPartValid4_0043 outsideHistoryChunk0043 := by
  unfold outsideAggregateLocalPartValid4_0043 outsideHistoryChunk0043
  decide

def outsideAggregateMarkerPartValid4_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 44544
  | _ => True

theorem outsideAggregateMarkerPart4_0043 :
    outsideAggregateMarkerPartValid4_0043 outsideHistoryChunk0043 := by
  unfold outsideAggregateMarkerPartValid4_0043 outsideHistoryChunk0043
  decide

def outsideAggregateLocalPartValid5_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0043 :
    outsideAggregateLocalPartValid5_0043 outsideHistoryChunk0043 := by
  unfold outsideAggregateLocalPartValid5_0043 outsideHistoryChunk0043
  decide

def outsideAggregateMarkerPartValid5_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 44672
  | _ => True

theorem outsideAggregateMarkerPart5_0043 :
    outsideAggregateMarkerPartValid5_0043 outsideHistoryChunk0043 := by
  unfold outsideAggregateMarkerPartValid5_0043 outsideHistoryChunk0043
  decide

def outsideAggregateLocalPartValid6_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0043 :
    outsideAggregateLocalPartValid6_0043 outsideHistoryChunk0043 := by
  unfold outsideAggregateLocalPartValid6_0043 outsideHistoryChunk0043
  decide

def outsideAggregateMarkerPartValid6_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 44800
  | _ => True

theorem outsideAggregateMarkerPart6_0043 :
    outsideAggregateMarkerPartValid6_0043 outsideHistoryChunk0043 := by
  unfold outsideAggregateMarkerPartValid6_0043 outsideHistoryChunk0043
  decide

def outsideAggregateLocalPartValid7_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0043 :
    outsideAggregateLocalPartValid7_0043 outsideHistoryChunk0043 := by
  unfold outsideAggregateLocalPartValid7_0043 outsideHistoryChunk0043
  decide

def outsideAggregateMarkerPartValid7_0043 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 44928
  | _ => True

theorem outsideAggregateMarkerPart7_0043 :
    outsideAggregateMarkerPartValid7_0043 outsideHistoryChunk0043 := by
  unfold outsideAggregateMarkerPartValid7_0043 outsideHistoryChunk0043
  decide

theorem outsideRange_0043 :
    outsideHistoryChunk0043.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 44032 := by
  have hl0 := outsideAggregateLocalPart0_0043
  simp only [outsideAggregateLocalPartValid0_0043, outsideHistoryChunk0043] at hl0
  have hl1 := outsideAggregateLocalPart1_0043
  simp only [outsideAggregateLocalPartValid1_0043, outsideHistoryChunk0043] at hl1
  have hl2 := outsideAggregateLocalPart2_0043
  simp only [outsideAggregateLocalPartValid2_0043, outsideHistoryChunk0043] at hl2
  have hl3 := outsideAggregateLocalPart3_0043
  simp only [outsideAggregateLocalPartValid3_0043, outsideHistoryChunk0043] at hl3
  have hl4 := outsideAggregateLocalPart4_0043
  simp only [outsideAggregateLocalPartValid4_0043, outsideHistoryChunk0043] at hl4
  have hl5 := outsideAggregateLocalPart5_0043
  simp only [outsideAggregateLocalPartValid5_0043, outsideHistoryChunk0043] at hl5
  have hl6 := outsideAggregateLocalPart6_0043
  simp only [outsideAggregateLocalPartValid6_0043, outsideHistoryChunk0043] at hl6
  have hl7 := outsideAggregateLocalPart7_0043
  simp only [outsideAggregateLocalPartValid7_0043, outsideHistoryChunk0043] at hl7
  have hm0 := outsideAggregateMarkerPart0_0043
  simp only [outsideAggregateMarkerPartValid0_0043, outsideHistoryChunk0043] at hm0
  have hm1 := outsideAggregateMarkerPart1_0043
  simp only [outsideAggregateMarkerPartValid1_0043, outsideHistoryChunk0043] at hm1
  have hm2 := outsideAggregateMarkerPart2_0043
  simp only [outsideAggregateMarkerPartValid2_0043, outsideHistoryChunk0043] at hm2
  have hm3 := outsideAggregateMarkerPart3_0043
  simp only [outsideAggregateMarkerPartValid3_0043, outsideHistoryChunk0043] at hm3
  have hm4 := outsideAggregateMarkerPart4_0043
  simp only [outsideAggregateMarkerPartValid4_0043, outsideHistoryChunk0043] at hm4
  have hm5 := outsideAggregateMarkerPart5_0043
  simp only [outsideAggregateMarkerPartValid5_0043, outsideHistoryChunk0043] at hm5
  have hm6 := outsideAggregateMarkerPart6_0043
  simp only [outsideAggregateMarkerPartValid6_0043, outsideHistoryChunk0043] at hm6
  have hm7 := outsideAggregateMarkerPart7_0043
  simp only [outsideAggregateMarkerPartValid7_0043, outsideHistoryChunk0043] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0043
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0043
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
