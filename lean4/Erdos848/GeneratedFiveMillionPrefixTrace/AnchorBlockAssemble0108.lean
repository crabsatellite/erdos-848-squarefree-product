import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0108
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0109
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0110
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0111

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0108, 0109, 0110, 0111 -/

def anchorAggregatePartValid0_0108 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 110592
  | _ => True

theorem anchorAggregatePart0_0108 :
    anchorAggregatePartValid0_0108 anchorHistoryChunk0108 := by
  unfold anchorAggregatePartValid0_0108 anchorHistoryChunk0108
  decide

def anchorAggregatePartValid1_0108 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 110720
  | _ => True

theorem anchorAggregatePart1_0108 :
    anchorAggregatePartValid1_0108 anchorHistoryChunk0108 := by
  unfold anchorAggregatePartValid1_0108 anchorHistoryChunk0108
  decide

def anchorAggregatePartValid2_0108 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 110848
  | _ => True

theorem anchorAggregatePart2_0108 :
    anchorAggregatePartValid2_0108 anchorHistoryChunk0108 := by
  unfold anchorAggregatePartValid2_0108 anchorHistoryChunk0108
  decide

def anchorAggregatePartValid3_0108 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 110976
  | _ => True

theorem anchorAggregatePart3_0108 :
    anchorAggregatePartValid3_0108 anchorHistoryChunk0108 := by
  unfold anchorAggregatePartValid3_0108 anchorHistoryChunk0108
  decide

def anchorAggregatePartValid4_0108 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 111104
  | _ => True

theorem anchorAggregatePart4_0108 :
    anchorAggregatePartValid4_0108 anchorHistoryChunk0108 := by
  unfold anchorAggregatePartValid4_0108 anchorHistoryChunk0108
  decide

def anchorAggregatePartValid5_0108 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 111232
  | _ => True

theorem anchorAggregatePart5_0108 :
    anchorAggregatePartValid5_0108 anchorHistoryChunk0108 := by
  unfold anchorAggregatePartValid5_0108 anchorHistoryChunk0108
  decide

def anchorAggregatePartValid6_0108 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 111360
  | _ => True

theorem anchorAggregatePart6_0108 :
    anchorAggregatePartValid6_0108 anchorHistoryChunk0108 := by
  unfold anchorAggregatePartValid6_0108 anchorHistoryChunk0108
  decide

def anchorAggregatePartValid7_0108 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 111488
  | _ => True

theorem anchorAggregatePart7_0108 :
    anchorAggregatePartValid7_0108 anchorHistoryChunk0108 := by
  unfold anchorAggregatePartValid7_0108 anchorHistoryChunk0108
  decide

theorem anchorRange_0108 :
    anchorHistoryChunk0108.IndexedValid squarefreeOracle 5000000 110592 := by
  have h0 := anchorAggregatePart0_0108
  simp only [anchorAggregatePartValid0_0108, anchorHistoryChunk0108] at h0
  have h1 := anchorAggregatePart1_0108
  simp only [anchorAggregatePartValid1_0108, anchorHistoryChunk0108] at h1
  have h2 := anchorAggregatePart2_0108
  simp only [anchorAggregatePartValid2_0108, anchorHistoryChunk0108] at h2
  have h3 := anchorAggregatePart3_0108
  simp only [anchorAggregatePartValid3_0108, anchorHistoryChunk0108] at h3
  have h4 := anchorAggregatePart4_0108
  simp only [anchorAggregatePartValid4_0108, anchorHistoryChunk0108] at h4
  have h5 := anchorAggregatePart5_0108
  simp only [anchorAggregatePartValid5_0108, anchorHistoryChunk0108] at h5
  have h6 := anchorAggregatePart6_0108
  simp only [anchorAggregatePartValid6_0108, anchorHistoryChunk0108] at h6
  have h7 := anchorAggregatePart7_0108
  simp only [anchorAggregatePartValid7_0108, anchorHistoryChunk0108] at h7
  unfold anchorHistoryChunk0108
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0109 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 111616
  | _ => True

theorem anchorAggregatePart0_0109 :
    anchorAggregatePartValid0_0109 anchorHistoryChunk0109 := by
  unfold anchorAggregatePartValid0_0109 anchorHistoryChunk0109
  decide

def anchorAggregatePartValid1_0109 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 111744
  | _ => True

theorem anchorAggregatePart1_0109 :
    anchorAggregatePartValid1_0109 anchorHistoryChunk0109 := by
  unfold anchorAggregatePartValid1_0109 anchorHistoryChunk0109
  decide

def anchorAggregatePartValid2_0109 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 111872
  | _ => True

theorem anchorAggregatePart2_0109 :
    anchorAggregatePartValid2_0109 anchorHistoryChunk0109 := by
  unfold anchorAggregatePartValid2_0109 anchorHistoryChunk0109
  decide

def anchorAggregatePartValid3_0109 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 112000
  | _ => True

