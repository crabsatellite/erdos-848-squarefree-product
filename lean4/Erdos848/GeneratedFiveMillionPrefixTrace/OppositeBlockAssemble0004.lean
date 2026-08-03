import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0004
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0005
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0006
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0007

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0004, 0005, 0006, 0007 -/

def oppositeAggregatePartValid0_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 4096
  | _ => True

theorem oppositeAggregatePart0_0004 :
    oppositeAggregatePartValid0_0004 oppositeHistoryChunk0004 := by
  unfold oppositeAggregatePartValid0_0004 oppositeHistoryChunk0004
  decide

def oppositeAggregatePartValid1_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 4224
  | _ => True

theorem oppositeAggregatePart1_0004 :
    oppositeAggregatePartValid1_0004 oppositeHistoryChunk0004 := by
  unfold oppositeAggregatePartValid1_0004 oppositeHistoryChunk0004
  decide

def oppositeAggregatePartValid2_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 4352
  | _ => True

theorem oppositeAggregatePart2_0004 :
    oppositeAggregatePartValid2_0004 oppositeHistoryChunk0004 := by
  unfold oppositeAggregatePartValid2_0004 oppositeHistoryChunk0004
  decide

def oppositeAggregatePartValid3_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 4480
  | _ => True

theorem oppositeAggregatePart3_0004 :
    oppositeAggregatePartValid3_0004 oppositeHistoryChunk0004 := by
  unfold oppositeAggregatePartValid3_0004 oppositeHistoryChunk0004
  decide

def oppositeAggregatePartValid4_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 4608
  | _ => True

theorem oppositeAggregatePart4_0004 :
    oppositeAggregatePartValid4_0004 oppositeHistoryChunk0004 := by
  unfold oppositeAggregatePartValid4_0004 oppositeHistoryChunk0004
  decide

def oppositeAggregatePartValid5_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 4736
  | _ => True

theorem oppositeAggregatePart5_0004 :
    oppositeAggregatePartValid5_0004 oppositeHistoryChunk0004 := by
  unfold oppositeAggregatePartValid5_0004 oppositeHistoryChunk0004
  decide

def oppositeAggregatePartValid6_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 4864
  | _ => True

theorem oppositeAggregatePart6_0004 :
    oppositeAggregatePartValid6_0004 oppositeHistoryChunk0004 := by
  unfold oppositeAggregatePartValid6_0004 oppositeHistoryChunk0004
  decide

def oppositeAggregatePartValid7_0004 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 4992
  | _ => True

theorem oppositeAggregatePart7_0004 :
    oppositeAggregatePartValid7_0004 oppositeHistoryChunk0004 := by
  unfold oppositeAggregatePartValid7_0004 oppositeHistoryChunk0004
  decide

theorem oppositeRange_0004 :
    oppositeHistoryChunk0004.ResidueIndexedValid anchorHistories 5000000 18 25 4096 := by
  have h0 := oppositeAggregatePart0_0004
  simp only [oppositeAggregatePartValid0_0004, oppositeHistoryChunk0004] at h0
  have h1 := oppositeAggregatePart1_0004
  simp only [oppositeAggregatePartValid1_0004, oppositeHistoryChunk0004] at h1
  have h2 := oppositeAggregatePart2_0004
  simp only [oppositeAggregatePartValid2_0004, oppositeHistoryChunk0004] at h2
  have h3 := oppositeAggregatePart3_0004
  simp only [oppositeAggregatePartValid3_0004, oppositeHistoryChunk0004] at h3
  have h4 := oppositeAggregatePart4_0004
  simp only [oppositeAggregatePartValid4_0004, oppositeHistoryChunk0004] at h4
  have h5 := oppositeAggregatePart5_0004
  simp only [oppositeAggregatePartValid5_0004, oppositeHistoryChunk0004] at h5
  have h6 := oppositeAggregatePart6_0004
  simp only [oppositeAggregatePartValid6_0004, oppositeHistoryChunk0004] at h6
  have h7 := oppositeAggregatePart7_0004
  simp only [oppositeAggregatePartValid7_0004, oppositeHistoryChunk0004] at h7
  unfold oppositeHistoryChunk0004
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 5120
  | _ => True

