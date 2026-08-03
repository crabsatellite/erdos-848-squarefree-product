import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0128
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0129
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0130
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0131

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0128, 0129, 0130, 0131 -/

def anchorAggregatePartValid0_0128 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 131072
  | _ => True

theorem anchorAggregatePart0_0128 :
    anchorAggregatePartValid0_0128 anchorHistoryChunk0128 := by
  unfold anchorAggregatePartValid0_0128 anchorHistoryChunk0128
  decide

def anchorAggregatePartValid1_0128 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 131200
  | _ => True

theorem anchorAggregatePart1_0128 :
    anchorAggregatePartValid1_0128 anchorHistoryChunk0128 := by
  unfold anchorAggregatePartValid1_0128 anchorHistoryChunk0128
  decide

def anchorAggregatePartValid2_0128 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 131328
  | _ => True

theorem anchorAggregatePart2_0128 :
    anchorAggregatePartValid2_0128 anchorHistoryChunk0128 := by
  unfold anchorAggregatePartValid2_0128 anchorHistoryChunk0128
  decide

def anchorAggregatePartValid3_0128 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 131456
  | _ => True

theorem anchorAggregatePart3_0128 :
    anchorAggregatePartValid3_0128 anchorHistoryChunk0128 := by
  unfold anchorAggregatePartValid3_0128 anchorHistoryChunk0128
  decide

def anchorAggregatePartValid4_0128 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 131584
  | _ => True

theorem anchorAggregatePart4_0128 :
    anchorAggregatePartValid4_0128 anchorHistoryChunk0128 := by
  unfold anchorAggregatePartValid4_0128 anchorHistoryChunk0128
  decide

def anchorAggregatePartValid5_0128 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 131712
  | _ => True

theorem anchorAggregatePart5_0128 :
    anchorAggregatePartValid5_0128 anchorHistoryChunk0128 := by
  unfold anchorAggregatePartValid5_0128 anchorHistoryChunk0128
  decide

def anchorAggregatePartValid6_0128 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 131840
  | _ => True

theorem anchorAggregatePart6_0128 :
    anchorAggregatePartValid6_0128 anchorHistoryChunk0128 := by
  unfold anchorAggregatePartValid6_0128 anchorHistoryChunk0128
  decide

def anchorAggregatePartValid7_0128 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 131968
  | _ => True

theorem anchorAggregatePart7_0128 :
    anchorAggregatePartValid7_0128 anchorHistoryChunk0128 := by
  unfold anchorAggregatePartValid7_0128 anchorHistoryChunk0128
  decide

theorem anchorRange_0128 :
    anchorHistoryChunk0128.IndexedValid squarefreeOracle 5000000 131072 := by
  have h0 := anchorAggregatePart0_0128
  simp only [anchorAggregatePartValid0_0128, anchorHistoryChunk0128] at h0
  have h1 := anchorAggregatePart1_0128
  simp only [anchorAggregatePartValid1_0128, anchorHistoryChunk0128] at h1
  have h2 := anchorAggregatePart2_0128
  simp only [anchorAggregatePartValid2_0128, anchorHistoryChunk0128] at h2
  have h3 := anchorAggregatePart3_0128
  simp only [anchorAggregatePartValid3_0128, anchorHistoryChunk0128] at h3
  have h4 := anchorAggregatePart4_0128
  simp only [anchorAggregatePartValid4_0128, anchorHistoryChunk0128] at h4
  have h5 := anchorAggregatePart5_0128
  simp only [anchorAggregatePartValid5_0128, anchorHistoryChunk0128] at h5
  have h6 := anchorAggregatePart6_0128
  simp only [anchorAggregatePartValid6_0128, anchorHistoryChunk0128] at h6
  have h7 := anchorAggregatePart7_0128
  simp only [anchorAggregatePartValid7_0128, anchorHistoryChunk0128] at h7
  unfold anchorHistoryChunk0128
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0129 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 132096
  | _ => True

theorem anchorAggregatePart0_0129 :
    anchorAggregatePartValid0_0129 anchorHistoryChunk0129 := by
  unfold anchorAggregatePartValid0_0129 anchorHistoryChunk0129
  decide

def anchorAggregatePartValid1_0129 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 132224
  | _ => True

theorem anchorAggregatePart1_0129 :
    anchorAggregatePartValid1_0129 anchorHistoryChunk0129 := by
  unfold anchorAggregatePartValid1_0129 anchorHistoryChunk0129
  decide

def anchorAggregatePartValid2_0129 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 132352
  | _ => True

theorem anchorAggregatePart2_0129 :
    anchorAggregatePartValid2_0129 anchorHistoryChunk0129 := by
  unfold anchorAggregatePartValid2_0129 anchorHistoryChunk0129
  decide

def anchorAggregatePartValid3_0129 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 132480
  | _ => True

theorem anchorAggregatePart3_0129 :
    anchorAggregatePartValid3_0129 anchorHistoryChunk0129 := by
  unfold anchorAggregatePartValid3_0129 anchorHistoryChunk0129
  decide

