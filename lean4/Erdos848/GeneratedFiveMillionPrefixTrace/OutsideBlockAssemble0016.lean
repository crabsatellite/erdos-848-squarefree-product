import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0016
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0017
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0018
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0019

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0016, 0017, 0018, 0019 -/

def outsideAggregateLocalPartValid0_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0016 :
    outsideAggregateLocalPartValid0_0016 outsideHistoryChunk0016 := by
  unfold outsideAggregateLocalPartValid0_0016 outsideHistoryChunk0016
  decide

def outsideAggregateMarkerPartValid0_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 16384
  | _ => True

theorem outsideAggregateMarkerPart0_0016 :
    outsideAggregateMarkerPartValid0_0016 outsideHistoryChunk0016 := by
  unfold outsideAggregateMarkerPartValid0_0016 outsideHistoryChunk0016
  decide

def outsideAggregateLocalPartValid1_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0016 :
    outsideAggregateLocalPartValid1_0016 outsideHistoryChunk0016 := by
  unfold outsideAggregateLocalPartValid1_0016 outsideHistoryChunk0016
  decide

def outsideAggregateMarkerPartValid1_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 16512
  | _ => True

theorem outsideAggregateMarkerPart1_0016 :
    outsideAggregateMarkerPartValid1_0016 outsideHistoryChunk0016 := by
  unfold outsideAggregateMarkerPartValid1_0016 outsideHistoryChunk0016
  decide

def outsideAggregateLocalPartValid2_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0016 :
    outsideAggregateLocalPartValid2_0016 outsideHistoryChunk0016 := by
  unfold outsideAggregateLocalPartValid2_0016 outsideHistoryChunk0016
  decide

def outsideAggregateMarkerPartValid2_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 16640
  | _ => True

theorem outsideAggregateMarkerPart2_0016 :
    outsideAggregateMarkerPartValid2_0016 outsideHistoryChunk0016 := by
  unfold outsideAggregateMarkerPartValid2_0016 outsideHistoryChunk0016
  decide

def outsideAggregateLocalPartValid3_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0016 :
    outsideAggregateLocalPartValid3_0016 outsideHistoryChunk0016 := by
  unfold outsideAggregateLocalPartValid3_0016 outsideHistoryChunk0016
  decide

def outsideAggregateMarkerPartValid3_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 16768
  | _ => True

theorem outsideAggregateMarkerPart3_0016 :
    outsideAggregateMarkerPartValid3_0016 outsideHistoryChunk0016 := by
  unfold outsideAggregateMarkerPartValid3_0016 outsideHistoryChunk0016
  decide

def outsideAggregateLocalPartValid4_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0016 :
    outsideAggregateLocalPartValid4_0016 outsideHistoryChunk0016 := by
  unfold outsideAggregateLocalPartValid4_0016 outsideHistoryChunk0016
  decide

def outsideAggregateMarkerPartValid4_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 16896
  | _ => True

theorem outsideAggregateMarkerPart4_0016 :
    outsideAggregateMarkerPartValid4_0016 outsideHistoryChunk0016 := by
  unfold outsideAggregateMarkerPartValid4_0016 outsideHistoryChunk0016
  decide

def outsideAggregateLocalPartValid5_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0016 :
    outsideAggregateLocalPartValid5_0016 outsideHistoryChunk0016 := by
  unfold outsideAggregateLocalPartValid5_0016 outsideHistoryChunk0016
  decide

def outsideAggregateMarkerPartValid5_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 17024
  | _ => True

theorem outsideAggregateMarkerPart5_0016 :
    outsideAggregateMarkerPartValid5_0016 outsideHistoryChunk0016 := by
  unfold outsideAggregateMarkerPartValid5_0016 outsideHistoryChunk0016
  decide

def outsideAggregateLocalPartValid6_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0016 :
    outsideAggregateLocalPartValid6_0016 outsideHistoryChunk0016 := by
  unfold outsideAggregateLocalPartValid6_0016 outsideHistoryChunk0016
  decide

def outsideAggregateMarkerPartValid6_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 17152
  | _ => True

theorem outsideAggregateMarkerPart6_0016 :
    outsideAggregateMarkerPartValid6_0016 outsideHistoryChunk0016 := by
  unfold outsideAggregateMarkerPartValid6_0016 outsideHistoryChunk0016
  decide

