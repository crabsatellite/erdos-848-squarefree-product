import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0012
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0013
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0014
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0015

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0012, 0013, 0014, 0015 -/

def oppositeAggregatePartValid0_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 12288
  | _ => True

theorem oppositeAggregatePart0_0012 :
    oppositeAggregatePartValid0_0012 oppositeHistoryChunk0012 := by
  unfold oppositeAggregatePartValid0_0012 oppositeHistoryChunk0012
  decide

def oppositeAggregatePartValid1_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 12416
  | _ => True

theorem oppositeAggregatePart1_0012 :
    oppositeAggregatePartValid1_0012 oppositeHistoryChunk0012 := by
  unfold oppositeAggregatePartValid1_0012 oppositeHistoryChunk0012
  decide

def oppositeAggregatePartValid2_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 12544
  | _ => True

theorem oppositeAggregatePart2_0012 :
    oppositeAggregatePartValid2_0012 oppositeHistoryChunk0012 := by
  unfold oppositeAggregatePartValid2_0012 oppositeHistoryChunk0012
  decide

def oppositeAggregatePartValid3_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 12672
  | _ => True

theorem oppositeAggregatePart3_0012 :
    oppositeAggregatePartValid3_0012 oppositeHistoryChunk0012 := by
  unfold oppositeAggregatePartValid3_0012 oppositeHistoryChunk0012
  decide

def oppositeAggregatePartValid4_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 12800
  | _ => True

theorem oppositeAggregatePart4_0012 :
    oppositeAggregatePartValid4_0012 oppositeHistoryChunk0012 := by
  unfold oppositeAggregatePartValid4_0012 oppositeHistoryChunk0012
  decide

def oppositeAggregatePartValid5_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 12928
  | _ => True

theorem oppositeAggregatePart5_0012 :
    oppositeAggregatePartValid5_0012 oppositeHistoryChunk0012 := by
  unfold oppositeAggregatePartValid5_0012 oppositeHistoryChunk0012
  decide

def oppositeAggregatePartValid6_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 13056
  | _ => True

theorem oppositeAggregatePart6_0012 :
    oppositeAggregatePartValid6_0012 oppositeHistoryChunk0012 := by
  unfold oppositeAggregatePartValid6_0012 oppositeHistoryChunk0012
  decide

def oppositeAggregatePartValid7_0012 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 13184
  | _ => True

theorem oppositeAggregatePart7_0012 :
    oppositeAggregatePartValid7_0012 oppositeHistoryChunk0012 := by
  unfold oppositeAggregatePartValid7_0012 oppositeHistoryChunk0012
  decide

theorem oppositeRange_0012 :
    oppositeHistoryChunk0012.ResidueIndexedValid anchorHistories 5000000 18 25 12288 := by
  have h0 := oppositeAggregatePart0_0012
  simp only [oppositeAggregatePartValid0_0012, oppositeHistoryChunk0012] at h0
  have h1 := oppositeAggregatePart1_0012
  simp only [oppositeAggregatePartValid1_0012, oppositeHistoryChunk0012] at h1
  have h2 := oppositeAggregatePart2_0012
  simp only [oppositeAggregatePartValid2_0012, oppositeHistoryChunk0012] at h2
  have h3 := oppositeAggregatePart3_0012
  simp only [oppositeAggregatePartValid3_0012, oppositeHistoryChunk0012] at h3
  have h4 := oppositeAggregatePart4_0012
  simp only [oppositeAggregatePartValid4_0012, oppositeHistoryChunk0012] at h4
  have h5 := oppositeAggregatePart5_0012
  simp only [oppositeAggregatePartValid5_0012, oppositeHistoryChunk0012] at h5
  have h6 := oppositeAggregatePart6_0012
  simp only [oppositeAggregatePartValid6_0012, oppositeHistoryChunk0012] at h6
  have h7 := oppositeAggregatePart7_0012
  simp only [oppositeAggregatePartValid7_0012, oppositeHistoryChunk0012] at h7
  unfold oppositeHistoryChunk0012
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 13312
  | _ => True

