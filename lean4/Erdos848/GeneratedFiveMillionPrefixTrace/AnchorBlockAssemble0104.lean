import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0104
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0105
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0106
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0107

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0104, 0105, 0106, 0107 -/

def anchorAggregatePartValid0_0104 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 106496
  | _ => True

theorem anchorAggregatePart0_0104 :
    anchorAggregatePartValid0_0104 anchorHistoryChunk0104 := by
  unfold anchorAggregatePartValid0_0104 anchorHistoryChunk0104
  decide

def anchorAggregatePartValid1_0104 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 106624
  | _ => True

theorem anchorAggregatePart1_0104 :
    anchorAggregatePartValid1_0104 anchorHistoryChunk0104 := by
  unfold anchorAggregatePartValid1_0104 anchorHistoryChunk0104
  decide

def anchorAggregatePartValid2_0104 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 106752
  | _ => True

theorem anchorAggregatePart2_0104 :
    anchorAggregatePartValid2_0104 anchorHistoryChunk0104 := by
  unfold anchorAggregatePartValid2_0104 anchorHistoryChunk0104
  decide

def anchorAggregatePartValid3_0104 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 106880
  | _ => True

theorem anchorAggregatePart3_0104 :
    anchorAggregatePartValid3_0104 anchorHistoryChunk0104 := by
  unfold anchorAggregatePartValid3_0104 anchorHistoryChunk0104
  decide

def anchorAggregatePartValid4_0104 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 107008
  | _ => True

theorem anchorAggregatePart4_0104 :
    anchorAggregatePartValid4_0104 anchorHistoryChunk0104 := by
  unfold anchorAggregatePartValid4_0104 anchorHistoryChunk0104
  decide

def anchorAggregatePartValid5_0104 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 107136
  | _ => True

theorem anchorAggregatePart5_0104 :
    anchorAggregatePartValid5_0104 anchorHistoryChunk0104 := by
  unfold anchorAggregatePartValid5_0104 anchorHistoryChunk0104
  decide

def anchorAggregatePartValid6_0104 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 107264
  | _ => True

theorem anchorAggregatePart6_0104 :
    anchorAggregatePartValid6_0104 anchorHistoryChunk0104 := by
  unfold anchorAggregatePartValid6_0104 anchorHistoryChunk0104
  decide

def anchorAggregatePartValid7_0104 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 107392
  | _ => True

theorem anchorAggregatePart7_0104 :
    anchorAggregatePartValid7_0104 anchorHistoryChunk0104 := by
  unfold anchorAggregatePartValid7_0104 anchorHistoryChunk0104
  decide

theorem anchorRange_0104 :
    anchorHistoryChunk0104.IndexedValid squarefreeOracle 5000000 106496 := by
  have h0 := anchorAggregatePart0_0104
  simp only [anchorAggregatePartValid0_0104, anchorHistoryChunk0104] at h0
  have h1 := anchorAggregatePart1_0104
  simp only [anchorAggregatePartValid1_0104, anchorHistoryChunk0104] at h1
  have h2 := anchorAggregatePart2_0104
  simp only [anchorAggregatePartValid2_0104, anchorHistoryChunk0104] at h2
  have h3 := anchorAggregatePart3_0104
  simp only [anchorAggregatePartValid3_0104, anchorHistoryChunk0104] at h3
  have h4 := anchorAggregatePart4_0104
  simp only [anchorAggregatePartValid4_0104, anchorHistoryChunk0104] at h4
  have h5 := anchorAggregatePart5_0104
  simp only [anchorAggregatePartValid5_0104, anchorHistoryChunk0104] at h5
  have h6 := anchorAggregatePart6_0104
  simp only [anchorAggregatePartValid6_0104, anchorHistoryChunk0104] at h6
  have h7 := anchorAggregatePart7_0104
  simp only [anchorAggregatePartValid7_0104, anchorHistoryChunk0104] at h7
  unfold anchorHistoryChunk0104
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0105 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 107520
  | _ => True

theorem anchorAggregatePart0_0105 :
    anchorAggregatePartValid0_0105 anchorHistoryChunk0105 := by
  unfold anchorAggregatePartValid0_0105 anchorHistoryChunk0105
  decide

def anchorAggregatePartValid1_0105 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 107648
  | _ => True

theorem anchorAggregatePart1_0105 :
    anchorAggregatePartValid1_0105 anchorHistoryChunk0105 := by
  unfold anchorAggregatePartValid1_0105 anchorHistoryChunk0105
  decide

def anchorAggregatePartValid2_0105 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 107776
  | _ => True

theorem anchorAggregatePart2_0105 :
    anchorAggregatePartValid2_0105 anchorHistoryChunk0105 := by
  unfold anchorAggregatePartValid2_0105 anchorHistoryChunk0105
  decide

def anchorAggregatePartValid3_0105 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 107904
  | _ => True

theorem anchorAggregatePart3_0105 :
    anchorAggregatePartValid3_0105 anchorHistoryChunk0105 := by
  unfold anchorAggregatePartValid3_0105 anchorHistoryChunk0105
  decide