def outsideAggregateLocalPartValid7_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0016 :
    outsideAggregateLocalPartValid7_0016 outsideHistoryChunk0016 := by
  unfold outsideAggregateLocalPartValid7_0016 outsideHistoryChunk0016
  decide

def outsideAggregateMarkerPartValid7_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 17280
  | _ => True

theorem outsideAggregateMarkerPart7_0016 :
    outsideAggregateMarkerPartValid7_0016 outsideHistoryChunk0016 := by
  unfold outsideAggregateMarkerPartValid7_0016 outsideHistoryChunk0016
  decide

theorem outsideRange_0016 :
    outsideHistoryChunk0016.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 16384 := by
  have hl0 := outsideAggregateLocalPart0_0016
  simp only [outsideAggregateLocalPartValid0_0016, outsideHistoryChunk0016] at hl0
  have hl1 := outsideAggregateLocalPart1_0016
  simp only [outsideAggregateLocalPartValid1_0016, outsideHistoryChunk0016] at hl1
  have hl2 := outsideAggregateLocalPart2_0016
  simp only [outsideAggregateLocalPartValid2_0016, outsideHistoryChunk0016] at hl2
  have hl3 := outsideAggregateLocalPart3_0016
  simp only [outsideAggregateLocalPartValid3_0016, outsideHistoryChunk0016] at hl3
  have hl4 := outsideAggregateLocalPart4_0016
  simp only [outsideAggregateLocalPartValid4_0016, outsideHistoryChunk0016] at hl4
  have hl5 := outsideAggregateLocalPart5_0016
  simp only [outsideAggregateLocalPartValid5_0016, outsideHistoryChunk0016] at hl5
  have hl6 := outsideAggregateLocalPart6_0016
  simp only [outsideAggregateLocalPartValid6_0016, outsideHistoryChunk0016] at hl6
  have hl7 := outsideAggregateLocalPart7_0016
  simp only [outsideAggregateLocalPartValid7_0016, outsideHistoryChunk0016] at hl7
  have hm0 := outsideAggregateMarkerPart0_0016
  simp only [outsideAggregateMarkerPartValid0_0016, outsideHistoryChunk0016] at hm0
  have hm1 := outsideAggregateMarkerPart1_0016
  simp only [outsideAggregateMarkerPartValid1_0016, outsideHistoryChunk0016] at hm1
  have hm2 := outsideAggregateMarkerPart2_0016
  simp only [outsideAggregateMarkerPartValid2_0016, outsideHistoryChunk0016] at hm2
  have hm3 := outsideAggregateMarkerPart3_0016
  simp only [outsideAggregateMarkerPartValid3_0016, outsideHistoryChunk0016] at hm3
  have hm4 := outsideAggregateMarkerPart4_0016
  simp only [outsideAggregateMarkerPartValid4_0016, outsideHistoryChunk0016] at hm4
  have hm5 := outsideAggregateMarkerPart5_0016
  simp only [outsideAggregateMarkerPartValid5_0016, outsideHistoryChunk0016] at hm5
  have hm6 := outsideAggregateMarkerPart6_0016
  simp only [outsideAggregateMarkerPartValid6_0016, outsideHistoryChunk0016] at hm6
  have hm7 := outsideAggregateMarkerPart7_0016
  simp only [outsideAggregateMarkerPartValid7_0016, outsideHistoryChunk0016] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0016
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0016
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0017 :
    outsideAggregateLocalPartValid0_0017 outsideHistoryChunk0017 := by
  unfold outsideAggregateLocalPartValid0_0017 outsideHistoryChunk0017
  decide

def outsideAggregateMarkerPartValid0_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 17408
  | _ => True

theorem outsideAggregateMarkerPart0_0017 :
    outsideAggregateMarkerPartValid0_0017 outsideHistoryChunk0017 := by
  unfold outsideAggregateMarkerPartValid0_0017 outsideHistoryChunk0017
  decide

def outsideAggregateLocalPartValid1_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0017 :
    outsideAggregateLocalPartValid1_0017 outsideHistoryChunk0017 := by
  unfold outsideAggregateLocalPartValid1_0017 outsideHistoryChunk0017
  decide

def outsideAggregateMarkerPartValid1_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 17536
  | _ => True

theorem outsideAggregateMarkerPart1_0017 :
    outsideAggregateMarkerPartValid1_0017 outsideHistoryChunk0017 := by
  unfold outsideAggregateMarkerPartValid1_0017 outsideHistoryChunk0017
  decide