theorem oppositeAggregatePart0_0005 :
    oppositeAggregatePartValid0_0005 oppositeHistoryChunk0005 := by
  unfold oppositeAggregatePartValid0_0005 oppositeHistoryChunk0005
  decide

def oppositeAggregatePartValid1_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 5248
  | _ => True

theorem oppositeAggregatePart1_0005 :
    oppositeAggregatePartValid1_0005 oppositeHistoryChunk0005 := by
  unfold oppositeAggregatePartValid1_0005 oppositeHistoryChunk0005
  decide

def oppositeAggregatePartValid2_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 5376
  | _ => True

theorem oppositeAggregatePart2_0005 :
    oppositeAggregatePartValid2_0005 oppositeHistoryChunk0005 := by
  unfold oppositeAggregatePartValid2_0005 oppositeHistoryChunk0005
  decide

def oppositeAggregatePartValid3_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 5504
  | _ => True

theorem oppositeAggregatePart3_0005 :
    oppositeAggregatePartValid3_0005 oppositeHistoryChunk0005 := by
  unfold oppositeAggregatePartValid3_0005 oppositeHistoryChunk0005
  decide

def oppositeAggregatePartValid4_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 5632
  | _ => True

theorem oppositeAggregatePart4_0005 :
    oppositeAggregatePartValid4_0005 oppositeHistoryChunk0005 := by
  unfold oppositeAggregatePartValid4_0005 oppositeHistoryChunk0005
  decide

def oppositeAggregatePartValid5_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 5760
  | _ => True

theorem oppositeAggregatePart5_0005 :
    oppositeAggregatePartValid5_0005 oppositeHistoryChunk0005 := by
  unfold oppositeAggregatePartValid5_0005 oppositeHistoryChunk0005
  decide

def oppositeAggregatePartValid6_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 5888
  | _ => True

theorem oppositeAggregatePart6_0005 :
    oppositeAggregatePartValid6_0005 oppositeHistoryChunk0005 := by
  unfold oppositeAggregatePartValid6_0005 oppositeHistoryChunk0005
  decide

def oppositeAggregatePartValid7_0005 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 6016
  | _ => True

theorem oppositeAggregatePart7_0005 :
    oppositeAggregatePartValid7_0005 oppositeHistoryChunk0005 := by
  unfold oppositeAggregatePartValid7_0005 oppositeHistoryChunk0005
  decide

theorem oppositeRange_0005 :
    oppositeHistoryChunk0005.ResidueIndexedValid anchorHistories 5000000 18 25 5120 := by
  have h0 := oppositeAggregatePart0_0005
  simp only [oppositeAggregatePartValid0_0005, oppositeHistoryChunk0005] at h0
  have h1 := oppositeAggregatePart1_0005
  simp only [oppositeAggregatePartValid1_0005, oppositeHistoryChunk0005] at h1
  have h2 := oppositeAggregatePart2_0005
  simp only [oppositeAggregatePartValid2_0005, oppositeHistoryChunk0005] at h2
  have h3 := oppositeAggregatePart3_0005
  simp only [oppositeAggregatePartValid3_0005, oppositeHistoryChunk0005] at h3
  have h4 := oppositeAggregatePart4_0005
  simp only [oppositeAggregatePartValid4_0005, oppositeHistoryChunk0005] at h4
  have h5 := oppositeAggregatePart5_0005
  simp only [oppositeAggregatePartValid5_0005, oppositeHistoryChunk0005] at h5
  have h6 := oppositeAggregatePart6_0005
  simp only [oppositeAggregatePartValid6_0005, oppositeHistoryChunk0005] at h6
  have h7 := oppositeAggregatePart7_0005
  simp only [oppositeAggregatePartValid7_0005, oppositeHistoryChunk0005] at h7
  unfold oppositeHistoryChunk0005
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 6144
  | _ => True

