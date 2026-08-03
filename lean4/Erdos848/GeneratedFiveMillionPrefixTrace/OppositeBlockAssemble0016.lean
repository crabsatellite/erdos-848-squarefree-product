import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0016
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0017
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0018
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0019

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0016, 0017, 0018, 0019 -/

def oppositeAggregatePartValid0_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 16384
  | _ => True

theorem oppositeAggregatePart0_0016 :
    oppositeAggregatePartValid0_0016 oppositeHistoryChunk0016 := by
  unfold oppositeAggregatePartValid0_0016 oppositeHistoryChunk0016
  decide

def oppositeAggregatePartValid1_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 16512
  | _ => True

theorem oppositeAggregatePart1_0016 :
    oppositeAggregatePartValid1_0016 oppositeHistoryChunk0016 := by
  unfold oppositeAggregatePartValid1_0016 oppositeHistoryChunk0016
  decide

def oppositeAggregatePartValid2_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 16640
  | _ => True

theorem oppositeAggregatePart2_0016 :
    oppositeAggregatePartValid2_0016 oppositeHistoryChunk0016 := by
  unfold oppositeAggregatePartValid2_0016 oppositeHistoryChunk0016
  decide

def oppositeAggregatePartValid3_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 16768
  | _ => True

theorem oppositeAggregatePart3_0016 :
    oppositeAggregatePartValid3_0016 oppositeHistoryChunk0016 := by
  unfold oppositeAggregatePartValid3_0016 oppositeHistoryChunk0016
  decide

def oppositeAggregatePartValid4_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 16896
  | _ => True

theorem oppositeAggregatePart4_0016 :
    oppositeAggregatePartValid4_0016 oppositeHistoryChunk0016 := by
  unfold oppositeAggregatePartValid4_0016 oppositeHistoryChunk0016
  decide

def oppositeAggregatePartValid5_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 17024
  | _ => True

theorem oppositeAggregatePart5_0016 :
    oppositeAggregatePartValid5_0016 oppositeHistoryChunk0016 := by
  unfold oppositeAggregatePartValid5_0016 oppositeHistoryChunk0016
  decide

def oppositeAggregatePartValid6_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 17152
  | _ => True

theorem oppositeAggregatePart6_0016 :
    oppositeAggregatePartValid6_0016 oppositeHistoryChunk0016 := by
  unfold oppositeAggregatePartValid6_0016 oppositeHistoryChunk0016
  decide

def oppositeAggregatePartValid7_0016 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 17280
  | _ => True

theorem oppositeAggregatePart7_0016 :
    oppositeAggregatePartValid7_0016 oppositeHistoryChunk0016 := by
  unfold oppositeAggregatePartValid7_0016 oppositeHistoryChunk0016
  decide

theorem oppositeRange_0016 :
    oppositeHistoryChunk0016.ResidueIndexedValid anchorHistories 5000000 18 25 16384 := by
  have h0 := oppositeAggregatePart0_0016
  simp only [oppositeAggregatePartValid0_0016, oppositeHistoryChunk0016] at h0
  have h1 := oppositeAggregatePart1_0016
  simp only [oppositeAggregatePartValid1_0016, oppositeHistoryChunk0016] at h1
  have h2 := oppositeAggregatePart2_0016
  simp only [oppositeAggregatePartValid2_0016, oppositeHistoryChunk0016] at h2
  have h3 := oppositeAggregatePart3_0016
  simp only [oppositeAggregatePartValid3_0016, oppositeHistoryChunk0016] at h3
  have h4 := oppositeAggregatePart4_0016
  simp only [oppositeAggregatePartValid4_0016, oppositeHistoryChunk0016] at h4
  have h5 := oppositeAggregatePart5_0016
  simp only [oppositeAggregatePartValid5_0016, oppositeHistoryChunk0016] at h5
  have h6 := oppositeAggregatePart6_0016
  simp only [oppositeAggregatePartValid6_0016, oppositeHistoryChunk0016] at h6
  have h7 := oppositeAggregatePart7_0016
  simp only [oppositeAggregatePartValid7_0016, oppositeHistoryChunk0016] at h7
  unfold oppositeHistoryChunk0016
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 17408
  | _ => True

