import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0136
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0137
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0138
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0139

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0136, 0137, 0138, 0139 -/

def anchorAggregatePartValid0_0136 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 139264
  | _ => True

theorem anchorAggregatePart0_0136 :
    anchorAggregatePartValid0_0136 anchorHistoryChunk0136 := by
  unfold anchorAggregatePartValid0_0136 anchorHistoryChunk0136
  decide

def anchorAggregatePartValid1_0136 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 139392
  | _ => True

theorem anchorAggregatePart1_0136 :
    anchorAggregatePartValid1_0136 anchorHistoryChunk0136 := by
  unfold anchorAggregatePartValid1_0136 anchorHistoryChunk0136
  decide

def anchorAggregatePartValid2_0136 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 139520
  | _ => True

theorem anchorAggregatePart2_0136 :
    anchorAggregatePartValid2_0136 anchorHistoryChunk0136 := by
  unfold anchorAggregatePartValid2_0136 anchorHistoryChunk0136
  decide

def anchorAggregatePartValid3_0136 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 139648
  | _ => True

theorem anchorAggregatePart3_0136 :
    anchorAggregatePartValid3_0136 anchorHistoryChunk0136 := by
  unfold anchorAggregatePartValid3_0136 anchorHistoryChunk0136
  decide

def anchorAggregatePartValid4_0136 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 139776
  | _ => True

theorem anchorAggregatePart4_0136 :
    anchorAggregatePartValid4_0136 anchorHistoryChunk0136 := by
  unfold anchorAggregatePartValid4_0136 anchorHistoryChunk0136
  decide

def anchorAggregatePartValid5_0136 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 139904
  | _ => True

theorem anchorAggregatePart5_0136 :
    anchorAggregatePartValid5_0136 anchorHistoryChunk0136 := by
  unfold anchorAggregatePartValid5_0136 anchorHistoryChunk0136
  decide

def anchorAggregatePartValid6_0136 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 140032
  | _ => True

theorem anchorAggregatePart6_0136 :
    anchorAggregatePartValid6_0136 anchorHistoryChunk0136 := by
  unfold anchorAggregatePartValid6_0136 anchorHistoryChunk0136
  decide

def anchorAggregatePartValid7_0136 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 140160
  | _ => True

theorem anchorAggregatePart7_0136 :
    anchorAggregatePartValid7_0136 anchorHistoryChunk0136 := by
  unfold anchorAggregatePartValid7_0136 anchorHistoryChunk0136
  decide

theorem anchorRange_0136 :
    anchorHistoryChunk0136.IndexedValid squarefreeOracle 5000000 139264 := by
  have h0 := anchorAggregatePart0_0136
  simp only [anchorAggregatePartValid0_0136, anchorHistoryChunk0136] at h0
  have h1 := anchorAggregatePart1_0136
  simp only [anchorAggregatePartValid1_0136, anchorHistoryChunk0136] at h1
  have h2 := anchorAggregatePart2_0136
  simp only [anchorAggregatePartValid2_0136, anchorHistoryChunk0136] at h2
  have h3 := anchorAggregatePart3_0136
  simp only [anchorAggregatePartValid3_0136, anchorHistoryChunk0136] at h3
  have h4 := anchorAggregatePart4_0136
  simp only [anchorAggregatePartValid4_0136, anchorHistoryChunk0136] at h4
  have h5 := anchorAggregatePart5_0136
  simp only [anchorAggregatePartValid5_0136, anchorHistoryChunk0136] at h5
  have h6 := anchorAggregatePart6_0136
  simp only [anchorAggregatePartValid6_0136, anchorHistoryChunk0136] at h6
  have h7 := anchorAggregatePart7_0136
  simp only [anchorAggregatePartValid7_0136, anchorHistoryChunk0136] at h7
  unfold anchorHistoryChunk0136
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0137 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 140288
  | _ => True

theorem anchorAggregatePart0_0137 :
    anchorAggregatePartValid0_0137 anchorHistoryChunk0137 := by
  unfold anchorAggregatePartValid0_0137 anchorHistoryChunk0137
  decide

def anchorAggregatePartValid1_0137 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 140416
  | _ => True

theorem anchorAggregatePart1_0137 :
    anchorAggregatePartValid1_0137 anchorHistoryChunk0137 := by
  unfold anchorAggregatePartValid1_0137 anchorHistoryChunk0137
  decide

def anchorAggregatePartValid2_0137 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 140544
  | _ => True

theorem anchorAggregatePart2_0137 :
    anchorAggregatePartValid2_0137 anchorHistoryChunk0137 := by
  unfold anchorAggregatePartValid2_0137 anchorHistoryChunk0137
  decide

def anchorAggregatePartValid3_0137 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 140672
  | _ => True

theorem anchorAggregatePart3_0137 :
    anchorAggregatePartValid3_0137 anchorHistoryChunk0137 := by
  unfold anchorAggregatePartValid3_0137 anchorHistoryChunk0137
  decide

