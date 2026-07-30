import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0100
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0101
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0102
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0103

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0100, 0101, 0102, 0103 -/

def anchorAggregatePartValid0_0100 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 102400
  | _ => True

theorem anchorAggregatePart0_0100 :
    anchorAggregatePartValid0_0100 anchorHistoryChunk0100 := by
  unfold anchorAggregatePartValid0_0100 anchorHistoryChunk0100
  decide

def anchorAggregatePartValid1_0100 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 102528
  | _ => True

theorem anchorAggregatePart1_0100 :
    anchorAggregatePartValid1_0100 anchorHistoryChunk0100 := by
  unfold anchorAggregatePartValid1_0100 anchorHistoryChunk0100
  decide

def anchorAggregatePartValid2_0100 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 102656
  | _ => True

theorem anchorAggregatePart2_0100 :
    anchorAggregatePartValid2_0100 anchorHistoryChunk0100 := by
  unfold anchorAggregatePartValid2_0100 anchorHistoryChunk0100
  decide

def anchorAggregatePartValid3_0100 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 102784
  | _ => True

theorem anchorAggregatePart3_0100 :
    anchorAggregatePartValid3_0100 anchorHistoryChunk0100 := by
  unfold anchorAggregatePartValid3_0100 anchorHistoryChunk0100
  decide

def anchorAggregatePartValid4_0100 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 102912
  | _ => True

theorem anchorAggregatePart4_0100 :
    anchorAggregatePartValid4_0100 anchorHistoryChunk0100 := by
  unfold anchorAggregatePartValid4_0100 anchorHistoryChunk0100
  decide

def anchorAggregatePartValid5_0100 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 103040
  | _ => True

theorem anchorAggregatePart5_0100 :
    anchorAggregatePartValid5_0100 anchorHistoryChunk0100 := by
  unfold anchorAggregatePartValid5_0100 anchorHistoryChunk0100
  decide

def anchorAggregatePartValid6_0100 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 103168
  | _ => True

theorem anchorAggregatePart6_0100 :
    anchorAggregatePartValid6_0100 anchorHistoryChunk0100 := by
  unfold anchorAggregatePartValid6_0100 anchorHistoryChunk0100
  decide

def anchorAggregatePartValid7_0100 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 103296
  | _ => True

theorem anchorAggregatePart7_0100 :
    anchorAggregatePartValid7_0100 anchorHistoryChunk0100 := by
  unfold anchorAggregatePartValid7_0100 anchorHistoryChunk0100
  decide

theorem anchorRange_0100 :
    anchorHistoryChunk0100.IndexedValid squarefreeOracle 5000000 102400 := by
  have h0 := anchorAggregatePart0_0100
  simp only [anchorAggregatePartValid0_0100, anchorHistoryChunk0100] at h0
  have h1 := anchorAggregatePart1_0100
  simp only [anchorAggregatePartValid1_0100, anchorHistoryChunk0100] at h1
  have h2 := anchorAggregatePart2_0100
  simp only [anchorAggregatePartValid2_0100, anchorHistoryChunk0100] at h2
  have h3 := anchorAggregatePart3_0100
  simp only [anchorAggregatePartValid3_0100, anchorHistoryChunk0100] at h3
  have h4 := anchorAggregatePart4_0100
  simp only [anchorAggregatePartValid4_0100, anchorHistoryChunk0100] at h4
  have h5 := anchorAggregatePart5_0100
  simp only [anchorAggregatePartValid5_0100, anchorHistoryChunk0100] at h5
  have h6 := anchorAggregatePart6_0100
  simp only [anchorAggregatePartValid6_0100, anchorHistoryChunk0100] at h6
  have h7 := anchorAggregatePart7_0100
  simp only [anchorAggregatePartValid7_0100, anchorHistoryChunk0100] at h7
  unfold anchorHistoryChunk0100
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0101 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 103424
  | _ => True

theorem anchorAggregatePart0_0101 :
    anchorAggregatePartValid0_0101 anchorHistoryChunk0101 := by
  unfold anchorAggregatePartValid0_0101 anchorHistoryChunk0101
  decide

def anchorAggregatePartValid1_0101 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 103552
  | _ => True

theorem anchorAggregatePart1_0101 :
    anchorAggregatePartValid1_0101 anchorHistoryChunk0101 := by
  unfold anchorAggregatePartValid1_0101 anchorHistoryChunk0101
  decide

def anchorAggregatePartValid2_0101 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 103680
  | _ => True

theorem anchorAggregatePart2_0101 :
    anchorAggregatePartValid2_0101 anchorHistoryChunk0101 := by
  unfold anchorAggregatePartValid2_0101 anchorHistoryChunk0101
  decide

def anchorAggregatePartValid3_0101 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 103808
  | _ => True

theorem anchorAggregatePart3_0101 :
    anchorAggregatePartValid3_0101 anchorHistoryChunk0101 := by
  unfold anchorAggregatePartValid3_0101 anchorHistoryChunk0101
  decide

