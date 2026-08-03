import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0132
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0133
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0134
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0135

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0132, 0133, 0134, 0135 -/

def anchorAggregatePartValid0_0132 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 135168
  | _ => True

theorem anchorAggregatePart0_0132 :
    anchorAggregatePartValid0_0132 anchorHistoryChunk0132 := by
  unfold anchorAggregatePartValid0_0132 anchorHistoryChunk0132
  decide

def anchorAggregatePartValid1_0132 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 135296
  | _ => True

theorem anchorAggregatePart1_0132 :
    anchorAggregatePartValid1_0132 anchorHistoryChunk0132 := by
  unfold anchorAggregatePartValid1_0132 anchorHistoryChunk0132
  decide

def anchorAggregatePartValid2_0132 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 135424
  | _ => True

theorem anchorAggregatePart2_0132 :
    anchorAggregatePartValid2_0132 anchorHistoryChunk0132 := by
  unfold anchorAggregatePartValid2_0132 anchorHistoryChunk0132
  decide

def anchorAggregatePartValid3_0132 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 135552
  | _ => True

theorem anchorAggregatePart3_0132 :
    anchorAggregatePartValid3_0132 anchorHistoryChunk0132 := by
  unfold anchorAggregatePartValid3_0132 anchorHistoryChunk0132
  decide

def anchorAggregatePartValid4_0132 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 135680
  | _ => True

theorem anchorAggregatePart4_0132 :
    anchorAggregatePartValid4_0132 anchorHistoryChunk0132 := by
  unfold anchorAggregatePartValid4_0132 anchorHistoryChunk0132
  decide

def anchorAggregatePartValid5_0132 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 135808
  | _ => True

theorem anchorAggregatePart5_0132 :
    anchorAggregatePartValid5_0132 anchorHistoryChunk0132 := by
  unfold anchorAggregatePartValid5_0132 anchorHistoryChunk0132
  decide

def anchorAggregatePartValid6_0132 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 135936
  | _ => True

theorem anchorAggregatePart6_0132 :
    anchorAggregatePartValid6_0132 anchorHistoryChunk0132 := by
  unfold anchorAggregatePartValid6_0132 anchorHistoryChunk0132
  decide

def anchorAggregatePartValid7_0132 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 136064
  | _ => True

theorem anchorAggregatePart7_0132 :
    anchorAggregatePartValid7_0132 anchorHistoryChunk0132 := by
  unfold anchorAggregatePartValid7_0132 anchorHistoryChunk0132
  decide

theorem anchorRange_0132 :
    anchorHistoryChunk0132.IndexedValid squarefreeOracle 5000000 135168 := by
  have h0 := anchorAggregatePart0_0132
  simp only [anchorAggregatePartValid0_0132, anchorHistoryChunk0132] at h0
  have h1 := anchorAggregatePart1_0132
  simp only [anchorAggregatePartValid1_0132, anchorHistoryChunk0132] at h1
  have h2 := anchorAggregatePart2_0132
  simp only [anchorAggregatePartValid2_0132, anchorHistoryChunk0132] at h2
  have h3 := anchorAggregatePart3_0132
  simp only [anchorAggregatePartValid3_0132, anchorHistoryChunk0132] at h3
  have h4 := anchorAggregatePart4_0132
  simp only [anchorAggregatePartValid4_0132, anchorHistoryChunk0132] at h4
  have h5 := anchorAggregatePart5_0132
  simp only [anchorAggregatePartValid5_0132, anchorHistoryChunk0132] at h5
  have h6 := anchorAggregatePart6_0132
  simp only [anchorAggregatePartValid6_0132, anchorHistoryChunk0132] at h6
  have h7 := anchorAggregatePart7_0132
  simp only [anchorAggregatePartValid7_0132, anchorHistoryChunk0132] at h7
  unfold anchorHistoryChunk0132
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0133 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 136192
  | _ => True

theorem anchorAggregatePart0_0133 :
    anchorAggregatePartValid0_0133 anchorHistoryChunk0133 := by
  unfold anchorAggregatePartValid0_0133 anchorHistoryChunk0133
  decide

def anchorAggregatePartValid1_0133 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 136320
  | _ => True

theorem anchorAggregatePart1_0133 :
    anchorAggregatePartValid1_0133 anchorHistoryChunk0133 := by
  unfold anchorAggregatePartValid1_0133 anchorHistoryChunk0133
  decide

def anchorAggregatePartValid2_0133 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 136448
  | _ => True

theorem anchorAggregatePart2_0133 :
    anchorAggregatePartValid2_0133 anchorHistoryChunk0133 := by
  unfold anchorAggregatePartValid2_0133 anchorHistoryChunk0133
  decide

def anchorAggregatePartValid3_0133 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 136576
  | _ => True

theorem anchorAggregatePart3_0133 :
    anchorAggregatePartValid3_0133 anchorHistoryChunk0133 := by
  unfold anchorAggregatePartValid3_0133 anchorHistoryChunk0133
  decide