theorem oppositeAggregatePart0_0013 :
    oppositeAggregatePartValid0_0013 oppositeHistoryChunk0013 := by
  unfold oppositeAggregatePartValid0_0013 oppositeHistoryChunk0013
  decide

def oppositeAggregatePartValid1_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 13440
  | _ => True

theorem oppositeAggregatePart1_0013 :
    oppositeAggregatePartValid1_0013 oppositeHistoryChunk0013 := by
  unfold oppositeAggregatePartValid1_0013 oppositeHistoryChunk0013
  decide

def oppositeAggregatePartValid2_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 13568
  | _ => True

theorem oppositeAggregatePart2_0013 :
    oppositeAggregatePartValid2_0013 oppositeHistoryChunk0013 := by
  unfold oppositeAggregatePartValid2_0013 oppositeHistoryChunk0013
  decide

def oppositeAggregatePartValid3_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 13696
  | _ => True

theorem oppositeAggregatePart3_0013 :
    oppositeAggregatePartValid3_0013 oppositeHistoryChunk0013 := by
  unfold oppositeAggregatePartValid3_0013 oppositeHistoryChunk0013
  decide

def oppositeAggregatePartValid4_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 13824
  | _ => True

theorem oppositeAggregatePart4_0013 :
    oppositeAggregatePartValid4_0013 oppositeHistoryChunk0013 := by
  unfold oppositeAggregatePartValid4_0013 oppositeHistoryChunk0013
  decide

def oppositeAggregatePartValid5_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 13952
  | _ => True

theorem oppositeAggregatePart5_0013 :
    oppositeAggregatePartValid5_0013 oppositeHistoryChunk0013 := by
  unfold oppositeAggregatePartValid5_0013 oppositeHistoryChunk0013
  decide

def oppositeAggregatePartValid6_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 14080
  | _ => True

theorem oppositeAggregatePart6_0013 :
    oppositeAggregatePartValid6_0013 oppositeHistoryChunk0013 := by
  unfold oppositeAggregatePartValid6_0013 oppositeHistoryChunk0013
  decide

def oppositeAggregatePartValid7_0013 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 14208
  | _ => True

theorem oppositeAggregatePart7_0013 :
    oppositeAggregatePartValid7_0013 oppositeHistoryChunk0013 := by
  unfold oppositeAggregatePartValid7_0013 oppositeHistoryChunk0013
  decide

theorem oppositeRange_0013 :
    oppositeHistoryChunk0013.ResidueIndexedValid anchorHistories 5000000 18 25 13312 := by
  have h0 := oppositeAggregatePart0_0013
  simp only [oppositeAggregatePartValid0_0013, oppositeHistoryChunk0013] at h0
  have h1 := oppositeAggregatePart1_0013
  simp only [oppositeAggregatePartValid1_0013, oppositeHistoryChunk0013] at h1
  have h2 := oppositeAggregatePart2_0013
  simp only [oppositeAggregatePartValid2_0013, oppositeHistoryChunk0013] at h2
  have h3 := oppositeAggregatePart3_0013
  simp only [oppositeAggregatePartValid3_0013, oppositeHistoryChunk0013] at h3
  have h4 := oppositeAggregatePart4_0013
  simp only [oppositeAggregatePartValid4_0013, oppositeHistoryChunk0013] at h4
  have h5 := oppositeAggregatePart5_0013
  simp only [oppositeAggregatePartValid5_0013, oppositeHistoryChunk0013] at h5
  have h6 := oppositeAggregatePart6_0013
  simp only [oppositeAggregatePartValid6_0013, oppositeHistoryChunk0013] at h6
  have h7 := oppositeAggregatePart7_0013
  simp only [oppositeAggregatePartValid7_0013, oppositeHistoryChunk0013] at h7
  unfold oppositeHistoryChunk0013
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 14336
  | _ => True

