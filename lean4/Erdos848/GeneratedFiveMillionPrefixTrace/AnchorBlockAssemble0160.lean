import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0160
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0161
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0162
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0163

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0160, 0161, 0162, 0163 -/

def anchorAggregatePartValid0_0160 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 163840
  | _ => True

theorem anchorAggregatePart0_0160 :
    anchorAggregatePartValid0_0160 anchorHistoryChunk0160 := by
  unfold anchorAggregatePartValid0_0160 anchorHistoryChunk0160
  decide

def anchorAggregatePartValid1_0160 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 163968
  | _ => True

theorem anchorAggregatePart1_0160 :
    anchorAggregatePartValid1_0160 anchorHistoryChunk0160 := by
  unfold anchorAggregatePartValid1_0160 anchorHistoryChunk0160
  decide

def anchorAggregatePartValid2_0160 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 164096
  | _ => True

theorem anchorAggregatePart2_0160 :
    anchorAggregatePartValid2_0160 anchorHistoryChunk0160 := by
  unfold anchorAggregatePartValid2_0160 anchorHistoryChunk0160
  decide

def anchorAggregatePartValid3_0160 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 164224
  | _ => True

theorem anchorAggregatePart3_0160 :
    anchorAggregatePartValid3_0160 anchorHistoryChunk0160 := by
  unfold anchorAggregatePartValid3_0160 anchorHistoryChunk0160
  decide

def anchorAggregatePartValid4_0160 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 164352
  | _ => True

theorem anchorAggregatePart4_0160 :
    anchorAggregatePartValid4_0160 anchorHistoryChunk0160 := by
  unfold anchorAggregatePartValid4_0160 anchorHistoryChunk0160
  decide

def anchorAggregatePartValid5_0160 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 164480
  | _ => True

theorem anchorAggregatePart5_0160 :
    anchorAggregatePartValid5_0160 anchorHistoryChunk0160 := by
  unfold anchorAggregatePartValid5_0160 anchorHistoryChunk0160
  decide

def anchorAggregatePartValid6_0160 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 164608
  | _ => True

theorem anchorAggregatePart6_0160 :
    anchorAggregatePartValid6_0160 anchorHistoryChunk0160 := by
  unfold anchorAggregatePartValid6_0160 anchorHistoryChunk0160
  decide

def anchorAggregatePartValid7_0160 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 164736
  | _ => True

theorem anchorAggregatePart7_0160 :
    anchorAggregatePartValid7_0160 anchorHistoryChunk0160 := by
  unfold anchorAggregatePartValid7_0160 anchorHistoryChunk0160
  decide

theorem anchorRange_0160 :
    anchorHistoryChunk0160.IndexedValid squarefreeOracle 5000000 163840 := by
  have h0 := anchorAggregatePart0_0160
  simp only [anchorAggregatePartValid0_0160, anchorHistoryChunk0160] at h0
  have h1 := anchorAggregatePart1_0160
  simp only [anchorAggregatePartValid1_0160, anchorHistoryChunk0160] at h1
  have h2 := anchorAggregatePart2_0160
  simp only [anchorAggregatePartValid2_0160, anchorHistoryChunk0160] at h2
  have h3 := anchorAggregatePart3_0160
  simp only [anchorAggregatePartValid3_0160, anchorHistoryChunk0160] at h3
  have h4 := anchorAggregatePart4_0160
  simp only [anchorAggregatePartValid4_0160, anchorHistoryChunk0160] at h4
  have h5 := anchorAggregatePart5_0160
  simp only [anchorAggregatePartValid5_0160, anchorHistoryChunk0160] at h5
  have h6 := anchorAggregatePart6_0160
  simp only [anchorAggregatePartValid6_0160, anchorHistoryChunk0160] at h6
  have h7 := anchorAggregatePart7_0160
  simp only [anchorAggregatePartValid7_0160, anchorHistoryChunk0160] at h7
  unfold anchorHistoryChunk0160
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0161 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 164864
  | _ => True

theorem anchorAggregatePart0_0161 :
    anchorAggregatePartValid0_0161 anchorHistoryChunk0161 := by
  unfold anchorAggregatePartValid0_0161 anchorHistoryChunk0161
  decide

def anchorAggregatePartValid1_0161 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 164992
  | _ => True

theorem anchorAggregatePart1_0161 :
    anchorAggregatePartValid1_0161 anchorHistoryChunk0161 := by
  unfold anchorAggregatePartValid1_0161 anchorHistoryChunk0161
  decide

def anchorAggregatePartValid2_0161 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 165120
  | _ => True

theorem anchorAggregatePart2_0161 :
    anchorAggregatePartValid2_0161 anchorHistoryChunk0161 := by
  unfold anchorAggregatePartValid2_0161 anchorHistoryChunk0161
  decide

def anchorAggregatePartValid3_0161 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 165248
  | _ => True

theorem anchorAggregatePart3_0161 :
    anchorAggregatePartValid3_0161 anchorHistoryChunk0161 := by
  unfold anchorAggregatePartValid3_0161 anchorHistoryChunk0161
  decide

