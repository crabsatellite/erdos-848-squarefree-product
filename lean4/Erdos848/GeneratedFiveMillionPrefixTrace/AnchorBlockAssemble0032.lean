import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0032
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0033
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0034
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0035

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0032, 0033, 0034, 0035 -/

def anchorAggregatePartValid0_0032 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 32768
  | _ => True

theorem anchorAggregatePart0_0032 :
    anchorAggregatePartValid0_0032 anchorHistoryChunk0032 := by
  unfold anchorAggregatePartValid0_0032 anchorHistoryChunk0032
  decide

def anchorAggregatePartValid1_0032 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 32896
  | _ => True

theorem anchorAggregatePart1_0032 :
    anchorAggregatePartValid1_0032 anchorHistoryChunk0032 := by
  unfold anchorAggregatePartValid1_0032 anchorHistoryChunk0032
  decide

def anchorAggregatePartValid2_0032 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 33024
  | _ => True

theorem anchorAggregatePart2_0032 :
    anchorAggregatePartValid2_0032 anchorHistoryChunk0032 := by
  unfold anchorAggregatePartValid2_0032 anchorHistoryChunk0032
  decide

def anchorAggregatePartValid3_0032 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 33152
  | _ => True

theorem anchorAggregatePart3_0032 :
    anchorAggregatePartValid3_0032 anchorHistoryChunk0032 := by
  unfold anchorAggregatePartValid3_0032 anchorHistoryChunk0032
  decide

def anchorAggregatePartValid4_0032 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 33280
  | _ => True

theorem anchorAggregatePart4_0032 :
    anchorAggregatePartValid4_0032 anchorHistoryChunk0032 := by
  unfold anchorAggregatePartValid4_0032 anchorHistoryChunk0032
  decide

def anchorAggregatePartValid5_0032 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 33408
  | _ => True

theorem anchorAggregatePart5_0032 :
    anchorAggregatePartValid5_0032 anchorHistoryChunk0032 := by
  unfold anchorAggregatePartValid5_0032 anchorHistoryChunk0032
  decide

def anchorAggregatePartValid6_0032 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 33536
  | _ => True

theorem anchorAggregatePart6_0032 :
    anchorAggregatePartValid6_0032 anchorHistoryChunk0032 := by
  unfold anchorAggregatePartValid6_0032 anchorHistoryChunk0032
  decide

def anchorAggregatePartValid7_0032 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 33664
  | _ => True

theorem anchorAggregatePart7_0032 :
    anchorAggregatePartValid7_0032 anchorHistoryChunk0032 := by
  unfold anchorAggregatePartValid7_0032 anchorHistoryChunk0032
  decide

theorem anchorRange_0032 :
    anchorHistoryChunk0032.IndexedValid squarefreeOracle 5000000 32768 := by
  have h0 := anchorAggregatePart0_0032
  simp only [anchorAggregatePartValid0_0032, anchorHistoryChunk0032] at h0
  have h1 := anchorAggregatePart1_0032
  simp only [anchorAggregatePartValid1_0032, anchorHistoryChunk0032] at h1
  have h2 := anchorAggregatePart2_0032
  simp only [anchorAggregatePartValid2_0032, anchorHistoryChunk0032] at h2
  have h3 := anchorAggregatePart3_0032
  simp only [anchorAggregatePartValid3_0032, anchorHistoryChunk0032] at h3
  have h4 := anchorAggregatePart4_0032
  simp only [anchorAggregatePartValid4_0032, anchorHistoryChunk0032] at h4
  have h5 := anchorAggregatePart5_0032
  simp only [anchorAggregatePartValid5_0032, anchorHistoryChunk0032] at h5
  have h6 := anchorAggregatePart6_0032
  simp only [anchorAggregatePartValid6_0032, anchorHistoryChunk0032] at h6
  have h7 := anchorAggregatePart7_0032
  simp only [anchorAggregatePartValid7_0032, anchorHistoryChunk0032] at h7
  unfold anchorHistoryChunk0032
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0033 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 33792
  | _ => True

theorem anchorAggregatePart0_0033 :
    anchorAggregatePartValid0_0033 anchorHistoryChunk0033 := by
  unfold anchorAggregatePartValid0_0033 anchorHistoryChunk0033
  decide

def anchorAggregatePartValid1_0033 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 33920
  | _ => True

theorem anchorAggregatePart1_0033 :
    anchorAggregatePartValid1_0033 anchorHistoryChunk0033 := by
  unfold anchorAggregatePartValid1_0033 anchorHistoryChunk0033
  decide

def anchorAggregatePartValid2_0033 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 34048
  | _ => True

theorem anchorAggregatePart2_0033 :
    anchorAggregatePartValid2_0033 anchorHistoryChunk0033 := by
  unfold anchorAggregatePartValid2_0033 anchorHistoryChunk0033
  decide

def anchorAggregatePartValid3_0033 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 34176
  | _ => True