def outsideAggregateLocalPartValid2_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0017 :
    outsideAggregateLocalPartValid2_0017 outsideHistoryChunk0017 := by
  unfold outsideAggregateLocalPartValid2_0017 outsideHistoryChunk0017
  decide

def outsideAggregateMarkerPartValid2_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 17664
  | _ => True

theorem outsideAggregateMarkerPart2_0017 :
    outsideAggregateMarkerPartValid2_0017 outsideHistoryChunk0017 := by
  unfold outsideAggregateMarkerPartValid2_0017 outsideHistoryChunk0017
  decide

def outsideAggregateLocalPartValid3_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0017 :
    outsideAggregateLocalPartValid3_0017 outsideHistoryChunk0017 := by
  unfold outsideAggregateLocalPartValid3_0017 outsideHistoryChunk0017
  decide

def outsideAggregateMarkerPartValid3_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 17792
  | _ => True

theorem outsideAggregateMarkerPart3_0017 :
    outsideAggregateMarkerPartValid3_0017 outsideHistoryChunk0017 := by
  unfold outsideAggregateMarkerPartValid3_0017 outsideHistoryChunk0017
  decide

def outsideAggregateLocalPartValid4_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0017 :
    outsideAggregateLocalPartValid4_0017 outsideHistoryChunk0017 := by
  unfold outsideAggregateLocalPartValid4_0017 outsideHistoryChunk0017
  decide

def outsideAggregateMarkerPartValid4_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 17920
  | _ => True

theorem outsideAggregateMarkerPart4_0017 :
    outsideAggregateMarkerPartValid4_0017 outsideHistoryChunk0017 := by
  unfold outsideAggregateMarkerPartValid4_0017 outsideHistoryChunk0017
  decide

def outsideAggregateLocalPartValid5_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0017 :
    outsideAggregateLocalPartValid5_0017 outsideHistoryChunk0017 := by
  unfold outsideAggregateLocalPartValid5_0017 outsideHistoryChunk0017
  decide

def outsideAggregateMarkerPartValid5_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 18048
  | _ => True

theorem outsideAggregateMarkerPart5_0017 :
    outsideAggregateMarkerPartValid5_0017 outsideHistoryChunk0017 := by
  unfold outsideAggregateMarkerPartValid5_0017 outsideHistoryChunk0017
  decide

def outsideAggregateLocalPartValid6_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0017 :
    outsideAggregateLocalPartValid6_0017 outsideHistoryChunk0017 := by
  unfold outsideAggregateLocalPartValid6_0017 outsideHistoryChunk0017
  decide

def outsideAggregateMarkerPartValid6_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 18176
  | _ => True

theorem outsideAggregateMarkerPart6_0017 :
    outsideAggregateMarkerPartValid6_0017 outsideHistoryChunk0017 := by
  unfold outsideAggregateMarkerPartValid6_0017 outsideHistoryChunk0017
  decide

def outsideAggregateLocalPartValid7_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0017 :
    outsideAggregateLocalPartValid7_0017 outsideHistoryChunk0017 := by
  unfold outsideAggregateLocalPartValid7_0017 outsideHistoryChunk0017
  decide

def outsideAggregateMarkerPartValid7_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 18304
  | _ => True

theorem outsideAggregateMarkerPart7_0017 :
    outsideAggregateMarkerPartValid7_0017 outsideHistoryChunk0017 := by
  unfold outsideAggregateMarkerPartValid7_0017 outsideHistoryChunk0017
  decide

