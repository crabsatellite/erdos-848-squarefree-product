import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0192
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0193
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0194
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0195

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0192, 0193, 0194, 0195 -/

def anchorAggregatePartValid0_0192 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 196608
  | _ => True

theorem anchorAggregatePart0_0192 :
    anchorAggregatePartValid0_0192 anchorHistoryChunk0192 := by
  unfold anchorAggregatePartValid0_0192 anchorHistoryChunk0192
  decide

def anchorAggregatePartValid1_0192 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 196736
  | _ => True

theorem anchorAggregatePart1_0192 :
    anchorAggregatePartValid1_0192 anchorHistoryChunk0192 := by
  unfold anchorAggregatePartValid1_0192 anchorHistoryChunk0192
  decide

def anchorAggregatePartValid2_0192 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 196864
  | _ => True

theorem anchorAggregatePart2_0192 :
    anchorAggregatePartValid2_0192 anchorHistoryChunk0192 := by
  unfold anchorAggregatePartValid2_0192 anchorHistoryChunk0192
  decide

def anchorAggregatePartValid3_0192 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 196992
  | _ => True

theorem anchorAggregatePart3_0192 :
    anchorAggregatePartValid3_0192 anchorHistoryChunk0192 := by
  unfold anchorAggregatePartValid3_0192 anchorHistoryChunk0192
  decide

def anchorAggregatePartValid4_0192 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 197120
  | _ => True

theorem anchorAggregatePart4_0192 :
    anchorAggregatePartValid4_0192 anchorHistoryChunk0192 := by
  unfold anchorAggregatePartValid4_0192 anchorHistoryChunk0192
  decide

def anchorAggregatePartValid5_0192 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 197248
  | _ => True

theorem anchorAggregatePart5_0192 :
    anchorAggregatePartValid5_0192 anchorHistoryChunk0192 := by
  unfold anchorAggregatePartValid5_0192 anchorHistoryChunk0192
  decide

def anchorAggregatePartValid6_0192 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 197376
  | _ => True

theorem anchorAggregatePart6_0192 :
    anchorAggregatePartValid6_0192 anchorHistoryChunk0192 := by
  unfold anchorAggregatePartValid6_0192 anchorHistoryChunk0192
  decide

def anchorAggregatePartValid7_0192 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 197504
  | _ => True

theorem anchorAggregatePart7_0192 :
    anchorAggregatePartValid7_0192 anchorHistoryChunk0192 := by
  unfold anchorAggregatePartValid7_0192 anchorHistoryChunk0192
  decide

theorem anchorRange_0192 :
    anchorHistoryChunk0192.IndexedValid squarefreeOracle 5000000 196608 := by
  have h0 := anchorAggregatePart0_0192
  simp only [anchorAggregatePartValid0_0192, anchorHistoryChunk0192] at h0
  have h1 := anchorAggregatePart1_0192
  simp only [anchorAggregatePartValid1_0192, anchorHistoryChunk0192] at h1
  have h2 := anchorAggregatePart2_0192
  simp only [anchorAggregatePartValid2_0192, anchorHistoryChunk0192] at h2
  have h3 := anchorAggregatePart3_0192
  simp only [anchorAggregatePartValid3_0192, anchorHistoryChunk0192] at h3
  have h4 := anchorAggregatePart4_0192
  simp only [anchorAggregatePartValid4_0192, anchorHistoryChunk0192] at h4
  have h5 := anchorAggregatePart5_0192
  simp only [anchorAggregatePartValid5_0192, anchorHistoryChunk0192] at h5
  have h6 := anchorAggregatePart6_0192
  simp only [anchorAggregatePartValid6_0192, anchorHistoryChunk0192] at h6
  have h7 := anchorAggregatePart7_0192
  simp only [anchorAggregatePartValid7_0192, anchorHistoryChunk0192] at h7
  unfold anchorHistoryChunk0192
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0193 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 197632
  | _ => True

theorem anchorAggregatePart0_0193 :
    anchorAggregatePartValid0_0193 anchorHistoryChunk0193 := by
  unfold anchorAggregatePartValid0_0193 anchorHistoryChunk0193
  decide

def anchorAggregatePartValid1_0193 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 197760
  | _ => True

theorem anchorAggregatePart1_0193 :
    anchorAggregatePartValid1_0193 anchorHistoryChunk0193 := by
  unfold anchorAggregatePartValid1_0193 anchorHistoryChunk0193
  decide

def anchorAggregatePartValid2_0193 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 197888
  | _ => True

theorem anchorAggregatePart2_0193 :
    anchorAggregatePartValid2_0193 anchorHistoryChunk0193 := by
  unfold anchorAggregatePartValid2_0193 anchorHistoryChunk0193
  decide

def anchorAggregatePartValid3_0193 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 198016
  | _ => True

theorem anchorAggregatePart3_0193 :
    anchorAggregatePartValid3_0193 anchorHistoryChunk0193 := by
  unfold anchorAggregatePartValid3_0193 anchorHistoryChunk0193
  decide