theorem anchorAggregatePart3_0109 :
    anchorAggregatePartValid3_0109 anchorHistoryChunk0109 := by
  unfold anchorAggregatePartValid3_0109 anchorHistoryChunk0109
  decide

def anchorAggregatePartValid4_0109 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 112128
  | _ => True

theorem anchorAggregatePart4_0109 :
    anchorAggregatePartValid4_0109 anchorHistoryChunk0109 := by
  unfold anchorAggregatePartValid4_0109 anchorHistoryChunk0109
  decide

def anchorAggregatePartValid5_0109 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 112256
  | _ => True

theorem anchorAggregatePart5_0109 :
    anchorAggregatePartValid5_0109 anchorHistoryChunk0109 := by
  unfold anchorAggregatePartValid5_0109 anchorHistoryChunk0109
  decide

def anchorAggregatePartValid6_0109 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 112384
  | _ => True

theorem anchorAggregatePart6_0109 :
    anchorAggregatePartValid6_0109 anchorHistoryChunk0109 := by
  unfold anchorAggregatePartValid6_0109 anchorHistoryChunk0109
  decide

def anchorAggregatePartValid7_0109 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 112512
  | _ => True

theorem anchorAggregatePart7_0109 :
    anchorAggregatePartValid7_0109 anchorHistoryChunk0109 := by
  unfold anchorAggregatePartValid7_0109 anchorHistoryChunk0109
  decide

theorem anchorRange_0109 :
    anchorHistoryChunk0109.IndexedValid squarefreeOracle 5000000 111616 := by
  have h0 := anchorAggregatePart0_0109
  simp only [anchorAggregatePartValid0_0109, anchorHistoryChunk0109] at h0
  have h1 := anchorAggregatePart1_0109
  simp only [anchorAggregatePartValid1_0109, anchorHistoryChunk0109] at h1
  have h2 := anchorAggregatePart2_0109
  simp only [anchorAggregatePartValid2_0109, anchorHistoryChunk0109] at h2
  have h3 := anchorAggregatePart3_0109
  simp only [anchorAggregatePartValid3_0109, anchorHistoryChunk0109] at h3
  have h4 := anchorAggregatePart4_0109
  simp only [anchorAggregatePartValid4_0109, anchorHistoryChunk0109] at h4
  have h5 := anchorAggregatePart5_0109
  simp only [anchorAggregatePartValid5_0109, anchorHistoryChunk0109] at h5
  have h6 := anchorAggregatePart6_0109
  simp only [anchorAggregatePartValid6_0109, anchorHistoryChunk0109] at h6
  have h7 := anchorAggregatePart7_0109
  simp only [anchorAggregatePartValid7_0109, anchorHistoryChunk0109] at h7
  unfold anchorHistoryChunk0109
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0110 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 112640
  | _ => True

theorem anchorAggregatePart0_0110 :
    anchorAggregatePartValid0_0110 anchorHistoryChunk0110 := by
  unfold anchorAggregatePartValid0_0110 anchorHistoryChunk0110
  decide

def anchorAggregatePartValid1_0110 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 112768
  | _ => True

theorem anchorAggregatePart1_0110 :
    anchorAggregatePartValid1_0110 anchorHistoryChunk0110 := by
  unfold anchorAggregatePartValid1_0110 anchorHistoryChunk0110
  decide

def anchorAggregatePartValid2_0110 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 112896
  | _ => True

theorem anchorAggregatePart2_0110 :
    anchorAggregatePartValid2_0110 anchorHistoryChunk0110 := by
  unfold anchorAggregatePartValid2_0110 anchorHistoryChunk0110
  decide

def anchorAggregatePartValid3_0110 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 113024
  | _ => True

theorem anchorAggregatePart3_0110 :
    anchorAggregatePartValid3_0110 anchorHistoryChunk0110 := by
  unfold anchorAggregatePartValid3_0110 anchorHistoryChunk0110
  decide

def anchorAggregatePartValid4_0110 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 113152
  | _ => True

theorem anchorAggregatePart4_0110 :
    anchorAggregatePartValid4_0110 anchorHistoryChunk0110 := by
  unfold anchorAggregatePartValid4_0110 anchorHistoryChunk0110
  decide

def anchorAggregatePartValid5_0110 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 113280
  | _ => True

theorem anchorAggregatePart5_0110 :
    anchorAggregatePartValid5_0110 anchorHistoryChunk0110 := by
  unfold anchorAggregatePartValid5_0110 anchorHistoryChunk0110
  decide

def anchorAggregatePartValid6_0110 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 113408
  | _ => True

theorem anchorAggregatePart6_0110 :
    anchorAggregatePartValid6_0110 anchorHistoryChunk0110 := by
  unfold anchorAggregatePartValid6_0110 anchorHistoryChunk0110
  decide

def anchorAggregatePartValid7_0110 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 113536
  | _ => True

theorem anchorAggregatePart7_0110 :
    anchorAggregatePartValid7_0110 anchorHistoryChunk0110 := by
  unfold anchorAggregatePartValid7_0110 anchorHistoryChunk0110
  decide