def anchorAggregatePartValid4_0105 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 108032
  | _ => True

theorem anchorAggregatePart4_0105 :
    anchorAggregatePartValid4_0105 anchorHistoryChunk0105 := by
  unfold anchorAggregatePartValid4_0105 anchorHistoryChunk0105
  decide

def anchorAggregatePartValid5_0105 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 108160
  | _ => True

theorem anchorAggregatePart5_0105 :
    anchorAggregatePartValid5_0105 anchorHistoryChunk0105 := by
  unfold anchorAggregatePartValid5_0105 anchorHistoryChunk0105
  decide

def anchorAggregatePartValid6_0105 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 108288
  | _ => True

theorem anchorAggregatePart6_0105 :
    anchorAggregatePartValid6_0105 anchorHistoryChunk0105 := by
  unfold anchorAggregatePartValid6_0105 anchorHistoryChunk0105
  decide

def anchorAggregatePartValid7_0105 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 108416
  | _ => True

theorem anchorAggregatePart7_0105 :
    anchorAggregatePartValid7_0105 anchorHistoryChunk0105 := by
  unfold anchorAggregatePartValid7_0105 anchorHistoryChunk0105
  decide

theorem anchorRange_0105 :
    anchorHistoryChunk0105.IndexedValid squarefreeOracle 5000000 107520 := by
  have h0 := anchorAggregatePart0_0105
  simp only [anchorAggregatePartValid0_0105, anchorHistoryChunk0105] at h0
  have h1 := anchorAggregatePart1_0105
  simp only [anchorAggregatePartValid1_0105, anchorHistoryChunk0105] at h1
  have h2 := anchorAggregatePart2_0105
  simp only [anchorAggregatePartValid2_0105, anchorHistoryChunk0105] at h2
  have h3 := anchorAggregatePart3_0105
  simp only [anchorAggregatePartValid3_0105, anchorHistoryChunk0105] at h3
  have h4 := anchorAggregatePart4_0105
  simp only [anchorAggregatePartValid4_0105, anchorHistoryChunk0105] at h4
  have h5 := anchorAggregatePart5_0105
  simp only [anchorAggregatePartValid5_0105, anchorHistoryChunk0105] at h5
  have h6 := anchorAggregatePart6_0105
  simp only [anchorAggregatePartValid6_0105, anchorHistoryChunk0105] at h6
  have h7 := anchorAggregatePart7_0105
  simp only [anchorAggregatePartValid7_0105, anchorHistoryChunk0105] at h7
  unfold anchorHistoryChunk0105
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0106 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 108544
  | _ => True

theorem anchorAggregatePart0_0106 :
    anchorAggregatePartValid0_0106 anchorHistoryChunk0106 := by
  unfold anchorAggregatePartValid0_0106 anchorHistoryChunk0106
  decide

def anchorAggregatePartValid1_0106 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 108672
  | _ => True

theorem anchorAggregatePart1_0106 :
    anchorAggregatePartValid1_0106 anchorHistoryChunk0106 := by
  unfold anchorAggregatePartValid1_0106 anchorHistoryChunk0106
  decide

def anchorAggregatePartValid2_0106 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 108800
  | _ => True

theorem anchorAggregatePart2_0106 :
    anchorAggregatePartValid2_0106 anchorHistoryChunk0106 := by
  unfold anchorAggregatePartValid2_0106 anchorHistoryChunk0106
  decide

def anchorAggregatePartValid3_0106 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 108928
  | _ => True

theorem anchorAggregatePart3_0106 :
    anchorAggregatePartValid3_0106 anchorHistoryChunk0106 := by
  unfold anchorAggregatePartValid3_0106 anchorHistoryChunk0106
  decide

def anchorAggregatePartValid4_0106 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 109056
  | _ => True

theorem anchorAggregatePart4_0106 :
    anchorAggregatePartValid4_0106 anchorHistoryChunk0106 := by
  unfold anchorAggregatePartValid4_0106 anchorHistoryChunk0106
  decide

def anchorAggregatePartValid5_0106 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 109184
  | _ => True

theorem anchorAggregatePart5_0106 :
    anchorAggregatePartValid5_0106 anchorHistoryChunk0106 := by
  unfold anchorAggregatePartValid5_0106 anchorHistoryChunk0106
  decide

def anchorAggregatePartValid6_0106 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 109312
  | _ => True

theorem anchorAggregatePart6_0106 :
    anchorAggregatePartValid6_0106 anchorHistoryChunk0106 := by
  unfold anchorAggregatePartValid6_0106 anchorHistoryChunk0106
  decide

def anchorAggregatePartValid7_0106 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 109440
  | _ => True

theorem anchorAggregatePart7_0106 :
    anchorAggregatePartValid7_0106 anchorHistoryChunk0106 := by
  unfold anchorAggregatePartValid7_0106 anchorHistoryChunk0106
  decide

