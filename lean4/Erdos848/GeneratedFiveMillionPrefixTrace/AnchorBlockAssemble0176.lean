import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0176
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0177
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0178
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0179

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0176, 0177, 0178, 0179 -/

def anchorAggregatePartValid0_0176 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 180224
  | _ => True

theorem anchorAggregatePart0_0176 :
    anchorAggregatePartValid0_0176 anchorHistoryChunk0176 := by
  unfold anchorAggregatePartValid0_0176 anchorHistoryChunk0176
  decide

def anchorAggregatePartValid1_0176 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 180352
  | _ => True

theorem anchorAggregatePart1_0176 :
    anchorAggregatePartValid1_0176 anchorHistoryChunk0176 := by
  unfold anchorAggregatePartValid1_0176 anchorHistoryChunk0176
  decide

def anchorAggregatePartValid2_0176 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 180480
  | _ => True

theorem anchorAggregatePart2_0176 :
    anchorAggregatePartValid2_0176 anchorHistoryChunk0176 := by
  unfold anchorAggregatePartValid2_0176 anchorHistoryChunk0176
  decide

def anchorAggregatePartValid3_0176 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 180608
  | _ => True

theorem anchorAggregatePart3_0176 :
    anchorAggregatePartValid3_0176 anchorHistoryChunk0176 := by
  unfold anchorAggregatePartValid3_0176 anchorHistoryChunk0176
  decide

def anchorAggregatePartValid4_0176 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 180736
  | _ => True

theorem anchorAggregatePart4_0176 :
    anchorAggregatePartValid4_0176 anchorHistoryChunk0176 := by
  unfold anchorAggregatePartValid4_0176 anchorHistoryChunk0176
  decide

def anchorAggregatePartValid5_0176 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 180864
  | _ => True

theorem anchorAggregatePart5_0176 :
    anchorAggregatePartValid5_0176 anchorHistoryChunk0176 := by
  unfold anchorAggregatePartValid5_0176 anchorHistoryChunk0176
  decide

def anchorAggregatePartValid6_0176 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 180992
  | _ => True

theorem anchorAggregatePart6_0176 :
    anchorAggregatePartValid6_0176 anchorHistoryChunk0176 := by
  unfold anchorAggregatePartValid6_0176 anchorHistoryChunk0176
  decide

def anchorAggregatePartValid7_0176 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 181120
  | _ => True

theorem anchorAggregatePart7_0176 :
    anchorAggregatePartValid7_0176 anchorHistoryChunk0176 := by
  unfold anchorAggregatePartValid7_0176 anchorHistoryChunk0176
  decide

theorem anchorRange_0176 :
    anchorHistoryChunk0176.IndexedValid squarefreeOracle 5000000 180224 := by
  have h0 := anchorAggregatePart0_0176
  simp only [anchorAggregatePartValid0_0176, anchorHistoryChunk0176] at h0
  have h1 := anchorAggregatePart1_0176
  simp only [anchorAggregatePartValid1_0176, anchorHistoryChunk0176] at h1
  have h2 := anchorAggregatePart2_0176
  simp only [anchorAggregatePartValid2_0176, anchorHistoryChunk0176] at h2
  have h3 := anchorAggregatePart3_0176
  simp only [anchorAggregatePartValid3_0176, anchorHistoryChunk0176] at h3
  have h4 := anchorAggregatePart4_0176
  simp only [anchorAggregatePartValid4_0176, anchorHistoryChunk0176] at h4
  have h5 := anchorAggregatePart5_0176
  simp only [anchorAggregatePartValid5_0176, anchorHistoryChunk0176] at h5
  have h6 := anchorAggregatePart6_0176
  simp only [anchorAggregatePartValid6_0176, anchorHistoryChunk0176] at h6
  have h7 := anchorAggregatePart7_0176
  simp only [anchorAggregatePartValid7_0176, anchorHistoryChunk0176] at h7
  unfold anchorHistoryChunk0176
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0177 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 181248
  | _ => True

theorem anchorAggregatePart0_0177 :
    anchorAggregatePartValid0_0177 anchorHistoryChunk0177 := by
  unfold anchorAggregatePartValid0_0177 anchorHistoryChunk0177
  decide

def anchorAggregatePartValid1_0177 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 181376
  | _ => True

theorem anchorAggregatePart1_0177 :
    anchorAggregatePartValid1_0177 anchorHistoryChunk0177 := by
  unfold anchorAggregatePartValid1_0177 anchorHistoryChunk0177
  decide

def anchorAggregatePartValid2_0177 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 181504
  | _ => True

theorem anchorAggregatePart2_0177 :
    anchorAggregatePartValid2_0177 anchorHistoryChunk0177 := by
  unfold anchorAggregatePartValid2_0177 anchorHistoryChunk0177
  decide

def anchorAggregatePartValid3_0177 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 181632
  | _ => True

theorem anchorAggregatePart3_0177 :
    anchorAggregatePartValid3_0177 anchorHistoryChunk0177 := by
  unfold anchorAggregatePartValid3_0177 anchorHistoryChunk0177
  decide

