import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0152
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0153
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0154
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0155

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0152, 0153, 0154, 0155 -/

def anchorAggregatePartValid0_0152 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 155648
  | _ => True

theorem anchorAggregatePart0_0152 :
    anchorAggregatePartValid0_0152 anchorHistoryChunk0152 := by
  unfold anchorAggregatePartValid0_0152 anchorHistoryChunk0152
  decide

def anchorAggregatePartValid1_0152 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 155776
  | _ => True

theorem anchorAggregatePart1_0152 :
    anchorAggregatePartValid1_0152 anchorHistoryChunk0152 := by
  unfold anchorAggregatePartValid1_0152 anchorHistoryChunk0152
  decide

def anchorAggregatePartValid2_0152 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 155904
  | _ => True

theorem anchorAggregatePart2_0152 :
    anchorAggregatePartValid2_0152 anchorHistoryChunk0152 := by
  unfold anchorAggregatePartValid2_0152 anchorHistoryChunk0152
  decide

def anchorAggregatePartValid3_0152 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 156032
  | _ => True

theorem anchorAggregatePart3_0152 :
    anchorAggregatePartValid3_0152 anchorHistoryChunk0152 := by
  unfold anchorAggregatePartValid3_0152 anchorHistoryChunk0152
  decide

def anchorAggregatePartValid4_0152 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 156160
  | _ => True

theorem anchorAggregatePart4_0152 :
    anchorAggregatePartValid4_0152 anchorHistoryChunk0152 := by
  unfold anchorAggregatePartValid4_0152 anchorHistoryChunk0152
  decide

def anchorAggregatePartValid5_0152 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 156288
  | _ => True

theorem anchorAggregatePart5_0152 :
    anchorAggregatePartValid5_0152 anchorHistoryChunk0152 := by
  unfold anchorAggregatePartValid5_0152 anchorHistoryChunk0152
  decide

def anchorAggregatePartValid6_0152 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 156416
  | _ => True

theorem anchorAggregatePart6_0152 :
    anchorAggregatePartValid6_0152 anchorHistoryChunk0152 := by
  unfold anchorAggregatePartValid6_0152 anchorHistoryChunk0152
  decide

def anchorAggregatePartValid7_0152 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 156544
  | _ => True

theorem anchorAggregatePart7_0152 :
    anchorAggregatePartValid7_0152 anchorHistoryChunk0152 := by
  unfold anchorAggregatePartValid7_0152 anchorHistoryChunk0152
  decide

theorem anchorRange_0152 :
    anchorHistoryChunk0152.IndexedValid squarefreeOracle 5000000 155648 := by
  have h0 := anchorAggregatePart0_0152
  simp only [anchorAggregatePartValid0_0152, anchorHistoryChunk0152] at h0
  have h1 := anchorAggregatePart1_0152
  simp only [anchorAggregatePartValid1_0152, anchorHistoryChunk0152] at h1
  have h2 := anchorAggregatePart2_0152
  simp only [anchorAggregatePartValid2_0152, anchorHistoryChunk0152] at h2
  have h3 := anchorAggregatePart3_0152
  simp only [anchorAggregatePartValid3_0152, anchorHistoryChunk0152] at h3
  have h4 := anchorAggregatePart4_0152
  simp only [anchorAggregatePartValid4_0152, anchorHistoryChunk0152] at h4
  have h5 := anchorAggregatePart5_0152
  simp only [anchorAggregatePartValid5_0152, anchorHistoryChunk0152] at h5
  have h6 := anchorAggregatePart6_0152
  simp only [anchorAggregatePartValid6_0152, anchorHistoryChunk0152] at h6
  have h7 := anchorAggregatePart7_0152
  simp only [anchorAggregatePartValid7_0152, anchorHistoryChunk0152] at h7
  unfold anchorHistoryChunk0152
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0153 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 156672
  | _ => True

theorem anchorAggregatePart0_0153 :
    anchorAggregatePartValid0_0153 anchorHistoryChunk0153 := by
  unfold anchorAggregatePartValid0_0153 anchorHistoryChunk0153
  decide

def anchorAggregatePartValid1_0153 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 156800
  | _ => True

theorem anchorAggregatePart1_0153 :
    anchorAggregatePartValid1_0153 anchorHistoryChunk0153 := by
  unfold anchorAggregatePartValid1_0153 anchorHistoryChunk0153
  decide

def anchorAggregatePartValid2_0153 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 156928
  | _ => True

theorem anchorAggregatePart2_0153 :
    anchorAggregatePartValid2_0153 anchorHistoryChunk0153 := by
  unfold anchorAggregatePartValid2_0153 anchorHistoryChunk0153
  decide

def anchorAggregatePartValid3_0153 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 157056
  | _ => True

theorem anchorAggregatePart3_0153 :
    anchorAggregatePartValid3_0153 anchorHistoryChunk0153 := by
  unfold anchorAggregatePartValid3_0153 anchorHistoryChunk0153
  decide