theorem anchorRange_0110 :
    anchorHistoryChunk0110.IndexedValid squarefreeOracle 5000000 112640 := by
  have h0 := anchorAggregatePart0_0110
  simp only [anchorAggregatePartValid0_0110, anchorHistoryChunk0110] at h0
  have h1 := anchorAggregatePart1_0110
  simp only [anchorAggregatePartValid1_0110, anchorHistoryChunk0110] at h1
  have h2 := anchorAggregatePart2_0110
  simp only [anchorAggregatePartValid2_0110, anchorHistoryChunk0110] at h2
  have h3 := anchorAggregatePart3_0110
  simp only [anchorAggregatePartValid3_0110, anchorHistoryChunk0110] at h3
  have h4 := anchorAggregatePart4_0110
  simp only [anchorAggregatePartValid4_0110, anchorHistoryChunk0110] at h4
  have h5 := anchorAggregatePart5_0110
  simp only [anchorAggregatePartValid5_0110, anchorHistoryChunk0110] at h5
  have h6 := anchorAggregatePart6_0110
  simp only [anchorAggregatePartValid6_0110, anchorHistoryChunk0110] at h6
  have h7 := anchorAggregatePart7_0110
  simp only [anchorAggregatePartValid7_0110, anchorHistoryChunk0110] at h7
  unfold anchorHistoryChunk0110
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0111 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 113664
  | _ => True

theorem anchorAggregatePart0_0111 :
    anchorAggregatePartValid0_0111 anchorHistoryChunk0111 := by
  unfold anchorAggregatePartValid0_0111 anchorHistoryChunk0111
  decide

def anchorAggregatePartValid1_0111 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 113792
  | _ => True

theorem anchorAggregatePart1_0111 :
    anchorAggregatePartValid1_0111 anchorHistoryChunk0111 := by
  unfold anchorAggregatePartValid1_0111 anchorHistoryChunk0111
  decide

def anchorAggregatePartValid2_0111 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 113920
  | _ => True

theorem anchorAggregatePart2_0111 :
    anchorAggregatePartValid2_0111 anchorHistoryChunk0111 := by
  unfold anchorAggregatePartValid2_0111 anchorHistoryChunk0111
  decide

def anchorAggregatePartValid3_0111 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 114048
  | _ => True

theorem anchorAggregatePart3_0111 :
    anchorAggregatePartValid3_0111 anchorHistoryChunk0111 := by
  unfold anchorAggregatePartValid3_0111 anchorHistoryChunk0111
  decide

def anchorAggregatePartValid4_0111 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 114176
  | _ => True

theorem anchorAggregatePart4_0111 :
    anchorAggregatePartValid4_0111 anchorHistoryChunk0111 := by
  unfold anchorAggregatePartValid4_0111 anchorHistoryChunk0111
  decide

def anchorAggregatePartValid5_0111 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 114304
  | _ => True

theorem anchorAggregatePart5_0111 :
    anchorAggregatePartValid5_0111 anchorHistoryChunk0111 := by
  unfold anchorAggregatePartValid5_0111 anchorHistoryChunk0111
  decide

def anchorAggregatePartValid6_0111 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 114432
  | _ => True

theorem anchorAggregatePart6_0111 :
    anchorAggregatePartValid6_0111 anchorHistoryChunk0111 := by
  unfold anchorAggregatePartValid6_0111 anchorHistoryChunk0111
  decide

def anchorAggregatePartValid7_0111 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 114560
  | _ => True

theorem anchorAggregatePart7_0111 :
    anchorAggregatePartValid7_0111 anchorHistoryChunk0111 := by
  unfold anchorAggregatePartValid7_0111 anchorHistoryChunk0111
  decide

theorem anchorRange_0111 :
    anchorHistoryChunk0111.IndexedValid squarefreeOracle 5000000 113664 := by
  have h0 := anchorAggregatePart0_0111
  simp only [anchorAggregatePartValid0_0111, anchorHistoryChunk0111] at h0
  have h1 := anchorAggregatePart1_0111
  simp only [anchorAggregatePartValid1_0111, anchorHistoryChunk0111] at h1
  have h2 := anchorAggregatePart2_0111
  simp only [anchorAggregatePartValid2_0111, anchorHistoryChunk0111] at h2
  have h3 := anchorAggregatePart3_0111
  simp only [anchorAggregatePartValid3_0111, anchorHistoryChunk0111] at h3
  have h4 := anchorAggregatePart4_0111
  simp only [anchorAggregatePartValid4_0111, anchorHistoryChunk0111] at h4
  have h5 := anchorAggregatePart5_0111
  simp only [anchorAggregatePartValid5_0111, anchorHistoryChunk0111] at h5
  have h6 := anchorAggregatePart6_0111
  simp only [anchorAggregatePartValid6_0111, anchorHistoryChunk0111] at h6
  have h7 := anchorAggregatePart7_0111
  simp only [anchorAggregatePartValid7_0111, anchorHistoryChunk0111] at h7
  unfold anchorHistoryChunk0111
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