def anchorAggregatePartValid4_0177 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 181760
  | _ => True

theorem anchorAggregatePart4_0177 :
    anchorAggregatePartValid4_0177 anchorHistoryChunk0177 := by
  unfold anchorAggregatePartValid4_0177 anchorHistoryChunk0177
  decide

def anchorAggregatePartValid5_0177 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 181888
  | _ => True

theorem anchorAggregatePart5_0177 :
    anchorAggregatePartValid5_0177 anchorHistoryChunk0177 := by
  unfold anchorAggregatePartValid5_0177 anchorHistoryChunk0177
  decide

def anchorAggregatePartValid6_0177 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 182016
  | _ => True

theorem anchorAggregatePart6_0177 :
    anchorAggregatePartValid6_0177 anchorHistoryChunk0177 := by
  unfold anchorAggregatePartValid6_0177 anchorHistoryChunk0177
  decide

def anchorAggregatePartValid7_0177 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 182144
  | _ => True

theorem anchorAggregatePart7_0177 :
    anchorAggregatePartValid7_0177 anchorHistoryChunk0177 := by
  unfold anchorAggregatePartValid7_0177 anchorHistoryChunk0177
  decide

theorem anchorRange_0177 :
    anchorHistoryChunk0177.IndexedValid squarefreeOracle 5000000 181248 := by
  have h0 := anchorAggregatePart0_0177
  simp only [anchorAggregatePartValid0_0177, anchorHistoryChunk0177] at h0
  have h1 := anchorAggregatePart1_0177
  simp only [anchorAggregatePartValid1_0177, anchorHistoryChunk0177] at h1
  have h2 := anchorAggregatePart2_0177
  simp only [anchorAggregatePartValid2_0177, anchorHistoryChunk0177] at h2
  have h3 := anchorAggregatePart3_0177
  simp only [anchorAggregatePartValid3_0177, anchorHistoryChunk0177] at h3
  have h4 := anchorAggregatePart4_0177
  simp only [anchorAggregatePartValid4_0177, anchorHistoryChunk0177] at h4
  have h5 := anchorAggregatePart5_0177
  simp only [anchorAggregatePartValid5_0177, anchorHistoryChunk0177] at h5
  have h6 := anchorAggregatePart6_0177
  simp only [anchorAggregatePartValid6_0177, anchorHistoryChunk0177] at h6
  have h7 := anchorAggregatePart7_0177
  simp only [anchorAggregatePartValid7_0177, anchorHistoryChunk0177] at h7
  unfold anchorHistoryChunk0177
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0178 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 182272
  | _ => True

theorem anchorAggregatePart0_0178 :
    anchorAggregatePartValid0_0178 anchorHistoryChunk0178 := by
  unfold anchorAggregatePartValid0_0178 anchorHistoryChunk0178
  decide

def anchorAggregatePartValid1_0178 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 182400
  | _ => True

theorem anchorAggregatePart1_0178 :
    anchorAggregatePartValid1_0178 anchorHistoryChunk0178 := by
  unfold anchorAggregatePartValid1_0178 anchorHistoryChunk0178
  decide

def anchorAggregatePartValid2_0178 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 182528
  | _ => True

theorem anchorAggregatePart2_0178 :
    anchorAggregatePartValid2_0178 anchorHistoryChunk0178 := by
  unfold anchorAggregatePartValid2_0178 anchorHistoryChunk0178
  decide

def anchorAggregatePartValid3_0178 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 182656
  | _ => True

theorem anchorAggregatePart3_0178 :
    anchorAggregatePartValid3_0178 anchorHistoryChunk0178 := by
  unfold anchorAggregatePartValid3_0178 anchorHistoryChunk0178
  decide

def anchorAggregatePartValid4_0178 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 182784
  | _ => True

theorem anchorAggregatePart4_0178 :
    anchorAggregatePartValid4_0178 anchorHistoryChunk0178 := by
  unfold anchorAggregatePartValid4_0178 anchorHistoryChunk0178
  decide

def anchorAggregatePartValid5_0178 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 182912
  | _ => True

theorem anchorAggregatePart5_0178 :
    anchorAggregatePartValid5_0178 anchorHistoryChunk0178 := by
  unfold anchorAggregatePartValid5_0178 anchorHistoryChunk0178
  decide

def anchorAggregatePartValid6_0178 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 183040
  | _ => True

theorem anchorAggregatePart6_0178 :
    anchorAggregatePartValid6_0178 anchorHistoryChunk0178 := by
  unfold anchorAggregatePartValid6_0178 anchorHistoryChunk0178
  decide

def anchorAggregatePartValid7_0178 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 183168
  | _ => True

theorem anchorAggregatePart7_0178 :
    anchorAggregatePartValid7_0178 anchorHistoryChunk0178 := by
  unfold anchorAggregatePartValid7_0178 anchorHistoryChunk0178
  decide

