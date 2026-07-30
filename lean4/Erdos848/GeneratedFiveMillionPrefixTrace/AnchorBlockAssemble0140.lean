import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0140
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0141
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0142
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0143

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0140, 0141, 0142, 0143 -/

def anchorAggregatePartValid0_0140 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 143360
  | _ => True

theorem anchorAggregatePart0_0140 :
    anchorAggregatePartValid0_0140 anchorHistoryChunk0140 := by
  unfold anchorAggregatePartValid0_0140 anchorHistoryChunk0140
  decide

def anchorAggregatePartValid1_0140 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 143488
  | _ => True

theorem anchorAggregatePart1_0140 :
    anchorAggregatePartValid1_0140 anchorHistoryChunk0140 := by
  unfold anchorAggregatePartValid1_0140 anchorHistoryChunk0140
  decide

def anchorAggregatePartValid2_0140 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 143616
  | _ => True

theorem anchorAggregatePart2_0140 :
    anchorAggregatePartValid2_0140 anchorHistoryChunk0140 := by
  unfold anchorAggregatePartValid2_0140 anchorHistoryChunk0140
  decide

def anchorAggregatePartValid3_0140 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 143744
  | _ => True

theorem anchorAggregatePart3_0140 :
    anchorAggregatePartValid3_0140 anchorHistoryChunk0140 := by
  unfold anchorAggregatePartValid3_0140 anchorHistoryChunk0140
  decide

def anchorAggregatePartValid4_0140 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 143872
  | _ => True

theorem anchorAggregatePart4_0140 :
    anchorAggregatePartValid4_0140 anchorHistoryChunk0140 := by
  unfold anchorAggregatePartValid4_0140 anchorHistoryChunk0140
  decide

def anchorAggregatePartValid5_0140 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 144000
  | _ => True

theorem anchorAggregatePart5_0140 :
    anchorAggregatePartValid5_0140 anchorHistoryChunk0140 := by
  unfold anchorAggregatePartValid5_0140 anchorHistoryChunk0140
  decide

def anchorAggregatePartValid6_0140 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 144128
  | _ => True

theorem anchorAggregatePart6_0140 :
    anchorAggregatePartValid6_0140 anchorHistoryChunk0140 := by
  unfold anchorAggregatePartValid6_0140 anchorHistoryChunk0140
  decide

def anchorAggregatePartValid7_0140 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 144256
  | _ => True

theorem anchorAggregatePart7_0140 :
    anchorAggregatePartValid7_0140 anchorHistoryChunk0140 := by
  unfold anchorAggregatePartValid7_0140 anchorHistoryChunk0140
  decide

theorem anchorRange_0140 :
    anchorHistoryChunk0140.IndexedValid squarefreeOracle 5000000 143360 := by
  have h0 := anchorAggregatePart0_0140
  simp only [anchorAggregatePartValid0_0140, anchorHistoryChunk0140] at h0
  have h1 := anchorAggregatePart1_0140
  simp only [anchorAggregatePartValid1_0140, anchorHistoryChunk0140] at h1
  have h2 := anchorAggregatePart2_0140
  simp only [anchorAggregatePartValid2_0140, anchorHistoryChunk0140] at h2
  have h3 := anchorAggregatePart3_0140
  simp only [anchorAggregatePartValid3_0140, anchorHistoryChunk0140] at h3
  have h4 := anchorAggregatePart4_0140
  simp only [anchorAggregatePartValid4_0140, anchorHistoryChunk0140] at h4
  have h5 := anchorAggregatePart5_0140
  simp only [anchorAggregatePartValid5_0140, anchorHistoryChunk0140] at h5
  have h6 := anchorAggregatePart6_0140
  simp only [anchorAggregatePartValid6_0140, anchorHistoryChunk0140] at h6
  have h7 := anchorAggregatePart7_0140
  simp only [anchorAggregatePartValid7_0140, anchorHistoryChunk0140] at h7
  unfold anchorHistoryChunk0140
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0141 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 144384
  | _ => True

theorem anchorAggregatePart0_0141 :
    anchorAggregatePartValid0_0141 anchorHistoryChunk0141 := by
  unfold anchorAggregatePartValid0_0141 anchorHistoryChunk0141
  decide

def anchorAggregatePartValid1_0141 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 144512
  | _ => True

theorem anchorAggregatePart1_0141 :
    anchorAggregatePartValid1_0141 anchorHistoryChunk0141 := by
  unfold anchorAggregatePartValid1_0141 anchorHistoryChunk0141
  decide

def anchorAggregatePartValid2_0141 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 144640
  | _ => True

theorem anchorAggregatePart2_0141 :
    anchorAggregatePartValid2_0141 anchorHistoryChunk0141 := by
  unfold anchorAggregatePartValid2_0141 anchorHistoryChunk0141
  decide

def anchorAggregatePartValid3_0141 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 144768
  | _ => True

theorem anchorAggregatePart3_0141 :
    anchorAggregatePartValid3_0141 anchorHistoryChunk0141 := by
  unfold anchorAggregatePartValid3_0141 anchorHistoryChunk0141
  decide