def anchorAggregatePartValid4_0129 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 132608
  | _ => True

theorem anchorAggregatePart4_0129 :
    anchorAggregatePartValid4_0129 anchorHistoryChunk0129 := by
  unfold anchorAggregatePartValid4_0129 anchorHistoryChunk0129
  decide

def anchorAggregatePartValid5_0129 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 132736
  | _ => True

theorem anchorAggregatePart5_0129 :
    anchorAggregatePartValid5_0129 anchorHistoryChunk0129 := by
  unfold anchorAggregatePartValid5_0129 anchorHistoryChunk0129
  decide

def anchorAggregatePartValid6_0129 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 132864
  | _ => True

theorem anchorAggregatePart6_0129 :
    anchorAggregatePartValid6_0129 anchorHistoryChunk0129 := by
  unfold anchorAggregatePartValid6_0129 anchorHistoryChunk0129
  decide

def anchorAggregatePartValid7_0129 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 132992
  | _ => True

theorem anchorAggregatePart7_0129 :
    anchorAggregatePartValid7_0129 anchorHistoryChunk0129 := by
  unfold anchorAggregatePartValid7_0129 anchorHistoryChunk0129
  decide

theorem anchorRange_0129 :
    anchorHistoryChunk0129.IndexedValid squarefreeOracle 5000000 132096 := by
  have h0 := anchorAggregatePart0_0129
  simp only [anchorAggregatePartValid0_0129, anchorHistoryChunk0129] at h0
  have h1 := anchorAggregatePart1_0129
  simp only [anchorAggregatePartValid1_0129, anchorHistoryChunk0129] at h1
  have h2 := anchorAggregatePart2_0129
  simp only [anchorAggregatePartValid2_0129, anchorHistoryChunk0129] at h2
  have h3 := anchorAggregatePart3_0129
  simp only [anchorAggregatePartValid3_0129, anchorHistoryChunk0129] at h3
  have h4 := anchorAggregatePart4_0129
  simp only [anchorAggregatePartValid4_0129, anchorHistoryChunk0129] at h4
  have h5 := anchorAggregatePart5_0129
  simp only [anchorAggregatePartValid5_0129, anchorHistoryChunk0129] at h5
  have h6 := anchorAggregatePart6_0129
  simp only [anchorAggregatePartValid6_0129, anchorHistoryChunk0129] at h6
  have h7 := anchorAggregatePart7_0129
  simp only [anchorAggregatePartValid7_0129, anchorHistoryChunk0129] at h7
  unfold anchorHistoryChunk0129
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0130 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 133120
  | _ => True

theorem anchorAggregatePart0_0130 :
    anchorAggregatePartValid0_0130 anchorHistoryChunk0130 := by
  unfold anchorAggregatePartValid0_0130 anchorHistoryChunk0130
  decide

def anchorAggregatePartValid1_0130 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 133248
  | _ => True

theorem anchorAggregatePart1_0130 :
    anchorAggregatePartValid1_0130 anchorHistoryChunk0130 := by
  unfold anchorAggregatePartValid1_0130 anchorHistoryChunk0130
  decide

def anchorAggregatePartValid2_0130 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 133376
  | _ => True

theorem anchorAggregatePart2_0130 :
    anchorAggregatePartValid2_0130 anchorHistoryChunk0130 := by
  unfold anchorAggregatePartValid2_0130 anchorHistoryChunk0130
  decide

def anchorAggregatePartValid3_0130 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 133504
  | _ => True

theorem anchorAggregatePart3_0130 :
    anchorAggregatePartValid3_0130 anchorHistoryChunk0130 := by
  unfold anchorAggregatePartValid3_0130 anchorHistoryChunk0130
  decide

def anchorAggregatePartValid4_0130 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 133632
  | _ => True

theorem anchorAggregatePart4_0130 :
    anchorAggregatePartValid4_0130 anchorHistoryChunk0130 := by
  unfold anchorAggregatePartValid4_0130 anchorHistoryChunk0130
  decide

def anchorAggregatePartValid5_0130 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 133760
  | _ => True

theorem anchorAggregatePart5_0130 :
    anchorAggregatePartValid5_0130 anchorHistoryChunk0130 := by
  unfold anchorAggregatePartValid5_0130 anchorHistoryChunk0130
  decide

def anchorAggregatePartValid6_0130 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 133888
  | _ => True

theorem anchorAggregatePart6_0130 :
    anchorAggregatePartValid6_0130 anchorHistoryChunk0130 := by
  unfold anchorAggregatePartValid6_0130 anchorHistoryChunk0130
  decide

def anchorAggregatePartValid7_0130 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 134016
  | _ => True

theorem anchorAggregatePart7_0130 :
    anchorAggregatePartValid7_0130 anchorHistoryChunk0130 := by
  unfold anchorAggregatePartValid7_0130 anchorHistoryChunk0130
  decide