def anchorAggregatePartValid4_0153 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 157184
  | _ => True

theorem anchorAggregatePart4_0153 :
    anchorAggregatePartValid4_0153 anchorHistoryChunk0153 := by
  unfold anchorAggregatePartValid4_0153 anchorHistoryChunk0153
  decide

def anchorAggregatePartValid5_0153 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 157312
  | _ => True

theorem anchorAggregatePart5_0153 :
    anchorAggregatePartValid5_0153 anchorHistoryChunk0153 := by
  unfold anchorAggregatePartValid5_0153 anchorHistoryChunk0153
  decide

def anchorAggregatePartValid6_0153 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 157440
  | _ => True

theorem anchorAggregatePart6_0153 :
    anchorAggregatePartValid6_0153 anchorHistoryChunk0153 := by
  unfold anchorAggregatePartValid6_0153 anchorHistoryChunk0153
  decide

def anchorAggregatePartValid7_0153 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 157568
  | _ => True

theorem anchorAggregatePart7_0153 :
    anchorAggregatePartValid7_0153 anchorHistoryChunk0153 := by
  unfold anchorAggregatePartValid7_0153 anchorHistoryChunk0153
  decide

theorem anchorRange_0153 :
    anchorHistoryChunk0153.IndexedValid squarefreeOracle 5000000 156672 := by
  have h0 := anchorAggregatePart0_0153
  simp only [anchorAggregatePartValid0_0153, anchorHistoryChunk0153] at h0
  have h1 := anchorAggregatePart1_0153
  simp only [anchorAggregatePartValid1_0153, anchorHistoryChunk0153] at h1
  have h2 := anchorAggregatePart2_0153
  simp only [anchorAggregatePartValid2_0153, anchorHistoryChunk0153] at h2
  have h3 := anchorAggregatePart3_0153
  simp only [anchorAggregatePartValid3_0153, anchorHistoryChunk0153] at h3
  have h4 := anchorAggregatePart4_0153
  simp only [anchorAggregatePartValid4_0153, anchorHistoryChunk0153] at h4
  have h5 := anchorAggregatePart5_0153
  simp only [anchorAggregatePartValid5_0153, anchorHistoryChunk0153] at h5
  have h6 := anchorAggregatePart6_0153
  simp only [anchorAggregatePartValid6_0153, anchorHistoryChunk0153] at h6
  have h7 := anchorAggregatePart7_0153
  simp only [anchorAggregatePartValid7_0153, anchorHistoryChunk0153] at h7
  unfold anchorHistoryChunk0153
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0154 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 157696
  | _ => True

theorem anchorAggregatePart0_0154 :
    anchorAggregatePartValid0_0154 anchorHistoryChunk0154 := by
  unfold anchorAggregatePartValid0_0154 anchorHistoryChunk0154
  decide

def anchorAggregatePartValid1_0154 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 157824
  | _ => True

theorem anchorAggregatePart1_0154 :
    anchorAggregatePartValid1_0154 anchorHistoryChunk0154 := by
  unfold anchorAggregatePartValid1_0154 anchorHistoryChunk0154
  decide

def anchorAggregatePartValid2_0154 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 157952
  | _ => True

theorem anchorAggregatePart2_0154 :
    anchorAggregatePartValid2_0154 anchorHistoryChunk0154 := by
  unfold anchorAggregatePartValid2_0154 anchorHistoryChunk0154
  decide

def anchorAggregatePartValid3_0154 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 158080
  | _ => True

theorem anchorAggregatePart3_0154 :
    anchorAggregatePartValid3_0154 anchorHistoryChunk0154 := by
  unfold anchorAggregatePartValid3_0154 anchorHistoryChunk0154
  decide

def anchorAggregatePartValid4_0154 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 158208
  | _ => True

theorem anchorAggregatePart4_0154 :
    anchorAggregatePartValid4_0154 anchorHistoryChunk0154 := by
  unfold anchorAggregatePartValid4_0154 anchorHistoryChunk0154
  decide

def anchorAggregatePartValid5_0154 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 158336
  | _ => True

theorem anchorAggregatePart5_0154 :
    anchorAggregatePartValid5_0154 anchorHistoryChunk0154 := by
  unfold anchorAggregatePartValid5_0154 anchorHistoryChunk0154
  decide

def anchorAggregatePartValid6_0154 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 158464
  | _ => True

theorem anchorAggregatePart6_0154 :
    anchorAggregatePartValid6_0154 anchorHistoryChunk0154 := by
  unfold anchorAggregatePartValid6_0154 anchorHistoryChunk0154
  decide

def anchorAggregatePartValid7_0154 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 158592
  | _ => True

theorem anchorAggregatePart7_0154 :
    anchorAggregatePartValid7_0154 anchorHistoryChunk0154 := by
  unfold anchorAggregatePartValid7_0154 anchorHistoryChunk0154
  decide