theorem oppositeAggregatePart0_0014 :
    oppositeAggregatePartValid0_0014 oppositeHistoryChunk0014 := by
  unfold oppositeAggregatePartValid0_0014 oppositeHistoryChunk0014
  decide

def oppositeAggregatePartValid1_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 14464
  | _ => True

theorem oppositeAggregatePart1_0014 :
    oppositeAggregatePartValid1_0014 oppositeHistoryChunk0014 := by
  unfold oppositeAggregatePartValid1_0014 oppositeHistoryChunk0014
  decide

def oppositeAggregatePartValid2_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 14592
  | _ => True

theorem oppositeAggregatePart2_0014 :
    oppositeAggregatePartValid2_0014 oppositeHistoryChunk0014 := by
  unfold oppositeAggregatePartValid2_0014 oppositeHistoryChunk0014
  decide

def oppositeAggregatePartValid3_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 14720
  | _ => True

theorem oppositeAggregatePart3_0014 :
    oppositeAggregatePartValid3_0014 oppositeHistoryChunk0014 := by
  unfold oppositeAggregatePartValid3_0014 oppositeHistoryChunk0014
  decide

def oppositeAggregatePartValid4_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 14848
  | _ => True

theorem oppositeAggregatePart4_0014 :
    oppositeAggregatePartValid4_0014 oppositeHistoryChunk0014 := by
  unfold oppositeAggregatePartValid4_0014 oppositeHistoryChunk0014
  decide

def oppositeAggregatePartValid5_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 14976
  | _ => True

theorem oppositeAggregatePart5_0014 :
    oppositeAggregatePartValid5_0014 oppositeHistoryChunk0014 := by
  unfold oppositeAggregatePartValid5_0014 oppositeHistoryChunk0014
  decide

def oppositeAggregatePartValid6_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 15104
  | _ => True

theorem oppositeAggregatePart6_0014 :
    oppositeAggregatePartValid6_0014 oppositeHistoryChunk0014 := by
  unfold oppositeAggregatePartValid6_0014 oppositeHistoryChunk0014
  decide

def oppositeAggregatePartValid7_0014 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 15232
  | _ => True

theorem oppositeAggregatePart7_0014 :
    oppositeAggregatePartValid7_0014 oppositeHistoryChunk0014 := by
  unfold oppositeAggregatePartValid7_0014 oppositeHistoryChunk0014
  decide

theorem oppositeRange_0014 :
    oppositeHistoryChunk0014.ResidueIndexedValid anchorHistories 5000000 18 25 14336 := by
  have h0 := oppositeAggregatePart0_0014
  simp only [oppositeAggregatePartValid0_0014, oppositeHistoryChunk0014] at h0
  have h1 := oppositeAggregatePart1_0014
  simp only [oppositeAggregatePartValid1_0014, oppositeHistoryChunk0014] at h1
  have h2 := oppositeAggregatePart2_0014
  simp only [oppositeAggregatePartValid2_0014, oppositeHistoryChunk0014] at h2
  have h3 := oppositeAggregatePart3_0014
  simp only [oppositeAggregatePartValid3_0014, oppositeHistoryChunk0014] at h3
  have h4 := oppositeAggregatePart4_0014
  simp only [oppositeAggregatePartValid4_0014, oppositeHistoryChunk0014] at h4
  have h5 := oppositeAggregatePart5_0014
  simp only [oppositeAggregatePartValid5_0014, oppositeHistoryChunk0014] at h5
  have h6 := oppositeAggregatePart6_0014
  simp only [oppositeAggregatePartValid6_0014, oppositeHistoryChunk0014] at h6
  have h7 := oppositeAggregatePart7_0014
  simp only [oppositeAggregatePartValid7_0014, oppositeHistoryChunk0014] at h7
  unfold oppositeHistoryChunk0014
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 15360
  | _ => True