theorem anchorRange_0130 :
    anchorHistoryChunk0130.IndexedValid squarefreeOracle 5000000 133120 := by
  have h0 := anchorAggregatePart0_0130
  simp only [anchorAggregatePartValid0_0130, anchorHistoryChunk0130] at h0
  have h1 := anchorAggregatePart1_0130
  simp only [anchorAggregatePartValid1_0130, anchorHistoryChunk0130] at h1
  have h2 := anchorAggregatePart2_0130
  simp only [anchorAggregatePartValid2_0130, anchorHistoryChunk0130] at h2
  have h3 := anchorAggregatePart3_0130
  simp only [anchorAggregatePartValid3_0130, anchorHistoryChunk0130] at h3
  have h4 := anchorAggregatePart4_0130
  simp only [anchorAggregatePartValid4_0130, anchorHistoryChunk0130] at h4
  have h5 := anchorAggregatePart5_0130
  simp only [anchorAggregatePartValid5_0130, anchorHistoryChunk0130] at h5
  have h6 := anchorAggregatePart6_0130
  simp only [anchorAggregatePartValid6_0130, anchorHistoryChunk0130] at h6
  have h7 := anchorAggregatePart7_0130
  simp only [anchorAggregatePartValid7_0130, anchorHistoryChunk0130] at h7
  unfold anchorHistoryChunk0130
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0131 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 134144
  | _ => True

theorem anchorAggregatePart0_0131 :
    anchorAggregatePartValid0_0131 anchorHistoryChunk0131 := by
  unfold anchorAggregatePartValid0_0131 anchorHistoryChunk0131
  decide

def anchorAggregatePartValid1_0131 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 134272
  | _ => True

theorem anchorAggregatePart1_0131 :
    anchorAggregatePartValid1_0131 anchorHistoryChunk0131 := by
  unfold anchorAggregatePartValid1_0131 anchorHistoryChunk0131
  decide

def anchorAggregatePartValid2_0131 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 134400
  | _ => True

theorem anchorAggregatePart2_0131 :
    anchorAggregatePartValid2_0131 anchorHistoryChunk0131 := by
  unfold anchorAggregatePartValid2_0131 anchorHistoryChunk0131
  decide

def anchorAggregatePartValid3_0131 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 134528
  | _ => True

theorem anchorAggregatePart3_0131 :
    anchorAggregatePartValid3_0131 anchorHistoryChunk0131 := by
  unfold anchorAggregatePartValid3_0131 anchorHistoryChunk0131
  decide

def anchorAggregatePartValid4_0131 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 134656
  | _ => True

theorem anchorAggregatePart4_0131 :
    anchorAggregatePartValid4_0131 anchorHistoryChunk0131 := by
  unfold anchorAggregatePartValid4_0131 anchorHistoryChunk0131
  decide

def anchorAggregatePartValid5_0131 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 134784
  | _ => True

theorem anchorAggregatePart5_0131 :
    anchorAggregatePartValid5_0131 anchorHistoryChunk0131 := by
  unfold anchorAggregatePartValid5_0131 anchorHistoryChunk0131
  decide

def anchorAggregatePartValid6_0131 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 134912
  | _ => True

theorem anchorAggregatePart6_0131 :
    anchorAggregatePartValid6_0131 anchorHistoryChunk0131 := by
  unfold anchorAggregatePartValid6_0131 anchorHistoryChunk0131
  decide

def anchorAggregatePartValid7_0131 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 135040
  | _ => True

theorem anchorAggregatePart7_0131 :
    anchorAggregatePartValid7_0131 anchorHistoryChunk0131 := by
  unfold anchorAggregatePartValid7_0131 anchorHistoryChunk0131
  decide

theorem anchorRange_0131 :
    anchorHistoryChunk0131.IndexedValid squarefreeOracle 5000000 134144 := by
  have h0 := anchorAggregatePart0_0131
  simp only [anchorAggregatePartValid0_0131, anchorHistoryChunk0131] at h0
  have h1 := anchorAggregatePart1_0131
  simp only [anchorAggregatePartValid1_0131, anchorHistoryChunk0131] at h1
  have h2 := anchorAggregatePart2_0131
  simp only [anchorAggregatePartValid2_0131, anchorHistoryChunk0131] at h2
  have h3 := anchorAggregatePart3_0131
  simp only [anchorAggregatePartValid3_0131, anchorHistoryChunk0131] at h3
  have h4 := anchorAggregatePart4_0131
  simp only [anchorAggregatePartValid4_0131, anchorHistoryChunk0131] at h4
  have h5 := anchorAggregatePart5_0131
  simp only [anchorAggregatePartValid5_0131, anchorHistoryChunk0131] at h5
  have h6 := anchorAggregatePart6_0131
  simp only [anchorAggregatePartValid6_0131, anchorHistoryChunk0131] at h6
  have h7 := anchorAggregatePart7_0131
  simp only [anchorAggregatePartValid7_0131, anchorHistoryChunk0131] at h7
  unfold anchorHistoryChunk0131
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