def anchorAggregatePartValid4_0141 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 144896
  | _ => True

theorem anchorAggregatePart4_0141 :
    anchorAggregatePartValid4_0141 anchorHistoryChunk0141 := by
  unfold anchorAggregatePartValid4_0141 anchorHistoryChunk0141
  decide

def anchorAggregatePartValid5_0141 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 145024
  | _ => True

theorem anchorAggregatePart5_0141 :
    anchorAggregatePartValid5_0141 anchorHistoryChunk0141 := by
  unfold anchorAggregatePartValid5_0141 anchorHistoryChunk0141
  decide

def anchorAggregatePartValid6_0141 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 145152
  | _ => True

theorem anchorAggregatePart6_0141 :
    anchorAggregatePartValid6_0141 anchorHistoryChunk0141 := by
  unfold anchorAggregatePartValid6_0141 anchorHistoryChunk0141
  decide

def anchorAggregatePartValid7_0141 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 145280
  | _ => True

theorem anchorAggregatePart7_0141 :
    anchorAggregatePartValid7_0141 anchorHistoryChunk0141 := by
  unfold anchorAggregatePartValid7_0141 anchorHistoryChunk0141
  decide

theorem anchorRange_0141 :
    anchorHistoryChunk0141.IndexedValid squarefreeOracle 5000000 144384 := by
  have h0 := anchorAggregatePart0_0141
  simp only [anchorAggregatePartValid0_0141, anchorHistoryChunk0141] at h0
  have h1 := anchorAggregatePart1_0141
  simp only [anchorAggregatePartValid1_0141, anchorHistoryChunk0141] at h1
  have h2 := anchorAggregatePart2_0141
  simp only [anchorAggregatePartValid2_0141, anchorHistoryChunk0141] at h2
  have h3 := anchorAggregatePart3_0141
  simp only [anchorAggregatePartValid3_0141, anchorHistoryChunk0141] at h3
  have h4 := anchorAggregatePart4_0141
  simp only [anchorAggregatePartValid4_0141, anchorHistoryChunk0141] at h4
  have h5 := anchorAggregatePart5_0141
  simp only [anchorAggregatePartValid5_0141, anchorHistoryChunk0141] at h5
  have h6 := anchorAggregatePart6_0141
  simp only [anchorAggregatePartValid6_0141, anchorHistoryChunk0141] at h6
  have h7 := anchorAggregatePart7_0141
  simp only [anchorAggregatePartValid7_0141, anchorHistoryChunk0141] at h7
  unfold anchorHistoryChunk0141
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0142 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 145408
  | _ => True

theorem anchorAggregatePart0_0142 :
    anchorAggregatePartValid0_0142 anchorHistoryChunk0142 := by
  unfold anchorAggregatePartValid0_0142 anchorHistoryChunk0142
  decide

def anchorAggregatePartValid1_0142 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 145536
  | _ => True

theorem anchorAggregatePart1_0142 :
    anchorAggregatePartValid1_0142 anchorHistoryChunk0142 := by
  unfold anchorAggregatePartValid1_0142 anchorHistoryChunk0142
  decide

def anchorAggregatePartValid2_0142 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 145664
  | _ => True

theorem anchorAggregatePart2_0142 :
    anchorAggregatePartValid2_0142 anchorHistoryChunk0142 := by
  unfold anchorAggregatePartValid2_0142 anchorHistoryChunk0142
  decide

def anchorAggregatePartValid3_0142 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 145792
  | _ => True

theorem anchorAggregatePart3_0142 :
    anchorAggregatePartValid3_0142 anchorHistoryChunk0142 := by
  unfold anchorAggregatePartValid3_0142 anchorHistoryChunk0142
  decide

def anchorAggregatePartValid4_0142 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 145920
  | _ => True

theorem anchorAggregatePart4_0142 :
    anchorAggregatePartValid4_0142 anchorHistoryChunk0142 := by
  unfold anchorAggregatePartValid4_0142 anchorHistoryChunk0142
  decide

def anchorAggregatePartValid5_0142 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 146048
  | _ => True

theorem anchorAggregatePart5_0142 :
    anchorAggregatePartValid5_0142 anchorHistoryChunk0142 := by
  unfold anchorAggregatePartValid5_0142 anchorHistoryChunk0142
  decide

def anchorAggregatePartValid6_0142 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 146176
  | _ => True

theorem anchorAggregatePart6_0142 :
    anchorAggregatePartValid6_0142 anchorHistoryChunk0142 := by
  unfold anchorAggregatePartValid6_0142 anchorHistoryChunk0142
  decide

def anchorAggregatePartValid7_0142 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 146304
  | _ => True

theorem anchorAggregatePart7_0142 :
    anchorAggregatePartValid7_0142 anchorHistoryChunk0142 := by
  unfold anchorAggregatePartValid7_0142 anchorHistoryChunk0142
  decide