theorem oppositeAggregatePart0_0006 :
    oppositeAggregatePartValid0_0006 oppositeHistoryChunk0006 := by
  unfold oppositeAggregatePartValid0_0006 oppositeHistoryChunk0006
  decide

def oppositeAggregatePartValid1_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 6272
  | _ => True

theorem oppositeAggregatePart1_0006 :
    oppositeAggregatePartValid1_0006 oppositeHistoryChunk0006 := by
  unfold oppositeAggregatePartValid1_0006 oppositeHistoryChunk0006
  decide

def oppositeAggregatePartValid2_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 6400
  | _ => True

theorem oppositeAggregatePart2_0006 :
    oppositeAggregatePartValid2_0006 oppositeHistoryChunk0006 := by
  unfold oppositeAggregatePartValid2_0006 oppositeHistoryChunk0006
  decide

def oppositeAggregatePartValid3_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 6528
  | _ => True

theorem oppositeAggregatePart3_0006 :
    oppositeAggregatePartValid3_0006 oppositeHistoryChunk0006 := by
  unfold oppositeAggregatePartValid3_0006 oppositeHistoryChunk0006
  decide

def oppositeAggregatePartValid4_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 6656
  | _ => True

theorem oppositeAggregatePart4_0006 :
    oppositeAggregatePartValid4_0006 oppositeHistoryChunk0006 := by
  unfold oppositeAggregatePartValid4_0006 oppositeHistoryChunk0006
  decide

def oppositeAggregatePartValid5_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 6784
  | _ => True

theorem oppositeAggregatePart5_0006 :
    oppositeAggregatePartValid5_0006 oppositeHistoryChunk0006 := by
  unfold oppositeAggregatePartValid5_0006 oppositeHistoryChunk0006
  decide

def oppositeAggregatePartValid6_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 6912
  | _ => True

theorem oppositeAggregatePart6_0006 :
    oppositeAggregatePartValid6_0006 oppositeHistoryChunk0006 := by
  unfold oppositeAggregatePartValid6_0006 oppositeHistoryChunk0006
  decide

def oppositeAggregatePartValid7_0006 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 7040
  | _ => True

theorem oppositeAggregatePart7_0006 :
    oppositeAggregatePartValid7_0006 oppositeHistoryChunk0006 := by
  unfold oppositeAggregatePartValid7_0006 oppositeHistoryChunk0006
  decide

theorem oppositeRange_0006 :
    oppositeHistoryChunk0006.ResidueIndexedValid anchorHistories 5000000 18 25 6144 := by
  have h0 := oppositeAggregatePart0_0006
  simp only [oppositeAggregatePartValid0_0006, oppositeHistoryChunk0006] at h0
  have h1 := oppositeAggregatePart1_0006
  simp only [oppositeAggregatePartValid1_0006, oppositeHistoryChunk0006] at h1
  have h2 := oppositeAggregatePart2_0006
  simp only [oppositeAggregatePartValid2_0006, oppositeHistoryChunk0006] at h2
  have h3 := oppositeAggregatePart3_0006
  simp only [oppositeAggregatePartValid3_0006, oppositeHistoryChunk0006] at h3
  have h4 := oppositeAggregatePart4_0006
  simp only [oppositeAggregatePartValid4_0006, oppositeHistoryChunk0006] at h4
  have h5 := oppositeAggregatePart5_0006
  simp only [oppositeAggregatePartValid5_0006, oppositeHistoryChunk0006] at h5
  have h6 := oppositeAggregatePart6_0006
  simp only [oppositeAggregatePartValid6_0006, oppositeHistoryChunk0006] at h6
  have h7 := oppositeAggregatePart7_0006
  simp only [oppositeAggregatePartValid7_0006, oppositeHistoryChunk0006] at h7
  unfold oppositeHistoryChunk0006
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 7168
  | _ => True

