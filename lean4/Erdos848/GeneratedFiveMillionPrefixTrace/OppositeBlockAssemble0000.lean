import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0000
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0001
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0002
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0003

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0000, 0001, 0002, 0003 -/

def oppositeAggregatePartValid0_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 0
  | _ => True

theorem oppositeAggregatePart0_0000 :
    oppositeAggregatePartValid0_0000 oppositeHistoryChunk0000 := by
  unfold oppositeAggregatePartValid0_0000 oppositeHistoryChunk0000
  decide

def oppositeAggregatePartValid1_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 128
  | _ => True

theorem oppositeAggregatePart1_0000 :
    oppositeAggregatePartValid1_0000 oppositeHistoryChunk0000 := by
  unfold oppositeAggregatePartValid1_0000 oppositeHistoryChunk0000
  decide

def oppositeAggregatePartValid2_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 256
  | _ => True

theorem oppositeAggregatePart2_0000 :
    oppositeAggregatePartValid2_0000 oppositeHistoryChunk0000 := by
  unfold oppositeAggregatePartValid2_0000 oppositeHistoryChunk0000
  decide

def oppositeAggregatePartValid3_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 384
  | _ => True

theorem oppositeAggregatePart3_0000 :
    oppositeAggregatePartValid3_0000 oppositeHistoryChunk0000 := by
  unfold oppositeAggregatePartValid3_0000 oppositeHistoryChunk0000
  decide

def oppositeAggregatePartValid4_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 512
  | _ => True

theorem oppositeAggregatePart4_0000 :
    oppositeAggregatePartValid4_0000 oppositeHistoryChunk0000 := by
  unfold oppositeAggregatePartValid4_0000 oppositeHistoryChunk0000
  decide

def oppositeAggregatePartValid5_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 640
  | _ => True

theorem oppositeAggregatePart5_0000 :
    oppositeAggregatePartValid5_0000 oppositeHistoryChunk0000 := by
  unfold oppositeAggregatePartValid5_0000 oppositeHistoryChunk0000
  decide

def oppositeAggregatePartValid6_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 768
  | _ => True

theorem oppositeAggregatePart6_0000 :
    oppositeAggregatePartValid6_0000 oppositeHistoryChunk0000 := by
  unfold oppositeAggregatePartValid6_0000 oppositeHistoryChunk0000
  decide

def oppositeAggregatePartValid7_0000 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 896
  | _ => True

theorem oppositeAggregatePart7_0000 :
    oppositeAggregatePartValid7_0000 oppositeHistoryChunk0000 := by
  unfold oppositeAggregatePartValid7_0000 oppositeHistoryChunk0000
  decide

theorem oppositeRange_0000 :
    oppositeHistoryChunk0000.ResidueIndexedValid anchorHistories 5000000 18 25 0 := by
  have h0 := oppositeAggregatePart0_0000
  simp only [oppositeAggregatePartValid0_0000, oppositeHistoryChunk0000] at h0
  have h1 := oppositeAggregatePart1_0000
  simp only [oppositeAggregatePartValid1_0000, oppositeHistoryChunk0000] at h1
  have h2 := oppositeAggregatePart2_0000
  simp only [oppositeAggregatePartValid2_0000, oppositeHistoryChunk0000] at h2
  have h3 := oppositeAggregatePart3_0000
  simp only [oppositeAggregatePartValid3_0000, oppositeHistoryChunk0000] at h3
  have h4 := oppositeAggregatePart4_0000
  simp only [oppositeAggregatePartValid4_0000, oppositeHistoryChunk0000] at h4
  have h5 := oppositeAggregatePart5_0000
  simp only [oppositeAggregatePartValid5_0000, oppositeHistoryChunk0000] at h5
  have h6 := oppositeAggregatePart6_0000
  simp only [oppositeAggregatePartValid6_0000, oppositeHistoryChunk0000] at h6
  have h7 := oppositeAggregatePart7_0000
  simp only [oppositeAggregatePartValid7_0000, oppositeHistoryChunk0000] at h7
  unfold oppositeHistoryChunk0000
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 1024
  | _ => True