theorem anchorAggregatePart3_0033 :
    anchorAggregatePartValid3_0033 anchorHistoryChunk0033 := by
  unfold anchorAggregatePartValid3_0033 anchorHistoryChunk0033
  decide

def anchorAggregatePartValid4_0033 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 34304
  | _ => True

theorem anchorAggregatePart4_0033 :
    anchorAggregatePartValid4_0033 anchorHistoryChunk0033 := by
  unfold anchorAggregatePartValid4_0033 anchorHistoryChunk0033
  decide

def anchorAggregatePartValid5_0033 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 34432
  | _ => True

theorem anchorAggregatePart5_0033 :
    anchorAggregatePartValid5_0033 anchorHistoryChunk0033 := by
  unfold anchorAggregatePartValid5_0033 anchorHistoryChunk0033
  decide

def anchorAggregatePartValid6_0033 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 34560
  | _ => True

theorem anchorAggregatePart6_0033 :
    anchorAggregatePartValid6_0033 anchorHistoryChunk0033 := by
  unfold anchorAggregatePartValid6_0033 anchorHistoryChunk0033
  decide

def anchorAggregatePartValid7_0033 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 34688
  | _ => True

theorem anchorAggregatePart7_0033 :
    anchorAggregatePartValid7_0033 anchorHistoryChunk0033 := by
  unfold anchorAggregatePartValid7_0033 anchorHistoryChunk0033
  decide

theorem anchorRange_0033 :
    anchorHistoryChunk0033.IndexedValid squarefreeOracle 5000000 33792 := by
  have h0 := anchorAggregatePart0_0033
  simp only [anchorAggregatePartValid0_0033, anchorHistoryChunk0033] at h0
  have h1 := anchorAggregatePart1_0033
  simp only [anchorAggregatePartValid1_0033, anchorHistoryChunk0033] at h1
  have h2 := anchorAggregatePart2_0033
  simp only [anchorAggregatePartValid2_0033, anchorHistoryChunk0033] at h2
  have h3 := anchorAggregatePart3_0033
  simp only [anchorAggregatePartValid3_0033, anchorHistoryChunk0033] at h3
  have h4 := anchorAggregatePart4_0033
  simp only [anchorAggregatePartValid4_0033, anchorHistoryChunk0033] at h4
  have h5 := anchorAggregatePart5_0033
  simp only [anchorAggregatePartValid5_0033, anchorHistoryChunk0033] at h5
  have h6 := anchorAggregatePart6_0033
  simp only [anchorAggregatePartValid6_0033, anchorHistoryChunk0033] at h6
  have h7 := anchorAggregatePart7_0033
  simp only [anchorAggregatePartValid7_0033, anchorHistoryChunk0033] at h7
  unfold anchorHistoryChunk0033
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0034 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 34816
  | _ => True

theorem anchorAggregatePart0_0034 :
    anchorAggregatePartValid0_0034 anchorHistoryChunk0034 := by
  unfold anchorAggregatePartValid0_0034 anchorHistoryChunk0034
  decide

def anchorAggregatePartValid1_0034 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 34944
  | _ => True

theorem anchorAggregatePart1_0034 :
    anchorAggregatePartValid1_0034 anchorHistoryChunk0034 := by
  unfold anchorAggregatePartValid1_0034 anchorHistoryChunk0034
  decide

def anchorAggregatePartValid2_0034 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 35072
  | _ => True

theorem anchorAggregatePart2_0034 :
    anchorAggregatePartValid2_0034 anchorHistoryChunk0034 := by
  unfold anchorAggregatePartValid2_0034 anchorHistoryChunk0034
  decide

def anchorAggregatePartValid3_0034 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 35200
  | _ => True

theorem anchorAggregatePart3_0034 :
    anchorAggregatePartValid3_0034 anchorHistoryChunk0034 := by
  unfold anchorAggregatePartValid3_0034 anchorHistoryChunk0034
  decide

def anchorAggregatePartValid4_0034 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 35328
  | _ => True

theorem anchorAggregatePart4_0034 :
    anchorAggregatePartValid4_0034 anchorHistoryChunk0034 := by
  unfold anchorAggregatePartValid4_0034 anchorHistoryChunk0034
  decide

def anchorAggregatePartValid5_0034 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 35456
  | _ => True

theorem anchorAggregatePart5_0034 :
    anchorAggregatePartValid5_0034 anchorHistoryChunk0034 := by
  unfold anchorAggregatePartValid5_0034 anchorHistoryChunk0034
  decide

def anchorAggregatePartValid6_0034 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 35584
  | _ => True

theorem anchorAggregatePart6_0034 :
    anchorAggregatePartValid6_0034 anchorHistoryChunk0034 := by
  unfold anchorAggregatePartValid6_0034 anchorHistoryChunk0034
  decide

def anchorAggregatePartValid7_0034 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 35712
  | _ => True

theorem anchorAggregatePart7_0034 :
    anchorAggregatePartValid7_0034 anchorHistoryChunk0034 := by
  unfold anchorAggregatePartValid7_0034 anchorHistoryChunk0034
  decide