theorem outsideRange_0017 :
    outsideHistoryChunk0017.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 17408 := by
  have hl0 := outsideAggregateLocalPart0_0017
  simp only [outsideAggregateLocalPartValid0_0017, outsideHistoryChunk0017] at hl0
  have hl1 := outsideAggregateLocalPart1_0017
  simp only [outsideAggregateLocalPartValid1_0017, outsideHistoryChunk0017] at hl1
  have hl2 := outsideAggregateLocalPart2_0017
  simp only [outsideAggregateLocalPartValid2_0017, outsideHistoryChunk0017] at hl2
  have hl3 := outsideAggregateLocalPart3_0017
  simp only [outsideAggregateLocalPartValid3_0017, outsideHistoryChunk0017] at hl3
  have hl4 := outsideAggregateLocalPart4_0017
  simp only [outsideAggregateLocalPartValid4_0017, outsideHistoryChunk0017] at hl4
  have hl5 := outsideAggregateLocalPart5_0017
  simp only [outsideAggregateLocalPartValid5_0017, outsideHistoryChunk0017] at hl5
  have hl6 := outsideAggregateLocalPart6_0017
  simp only [outsideAggregateLocalPartValid6_0017, outsideHistoryChunk0017] at hl6
  have hl7 := outsideAggregateLocalPart7_0017
  simp only [outsideAggregateLocalPartValid7_0017, outsideHistoryChunk0017] at hl7
  have hm0 := outsideAggregateMarkerPart0_0017
  simp only [outsideAggregateMarkerPartValid0_0017, outsideHistoryChunk0017] at hm0
  have hm1 := outsideAggregateMarkerPart1_0017
  simp only [outsideAggregateMarkerPartValid1_0017, outsideHistoryChunk0017] at hm1
  have hm2 := outsideAggregateMarkerPart2_0017
  simp only [outsideAggregateMarkerPartValid2_0017, outsideHistoryChunk0017] at hm2
  have hm3 := outsideAggregateMarkerPart3_0017
  simp only [outsideAggregateMarkerPartValid3_0017, outsideHistoryChunk0017] at hm3
  have hm4 := outsideAggregateMarkerPart4_0017
  simp only [outsideAggregateMarkerPartValid4_0017, outsideHistoryChunk0017] at hm4
  have hm5 := outsideAggregateMarkerPart5_0017
  simp only [outsideAggregateMarkerPartValid5_0017, outsideHistoryChunk0017] at hm5
  have hm6 := outsideAggregateMarkerPart6_0017
  simp only [outsideAggregateMarkerPartValid6_0017, outsideHistoryChunk0017] at hm6
  have hm7 := outsideAggregateMarkerPart7_0017
  simp only [outsideAggregateMarkerPartValid7_0017, outsideHistoryChunk0017] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0017
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0017
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0018 :
    outsideAggregateLocalPartValid0_0018 outsideHistoryChunk0018 := by
  unfold outsideAggregateLocalPartValid0_0018 outsideHistoryChunk0018
  decide

def outsideAggregateMarkerPartValid0_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 18432
  | _ => True

theorem outsideAggregateMarkerPart0_0018 :
    outsideAggregateMarkerPartValid0_0018 outsideHistoryChunk0018 := by
  unfold outsideAggregateMarkerPartValid0_0018 outsideHistoryChunk0018
  decide

def outsideAggregateLocalPartValid1_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0018 :
    outsideAggregateLocalPartValid1_0018 outsideHistoryChunk0018 := by
  unfold outsideAggregateLocalPartValid1_0018 outsideHistoryChunk0018
  decide

def outsideAggregateMarkerPartValid1_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 18560
  | _ => True

theorem outsideAggregateMarkerPart1_0018 :
    outsideAggregateMarkerPartValid1_0018 outsideHistoryChunk0018 := by
  unfold outsideAggregateMarkerPartValid1_0018 outsideHistoryChunk0018
  decide

def outsideAggregateLocalPartValid2_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0018 :
    outsideAggregateLocalPartValid2_0018 outsideHistoryChunk0018 := by
  unfold outsideAggregateLocalPartValid2_0018 outsideHistoryChunk0018
  decide

def outsideAggregateMarkerPartValid2_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 18688
  | _ => True

theorem outsideAggregateMarkerPart2_0018 :
    outsideAggregateMarkerPartValid2_0018 outsideHistoryChunk0018 := by
  unfold outsideAggregateMarkerPartValid2_0018 outsideHistoryChunk0018
  decide

def outsideAggregateLocalPartValid3_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0018 :
    outsideAggregateLocalPartValid3_0018 outsideHistoryChunk0018 := by
  unfold outsideAggregateLocalPartValid3_0018 outsideHistoryChunk0018
  decide

def outsideAggregateMarkerPartValid3_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 18816
  | _ => True

theorem outsideAggregateMarkerPart3_0018 :
    outsideAggregateMarkerPartValid3_0018 outsideHistoryChunk0018 := by
  unfold outsideAggregateMarkerPartValid3_0018 outsideHistoryChunk0018
  decide

def outsideAggregateLocalPartValid4_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0018 :
    outsideAggregateLocalPartValid4_0018 outsideHistoryChunk0018 := by
  unfold outsideAggregateLocalPartValid4_0018 outsideHistoryChunk0018
  decide