def anchorAggregatePartValid4_0101 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 103936
  | _ => True

theorem anchorAggregatePart4_0101 :
    anchorAggregatePartValid4_0101 anchorHistoryChunk0101 := by
  unfold anchorAggregatePartValid4_0101 anchorHistoryChunk0101
  decide

def anchorAggregatePartValid5_0101 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 104064
  | _ => True

theorem anchorAggregatePart5_0101 :
    anchorAggregatePartValid5_0101 anchorHistoryChunk0101 := by
  unfold anchorAggregatePartValid5_0101 anchorHistoryChunk0101
  decide

def anchorAggregatePartValid6_0101 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 104192
  | _ => True

theorem anchorAggregatePart6_0101 :
    anchorAggregatePartValid6_0101 anchorHistoryChunk0101 := by
  unfold anchorAggregatePartValid6_0101 anchorHistoryChunk0101
  decide

def anchorAggregatePartValid7_0101 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 104320
  | _ => True

theorem anchorAggregatePart7_0101 :
    anchorAggregatePartValid7_0101 anchorHistoryChunk0101 := by
  unfold anchorAggregatePartValid7_0101 anchorHistoryChunk0101
  decide

theorem anchorRange_0101 :
    anchorHistoryChunk0101.IndexedValid squarefreeOracle 5000000 103424 := by
  have h0 := anchorAggregatePart0_0101
  simp only [anchorAggregatePartValid0_0101, anchorHistoryChunk0101] at h0
  have h1 := anchorAggregatePart1_0101
  simp only [anchorAggregatePartValid1_0101, anchorHistoryChunk0101] at h1
  have h2 := anchorAggregatePart2_0101
  simp only [anchorAggregatePartValid2_0101, anchorHistoryChunk0101] at h2
  have h3 := anchorAggregatePart3_0101
  simp only [anchorAggregatePartValid3_0101, anchorHistoryChunk0101] at h3
  have h4 := anchorAggregatePart4_0101
  simp only [anchorAggregatePartValid4_0101, anchorHistoryChunk0101] at h4
  have h5 := anchorAggregatePart5_0101
  simp only [anchorAggregatePartValid5_0101, anchorHistoryChunk0101] at h5
  have h6 := anchorAggregatePart6_0101
  simp only [anchorAggregatePartValid6_0101, anchorHistoryChunk0101] at h6
  have h7 := anchorAggregatePart7_0101
  simp only [anchorAggregatePartValid7_0101, anchorHistoryChunk0101] at h7
  unfold anchorHistoryChunk0101
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0102 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 104448
  | _ => True

theorem anchorAggregatePart0_0102 :
    anchorAggregatePartValid0_0102 anchorHistoryChunk0102 := by
  unfold anchorAggregatePartValid0_0102 anchorHistoryChunk0102
  decide

def anchorAggregatePartValid1_0102 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 104576
  | _ => True

theorem anchorAggregatePart1_0102 :
    anchorAggregatePartValid1_0102 anchorHistoryChunk0102 := by
  unfold anchorAggregatePartValid1_0102 anchorHistoryChunk0102
  decide

def anchorAggregatePartValid2_0102 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 104704
  | _ => True

theorem anchorAggregatePart2_0102 :
    anchorAggregatePartValid2_0102 anchorHistoryChunk0102 := by
  unfold anchorAggregatePartValid2_0102 anchorHistoryChunk0102
  decide

def anchorAggregatePartValid3_0102 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 104832
  | _ => True

theorem anchorAggregatePart3_0102 :
    anchorAggregatePartValid3_0102 anchorHistoryChunk0102 := by
  unfold anchorAggregatePartValid3_0102 anchorHistoryChunk0102
  decide

def anchorAggregatePartValid4_0102 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 104960
  | _ => True

theorem anchorAggregatePart4_0102 :
    anchorAggregatePartValid4_0102 anchorHistoryChunk0102 := by
  unfold anchorAggregatePartValid4_0102 anchorHistoryChunk0102
  decide

def anchorAggregatePartValid5_0102 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 105088
  | _ => True

theorem anchorAggregatePart5_0102 :
    anchorAggregatePartValid5_0102 anchorHistoryChunk0102 := by
  unfold anchorAggregatePartValid5_0102 anchorHistoryChunk0102
  decide

def anchorAggregatePartValid6_0102 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 105216
  | _ => True

theorem anchorAggregatePart6_0102 :
    anchorAggregatePartValid6_0102 anchorHistoryChunk0102 := by
  unfold anchorAggregatePartValid6_0102 anchorHistoryChunk0102
  decide

def anchorAggregatePartValid7_0102 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 105344
  | _ => True

theorem anchorAggregatePart7_0102 :
    anchorAggregatePartValid7_0102 anchorHistoryChunk0102 := by
  unfold anchorAggregatePartValid7_0102 anchorHistoryChunk0102
  decide