def anchorAggregatePartValid4_0133 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 136704
  | _ => True

theorem anchorAggregatePart4_0133 :
    anchorAggregatePartValid4_0133 anchorHistoryChunk0133 := by
  unfold anchorAggregatePartValid4_0133 anchorHistoryChunk0133
  decide

def anchorAggregatePartValid5_0133 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 136832
  | _ => True

theorem anchorAggregatePart5_0133 :
    anchorAggregatePartValid5_0133 anchorHistoryChunk0133 := by
  unfold anchorAggregatePartValid5_0133 anchorHistoryChunk0133
  decide

def anchorAggregatePartValid6_0133 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 136960
  | _ => True

theorem anchorAggregatePart6_0133 :
    anchorAggregatePartValid6_0133 anchorHistoryChunk0133 := by
  unfold anchorAggregatePartValid6_0133 anchorHistoryChunk0133
  decide

def anchorAggregatePartValid7_0133 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 137088
  | _ => True

theorem anchorAggregatePart7_0133 :
    anchorAggregatePartValid7_0133 anchorHistoryChunk0133 := by
  unfold anchorAggregatePartValid7_0133 anchorHistoryChunk0133
  decide

theorem anchorRange_0133 :
    anchorHistoryChunk0133.IndexedValid squarefreeOracle 5000000 136192 := by
  have h0 := anchorAggregatePart0_0133
  simp only [anchorAggregatePartValid0_0133, anchorHistoryChunk0133] at h0
  have h1 := anchorAggregatePart1_0133
  simp only [anchorAggregatePartValid1_0133, anchorHistoryChunk0133] at h1
  have h2 := anchorAggregatePart2_0133
  simp only [anchorAggregatePartValid2_0133, anchorHistoryChunk0133] at h2
  have h3 := anchorAggregatePart3_0133
  simp only [anchorAggregatePartValid3_0133, anchorHistoryChunk0133] at h3
  have h4 := anchorAggregatePart4_0133
  simp only [anchorAggregatePartValid4_0133, anchorHistoryChunk0133] at h4
  have h5 := anchorAggregatePart5_0133
  simp only [anchorAggregatePartValid5_0133, anchorHistoryChunk0133] at h5
  have h6 := anchorAggregatePart6_0133
  simp only [anchorAggregatePartValid6_0133, anchorHistoryChunk0133] at h6
  have h7 := anchorAggregatePart7_0133
  simp only [anchorAggregatePartValid7_0133, anchorHistoryChunk0133] at h7
  unfold anchorHistoryChunk0133
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0134 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 137216
  | _ => True

theorem anchorAggregatePart0_0134 :
    anchorAggregatePartValid0_0134 anchorHistoryChunk0134 := by
  unfold anchorAggregatePartValid0_0134 anchorHistoryChunk0134
  decide

def anchorAggregatePartValid1_0134 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 137344
  | _ => True

theorem anchorAggregatePart1_0134 :
    anchorAggregatePartValid1_0134 anchorHistoryChunk0134 := by
  unfold anchorAggregatePartValid1_0134 anchorHistoryChunk0134
  decide

def anchorAggregatePartValid2_0134 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 137472
  | _ => True

theorem anchorAggregatePart2_0134 :
    anchorAggregatePartValid2_0134 anchorHistoryChunk0134 := by
  unfold anchorAggregatePartValid2_0134 anchorHistoryChunk0134
  decide

def anchorAggregatePartValid3_0134 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 137600
  | _ => True

theorem anchorAggregatePart3_0134 :
    anchorAggregatePartValid3_0134 anchorHistoryChunk0134 := by
  unfold anchorAggregatePartValid3_0134 anchorHistoryChunk0134
  decide

def anchorAggregatePartValid4_0134 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 137728
  | _ => True

theorem anchorAggregatePart4_0134 :
    anchorAggregatePartValid4_0134 anchorHistoryChunk0134 := by
  unfold anchorAggregatePartValid4_0134 anchorHistoryChunk0134
  decide

def anchorAggregatePartValid5_0134 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 137856
  | _ => True

theorem anchorAggregatePart5_0134 :
    anchorAggregatePartValid5_0134 anchorHistoryChunk0134 := by
  unfold anchorAggregatePartValid5_0134 anchorHistoryChunk0134
  decide

def anchorAggregatePartValid6_0134 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 137984
  | _ => True

theorem anchorAggregatePart6_0134 :
    anchorAggregatePartValid6_0134 anchorHistoryChunk0134 := by
  unfold anchorAggregatePartValid6_0134 anchorHistoryChunk0134
  decide

def anchorAggregatePartValid7_0134 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 138112
  | _ => True

theorem anchorAggregatePart7_0134 :
    anchorAggregatePartValid7_0134 anchorHistoryChunk0134 := by
  unfold anchorAggregatePartValid7_0134 anchorHistoryChunk0134
  decide