theorem anchorRange_0034 :
    anchorHistoryChunk0034.IndexedValid squarefreeOracle 5000000 34816 := by
  have h0 := anchorAggregatePart0_0034
  simp only [anchorAggregatePartValid0_0034, anchorHistoryChunk0034] at h0
  have h1 := anchorAggregatePart1_0034
  simp only [anchorAggregatePartValid1_0034, anchorHistoryChunk0034] at h1
  have h2 := anchorAggregatePart2_0034
  simp only [anchorAggregatePartValid2_0034, anchorHistoryChunk0034] at h2
  have h3 := anchorAggregatePart3_0034
  simp only [anchorAggregatePartValid3_0034, anchorHistoryChunk0034] at h3
  have h4 := anchorAggregatePart4_0034
  simp only [anchorAggregatePartValid4_0034, anchorHistoryChunk0034] at h4
  have h5 := anchorAggregatePart5_0034
  simp only [anchorAggregatePartValid5_0034, anchorHistoryChunk0034] at h5
  have h6 := anchorAggregatePart6_0034
  simp only [anchorAggregatePartValid6_0034, anchorHistoryChunk0034] at h6
  have h7 := anchorAggregatePart7_0034
  simp only [anchorAggregatePartValid7_0034, anchorHistoryChunk0034] at h7
  unfold anchorHistoryChunk0034
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0035 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 35840
  | _ => True

theorem anchorAggregatePart0_0035 :
    anchorAggregatePartValid0_0035 anchorHistoryChunk0035 := by
  unfold anchorAggregatePartValid0_0035 anchorHistoryChunk0035
  decide

def anchorAggregatePartValid1_0035 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 35968
  | _ => True

theorem anchorAggregatePart1_0035 :
    anchorAggregatePartValid1_0035 anchorHistoryChunk0035 := by
  unfold anchorAggregatePartValid1_0035 anchorHistoryChunk0035
  decide

def anchorAggregatePartValid2_0035 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 36096
  | _ => True

theorem anchorAggregatePart2_0035 :
    anchorAggregatePartValid2_0035 anchorHistoryChunk0035 := by
  unfold anchorAggregatePartValid2_0035 anchorHistoryChunk0035
  decide

def anchorAggregatePartValid3_0035 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 36224
  | _ => True

theorem anchorAggregatePart3_0035 :
    anchorAggregatePartValid3_0035 anchorHistoryChunk0035 := by
  unfold anchorAggregatePartValid3_0035 anchorHistoryChunk0035
  decide

def anchorAggregatePartValid4_0035 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 36352
  | _ => True

theorem anchorAggregatePart4_0035 :
    anchorAggregatePartValid4_0035 anchorHistoryChunk0035 := by
  unfold anchorAggregatePartValid4_0035 anchorHistoryChunk0035
  decide

def anchorAggregatePartValid5_0035 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 36480
  | _ => True

theorem anchorAggregatePart5_0035 :
    anchorAggregatePartValid5_0035 anchorHistoryChunk0035 := by
  unfold anchorAggregatePartValid5_0035 anchorHistoryChunk0035
  decide

def anchorAggregatePartValid6_0035 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 36608
  | _ => True

theorem anchorAggregatePart6_0035 :
    anchorAggregatePartValid6_0035 anchorHistoryChunk0035 := by
  unfold anchorAggregatePartValid6_0035 anchorHistoryChunk0035
  decide

def anchorAggregatePartValid7_0035 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 36736
  | _ => True

theorem anchorAggregatePart7_0035 :
    anchorAggregatePartValid7_0035 anchorHistoryChunk0035 := by
  unfold anchorAggregatePartValid7_0035 anchorHistoryChunk0035
  decide

theorem anchorRange_0035 :
    anchorHistoryChunk0035.IndexedValid squarefreeOracle 5000000 35840 := by
  have h0 := anchorAggregatePart0_0035
  simp only [anchorAggregatePartValid0_0035, anchorHistoryChunk0035] at h0
  have h1 := anchorAggregatePart1_0035
  simp only [anchorAggregatePartValid1_0035, anchorHistoryChunk0035] at h1
  have h2 := anchorAggregatePart2_0035
  simp only [anchorAggregatePartValid2_0035, anchorHistoryChunk0035] at h2
  have h3 := anchorAggregatePart3_0035
  simp only [anchorAggregatePartValid3_0035, anchorHistoryChunk0035] at h3
  have h4 := anchorAggregatePart4_0035
  simp only [anchorAggregatePartValid4_0035, anchorHistoryChunk0035] at h4
  have h5 := anchorAggregatePart5_0035
  simp only [anchorAggregatePartValid5_0035, anchorHistoryChunk0035] at h5
  have h6 := anchorAggregatePart6_0035
  simp only [anchorAggregatePartValid6_0035, anchorHistoryChunk0035] at h6
  have h7 := anchorAggregatePart7_0035
  simp only [anchorAggregatePartValid7_0035, anchorHistoryChunk0035] at h7
  unfold anchorHistoryChunk0035
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