theorem anchorRange_0142 :
    anchorHistoryChunk0142.IndexedValid squarefreeOracle 5000000 145408 := by
  have h0 := anchorAggregatePart0_0142
  simp only [anchorAggregatePartValid0_0142, anchorHistoryChunk0142] at h0
  have h1 := anchorAggregatePart1_0142
  simp only [anchorAggregatePartValid1_0142, anchorHistoryChunk0142] at h1
  have h2 := anchorAggregatePart2_0142
  simp only [anchorAggregatePartValid2_0142, anchorHistoryChunk0142] at h2
  have h3 := anchorAggregatePart3_0142
  simp only [anchorAggregatePartValid3_0142, anchorHistoryChunk0142] at h3
  have h4 := anchorAggregatePart4_0142
  simp only [anchorAggregatePartValid4_0142, anchorHistoryChunk0142] at h4
  have h5 := anchorAggregatePart5_0142
  simp only [anchorAggregatePartValid5_0142, anchorHistoryChunk0142] at h5
  have h6 := anchorAggregatePart6_0142
  simp only [anchorAggregatePartValid6_0142, anchorHistoryChunk0142] at h6
  have h7 := anchorAggregatePart7_0142
  simp only [anchorAggregatePartValid7_0142, anchorHistoryChunk0142] at h7
  unfold anchorHistoryChunk0142
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0143 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 146432
  | _ => True

theorem anchorAggregatePart0_0143 :
    anchorAggregatePartValid0_0143 anchorHistoryChunk0143 := by
  unfold anchorAggregatePartValid0_0143 anchorHistoryChunk0143
  decide

def anchorAggregatePartValid1_0143 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 146560
  | _ => True

theorem anchorAggregatePart1_0143 :
    anchorAggregatePartValid1_0143 anchorHistoryChunk0143 := by
  unfold anchorAggregatePartValid1_0143 anchorHistoryChunk0143
  decide

def anchorAggregatePartValid2_0143 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 146688
  | _ => True

theorem anchorAggregatePart2_0143 :
    anchorAggregatePartValid2_0143 anchorHistoryChunk0143 := by
  unfold anchorAggregatePartValid2_0143 anchorHistoryChunk0143
  decide

def anchorAggregatePartValid3_0143 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 146816
  | _ => True

theorem anchorAggregatePart3_0143 :
    anchorAggregatePartValid3_0143 anchorHistoryChunk0143 := by
  unfold anchorAggregatePartValid3_0143 anchorHistoryChunk0143
  decide

def anchorAggregatePartValid4_0143 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 146944
  | _ => True

theorem anchorAggregatePart4_0143 :
    anchorAggregatePartValid4_0143 anchorHistoryChunk0143 := by
  unfold anchorAggregatePartValid4_0143 anchorHistoryChunk0143
  decide

def anchorAggregatePartValid5_0143 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 147072
  | _ => True

theorem anchorAggregatePart5_0143 :
    anchorAggregatePartValid5_0143 anchorHistoryChunk0143 := by
  unfold anchorAggregatePartValid5_0143 anchorHistoryChunk0143
  decide

def anchorAggregatePartValid6_0143 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 147200
  | _ => True

theorem anchorAggregatePart6_0143 :
    anchorAggregatePartValid6_0143 anchorHistoryChunk0143 := by
  unfold anchorAggregatePartValid6_0143 anchorHistoryChunk0143
  decide

def anchorAggregatePartValid7_0143 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 147328
  | _ => True

theorem anchorAggregatePart7_0143 :
    anchorAggregatePartValid7_0143 anchorHistoryChunk0143 := by
  unfold anchorAggregatePartValid7_0143 anchorHistoryChunk0143
  decide

theorem anchorRange_0143 :
    anchorHistoryChunk0143.IndexedValid squarefreeOracle 5000000 146432 := by
  have h0 := anchorAggregatePart0_0143
  simp only [anchorAggregatePartValid0_0143, anchorHistoryChunk0143] at h0
  have h1 := anchorAggregatePart1_0143
  simp only [anchorAggregatePartValid1_0143, anchorHistoryChunk0143] at h1
  have h2 := anchorAggregatePart2_0143
  simp only [anchorAggregatePartValid2_0143, anchorHistoryChunk0143] at h2
  have h3 := anchorAggregatePart3_0143
  simp only [anchorAggregatePartValid3_0143, anchorHistoryChunk0143] at h3
  have h4 := anchorAggregatePart4_0143
  simp only [anchorAggregatePartValid4_0143, anchorHistoryChunk0143] at h4
  have h5 := anchorAggregatePart5_0143
  simp only [anchorAggregatePartValid5_0143, anchorHistoryChunk0143] at h5
  have h6 := anchorAggregatePart6_0143
  simp only [anchorAggregatePartValid6_0143, anchorHistoryChunk0143] at h6
  have h7 := anchorAggregatePart7_0143
  simp only [anchorAggregatePartValid7_0143, anchorHistoryChunk0143] at h7
  unfold anchorHistoryChunk0143
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