def outsideAggregateMarkerPartValid4_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 18944
  | _ => True

theorem outsideAggregateMarkerPart4_0018 :
    outsideAggregateMarkerPartValid4_0018 outsideHistoryChunk0018 := by
  unfold outsideAggregateMarkerPartValid4_0018 outsideHistoryChunk0018
  decide

def outsideAggregateLocalPartValid5_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0018 :
    outsideAggregateLocalPartValid5_0018 outsideHistoryChunk0018 := by
  unfold outsideAggregateLocalPartValid5_0018 outsideHistoryChunk0018
  decide

def outsideAggregateMarkerPartValid5_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 19072
  | _ => True

theorem outsideAggregateMarkerPart5_0018 :
    outsideAggregateMarkerPartValid5_0018 outsideHistoryChunk0018 := by
  unfold outsideAggregateMarkerPartValid5_0018 outsideHistoryChunk0018
  decide

def outsideAggregateLocalPartValid6_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0018 :
    outsideAggregateLocalPartValid6_0018 outsideHistoryChunk0018 := by
  unfold outsideAggregateLocalPartValid6_0018 outsideHistoryChunk0018
  decide

def outsideAggregateMarkerPartValid6_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 19200
  | _ => True

theorem outsideAggregateMarkerPart6_0018 :
    outsideAggregateMarkerPartValid6_0018 outsideHistoryChunk0018 := by
  unfold outsideAggregateMarkerPartValid6_0018 outsideHistoryChunk0018
  decide

def outsideAggregateLocalPartValid7_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0018 :
    outsideAggregateLocalPartValid7_0018 outsideHistoryChunk0018 := by
  unfold outsideAggregateLocalPartValid7_0018 outsideHistoryChunk0018
  decide

def outsideAggregateMarkerPartValid7_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 19328
  | _ => True

theorem outsideAggregateMarkerPart7_0018 :
    outsideAggregateMarkerPartValid7_0018 outsideHistoryChunk0018 := by
  unfold outsideAggregateMarkerPartValid7_0018 outsideHistoryChunk0018
  decide

theorem outsideRange_0018 :
    outsideHistoryChunk0018.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 18432 := by
  have hl0 := outsideAggregateLocalPart0_0018
  simp only [outsideAggregateLocalPartValid0_0018, outsideHistoryChunk0018] at hl0
  have hl1 := outsideAggregateLocalPart1_0018
  simp only [outsideAggregateLocalPartValid1_0018, outsideHistoryChunk0018] at hl1
  have hl2 := outsideAggregateLocalPart2_0018
  simp only [outsideAggregateLocalPartValid2_0018, outsideHistoryChunk0018] at hl2
  have hl3 := outsideAggregateLocalPart3_0018
  simp only [outsideAggregateLocalPartValid3_0018, outsideHistoryChunk0018] at hl3
  have hl4 := outsideAggregateLocalPart4_0018
  simp only [outsideAggregateLocalPartValid4_0018, outsideHistoryChunk0018] at hl4
  have hl5 := outsideAggregateLocalPart5_0018
  simp only [outsideAggregateLocalPartValid5_0018, outsideHistoryChunk0018] at hl5
  have hl6 := outsideAggregateLocalPart6_0018
  simp only [outsideAggregateLocalPartValid6_0018, outsideHistoryChunk0018] at hl6
  have hl7 := outsideAggregateLocalPart7_0018
  simp only [outsideAggregateLocalPartValid7_0018, outsideHistoryChunk0018] at hl7
  have hm0 := outsideAggregateMarkerPart0_0018
  simp only [outsideAggregateMarkerPartValid0_0018, outsideHistoryChunk0018] at hm0
  have hm1 := outsideAggregateMarkerPart1_0018
  simp only [outsideAggregateMarkerPartValid1_0018, outsideHistoryChunk0018] at hm1
  have hm2 := outsideAggregateMarkerPart2_0018
  simp only [outsideAggregateMarkerPartValid2_0018, outsideHistoryChunk0018] at hm2
  have hm3 := outsideAggregateMarkerPart3_0018
  simp only [outsideAggregateMarkerPartValid3_0018, outsideHistoryChunk0018] at hm3
  have hm4 := outsideAggregateMarkerPart4_0018
  simp only [outsideAggregateMarkerPartValid4_0018, outsideHistoryChunk0018] at hm4
  have hm5 := outsideAggregateMarkerPart5_0018
  simp only [outsideAggregateMarkerPartValid5_0018, outsideHistoryChunk0018] at hm5
  have hm6 := outsideAggregateMarkerPart6_0018
  simp only [outsideAggregateMarkerPartValid6_0018, outsideHistoryChunk0018] at hm6
  have hm7 := outsideAggregateMarkerPart7_0018
  simp only [outsideAggregateMarkerPartValid7_0018, outsideHistoryChunk0018] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0018
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0018
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