theorem oppositeAggregatePart0_0017 :
    oppositeAggregatePartValid0_0017 oppositeHistoryChunk0017 := by
  unfold oppositeAggregatePartValid0_0017 oppositeHistoryChunk0017
  decide

def oppositeAggregatePartValid1_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 17536
  | _ => True

theorem oppositeAggregatePart1_0017 :
    oppositeAggregatePartValid1_0017 oppositeHistoryChunk0017 := by
  unfold oppositeAggregatePartValid1_0017 oppositeHistoryChunk0017
  decide

def oppositeAggregatePartValid2_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 17664
  | _ => True

theorem oppositeAggregatePart2_0017 :
    oppositeAggregatePartValid2_0017 oppositeHistoryChunk0017 := by
  unfold oppositeAggregatePartValid2_0017 oppositeHistoryChunk0017
  decide

def oppositeAggregatePartValid3_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 17792
  | _ => True

theorem oppositeAggregatePart3_0017 :
    oppositeAggregatePartValid3_0017 oppositeHistoryChunk0017 := by
  unfold oppositeAggregatePartValid3_0017 oppositeHistoryChunk0017
  decide

def oppositeAggregatePartValid4_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 17920
  | _ => True

theorem oppositeAggregatePart4_0017 :
    oppositeAggregatePartValid4_0017 oppositeHistoryChunk0017 := by
  unfold oppositeAggregatePartValid4_0017 oppositeHistoryChunk0017
  decide

def oppositeAggregatePartValid5_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 18048
  | _ => True

theorem oppositeAggregatePart5_0017 :
    oppositeAggregatePartValid5_0017 oppositeHistoryChunk0017 := by
  unfold oppositeAggregatePartValid5_0017 oppositeHistoryChunk0017
  decide

def oppositeAggregatePartValid6_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 18176
  | _ => True

theorem oppositeAggregatePart6_0017 :
    oppositeAggregatePartValid6_0017 oppositeHistoryChunk0017 := by
  unfold oppositeAggregatePartValid6_0017 oppositeHistoryChunk0017
  decide

def oppositeAggregatePartValid7_0017 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 18304
  | _ => True

theorem oppositeAggregatePart7_0017 :
    oppositeAggregatePartValid7_0017 oppositeHistoryChunk0017 := by
  unfold oppositeAggregatePartValid7_0017 oppositeHistoryChunk0017
  decide

theorem oppositeRange_0017 :
    oppositeHistoryChunk0017.ResidueIndexedValid anchorHistories 5000000 18 25 17408 := by
  have h0 := oppositeAggregatePart0_0017
  simp only [oppositeAggregatePartValid0_0017, oppositeHistoryChunk0017] at h0
  have h1 := oppositeAggregatePart1_0017
  simp only [oppositeAggregatePartValid1_0017, oppositeHistoryChunk0017] at h1
  have h2 := oppositeAggregatePart2_0017
  simp only [oppositeAggregatePartValid2_0017, oppositeHistoryChunk0017] at h2
  have h3 := oppositeAggregatePart3_0017
  simp only [oppositeAggregatePartValid3_0017, oppositeHistoryChunk0017] at h3
  have h4 := oppositeAggregatePart4_0017
  simp only [oppositeAggregatePartValid4_0017, oppositeHistoryChunk0017] at h4
  have h5 := oppositeAggregatePart5_0017
  simp only [oppositeAggregatePartValid5_0017, oppositeHistoryChunk0017] at h5
  have h6 := oppositeAggregatePart6_0017
  simp only [oppositeAggregatePartValid6_0017, oppositeHistoryChunk0017] at h6
  have h7 := oppositeAggregatePart7_0017
  simp only [oppositeAggregatePartValid7_0017, oppositeHistoryChunk0017] at h7
  unfold oppositeHistoryChunk0017
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 18432
  | _ => True