def anchorAggregatePartValid4_0193 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 198144
  | _ => True

theorem anchorAggregatePart4_0193 :
    anchorAggregatePartValid4_0193 anchorHistoryChunk0193 := by
  unfold anchorAggregatePartValid4_0193 anchorHistoryChunk0193
  decide

def anchorAggregatePartValid5_0193 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 198272
  | _ => True

theorem anchorAggregatePart5_0193 :
    anchorAggregatePartValid5_0193 anchorHistoryChunk0193 := by
  unfold anchorAggregatePartValid5_0193 anchorHistoryChunk0193
  decide

def anchorAggregatePartValid6_0193 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 198400
  | _ => True

theorem anchorAggregatePart6_0193 :
    anchorAggregatePartValid6_0193 anchorHistoryChunk0193 := by
  unfold anchorAggregatePartValid6_0193 anchorHistoryChunk0193
  decide

def anchorAggregatePartValid7_0193 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 198528
  | _ => True

theorem anchorAggregatePart7_0193 :
    anchorAggregatePartValid7_0193 anchorHistoryChunk0193 := by
  unfold anchorAggregatePartValid7_0193 anchorHistoryChunk0193
  decide

theorem anchorRange_0193 :
    anchorHistoryChunk0193.IndexedValid squarefreeOracle 5000000 197632 := by
  have h0 := anchorAggregatePart0_0193
  simp only [anchorAggregatePartValid0_0193, anchorHistoryChunk0193] at h0
  have h1 := anchorAggregatePart1_0193
  simp only [anchorAggregatePartValid1_0193, anchorHistoryChunk0193] at h1
  have h2 := anchorAggregatePart2_0193
  simp only [anchorAggregatePartValid2_0193, anchorHistoryChunk0193] at h2
  have h3 := anchorAggregatePart3_0193
  simp only [anchorAggregatePartValid3_0193, anchorHistoryChunk0193] at h3
  have h4 := anchorAggregatePart4_0193
  simp only [anchorAggregatePartValid4_0193, anchorHistoryChunk0193] at h4
  have h5 := anchorAggregatePart5_0193
  simp only [anchorAggregatePartValid5_0193, anchorHistoryChunk0193] at h5
  have h6 := anchorAggregatePart6_0193
  simp only [anchorAggregatePartValid6_0193, anchorHistoryChunk0193] at h6
  have h7 := anchorAggregatePart7_0193
  simp only [anchorAggregatePartValid7_0193, anchorHistoryChunk0193] at h7
  unfold anchorHistoryChunk0193
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0194 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 198656
  | _ => True

theorem anchorAggregatePart0_0194 :
    anchorAggregatePartValid0_0194 anchorHistoryChunk0194 := by
  unfold anchorAggregatePartValid0_0194 anchorHistoryChunk0194
  decide

def anchorAggregatePartValid1_0194 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 198784
  | _ => True

theorem anchorAggregatePart1_0194 :
    anchorAggregatePartValid1_0194 anchorHistoryChunk0194 := by
  unfold anchorAggregatePartValid1_0194 anchorHistoryChunk0194
  decide

def anchorAggregatePartValid2_0194 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 198912
  | _ => True

theorem anchorAggregatePart2_0194 :
    anchorAggregatePartValid2_0194 anchorHistoryChunk0194 := by
  unfold anchorAggregatePartValid2_0194 anchorHistoryChunk0194
  decide

def anchorAggregatePartValid3_0194 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 199040
  | _ => True

theorem anchorAggregatePart3_0194 :
    anchorAggregatePartValid3_0194 anchorHistoryChunk0194 := by
  unfold anchorAggregatePartValid3_0194 anchorHistoryChunk0194
  decide

def anchorAggregatePartValid4_0194 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 199168
  | _ => True

theorem anchorAggregatePart4_0194 :
    anchorAggregatePartValid4_0194 anchorHistoryChunk0194 := by
  unfold anchorAggregatePartValid4_0194 anchorHistoryChunk0194
  decide

def anchorAggregatePartValid5_0194 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 199296
  | _ => True

theorem anchorAggregatePart5_0194 :
    anchorAggregatePartValid5_0194 anchorHistoryChunk0194 := by
  unfold anchorAggregatePartValid5_0194 anchorHistoryChunk0194
  decide

def anchorAggregatePartValid6_0194 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 199424
  | _ => True

theorem anchorAggregatePart6_0194 :
    anchorAggregatePartValid6_0194 anchorHistoryChunk0194 := by
  unfold anchorAggregatePartValid6_0194 anchorHistoryChunk0194
  decide

def anchorAggregatePartValid7_0194 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 199552
  | _ => True

theorem anchorAggregatePart7_0194 :
    anchorAggregatePartValid7_0194 anchorHistoryChunk0194 := by
  unfold anchorAggregatePartValid7_0194 anchorHistoryChunk0194
  decide