theorem anchorRange_0154 :
    anchorHistoryChunk0154.IndexedValid squarefreeOracle 5000000 157696 := by
  have h0 := anchorAggregatePart0_0154
  simp only [anchorAggregatePartValid0_0154, anchorHistoryChunk0154] at h0
  have h1 := anchorAggregatePart1_0154
  simp only [anchorAggregatePartValid1_0154, anchorHistoryChunk0154] at h1
  have h2 := anchorAggregatePart2_0154
  simp only [anchorAggregatePartValid2_0154, anchorHistoryChunk0154] at h2
  have h3 := anchorAggregatePart3_0154
  simp only [anchorAggregatePartValid3_0154, anchorHistoryChunk0154] at h3
  have h4 := anchorAggregatePart4_0154
  simp only [anchorAggregatePartValid4_0154, anchorHistoryChunk0154] at h4
  have h5 := anchorAggregatePart5_0154
  simp only [anchorAggregatePartValid5_0154, anchorHistoryChunk0154] at h5
  have h6 := anchorAggregatePart6_0154
  simp only [anchorAggregatePartValid6_0154, anchorHistoryChunk0154] at h6
  have h7 := anchorAggregatePart7_0154
  simp only [anchorAggregatePartValid7_0154, anchorHistoryChunk0154] at h7
  unfold anchorHistoryChunk0154
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0155 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 158720
  | _ => True

theorem anchorAggregatePart0_0155 :
    anchorAggregatePartValid0_0155 anchorHistoryChunk0155 := by
  unfold anchorAggregatePartValid0_0155 anchorHistoryChunk0155
  decide

def anchorAggregatePartValid1_0155 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 158848
  | _ => True

theorem anchorAggregatePart1_0155 :
    anchorAggregatePartValid1_0155 anchorHistoryChunk0155 := by
  unfold anchorAggregatePartValid1_0155 anchorHistoryChunk0155
  decide

def anchorAggregatePartValid2_0155 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 158976
  | _ => True

theorem anchorAggregatePart2_0155 :
    anchorAggregatePartValid2_0155 anchorHistoryChunk0155 := by
  unfold anchorAggregatePartValid2_0155 anchorHistoryChunk0155
  decide

def anchorAggregatePartValid3_0155 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 159104
  | _ => True

theorem anchorAggregatePart3_0155 :
    anchorAggregatePartValid3_0155 anchorHistoryChunk0155 := by
  unfold anchorAggregatePartValid3_0155 anchorHistoryChunk0155
  decide

def anchorAggregatePartValid4_0155 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 159232
  | _ => True

theorem anchorAggregatePart4_0155 :
    anchorAggregatePartValid4_0155 anchorHistoryChunk0155 := by
  unfold anchorAggregatePartValid4_0155 anchorHistoryChunk0155
  decide

def anchorAggregatePartValid5_0155 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 159360
  | _ => True

theorem anchorAggregatePart5_0155 :
    anchorAggregatePartValid5_0155 anchorHistoryChunk0155 := by
  unfold anchorAggregatePartValid5_0155 anchorHistoryChunk0155
  decide

def anchorAggregatePartValid6_0155 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 159488
  | _ => True

theorem anchorAggregatePart6_0155 :
    anchorAggregatePartValid6_0155 anchorHistoryChunk0155 := by
  unfold anchorAggregatePartValid6_0155 anchorHistoryChunk0155
  decide

def anchorAggregatePartValid7_0155 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 159616
  | _ => True

theorem anchorAggregatePart7_0155 :
    anchorAggregatePartValid7_0155 anchorHistoryChunk0155 := by
  unfold anchorAggregatePartValid7_0155 anchorHistoryChunk0155
  decide

theorem anchorRange_0155 :
    anchorHistoryChunk0155.IndexedValid squarefreeOracle 5000000 158720 := by
  have h0 := anchorAggregatePart0_0155
  simp only [anchorAggregatePartValid0_0155, anchorHistoryChunk0155] at h0
  have h1 := anchorAggregatePart1_0155
  simp only [anchorAggregatePartValid1_0155, anchorHistoryChunk0155] at h1
  have h2 := anchorAggregatePart2_0155
  simp only [anchorAggregatePartValid2_0155, anchorHistoryChunk0155] at h2
  have h3 := anchorAggregatePart3_0155
  simp only [anchorAggregatePartValid3_0155, anchorHistoryChunk0155] at h3
  have h4 := anchorAggregatePart4_0155
  simp only [anchorAggregatePartValid4_0155, anchorHistoryChunk0155] at h4
  have h5 := anchorAggregatePart5_0155
  simp only [anchorAggregatePartValid5_0155, anchorHistoryChunk0155] at h5
  have h6 := anchorAggregatePart6_0155
  simp only [anchorAggregatePartValid6_0155, anchorHistoryChunk0155] at h6
  have h7 := anchorAggregatePart7_0155
  simp only [anchorAggregatePartValid7_0155, anchorHistoryChunk0155] at h7
  unfold anchorHistoryChunk0155
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