def outsideAggregateLocalPartValid0_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart0_0019 :
    outsideAggregateLocalPartValid0_0019 outsideHistoryChunk0019 := by
  unfold outsideAggregateLocalPartValid0_0019 outsideHistoryChunk0019
  decide

def outsideAggregateMarkerPartValid0_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 19456
  | _ => True

theorem outsideAggregateMarkerPart0_0019 :
    outsideAggregateMarkerPartValid0_0019 outsideHistoryChunk0019 := by
  unfold outsideAggregateMarkerPartValid0_0019 outsideHistoryChunk0019
  decide

def outsideAggregateLocalPartValid1_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart1_0019 :
    outsideAggregateLocalPartValid1_0019 outsideHistoryChunk0019 := by
  unfold outsideAggregateLocalPartValid1_0019 outsideHistoryChunk0019
  decide

def outsideAggregateMarkerPartValid1_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 19584
  | _ => True

theorem outsideAggregateMarkerPart1_0019 :
    outsideAggregateMarkerPartValid1_0019 outsideHistoryChunk0019 := by
  unfold outsideAggregateMarkerPartValid1_0019 outsideHistoryChunk0019
  decide

def outsideAggregateLocalPartValid2_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart2_0019 :
    outsideAggregateLocalPartValid2_0019 outsideHistoryChunk0019 := by
  unfold outsideAggregateLocalPartValid2_0019 outsideHistoryChunk0019
  decide

def outsideAggregateMarkerPartValid2_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 19712
  | _ => True

theorem outsideAggregateMarkerPart2_0019 :
    outsideAggregateMarkerPartValid2_0019 outsideHistoryChunk0019 := by
  unfold outsideAggregateMarkerPartValid2_0019 outsideHistoryChunk0019
  decide

def outsideAggregateLocalPartValid3_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart3_0019 :
    outsideAggregateLocalPartValid3_0019 outsideHistoryChunk0019 := by
  unfold outsideAggregateLocalPartValid3_0019 outsideHistoryChunk0019
  decide

def outsideAggregateMarkerPartValid3_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 19840
  | _ => True

theorem outsideAggregateMarkerPart3_0019 :
    outsideAggregateMarkerPartValid3_0019 outsideHistoryChunk0019 := by
  unfold outsideAggregateMarkerPartValid3_0019 outsideHistoryChunk0019
  decide

def outsideAggregateLocalPartValid4_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart4_0019 :
    outsideAggregateLocalPartValid4_0019 outsideHistoryChunk0019 := by
  unfold outsideAggregateLocalPartValid4_0019 outsideHistoryChunk0019
  decide

def outsideAggregateMarkerPartValid4_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 19968
  | _ => True

theorem outsideAggregateMarkerPart4_0019 :
    outsideAggregateMarkerPartValid4_0019 outsideHistoryChunk0019 := by
  unfold outsideAggregateMarkerPartValid4_0019 outsideHistoryChunk0019
  decide

def outsideAggregateLocalPartValid5_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart5_0019 :
    outsideAggregateLocalPartValid5_0019 outsideHistoryChunk0019 := by
  unfold outsideAggregateLocalPartValid5_0019 outsideHistoryChunk0019
  decide

def outsideAggregateMarkerPartValid5_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 20096
  | _ => True

theorem outsideAggregateMarkerPart5_0019 :
    outsideAggregateMarkerPartValid5_0019 outsideHistoryChunk0019 := by
  unfold outsideAggregateMarkerPartValid5_0019 outsideHistoryChunk0019
  decide

def outsideAggregateLocalPartValid6_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart6_0019 :
    outsideAggregateLocalPartValid6_0019 outsideHistoryChunk0019 := by
  unfold outsideAggregateLocalPartValid6_0019 outsideHistoryChunk0019
  decide

def outsideAggregateMarkerPartValid6_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 20224
  | _ => True