theorem anchorRange_0194 :
    anchorHistoryChunk0194.IndexedValid squarefreeOracle 5000000 198656 := by
  have h0 := anchorAggregatePart0_0194
  simp only [anchorAggregatePartValid0_0194, anchorHistoryChunk0194] at h0
  have h1 := anchorAggregatePart1_0194
  simp only [anchorAggregatePartValid1_0194, anchorHistoryChunk0194] at h1
  have h2 := anchorAggregatePart2_0194
  simp only [anchorAggregatePartValid2_0194, anchorHistoryChunk0194] at h2
  have h3 := anchorAggregatePart3_0194
  simp only [anchorAggregatePartValid3_0194, anchorHistoryChunk0194] at h3
  have h4 := anchorAggregatePart4_0194
  simp only [anchorAggregatePartValid4_0194, anchorHistoryChunk0194] at h4
  have h5 := anchorAggregatePart5_0194
  simp only [anchorAggregatePartValid5_0194, anchorHistoryChunk0194] at h5
  have h6 := anchorAggregatePart6_0194
  simp only [anchorAggregatePartValid6_0194, anchorHistoryChunk0194] at h6
  have h7 := anchorAggregatePart7_0194
  simp only [anchorAggregatePartValid7_0194, anchorHistoryChunk0194] at h7
  unfold anchorHistoryChunk0194
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0195 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 199680
  | _ => True

theorem anchorAggregatePart0_0195 :
    anchorAggregatePartValid0_0195 anchorHistoryChunk0195 := by
  unfold anchorAggregatePartValid0_0195 anchorHistoryChunk0195
  decide

def anchorAggregatePartValid1_0195 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 199720
  | _ => True

theorem anchorAggregatePart1_0195 :
    anchorAggregatePartValid1_0195 anchorHistoryChunk0195 := by
  unfold anchorAggregatePartValid1_0195 anchorHistoryChunk0195
  decide

def anchorAggregatePartValid2_0195 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 199760
  | _ => True

theorem anchorAggregatePart2_0195 :
    anchorAggregatePartValid2_0195 anchorHistoryChunk0195 := by
  unfold anchorAggregatePartValid2_0195 anchorHistoryChunk0195
  decide

def anchorAggregatePartValid3_0195 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 199800
  | _ => True

theorem anchorAggregatePart3_0195 :
    anchorAggregatePartValid3_0195 anchorHistoryChunk0195 := by
  unfold anchorAggregatePartValid3_0195 anchorHistoryChunk0195
  decide

def anchorAggregatePartValid4_0195 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 199840
  | _ => True

theorem anchorAggregatePart4_0195 :
    anchorAggregatePartValid4_0195 anchorHistoryChunk0195 := by
  unfold anchorAggregatePartValid4_0195 anchorHistoryChunk0195
  decide

def anchorAggregatePartValid5_0195 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 199880
  | _ => True

theorem anchorAggregatePart5_0195 :
    anchorAggregatePartValid5_0195 anchorHistoryChunk0195 := by
  unfold anchorAggregatePartValid5_0195 anchorHistoryChunk0195
  decide

def anchorAggregatePartValid6_0195 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 199920
  | _ => True

theorem anchorAggregatePart6_0195 :
    anchorAggregatePartValid6_0195 anchorHistoryChunk0195 := by
  unfold anchorAggregatePartValid6_0195 anchorHistoryChunk0195
  decide

def anchorAggregatePartValid7_0195 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 199960
  | _ => True

theorem anchorAggregatePart7_0195 :
    anchorAggregatePartValid7_0195 anchorHistoryChunk0195 := by
  unfold anchorAggregatePartValid7_0195 anchorHistoryChunk0195
  decide

theorem anchorRange_0195 :
    anchorHistoryChunk0195.IndexedValid squarefreeOracle 5000000 199680 := by
  have h0 := anchorAggregatePart0_0195
  simp only [anchorAggregatePartValid0_0195, anchorHistoryChunk0195] at h0
  have h1 := anchorAggregatePart1_0195
  simp only [anchorAggregatePartValid1_0195, anchorHistoryChunk0195] at h1
  have h2 := anchorAggregatePart2_0195
  simp only [anchorAggregatePartValid2_0195, anchorHistoryChunk0195] at h2
  have h3 := anchorAggregatePart3_0195
  simp only [anchorAggregatePartValid3_0195, anchorHistoryChunk0195] at h3
  have h4 := anchorAggregatePart4_0195
  simp only [anchorAggregatePartValid4_0195, anchorHistoryChunk0195] at h4
  have h5 := anchorAggregatePart5_0195
  simp only [anchorAggregatePartValid5_0195, anchorHistoryChunk0195] at h5
  have h6 := anchorAggregatePart6_0195
  simp only [anchorAggregatePartValid6_0195, anchorHistoryChunk0195] at h6
  have h7 := anchorAggregatePart7_0195
  simp only [anchorAggregatePartValid7_0195, anchorHistoryChunk0195] at h7
  unfold anchorHistoryChunk0195
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