theorem oppositeAggregatePart0_0001 :
    oppositeAggregatePartValid0_0001 oppositeHistoryChunk0001 := by
  unfold oppositeAggregatePartValid0_0001 oppositeHistoryChunk0001
  decide

def oppositeAggregatePartValid1_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 1152
  | _ => True

theorem oppositeAggregatePart1_0001 :
    oppositeAggregatePartValid1_0001 oppositeHistoryChunk0001 := by
  unfold oppositeAggregatePartValid1_0001 oppositeHistoryChunk0001
  decide

def oppositeAggregatePartValid2_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 1280
  | _ => True

theorem oppositeAggregatePart2_0001 :
    oppositeAggregatePartValid2_0001 oppositeHistoryChunk0001 := by
  unfold oppositeAggregatePartValid2_0001 oppositeHistoryChunk0001
  decide

def oppositeAggregatePartValid3_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 1408
  | _ => True

theorem oppositeAggregatePart3_0001 :
    oppositeAggregatePartValid3_0001 oppositeHistoryChunk0001 := by
  unfold oppositeAggregatePartValid3_0001 oppositeHistoryChunk0001
  decide

def oppositeAggregatePartValid4_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 1536
  | _ => True

theorem oppositeAggregatePart4_0001 :
    oppositeAggregatePartValid4_0001 oppositeHistoryChunk0001 := by
  unfold oppositeAggregatePartValid4_0001 oppositeHistoryChunk0001
  decide

def oppositeAggregatePartValid5_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 1664
  | _ => True

theorem oppositeAggregatePart5_0001 :
    oppositeAggregatePartValid5_0001 oppositeHistoryChunk0001 := by
  unfold oppositeAggregatePartValid5_0001 oppositeHistoryChunk0001
  decide

def oppositeAggregatePartValid6_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 1792
  | _ => True

theorem oppositeAggregatePart6_0001 :
    oppositeAggregatePartValid6_0001 oppositeHistoryChunk0001 := by
  unfold oppositeAggregatePartValid6_0001 oppositeHistoryChunk0001
  decide

def oppositeAggregatePartValid7_0001 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 1920
  | _ => True

theorem oppositeAggregatePart7_0001 :
    oppositeAggregatePartValid7_0001 oppositeHistoryChunk0001 := by
  unfold oppositeAggregatePartValid7_0001 oppositeHistoryChunk0001
  decide

theorem oppositeRange_0001 :
    oppositeHistoryChunk0001.ResidueIndexedValid anchorHistories 5000000 18 25 1024 := by
  have h0 := oppositeAggregatePart0_0001
  simp only [oppositeAggregatePartValid0_0001, oppositeHistoryChunk0001] at h0
  have h1 := oppositeAggregatePart1_0001
  simp only [oppositeAggregatePartValid1_0001, oppositeHistoryChunk0001] at h1
  have h2 := oppositeAggregatePart2_0001
  simp only [oppositeAggregatePartValid2_0001, oppositeHistoryChunk0001] at h2
  have h3 := oppositeAggregatePart3_0001
  simp only [oppositeAggregatePartValid3_0001, oppositeHistoryChunk0001] at h3
  have h4 := oppositeAggregatePart4_0001
  simp only [oppositeAggregatePartValid4_0001, oppositeHistoryChunk0001] at h4
  have h5 := oppositeAggregatePart5_0001
  simp only [oppositeAggregatePartValid5_0001, oppositeHistoryChunk0001] at h5
  have h6 := oppositeAggregatePart6_0001
  simp only [oppositeAggregatePartValid6_0001, oppositeHistoryChunk0001] at h6
  have h7 := oppositeAggregatePart7_0001
  simp only [oppositeAggregatePartValid7_0001, oppositeHistoryChunk0001] at h7
  unfold oppositeHistoryChunk0001
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 2048
  | _ => True