theorem oppositeAggregatePart0_0015 :
    oppositeAggregatePartValid0_0015 oppositeHistoryChunk0015 := by
  unfold oppositeAggregatePartValid0_0015 oppositeHistoryChunk0015
  decide

def oppositeAggregatePartValid1_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 15488
  | _ => True

theorem oppositeAggregatePart1_0015 :
    oppositeAggregatePartValid1_0015 oppositeHistoryChunk0015 := by
  unfold oppositeAggregatePartValid1_0015 oppositeHistoryChunk0015
  decide

def oppositeAggregatePartValid2_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 15616
  | _ => True

theorem oppositeAggregatePart2_0015 :
    oppositeAggregatePartValid2_0015 oppositeHistoryChunk0015 := by
  unfold oppositeAggregatePartValid2_0015 oppositeHistoryChunk0015
  decide

def oppositeAggregatePartValid3_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 15744
  | _ => True

theorem oppositeAggregatePart3_0015 :
    oppositeAggregatePartValid3_0015 oppositeHistoryChunk0015 := by
  unfold oppositeAggregatePartValid3_0015 oppositeHistoryChunk0015
  decide

def oppositeAggregatePartValid4_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 15872
  | _ => True

theorem oppositeAggregatePart4_0015 :
    oppositeAggregatePartValid4_0015 oppositeHistoryChunk0015 := by
  unfold oppositeAggregatePartValid4_0015 oppositeHistoryChunk0015
  decide

def oppositeAggregatePartValid5_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 16000
  | _ => True

theorem oppositeAggregatePart5_0015 :
    oppositeAggregatePartValid5_0015 oppositeHistoryChunk0015 := by
  unfold oppositeAggregatePartValid5_0015 oppositeHistoryChunk0015
  decide

def oppositeAggregatePartValid6_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 16128
  | _ => True

theorem oppositeAggregatePart6_0015 :
    oppositeAggregatePartValid6_0015 oppositeHistoryChunk0015 := by
  unfold oppositeAggregatePartValid6_0015 oppositeHistoryChunk0015
  decide

def oppositeAggregatePartValid7_0015 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 16256
  | _ => True

theorem oppositeAggregatePart7_0015 :
    oppositeAggregatePartValid7_0015 oppositeHistoryChunk0015 := by
  unfold oppositeAggregatePartValid7_0015 oppositeHistoryChunk0015
  decide

theorem oppositeRange_0015 :
    oppositeHistoryChunk0015.ResidueIndexedValid anchorHistories 5000000 18 25 15360 := by
  have h0 := oppositeAggregatePart0_0015
  simp only [oppositeAggregatePartValid0_0015, oppositeHistoryChunk0015] at h0
  have h1 := oppositeAggregatePart1_0015
  simp only [oppositeAggregatePartValid1_0015, oppositeHistoryChunk0015] at h1
  have h2 := oppositeAggregatePart2_0015
  simp only [oppositeAggregatePartValid2_0015, oppositeHistoryChunk0015] at h2
  have h3 := oppositeAggregatePart3_0015
  simp only [oppositeAggregatePartValid3_0015, oppositeHistoryChunk0015] at h3
  have h4 := oppositeAggregatePart4_0015
  simp only [oppositeAggregatePartValid4_0015, oppositeHistoryChunk0015] at h4
  have h5 := oppositeAggregatePart5_0015
  simp only [oppositeAggregatePartValid5_0015, oppositeHistoryChunk0015] at h5
  have h6 := oppositeAggregatePart6_0015
  simp only [oppositeAggregatePartValid6_0015, oppositeHistoryChunk0015] at h6
  have h7 := oppositeAggregatePart7_0015
  simp only [oppositeAggregatePartValid7_0015, oppositeHistoryChunk0015] at h7
  unfold oppositeHistoryChunk0015
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