theorem oppositeAggregatePart0_0018 :
    oppositeAggregatePartValid0_0018 oppositeHistoryChunk0018 := by
  unfold oppositeAggregatePartValid0_0018 oppositeHistoryChunk0018
  decide

def oppositeAggregatePartValid1_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 18560
  | _ => True

theorem oppositeAggregatePart1_0018 :
    oppositeAggregatePartValid1_0018 oppositeHistoryChunk0018 := by
  unfold oppositeAggregatePartValid1_0018 oppositeHistoryChunk0018
  decide

def oppositeAggregatePartValid2_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 18688
  | _ => True

theorem oppositeAggregatePart2_0018 :
    oppositeAggregatePartValid2_0018 oppositeHistoryChunk0018 := by
  unfold oppositeAggregatePartValid2_0018 oppositeHistoryChunk0018
  decide

def oppositeAggregatePartValid3_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 18816
  | _ => True

theorem oppositeAggregatePart3_0018 :
    oppositeAggregatePartValid3_0018 oppositeHistoryChunk0018 := by
  unfold oppositeAggregatePartValid3_0018 oppositeHistoryChunk0018
  decide

def oppositeAggregatePartValid4_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 18944
  | _ => True

theorem oppositeAggregatePart4_0018 :
    oppositeAggregatePartValid4_0018 oppositeHistoryChunk0018 := by
  unfold oppositeAggregatePartValid4_0018 oppositeHistoryChunk0018
  decide

def oppositeAggregatePartValid5_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 19072
  | _ => True

theorem oppositeAggregatePart5_0018 :
    oppositeAggregatePartValid5_0018 oppositeHistoryChunk0018 := by
  unfold oppositeAggregatePartValid5_0018 oppositeHistoryChunk0018
  decide

def oppositeAggregatePartValid6_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 19200
  | _ => True

theorem oppositeAggregatePart6_0018 :
    oppositeAggregatePartValid6_0018 oppositeHistoryChunk0018 := by
  unfold oppositeAggregatePartValid6_0018 oppositeHistoryChunk0018
  decide

def oppositeAggregatePartValid7_0018 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 19328
  | _ => True

theorem oppositeAggregatePart7_0018 :
    oppositeAggregatePartValid7_0018 oppositeHistoryChunk0018 := by
  unfold oppositeAggregatePartValid7_0018 oppositeHistoryChunk0018
  decide

theorem oppositeRange_0018 :
    oppositeHistoryChunk0018.ResidueIndexedValid anchorHistories 5000000 18 25 18432 := by
  have h0 := oppositeAggregatePart0_0018
  simp only [oppositeAggregatePartValid0_0018, oppositeHistoryChunk0018] at h0
  have h1 := oppositeAggregatePart1_0018
  simp only [oppositeAggregatePartValid1_0018, oppositeHistoryChunk0018] at h1
  have h2 := oppositeAggregatePart2_0018
  simp only [oppositeAggregatePartValid2_0018, oppositeHistoryChunk0018] at h2
  have h3 := oppositeAggregatePart3_0018
  simp only [oppositeAggregatePartValid3_0018, oppositeHistoryChunk0018] at h3
  have h4 := oppositeAggregatePart4_0018
  simp only [oppositeAggregatePartValid4_0018, oppositeHistoryChunk0018] at h4
  have h5 := oppositeAggregatePart5_0018
  simp only [oppositeAggregatePartValid5_0018, oppositeHistoryChunk0018] at h5
  have h6 := oppositeAggregatePart6_0018
  simp only [oppositeAggregatePartValid6_0018, oppositeHistoryChunk0018] at h6
  have h7 := oppositeAggregatePart7_0018
  simp only [oppositeAggregatePartValid7_0018, oppositeHistoryChunk0018] at h7
  unfold oppositeHistoryChunk0018
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def oppositeAggregatePartValid0_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 19456
  | _ => True