theorem anchorRange_0134 :
    anchorHistoryChunk0134.IndexedValid squarefreeOracle 5000000 137216 := by
  have h0 := anchorAggregatePart0_0134
  simp only [anchorAggregatePartValid0_0134, anchorHistoryChunk0134] at h0
  have h1 := anchorAggregatePart1_0134
  simp only [anchorAggregatePartValid1_0134, anchorHistoryChunk0134] at h1
  have h2 := anchorAggregatePart2_0134
  simp only [anchorAggregatePartValid2_0134, anchorHistoryChunk0134] at h2
  have h3 := anchorAggregatePart3_0134
  simp only [anchorAggregatePartValid3_0134, anchorHistoryChunk0134] at h3
  have h4 := anchorAggregatePart4_0134
  simp only [anchorAggregatePartValid4_0134, anchorHistoryChunk0134] at h4
  have h5 := anchorAggregatePart5_0134
  simp only [anchorAggregatePartValid5_0134, anchorHistoryChunk0134] at h5
  have h6 := anchorAggregatePart6_0134
  simp only [anchorAggregatePartValid6_0134, anchorHistoryChunk0134] at h6
  have h7 := anchorAggregatePart7_0134
  simp only [anchorAggregatePartValid7_0134, anchorHistoryChunk0134] at h7
  unfold anchorHistoryChunk0134
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0135 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 138240
  | _ => True

theorem anchorAggregatePart0_0135 :
    anchorAggregatePartValid0_0135 anchorHistoryChunk0135 := by
  unfold anchorAggregatePartValid0_0135 anchorHistoryChunk0135
  decide

def anchorAggregatePartValid1_0135 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 138368
  | _ => True

theorem anchorAggregatePart1_0135 :
    anchorAggregatePartValid1_0135 anchorHistoryChunk0135 := by
  unfold anchorAggregatePartValid1_0135 anchorHistoryChunk0135
  decide

def anchorAggregatePartValid2_0135 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 138496
  | _ => True

theorem anchorAggregatePart2_0135 :
    anchorAggregatePartValid2_0135 anchorHistoryChunk0135 := by
  unfold anchorAggregatePartValid2_0135 anchorHistoryChunk0135
  decide

def anchorAggregatePartValid3_0135 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 138624
  | _ => True

theorem anchorAggregatePart3_0135 :
    anchorAggregatePartValid3_0135 anchorHistoryChunk0135 := by
  unfold anchorAggregatePartValid3_0135 anchorHistoryChunk0135
  decide

def anchorAggregatePartValid4_0135 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 138752
  | _ => True

theorem anchorAggregatePart4_0135 :
    anchorAggregatePartValid4_0135 anchorHistoryChunk0135 := by
  unfold anchorAggregatePartValid4_0135 anchorHistoryChunk0135
  decide

def anchorAggregatePartValid5_0135 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 138880
  | _ => True

theorem anchorAggregatePart5_0135 :
    anchorAggregatePartValid5_0135 anchorHistoryChunk0135 := by
  unfold anchorAggregatePartValid5_0135 anchorHistoryChunk0135
  decide

def anchorAggregatePartValid6_0135 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 139008
  | _ => True

theorem anchorAggregatePart6_0135 :
    anchorAggregatePartValid6_0135 anchorHistoryChunk0135 := by
  unfold anchorAggregatePartValid6_0135 anchorHistoryChunk0135
  decide

def anchorAggregatePartValid7_0135 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 139136
  | _ => True

theorem anchorAggregatePart7_0135 :
    anchorAggregatePartValid7_0135 anchorHistoryChunk0135 := by
  unfold anchorAggregatePartValid7_0135 anchorHistoryChunk0135
  decide

theorem anchorRange_0135 :
    anchorHistoryChunk0135.IndexedValid squarefreeOracle 5000000 138240 := by
  have h0 := anchorAggregatePart0_0135
  simp only [anchorAggregatePartValid0_0135, anchorHistoryChunk0135] at h0
  have h1 := anchorAggregatePart1_0135
  simp only [anchorAggregatePartValid1_0135, anchorHistoryChunk0135] at h1
  have h2 := anchorAggregatePart2_0135
  simp only [anchorAggregatePartValid2_0135, anchorHistoryChunk0135] at h2
  have h3 := anchorAggregatePart3_0135
  simp only [anchorAggregatePartValid3_0135, anchorHistoryChunk0135] at h3
  have h4 := anchorAggregatePart4_0135
  simp only [anchorAggregatePartValid4_0135, anchorHistoryChunk0135] at h4
  have h5 := anchorAggregatePart5_0135
  simp only [anchorAggregatePartValid5_0135, anchorHistoryChunk0135] at h5
  have h6 := anchorAggregatePart6_0135
  simp only [anchorAggregatePartValid6_0135, anchorHistoryChunk0135] at h6
  have h7 := anchorAggregatePart7_0135
  simp only [anchorAggregatePartValid7_0135, anchorHistoryChunk0135] at h7
  unfold anchorHistoryChunk0135
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