theorem anchorRange_0102 :
    anchorHistoryChunk0102.IndexedValid squarefreeOracle 5000000 104448 := by
  have h0 := anchorAggregatePart0_0102
  simp only [anchorAggregatePartValid0_0102, anchorHistoryChunk0102] at h0
  have h1 := anchorAggregatePart1_0102
  simp only [anchorAggregatePartValid1_0102, anchorHistoryChunk0102] at h1
  have h2 := anchorAggregatePart2_0102
  simp only [anchorAggregatePartValid2_0102, anchorHistoryChunk0102] at h2
  have h3 := anchorAggregatePart3_0102
  simp only [anchorAggregatePartValid3_0102, anchorHistoryChunk0102] at h3
  have h4 := anchorAggregatePart4_0102
  simp only [anchorAggregatePartValid4_0102, anchorHistoryChunk0102] at h4
  have h5 := anchorAggregatePart5_0102
  simp only [anchorAggregatePartValid5_0102, anchorHistoryChunk0102] at h5
  have h6 := anchorAggregatePart6_0102
  simp only [anchorAggregatePartValid6_0102, anchorHistoryChunk0102] at h6
  have h7 := anchorAggregatePart7_0102
  simp only [anchorAggregatePartValid7_0102, anchorHistoryChunk0102] at h7
  unfold anchorHistoryChunk0102
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0103 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 105472
  | _ => True

theorem anchorAggregatePart0_0103 :
    anchorAggregatePartValid0_0103 anchorHistoryChunk0103 := by
  unfold anchorAggregatePartValid0_0103 anchorHistoryChunk0103
  decide

def anchorAggregatePartValid1_0103 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 105600
  | _ => True

theorem anchorAggregatePart1_0103 :
    anchorAggregatePartValid1_0103 anchorHistoryChunk0103 := by
  unfold anchorAggregatePartValid1_0103 anchorHistoryChunk0103
  decide

def anchorAggregatePartValid2_0103 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 105728
  | _ => True

theorem anchorAggregatePart2_0103 :
    anchorAggregatePartValid2_0103 anchorHistoryChunk0103 := by
  unfold anchorAggregatePartValid2_0103 anchorHistoryChunk0103
  decide

def anchorAggregatePartValid3_0103 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 105856
  | _ => True

theorem anchorAggregatePart3_0103 :
    anchorAggregatePartValid3_0103 anchorHistoryChunk0103 := by
  unfold anchorAggregatePartValid3_0103 anchorHistoryChunk0103
  decide

def anchorAggregatePartValid4_0103 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 105984
  | _ => True

theorem anchorAggregatePart4_0103 :
    anchorAggregatePartValid4_0103 anchorHistoryChunk0103 := by
  unfold anchorAggregatePartValid4_0103 anchorHistoryChunk0103
  decide

def anchorAggregatePartValid5_0103 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 106112
  | _ => True

theorem anchorAggregatePart5_0103 :
    anchorAggregatePartValid5_0103 anchorHistoryChunk0103 := by
  unfold anchorAggregatePartValid5_0103 anchorHistoryChunk0103
  decide

def anchorAggregatePartValid6_0103 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 106240
  | _ => True

theorem anchorAggregatePart6_0103 :
    anchorAggregatePartValid6_0103 anchorHistoryChunk0103 := by
  unfold anchorAggregatePartValid6_0103 anchorHistoryChunk0103
  decide

def anchorAggregatePartValid7_0103 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 106368
  | _ => True

theorem anchorAggregatePart7_0103 :
    anchorAggregatePartValid7_0103 anchorHistoryChunk0103 := by
  unfold anchorAggregatePartValid7_0103 anchorHistoryChunk0103
  decide

theorem anchorRange_0103 :
    anchorHistoryChunk0103.IndexedValid squarefreeOracle 5000000 105472 := by
  have h0 := anchorAggregatePart0_0103
  simp only [anchorAggregatePartValid0_0103, anchorHistoryChunk0103] at h0
  have h1 := anchorAggregatePart1_0103
  simp only [anchorAggregatePartValid1_0103, anchorHistoryChunk0103] at h1
  have h2 := anchorAggregatePart2_0103
  simp only [anchorAggregatePartValid2_0103, anchorHistoryChunk0103] at h2
  have h3 := anchorAggregatePart3_0103
  simp only [anchorAggregatePartValid3_0103, anchorHistoryChunk0103] at h3
  have h4 := anchorAggregatePart4_0103
  simp only [anchorAggregatePartValid4_0103, anchorHistoryChunk0103] at h4
  have h5 := anchorAggregatePart5_0103
  simp only [anchorAggregatePartValid5_0103, anchorHistoryChunk0103] at h5
  have h6 := anchorAggregatePart6_0103
  simp only [anchorAggregatePartValid6_0103, anchorHistoryChunk0103] at h6
  have h7 := anchorAggregatePart7_0103
  simp only [anchorAggregatePartValid7_0103, anchorHistoryChunk0103] at h7
  unfold anchorHistoryChunk0103
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