def anchorAggregatePartValid4_0137 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 140800
  | _ => True

theorem anchorAggregatePart4_0137 :
    anchorAggregatePartValid4_0137 anchorHistoryChunk0137 := by
  unfold anchorAggregatePartValid4_0137 anchorHistoryChunk0137
  decide

def anchorAggregatePartValid5_0137 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 140928
  | _ => True

theorem anchorAggregatePart5_0137 :
    anchorAggregatePartValid5_0137 anchorHistoryChunk0137 := by
  unfold anchorAggregatePartValid5_0137 anchorHistoryChunk0137
  decide

def anchorAggregatePartValid6_0137 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 141056
  | _ => True

theorem anchorAggregatePart6_0137 :
    anchorAggregatePartValid6_0137 anchorHistoryChunk0137 := by
  unfold anchorAggregatePartValid6_0137 anchorHistoryChunk0137
  decide

def anchorAggregatePartValid7_0137 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 141184
  | _ => True

theorem anchorAggregatePart7_0137 :
    anchorAggregatePartValid7_0137 anchorHistoryChunk0137 := by
  unfold anchorAggregatePartValid7_0137 anchorHistoryChunk0137
  decide

theorem anchorRange_0137 :
    anchorHistoryChunk0137.IndexedValid squarefreeOracle 5000000 140288 := by
  have h0 := anchorAggregatePart0_0137
  simp only [anchorAggregatePartValid0_0137, anchorHistoryChunk0137] at h0
  have h1 := anchorAggregatePart1_0137
  simp only [anchorAggregatePartValid1_0137, anchorHistoryChunk0137] at h1
  have h2 := anchorAggregatePart2_0137
  simp only [anchorAggregatePartValid2_0137, anchorHistoryChunk0137] at h2
  have h3 := anchorAggregatePart3_0137
  simp only [anchorAggregatePartValid3_0137, anchorHistoryChunk0137] at h3
  have h4 := anchorAggregatePart4_0137
  simp only [anchorAggregatePartValid4_0137, anchorHistoryChunk0137] at h4
  have h5 := anchorAggregatePart5_0137
  simp only [anchorAggregatePartValid5_0137, anchorHistoryChunk0137] at h5
  have h6 := anchorAggregatePart6_0137
  simp only [anchorAggregatePartValid6_0137, anchorHistoryChunk0137] at h6
  have h7 := anchorAggregatePart7_0137
  simp only [anchorAggregatePartValid7_0137, anchorHistoryChunk0137] at h7
  unfold anchorHistoryChunk0137
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0138 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 141312
  | _ => True

theorem anchorAggregatePart0_0138 :
    anchorAggregatePartValid0_0138 anchorHistoryChunk0138 := by
  unfold anchorAggregatePartValid0_0138 anchorHistoryChunk0138
  decide

def anchorAggregatePartValid1_0138 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 141440
  | _ => True

theorem anchorAggregatePart1_0138 :
    anchorAggregatePartValid1_0138 anchorHistoryChunk0138 := by
  unfold anchorAggregatePartValid1_0138 anchorHistoryChunk0138
  decide

def anchorAggregatePartValid2_0138 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 141568
  | _ => True

theorem anchorAggregatePart2_0138 :
    anchorAggregatePartValid2_0138 anchorHistoryChunk0138 := by
  unfold anchorAggregatePartValid2_0138 anchorHistoryChunk0138
  decide

def anchorAggregatePartValid3_0138 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 141696
  | _ => True

theorem anchorAggregatePart3_0138 :
    anchorAggregatePartValid3_0138 anchorHistoryChunk0138 := by
  unfold anchorAggregatePartValid3_0138 anchorHistoryChunk0138
  decide

def anchorAggregatePartValid4_0138 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 141824
  | _ => True

theorem anchorAggregatePart4_0138 :
    anchorAggregatePartValid4_0138 anchorHistoryChunk0138 := by
  unfold anchorAggregatePartValid4_0138 anchorHistoryChunk0138
  decide

def anchorAggregatePartValid5_0138 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 141952
  | _ => True

theorem anchorAggregatePart5_0138 :
    anchorAggregatePartValid5_0138 anchorHistoryChunk0138 := by
  unfold anchorAggregatePartValid5_0138 anchorHistoryChunk0138
  decide

def anchorAggregatePartValid6_0138 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 142080
  | _ => True

theorem anchorAggregatePart6_0138 :
    anchorAggregatePartValid6_0138 anchorHistoryChunk0138 := by
  unfold anchorAggregatePartValid6_0138 anchorHistoryChunk0138
  decide

def anchorAggregatePartValid7_0138 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 142208
  | _ => True

theorem anchorAggregatePart7_0138 :
    anchorAggregatePartValid7_0138 anchorHistoryChunk0138 := by
  unfold anchorAggregatePartValid7_0138 anchorHistoryChunk0138
  decide