theorem oppositeAggregatePart0_0002 :
    oppositeAggregatePartValid0_0002 oppositeHistoryChunk0002 := by
  unfold oppositeAggregatePartValid0_0002 oppositeHistoryChunk0002
  decide

def oppositeAggregatePartValid1_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 2176
  | _ => True

theorem oppositeAggregatePart1_0002 :
    oppositeAggregatePartValid1_0002 oppositeHistoryChunk0002 := by
  unfold oppositeAggregatePartValid1_0002 oppositeHistoryChunk0002
  decide

def oppositeAggregatePartValid2_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 2304
  | _ => True

theorem oppositeAggregatePart2_0002 :
    oppositeAggregatePartValid2_0002 oppositeHistoryChunk0002 := by
  unfold oppositeAggregatePartValid2_0002 oppositeHistoryChunk0002
  decide

def oppositeAggregatePartValid3_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 2432
  | _ => True

theorem oppositeAggregatePart3_0002 :
    oppositeAggregatePartValid3_0002 oppositeHistoryChunk0002 := by
  unfold oppositeAggregatePartValid3_0002 oppositeHistoryChunk0002
  decide

def oppositeAggregatePartValid4_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 2560
  | _ => True

theorem oppositeAggregatePart4_0002 :
    oppositeAggregatePartValid4_0002 oppositeHistoryChunk0002 := by
  unfold oppositeAggregatePartValid4_0002 oppositeHistoryChunk0002
  decide

def oppositeAggregatePartValid5_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 2688
  | _ => True

theorem oppositeAggregatePart5_0002 :
    oppositeAggregatePartValid5_0002 oppositeHistoryChunk0002 := by
  unfold oppositeAggregatePartValid5_0002 oppositeHistoryChunk0002
  decide

def oppositeAggregatePartValid6_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 2816
  | _ => True

theorem oppositeAggregatePart6_0002 :
    oppositeAggregatePartValid6_0002 oppositeHistoryChunk0002 := by
  unfold oppositeAggregatePartValid6_0002 oppositeHistoryChunk0002
  decide

def oppositeAggregatePartValid7_0002 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 2944
  | _ => True

theorem oppositeAggregatePart7_0002 :
    oppositeAggregatePartValid7_0002 oppositeHistoryChunk0002 := by
  unfold oppositeAggregatePartValid7_0002 oppositeHistoryChunk0002
  decide

theorem oppositeRange_0002 :
    oppositeHistoryChunk0002.ResidueIndexedValid anchorHistories 5000000 18 25 2048 := by
  have h0 := oppositeAggregatePart0_0002
  simp only [oppositeAggregatePartValid0_0002, oppositeHistoryChunk0002] at h0
  have h1 := oppositeAggregatePart1_0002
  simp only [oppositeAggregatePartValid1_0002, oppositeHistoryChunk0002] at h1
  have h2 := oppositeAggregatePart2_0002
  simp only [oppositeAggregatePartValid2_0002, oppositeHistoryChunk0002] at h2
  have h3 := oppositeAggregatePart3_0002
  simp only [oppositeAggregatePartValid3_0002, oppositeHistoryChunk0002] at h3
  have h4 := oppositeAggregatePart4_0002
  simp only [oppositeAggregatePartValid4_0002, oppositeHistoryChunk0002] at h4
  have h5 := oppositeAggregatePart5_0002
  simp only [oppositeAggregatePartValid5_0002, oppositeHistoryChunk0002] at h5
  have h6 := oppositeAggregatePart6_0002
  simp only [oppositeAggregatePartValid6_0002, oppositeHistoryChunk0002] at h6
  have h7 := oppositeAggregatePart7_0002
  simp only [oppositeAggregatePartValid7_0002, oppositeHistoryChunk0002] at h7
  unfold oppositeHistoryChunk0002
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 3072
  | _ => True