theorem oppositeAggregatePart0_0007 :
    oppositeAggregatePartValid0_0007 oppositeHistoryChunk0007 := by
  unfold oppositeAggregatePartValid0_0007 oppositeHistoryChunk0007
  decide

def oppositeAggregatePartValid1_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 7296
  | _ => True

theorem oppositeAggregatePart1_0007 :
    oppositeAggregatePartValid1_0007 oppositeHistoryChunk0007 := by
  unfold oppositeAggregatePartValid1_0007 oppositeHistoryChunk0007
  decide

def oppositeAggregatePartValid2_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 7424
  | _ => True

theorem oppositeAggregatePart2_0007 :
    oppositeAggregatePartValid2_0007 oppositeHistoryChunk0007 := by
  unfold oppositeAggregatePartValid2_0007 oppositeHistoryChunk0007
  decide

def oppositeAggregatePartValid3_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 7552
  | _ => True

theorem oppositeAggregatePart3_0007 :
    oppositeAggregatePartValid3_0007 oppositeHistoryChunk0007 := by
  unfold oppositeAggregatePartValid3_0007 oppositeHistoryChunk0007
  decide

def oppositeAggregatePartValid4_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 7680
  | _ => True

theorem oppositeAggregatePart4_0007 :
    oppositeAggregatePartValid4_0007 oppositeHistoryChunk0007 := by
  unfold oppositeAggregatePartValid4_0007 oppositeHistoryChunk0007
  decide

def oppositeAggregatePartValid5_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 7808
  | _ => True

theorem oppositeAggregatePart5_0007 :
    oppositeAggregatePartValid5_0007 oppositeHistoryChunk0007 := by
  unfold oppositeAggregatePartValid5_0007 oppositeHistoryChunk0007
  decide

def oppositeAggregatePartValid6_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 7936
  | _ => True

theorem oppositeAggregatePart6_0007 :
    oppositeAggregatePartValid6_0007 oppositeHistoryChunk0007 := by
  unfold oppositeAggregatePartValid6_0007 oppositeHistoryChunk0007
  decide

def oppositeAggregatePartValid7_0007 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 8064
  | _ => True

theorem oppositeAggregatePart7_0007 :
    oppositeAggregatePartValid7_0007 oppositeHistoryChunk0007 := by
  unfold oppositeAggregatePartValid7_0007 oppositeHistoryChunk0007
  decide

theorem oppositeRange_0007 :
    oppositeHistoryChunk0007.ResidueIndexedValid anchorHistories 5000000 18 25 7168 := by
  have h0 := oppositeAggregatePart0_0007
  simp only [oppositeAggregatePartValid0_0007, oppositeHistoryChunk0007] at h0
  have h1 := oppositeAggregatePart1_0007
  simp only [oppositeAggregatePartValid1_0007, oppositeHistoryChunk0007] at h1
  have h2 := oppositeAggregatePart2_0007
  simp only [oppositeAggregatePartValid2_0007, oppositeHistoryChunk0007] at h2
  have h3 := oppositeAggregatePart3_0007
  simp only [oppositeAggregatePartValid3_0007, oppositeHistoryChunk0007] at h3
  have h4 := oppositeAggregatePart4_0007
  simp only [oppositeAggregatePartValid4_0007, oppositeHistoryChunk0007] at h4
  have h5 := oppositeAggregatePart5_0007
  simp only [oppositeAggregatePartValid5_0007, oppositeHistoryChunk0007] at h5
  have h6 := oppositeAggregatePart6_0007
  simp only [oppositeAggregatePartValid6_0007, oppositeHistoryChunk0007] at h6
  have h7 := oppositeAggregatePart7_0007
  simp only [oppositeAggregatePartValid7_0007, oppositeHistoryChunk0007] at h7
  unfold oppositeHistoryChunk0007
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