def anchorAggregatePartValid4_0161 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 165376
  | _ => True

theorem anchorAggregatePart4_0161 :
    anchorAggregatePartValid4_0161 anchorHistoryChunk0161 := by
  unfold anchorAggregatePartValid4_0161 anchorHistoryChunk0161
  decide

def anchorAggregatePartValid5_0161 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 165504
  | _ => True

theorem anchorAggregatePart5_0161 :
    anchorAggregatePartValid5_0161 anchorHistoryChunk0161 := by
  unfold anchorAggregatePartValid5_0161 anchorHistoryChunk0161
  decide

def anchorAggregatePartValid6_0161 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 165632
  | _ => True

theorem anchorAggregatePart6_0161 :
    anchorAggregatePartValid6_0161 anchorHistoryChunk0161 := by
  unfold anchorAggregatePartValid6_0161 anchorHistoryChunk0161
  decide

def anchorAggregatePartValid7_0161 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 165760
  | _ => True

theorem anchorAggregatePart7_0161 :
    anchorAggregatePartValid7_0161 anchorHistoryChunk0161 := by
  unfold anchorAggregatePartValid7_0161 anchorHistoryChunk0161
  decide

theorem anchorRange_0161 :
    anchorHistoryChunk0161.IndexedValid squarefreeOracle 5000000 164864 := by
  have h0 := anchorAggregatePart0_0161
  simp only [anchorAggregatePartValid0_0161, anchorHistoryChunk0161] at h0
  have h1 := anchorAggregatePart1_0161
  simp only [anchorAggregatePartValid1_0161, anchorHistoryChunk0161] at h1
  have h2 := anchorAggregatePart2_0161
  simp only [anchorAggregatePartValid2_0161, anchorHistoryChunk0161] at h2
  have h3 := anchorAggregatePart3_0161
  simp only [anchorAggregatePartValid3_0161, anchorHistoryChunk0161] at h3
  have h4 := anchorAggregatePart4_0161
  simp only [anchorAggregatePartValid4_0161, anchorHistoryChunk0161] at h4
  have h5 := anchorAggregatePart5_0161
  simp only [anchorAggregatePartValid5_0161, anchorHistoryChunk0161] at h5
  have h6 := anchorAggregatePart6_0161
  simp only [anchorAggregatePartValid6_0161, anchorHistoryChunk0161] at h6
  have h7 := anchorAggregatePart7_0161
  simp only [anchorAggregatePartValid7_0161, anchorHistoryChunk0161] at h7
  unfold anchorHistoryChunk0161
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0162 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 165888
  | _ => True

theorem anchorAggregatePart0_0162 :
    anchorAggregatePartValid0_0162 anchorHistoryChunk0162 := by
  unfold anchorAggregatePartValid0_0162 anchorHistoryChunk0162
  decide

def anchorAggregatePartValid1_0162 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 166016
  | _ => True

theorem anchorAggregatePart1_0162 :
    anchorAggregatePartValid1_0162 anchorHistoryChunk0162 := by
  unfold anchorAggregatePartValid1_0162 anchorHistoryChunk0162
  decide

def anchorAggregatePartValid2_0162 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 166144
  | _ => True

theorem anchorAggregatePart2_0162 :
    anchorAggregatePartValid2_0162 anchorHistoryChunk0162 := by
  unfold anchorAggregatePartValid2_0162 anchorHistoryChunk0162
  decide

def anchorAggregatePartValid3_0162 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 166272
  | _ => True

theorem anchorAggregatePart3_0162 :
    anchorAggregatePartValid3_0162 anchorHistoryChunk0162 := by
  unfold anchorAggregatePartValid3_0162 anchorHistoryChunk0162
  decide

def anchorAggregatePartValid4_0162 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 166400
  | _ => True

theorem anchorAggregatePart4_0162 :
    anchorAggregatePartValid4_0162 anchorHistoryChunk0162 := by
  unfold anchorAggregatePartValid4_0162 anchorHistoryChunk0162
  decide

def anchorAggregatePartValid5_0162 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 166528
  | _ => True

theorem anchorAggregatePart5_0162 :
    anchorAggregatePartValid5_0162 anchorHistoryChunk0162 := by
  unfold anchorAggregatePartValid5_0162 anchorHistoryChunk0162
  decide

def anchorAggregatePartValid6_0162 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 166656
  | _ => True

theorem anchorAggregatePart6_0162 :
    anchorAggregatePartValid6_0162 anchorHistoryChunk0162 := by
  unfold anchorAggregatePartValid6_0162 anchorHistoryChunk0162
  decide

def anchorAggregatePartValid7_0162 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 166784
  | _ => True

theorem anchorAggregatePart7_0162 :
    anchorAggregatePartValid7_0162 anchorHistoryChunk0162 := by
  unfold anchorAggregatePartValid7_0162 anchorHistoryChunk0162
  decide