theorem anchorRange_0138 :
    anchorHistoryChunk0138.IndexedValid squarefreeOracle 5000000 141312 := by
  have h0 := anchorAggregatePart0_0138
  simp only [anchorAggregatePartValid0_0138, anchorHistoryChunk0138] at h0
  have h1 := anchorAggregatePart1_0138
  simp only [anchorAggregatePartValid1_0138, anchorHistoryChunk0138] at h1
  have h2 := anchorAggregatePart2_0138
  simp only [anchorAggregatePartValid2_0138, anchorHistoryChunk0138] at h2
  have h3 := anchorAggregatePart3_0138
  simp only [anchorAggregatePartValid3_0138, anchorHistoryChunk0138] at h3
  have h4 := anchorAggregatePart4_0138
  simp only [anchorAggregatePartValid4_0138, anchorHistoryChunk0138] at h4
  have h5 := anchorAggregatePart5_0138
  simp only [anchorAggregatePartValid5_0138, anchorHistoryChunk0138] at h5
  have h6 := anchorAggregatePart6_0138
  simp only [anchorAggregatePartValid6_0138, anchorHistoryChunk0138] at h6
  have h7 := anchorAggregatePart7_0138
  simp only [anchorAggregatePartValid7_0138, anchorHistoryChunk0138] at h7
  unfold anchorHistoryChunk0138
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0139 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 142336
  | _ => True

theorem anchorAggregatePart0_0139 :
    anchorAggregatePartValid0_0139 anchorHistoryChunk0139 := by
  unfold anchorAggregatePartValid0_0139 anchorHistoryChunk0139
  decide

def anchorAggregatePartValid1_0139 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 142464
  | _ => True

theorem anchorAggregatePart1_0139 :
    anchorAggregatePartValid1_0139 anchorHistoryChunk0139 := by
  unfold anchorAggregatePartValid1_0139 anchorHistoryChunk0139
  decide

def anchorAggregatePartValid2_0139 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 142592
  | _ => True

theorem anchorAggregatePart2_0139 :
    anchorAggregatePartValid2_0139 anchorHistoryChunk0139 := by
  unfold anchorAggregatePartValid2_0139 anchorHistoryChunk0139
  decide

def anchorAggregatePartValid3_0139 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 142720
  | _ => True

theorem anchorAggregatePart3_0139 :
    anchorAggregatePartValid3_0139 anchorHistoryChunk0139 := by
  unfold anchorAggregatePartValid3_0139 anchorHistoryChunk0139
  decide

def anchorAggregatePartValid4_0139 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 142848
  | _ => True

theorem anchorAggregatePart4_0139 :
    anchorAggregatePartValid4_0139 anchorHistoryChunk0139 := by
  unfold anchorAggregatePartValid4_0139 anchorHistoryChunk0139
  decide

def anchorAggregatePartValid5_0139 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 142976
  | _ => True

theorem anchorAggregatePart5_0139 :
    anchorAggregatePartValid5_0139 anchorHistoryChunk0139 := by
  unfold anchorAggregatePartValid5_0139 anchorHistoryChunk0139
  decide

def anchorAggregatePartValid6_0139 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 143104
  | _ => True

theorem anchorAggregatePart6_0139 :
    anchorAggregatePartValid6_0139 anchorHistoryChunk0139 := by
  unfold anchorAggregatePartValid6_0139 anchorHistoryChunk0139
  decide

def anchorAggregatePartValid7_0139 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 143232
  | _ => True

theorem anchorAggregatePart7_0139 :
    anchorAggregatePartValid7_0139 anchorHistoryChunk0139 := by
  unfold anchorAggregatePartValid7_0139 anchorHistoryChunk0139
  decide

theorem anchorRange_0139 :
    anchorHistoryChunk0139.IndexedValid squarefreeOracle 5000000 142336 := by
  have h0 := anchorAggregatePart0_0139
  simp only [anchorAggregatePartValid0_0139, anchorHistoryChunk0139] at h0
  have h1 := anchorAggregatePart1_0139
  simp only [anchorAggregatePartValid1_0139, anchorHistoryChunk0139] at h1
  have h2 := anchorAggregatePart2_0139
  simp only [anchorAggregatePartValid2_0139, anchorHistoryChunk0139] at h2
  have h3 := anchorAggregatePart3_0139
  simp only [anchorAggregatePartValid3_0139, anchorHistoryChunk0139] at h3
  have h4 := anchorAggregatePart4_0139
  simp only [anchorAggregatePartValid4_0139, anchorHistoryChunk0139] at h4
  have h5 := anchorAggregatePart5_0139
  simp only [anchorAggregatePartValid5_0139, anchorHistoryChunk0139] at h5
  have h6 := anchorAggregatePart6_0139
  simp only [anchorAggregatePartValid6_0139, anchorHistoryChunk0139] at h6
  have h7 := anchorAggregatePart7_0139
  simp only [anchorAggregatePartValid7_0139, anchorHistoryChunk0139] at h7
  unfold anchorHistoryChunk0139
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