theorem outsideAggregateMarkerPart6_0019 :
    outsideAggregateMarkerPartValid6_0019 outsideHistoryChunk0019 := by
  unfold outsideAggregateMarkerPartValid6_0019 outsideHistoryChunk0019
  decide

def outsideAggregateLocalPartValid7_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideAggregateLocalPart7_0019 :
    outsideAggregateLocalPartValid7_0019 outsideHistoryChunk0019 := by
  unfold outsideAggregateLocalPartValid7_0019 outsideHistoryChunk0019
  decide

def outsideAggregateMarkerPartValid7_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 20352
  | _ => True

theorem outsideAggregateMarkerPart7_0019 :
    outsideAggregateMarkerPartValid7_0019 outsideHistoryChunk0019 := by
  unfold outsideAggregateMarkerPartValid7_0019 outsideHistoryChunk0019
  decide

theorem outsideRange_0019 :
    outsideHistoryChunk0019.IndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker anchorHistories 5000000 19456 := by
  have hl0 := outsideAggregateLocalPart0_0019
  simp only [outsideAggregateLocalPartValid0_0019, outsideHistoryChunk0019] at hl0
  have hl1 := outsideAggregateLocalPart1_0019
  simp only [outsideAggregateLocalPartValid1_0019, outsideHistoryChunk0019] at hl1
  have hl2 := outsideAggregateLocalPart2_0019
  simp only [outsideAggregateLocalPartValid2_0019, outsideHistoryChunk0019] at hl2
  have hl3 := outsideAggregateLocalPart3_0019
  simp only [outsideAggregateLocalPartValid3_0019, outsideHistoryChunk0019] at hl3
  have hl4 := outsideAggregateLocalPart4_0019
  simp only [outsideAggregateLocalPartValid4_0019, outsideHistoryChunk0019] at hl4
  have hl5 := outsideAggregateLocalPart5_0019
  simp only [outsideAggregateLocalPartValid5_0019, outsideHistoryChunk0019] at hl5
  have hl6 := outsideAggregateLocalPart6_0019
  simp only [outsideAggregateLocalPartValid6_0019, outsideHistoryChunk0019] at hl6
  have hl7 := outsideAggregateLocalPart7_0019
  simp only [outsideAggregateLocalPartValid7_0019, outsideHistoryChunk0019] at hl7
  have hm0 := outsideAggregateMarkerPart0_0019
  simp only [outsideAggregateMarkerPartValid0_0019, outsideHistoryChunk0019] at hm0
  have hm1 := outsideAggregateMarkerPart1_0019
  simp only [outsideAggregateMarkerPartValid1_0019, outsideHistoryChunk0019] at hm1
  have hm2 := outsideAggregateMarkerPart2_0019
  simp only [outsideAggregateMarkerPartValid2_0019, outsideHistoryChunk0019] at hm2
  have hm3 := outsideAggregateMarkerPart3_0019
  simp only [outsideAggregateMarkerPartValid3_0019, outsideHistoryChunk0019] at hm3
  have hm4 := outsideAggregateMarkerPart4_0019
  simp only [outsideAggregateMarkerPartValid4_0019, outsideHistoryChunk0019] at hm4
  have hm5 := outsideAggregateMarkerPart5_0019
  simp only [outsideAggregateMarkerPartValid5_0019, outsideHistoryChunk0019] at hm5
  have hm6 := outsideAggregateMarkerPart6_0019
  simp only [outsideAggregateMarkerPartValid6_0019, outsideHistoryChunk0019] at hm6
  have hm7 := outsideAggregateMarkerPart7_0019
  simp only [outsideAggregateMarkerPartValid7_0019, outsideHistoryChunk0019] at hm7
  apply Erdos848.CandidateHistoryTree.indexedValid_of_local_and_marker
  · unfold outsideHistoryChunk0019
    exact ⟨rfl, ⟨rfl, ⟨rfl, hl0, hl1⟩, ⟨rfl, hl2, hl3⟩⟩, ⟨rfl, ⟨rfl, hl4, hl5⟩, ⟨rfl, hl6, hl7⟩⟩⟩
  · unfold outsideHistoryChunk0019
    exact ⟨rfl, ⟨rfl, ⟨rfl, hm0, hm1⟩, ⟨rfl, hm2, hm3⟩⟩, ⟨rfl, ⟨rfl, hm4, hm5⟩, ⟨rfl, hm6, hm7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