theorem anchorRange_0162 :
    anchorHistoryChunk0162.IndexedValid squarefreeOracle 5000000 165888 := by
  have h0 := anchorAggregatePart0_0162
  simp only [anchorAggregatePartValid0_0162, anchorHistoryChunk0162] at h0
  have h1 := anchorAggregatePart1_0162
  simp only [anchorAggregatePartValid1_0162, anchorHistoryChunk0162] at h1
  have h2 := anchorAggregatePart2_0162
  simp only [anchorAggregatePartValid2_0162, anchorHistoryChunk0162] at h2
  have h3 := anchorAggregatePart3_0162
  simp only [anchorAggregatePartValid3_0162, anchorHistoryChunk0162] at h3
  have h4 := anchorAggregatePart4_0162
  simp only [anchorAggregatePartValid4_0162, anchorHistoryChunk0162] at h4
  have h5 := anchorAggregatePart5_0162
  simp only [anchorAggregatePartValid5_0162, anchorHistoryChunk0162] at h5
  have h6 := anchorAggregatePart6_0162
  simp only [anchorAggregatePartValid6_0162, anchorHistoryChunk0162] at h6
  have h7 := anchorAggregatePart7_0162
  simp only [anchorAggregatePartValid7_0162, anchorHistoryChunk0162] at h7
  unfold anchorHistoryChunk0162
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0163 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 166912
  | _ => True

theorem anchorAggregatePart0_0163 :
    anchorAggregatePartValid0_0163 anchorHistoryChunk0163 := by
  unfold anchorAggregatePartValid0_0163 anchorHistoryChunk0163
  decide

def anchorAggregatePartValid1_0163 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 167040
  | _ => True

theorem anchorAggregatePart1_0163 :
    anchorAggregatePartValid1_0163 anchorHistoryChunk0163 := by
  unfold anchorAggregatePartValid1_0163 anchorHistoryChunk0163
  decide

def anchorAggregatePartValid2_0163 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 167168
  | _ => True

theorem anchorAggregatePart2_0163 :
    anchorAggregatePartValid2_0163 anchorHistoryChunk0163 := by
  unfold anchorAggregatePartValid2_0163 anchorHistoryChunk0163
  decide

def anchorAggregatePartValid3_0163 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 167296
  | _ => True

theorem anchorAggregatePart3_0163 :
    anchorAggregatePartValid3_0163 anchorHistoryChunk0163 := by
  unfold anchorAggregatePartValid3_0163 anchorHistoryChunk0163
  decide

def anchorAggregatePartValid4_0163 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 167424
  | _ => True

theorem anchorAggregatePart4_0163 :
    anchorAggregatePartValid4_0163 anchorHistoryChunk0163 := by
  unfold anchorAggregatePartValid4_0163 anchorHistoryChunk0163
  decide

def anchorAggregatePartValid5_0163 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 167552
  | _ => True

theorem anchorAggregatePart5_0163 :
    anchorAggregatePartValid5_0163 anchorHistoryChunk0163 := by
  unfold anchorAggregatePartValid5_0163 anchorHistoryChunk0163
  decide

def anchorAggregatePartValid6_0163 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 167680
  | _ => True

theorem anchorAggregatePart6_0163 :
    anchorAggregatePartValid6_0163 anchorHistoryChunk0163 := by
  unfold anchorAggregatePartValid6_0163 anchorHistoryChunk0163
  decide

def anchorAggregatePartValid7_0163 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 167808
  | _ => True

theorem anchorAggregatePart7_0163 :
    anchorAggregatePartValid7_0163 anchorHistoryChunk0163 := by
  unfold anchorAggregatePartValid7_0163 anchorHistoryChunk0163
  decide

theorem anchorRange_0163 :
    anchorHistoryChunk0163.IndexedValid squarefreeOracle 5000000 166912 := by
  have h0 := anchorAggregatePart0_0163
  simp only [anchorAggregatePartValid0_0163, anchorHistoryChunk0163] at h0
  have h1 := anchorAggregatePart1_0163
  simp only [anchorAggregatePartValid1_0163, anchorHistoryChunk0163] at h1
  have h2 := anchorAggregatePart2_0163
  simp only [anchorAggregatePartValid2_0163, anchorHistoryChunk0163] at h2
  have h3 := anchorAggregatePart3_0163
  simp only [anchorAggregatePartValid3_0163, anchorHistoryChunk0163] at h3
  have h4 := anchorAggregatePart4_0163
  simp only [anchorAggregatePartValid4_0163, anchorHistoryChunk0163] at h4
  have h5 := anchorAggregatePart5_0163
  simp only [anchorAggregatePartValid5_0163, anchorHistoryChunk0163] at h5
  have h6 := anchorAggregatePart6_0163
  simp only [anchorAggregatePartValid6_0163, anchorHistoryChunk0163] at h6
  have h7 := anchorAggregatePart7_0163
  simp only [anchorAggregatePartValid7_0163, anchorHistoryChunk0163] at h7
  unfold anchorHistoryChunk0163
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