theorem oppositeAggregatePart0_0003 :
    oppositeAggregatePartValid0_0003 oppositeHistoryChunk0003 := by
  unfold oppositeAggregatePartValid0_0003 oppositeHistoryChunk0003
  decide

def oppositeAggregatePartValid1_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 3200
  | _ => True

theorem oppositeAggregatePart1_0003 :
    oppositeAggregatePartValid1_0003 oppositeHistoryChunk0003 := by
  unfold oppositeAggregatePartValid1_0003 oppositeHistoryChunk0003
  decide

def oppositeAggregatePartValid2_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 3328
  | _ => True

theorem oppositeAggregatePart2_0003 :
    oppositeAggregatePartValid2_0003 oppositeHistoryChunk0003 := by
  unfold oppositeAggregatePartValid2_0003 oppositeHistoryChunk0003
  decide

def oppositeAggregatePartValid3_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 3456
  | _ => True

theorem oppositeAggregatePart3_0003 :
    oppositeAggregatePartValid3_0003 oppositeHistoryChunk0003 := by
  unfold oppositeAggregatePartValid3_0003 oppositeHistoryChunk0003
  decide

def oppositeAggregatePartValid4_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 3584
  | _ => True

theorem oppositeAggregatePart4_0003 :
    oppositeAggregatePartValid4_0003 oppositeHistoryChunk0003 := by
  unfold oppositeAggregatePartValid4_0003 oppositeHistoryChunk0003
  decide

def oppositeAggregatePartValid5_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 3712
  | _ => True

theorem oppositeAggregatePart5_0003 :
    oppositeAggregatePartValid5_0003 oppositeHistoryChunk0003 := by
  unfold oppositeAggregatePartValid5_0003 oppositeHistoryChunk0003
  decide

def oppositeAggregatePartValid6_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 3840
  | _ => True

theorem oppositeAggregatePart6_0003 :
    oppositeAggregatePartValid6_0003 oppositeHistoryChunk0003 := by
  unfold oppositeAggregatePartValid6_0003 oppositeHistoryChunk0003
  decide

def oppositeAggregatePartValid7_0003 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 3968
  | _ => True

theorem oppositeAggregatePart7_0003 :
    oppositeAggregatePartValid7_0003 oppositeHistoryChunk0003 := by
  unfold oppositeAggregatePartValid7_0003 oppositeHistoryChunk0003
  decide

theorem oppositeRange_0003 :
    oppositeHistoryChunk0003.ResidueIndexedValid anchorHistories 5000000 18 25 3072 := by
  have h0 := oppositeAggregatePart0_0003
  simp only [oppositeAggregatePartValid0_0003, oppositeHistoryChunk0003] at h0
  have h1 := oppositeAggregatePart1_0003
  simp only [oppositeAggregatePartValid1_0003, oppositeHistoryChunk0003] at h1
  have h2 := oppositeAggregatePart2_0003
  simp only [oppositeAggregatePartValid2_0003, oppositeHistoryChunk0003] at h2
  have h3 := oppositeAggregatePart3_0003
  simp only [oppositeAggregatePartValid3_0003, oppositeHistoryChunk0003] at h3
  have h4 := oppositeAggregatePart4_0003
  simp only [oppositeAggregatePartValid4_0003, oppositeHistoryChunk0003] at h4
  have h5 := oppositeAggregatePart5_0003
  simp only [oppositeAggregatePartValid5_0003, oppositeHistoryChunk0003] at h5
  have h6 := oppositeAggregatePart6_0003
  simp only [oppositeAggregatePartValid6_0003, oppositeHistoryChunk0003] at h6
  have h7 := oppositeAggregatePart7_0003
  simp only [oppositeAggregatePartValid7_0003, oppositeHistoryChunk0003] at h7
  unfold oppositeHistoryChunk0003
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