theorem anchorRange_0178 :
    anchorHistoryChunk0178.IndexedValid squarefreeOracle 5000000 182272 := by
  have h0 := anchorAggregatePart0_0178
  simp only [anchorAggregatePartValid0_0178, anchorHistoryChunk0178] at h0
  have h1 := anchorAggregatePart1_0178
  simp only [anchorAggregatePartValid1_0178, anchorHistoryChunk0178] at h1
  have h2 := anchorAggregatePart2_0178
  simp only [anchorAggregatePartValid2_0178, anchorHistoryChunk0178] at h2
  have h3 := anchorAggregatePart3_0178
  simp only [anchorAggregatePartValid3_0178, anchorHistoryChunk0178] at h3
  have h4 := anchorAggregatePart4_0178
  simp only [anchorAggregatePartValid4_0178, anchorHistoryChunk0178] at h4
  have h5 := anchorAggregatePart5_0178
  simp only [anchorAggregatePartValid5_0178, anchorHistoryChunk0178] at h5
  have h6 := anchorAggregatePart6_0178
  simp only [anchorAggregatePartValid6_0178, anchorHistoryChunk0178] at h6
  have h7 := anchorAggregatePart7_0178
  simp only [anchorAggregatePartValid7_0178, anchorHistoryChunk0178] at h7
  unfold anchorHistoryChunk0178
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0179 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 183296
  | _ => True

theorem anchorAggregatePart0_0179 :
    anchorAggregatePartValid0_0179 anchorHistoryChunk0179 := by
  unfold anchorAggregatePartValid0_0179 anchorHistoryChunk0179
  decide

def anchorAggregatePartValid1_0179 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 183424
  | _ => True

theorem anchorAggregatePart1_0179 :
    anchorAggregatePartValid1_0179 anchorHistoryChunk0179 := by
  unfold anchorAggregatePartValid1_0179 anchorHistoryChunk0179
  decide

def anchorAggregatePartValid2_0179 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 183552
  | _ => True

theorem anchorAggregatePart2_0179 :
    anchorAggregatePartValid2_0179 anchorHistoryChunk0179 := by
  unfold anchorAggregatePartValid2_0179 anchorHistoryChunk0179
  decide

def anchorAggregatePartValid3_0179 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 183680
  | _ => True

theorem anchorAggregatePart3_0179 :
    anchorAggregatePartValid3_0179 anchorHistoryChunk0179 := by
  unfold anchorAggregatePartValid3_0179 anchorHistoryChunk0179
  decide

def anchorAggregatePartValid4_0179 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 183808
  | _ => True

theorem anchorAggregatePart4_0179 :
    anchorAggregatePartValid4_0179 anchorHistoryChunk0179 := by
  unfold anchorAggregatePartValid4_0179 anchorHistoryChunk0179
  decide

def anchorAggregatePartValid5_0179 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 183936
  | _ => True

theorem anchorAggregatePart5_0179 :
    anchorAggregatePartValid5_0179 anchorHistoryChunk0179 := by
  unfold anchorAggregatePartValid5_0179 anchorHistoryChunk0179
  decide

def anchorAggregatePartValid6_0179 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 184064
  | _ => True

theorem anchorAggregatePart6_0179 :
    anchorAggregatePartValid6_0179 anchorHistoryChunk0179 := by
  unfold anchorAggregatePartValid6_0179 anchorHistoryChunk0179
  decide

def anchorAggregatePartValid7_0179 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 184192
  | _ => True

theorem anchorAggregatePart7_0179 :
    anchorAggregatePartValid7_0179 anchorHistoryChunk0179 := by
  unfold anchorAggregatePartValid7_0179 anchorHistoryChunk0179
  decide

theorem anchorRange_0179 :
    anchorHistoryChunk0179.IndexedValid squarefreeOracle 5000000 183296 := by
  have h0 := anchorAggregatePart0_0179
  simp only [anchorAggregatePartValid0_0179, anchorHistoryChunk0179] at h0
  have h1 := anchorAggregatePart1_0179
  simp only [anchorAggregatePartValid1_0179, anchorHistoryChunk0179] at h1
  have h2 := anchorAggregatePart2_0179
  simp only [anchorAggregatePartValid2_0179, anchorHistoryChunk0179] at h2
  have h3 := anchorAggregatePart3_0179
  simp only [anchorAggregatePartValid3_0179, anchorHistoryChunk0179] at h3
  have h4 := anchorAggregatePart4_0179
  simp only [anchorAggregatePartValid4_0179, anchorHistoryChunk0179] at h4
  have h5 := anchorAggregatePart5_0179
  simp only [anchorAggregatePartValid5_0179, anchorHistoryChunk0179] at h5
  have h6 := anchorAggregatePart6_0179
  simp only [anchorAggregatePartValid6_0179, anchorHistoryChunk0179] at h6
  have h7 := anchorAggregatePart7_0179
  simp only [anchorAggregatePartValid7_0179, anchorHistoryChunk0179] at h7
  unfold anchorHistoryChunk0179
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