theorem oppositeAggregatePart0_0019 :
    oppositeAggregatePartValid0_0019 oppositeHistoryChunk0019 := by
  unfold oppositeAggregatePartValid0_0019 oppositeHistoryChunk0019
  decide

def oppositeAggregatePartValid1_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 19584
  | _ => True

theorem oppositeAggregatePart1_0019 :
    oppositeAggregatePartValid1_0019 oppositeHistoryChunk0019 := by
  unfold oppositeAggregatePartValid1_0019 oppositeHistoryChunk0019
  decide

def oppositeAggregatePartValid2_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 19712
  | _ => True

theorem oppositeAggregatePart2_0019 :
    oppositeAggregatePartValid2_0019 oppositeHistoryChunk0019 := by
  unfold oppositeAggregatePartValid2_0019 oppositeHistoryChunk0019
  decide

def oppositeAggregatePartValid3_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 19840
  | _ => True

theorem oppositeAggregatePart3_0019 :
    oppositeAggregatePartValid3_0019 oppositeHistoryChunk0019 := by
  unfold oppositeAggregatePartValid3_0019 oppositeHistoryChunk0019
  decide

def oppositeAggregatePartValid4_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 19968
  | _ => True

theorem oppositeAggregatePart4_0019 :
    oppositeAggregatePartValid4_0019 oppositeHistoryChunk0019 := by
  unfold oppositeAggregatePartValid4_0019 oppositeHistoryChunk0019
  decide

def oppositeAggregatePartValid5_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 20096
  | _ => True

theorem oppositeAggregatePart5_0019 :
    oppositeAggregatePartValid5_0019 oppositeHistoryChunk0019 := by
  unfold oppositeAggregatePartValid5_0019 oppositeHistoryChunk0019
  decide

def oppositeAggregatePartValid6_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 20224
  | _ => True

theorem oppositeAggregatePart6_0019 :
    oppositeAggregatePartValid6_0019 oppositeHistoryChunk0019 := by
  unfold oppositeAggregatePartValid6_0019 oppositeHistoryChunk0019
  decide

def oppositeAggregatePartValid7_0019 : Erdos848.CandidateHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.ResidueIndexedValid anchorHistories 5000000 18 25 20352
  | _ => True

theorem oppositeAggregatePart7_0019 :
    oppositeAggregatePartValid7_0019 oppositeHistoryChunk0019 := by
  unfold oppositeAggregatePartValid7_0019 oppositeHistoryChunk0019
  decide

theorem oppositeRange_0019 :
    oppositeHistoryChunk0019.ResidueIndexedValid anchorHistories 5000000 18 25 19456 := by
  have h0 := oppositeAggregatePart0_0019
  simp only [oppositeAggregatePartValid0_0019, oppositeHistoryChunk0019] at h0
  have h1 := oppositeAggregatePart1_0019
  simp only [oppositeAggregatePartValid1_0019, oppositeHistoryChunk0019] at h1
  have h2 := oppositeAggregatePart2_0019
  simp only [oppositeAggregatePartValid2_0019, oppositeHistoryChunk0019] at h2
  have h3 := oppositeAggregatePart3_0019
  simp only [oppositeAggregatePartValid3_0019, oppositeHistoryChunk0019] at h3
  have h4 := oppositeAggregatePart4_0019
  simp only [oppositeAggregatePartValid4_0019, oppositeHistoryChunk0019] at h4
  have h5 := oppositeAggregatePart5_0019
  simp only [oppositeAggregatePartValid5_0019, oppositeHistoryChunk0019] at h5
  have h6 := oppositeAggregatePart6_0019
  simp only [oppositeAggregatePartValid6_0019, oppositeHistoryChunk0019] at h6
  have h7 := oppositeAggregatePart7_0019
  simp only [oppositeAggregatePartValid7_0019, oppositeHistoryChunk0019] at h7
  unfold oppositeHistoryChunk0019
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