theorem anchorRange_0106 :
    anchorHistoryChunk0106.IndexedValid squarefreeOracle 5000000 108544 := by
  have h0 := anchorAggregatePart0_0106
  simp only [anchorAggregatePartValid0_0106, anchorHistoryChunk0106] at h0
  have h1 := anchorAggregatePart1_0106
  simp only [anchorAggregatePartValid1_0106, anchorHistoryChunk0106] at h1
  have h2 := anchorAggregatePart2_0106
  simp only [anchorAggregatePartValid2_0106, anchorHistoryChunk0106] at h2
  have h3 := anchorAggregatePart3_0106
  simp only [anchorAggregatePartValid3_0106, anchorHistoryChunk0106] at h3
  have h4 := anchorAggregatePart4_0106
  simp only [anchorAggregatePartValid4_0106, anchorHistoryChunk0106] at h4
  have h5 := anchorAggregatePart5_0106
  simp only [anchorAggregatePartValid5_0106, anchorHistoryChunk0106] at h5
  have h6 := anchorAggregatePart6_0106
  simp only [anchorAggregatePartValid6_0106, anchorHistoryChunk0106] at h6
  have h7 := anchorAggregatePart7_0106
  simp only [anchorAggregatePartValid7_0106, anchorHistoryChunk0106] at h7
  unfold anchorHistoryChunk0106
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0107 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 109568
  | _ => True

theorem anchorAggregatePart0_0107 :
    anchorAggregatePartValid0_0107 anchorHistoryChunk0107 := by
  unfold anchorAggregatePartValid0_0107 anchorHistoryChunk0107
  decide

def anchorAggregatePartValid1_0107 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 109696
  | _ => True

theorem anchorAggregatePart1_0107 :
    anchorAggregatePartValid1_0107 anchorHistoryChunk0107 := by
  unfold anchorAggregatePartValid1_0107 anchorHistoryChunk0107
  decide

def anchorAggregatePartValid2_0107 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 109824
  | _ => True

theorem anchorAggregatePart2_0107 :
    anchorAggregatePartValid2_0107 anchorHistoryChunk0107 := by
  unfold anchorAggregatePartValid2_0107 anchorHistoryChunk0107
  decide

def anchorAggregatePartValid3_0107 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 109952
  | _ => True

theorem anchorAggregatePart3_0107 :
    anchorAggregatePartValid3_0107 anchorHistoryChunk0107 := by
  unfold anchorAggregatePartValid3_0107 anchorHistoryChunk0107
  decide

def anchorAggregatePartValid4_0107 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 110080
  | _ => True

theorem anchorAggregatePart4_0107 :
    anchorAggregatePartValid4_0107 anchorHistoryChunk0107 := by
  unfold anchorAggregatePartValid4_0107 anchorHistoryChunk0107
  decide

def anchorAggregatePartValid5_0107 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 110208
  | _ => True

theorem anchorAggregatePart5_0107 :
    anchorAggregatePartValid5_0107 anchorHistoryChunk0107 := by
  unfold anchorAggregatePartValid5_0107 anchorHistoryChunk0107
  decide

def anchorAggregatePartValid6_0107 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 110336
  | _ => True

theorem anchorAggregatePart6_0107 :
    anchorAggregatePartValid6_0107 anchorHistoryChunk0107 := by
  unfold anchorAggregatePartValid6_0107 anchorHistoryChunk0107
  decide

def anchorAggregatePartValid7_0107 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 110464
  | _ => True

theorem anchorAggregatePart7_0107 :
    anchorAggregatePartValid7_0107 anchorHistoryChunk0107 := by
  unfold anchorAggregatePartValid7_0107 anchorHistoryChunk0107
  decide

theorem anchorRange_0107 :
    anchorHistoryChunk0107.IndexedValid squarefreeOracle 5000000 109568 := by
  have h0 := anchorAggregatePart0_0107
  simp only [anchorAggregatePartValid0_0107, anchorHistoryChunk0107] at h0
  have h1 := anchorAggregatePart1_0107
  simp only [anchorAggregatePartValid1_0107, anchorHistoryChunk0107] at h1
  have h2 := anchorAggregatePart2_0107
  simp only [anchorAggregatePartValid2_0107, anchorHistoryChunk0107] at h2
  have h3 := anchorAggregatePart3_0107
  simp only [anchorAggregatePartValid3_0107, anchorHistoryChunk0107] at h3
  have h4 := anchorAggregatePart4_0107
  simp only [anchorAggregatePartValid4_0107, anchorHistoryChunk0107] at h4
  have h5 := anchorAggregatePart5_0107
  simp only [anchorAggregatePartValid5_0107, anchorHistoryChunk0107] at h5
  have h6 := anchorAggregatePart6_0107
  simp only [anchorAggregatePartValid6_0107, anchorHistoryChunk0107] at h6
  have h7 := anchorAggregatePart7_0107
  simp only [anchorAggregatePartValid7_0107, anchorHistoryChunk0107] at h7
  unfold anchorHistoryChunk0107
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
