import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0116
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0117
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0118
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0119

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0116, 0117, 0118, 0119 -/

def anchorAggregatePartValid0_0116 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 118784
  | _ => True

theorem anchorAggregatePart0_0116 :
    anchorAggregatePartValid0_0116 anchorHistoryChunk0116 := by
  unfold anchorAggregatePartValid0_0116 anchorHistoryChunk0116
  decide

def anchorAggregatePartValid1_0116 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 118912
  | _ => True

theorem anchorAggregatePart1_0116 :
    anchorAggregatePartValid1_0116 anchorHistoryChunk0116 := by
  unfold anchorAggregatePartValid1_0116 anchorHistoryChunk0116
  decide

def anchorAggregatePartValid2_0116 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 119040
  | _ => True

theorem anchorAggregatePart2_0116 :
    anchorAggregatePartValid2_0116 anchorHistoryChunk0116 := by
  unfold anchorAggregatePartValid2_0116 anchorHistoryChunk0116
  decide

def anchorAggregatePartValid3_0116 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 119168
  | _ => True

theorem anchorAggregatePart3_0116 :
    anchorAggregatePartValid3_0116 anchorHistoryChunk0116 := by
  unfold anchorAggregatePartValid3_0116 anchorHistoryChunk0116
  decide

def anchorAggregatePartValid4_0116 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 119296
  | _ => True

theorem anchorAggregatePart4_0116 :
    anchorAggregatePartValid4_0116 anchorHistoryChunk0116 := by
  unfold anchorAggregatePartValid4_0116 anchorHistoryChunk0116
  decide

def anchorAggregatePartValid5_0116 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 119424
  | _ => True

theorem anchorAggregatePart5_0116 :
    anchorAggregatePartValid5_0116 anchorHistoryChunk0116 := by
  unfold anchorAggregatePartValid5_0116 anchorHistoryChunk0116
  decide

def anchorAggregatePartValid6_0116 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 119552
  | _ => True

theorem anchorAggregatePart6_0116 :
    anchorAggregatePartValid6_0116 anchorHistoryChunk0116 := by
  unfold anchorAggregatePartValid6_0116 anchorHistoryChunk0116
  decide

def anchorAggregatePartValid7_0116 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 119680
  | _ => True

theorem anchorAggregatePart7_0116 :
    anchorAggregatePartValid7_0116 anchorHistoryChunk0116 := by
  unfold anchorAggregatePartValid7_0116 anchorHistoryChunk0116
  decide

theorem anchorRange_0116 :
    anchorHistoryChunk0116.IndexedValid squarefreeOracle 5000000 118784 := by
  have h0 := anchorAggregatePart0_0116
  simp only [anchorAggregatePartValid0_0116, anchorHistoryChunk0116] at h0
  have h1 := anchorAggregatePart1_0116
  simp only [anchorAggregatePartValid1_0116, anchorHistoryChunk0116] at h1
  have h2 := anchorAggregatePart2_0116
  simp only [anchorAggregatePartValid2_0116, anchorHistoryChunk0116] at h2
  have h3 := anchorAggregatePart3_0116
  simp only [anchorAggregatePartValid3_0116, anchorHistoryChunk0116] at h3
  have h4 := anchorAggregatePart4_0116
  simp only [anchorAggregatePartValid4_0116, anchorHistoryChunk0116] at h4
  have h5 := anchorAggregatePart5_0116
  simp only [anchorAggregatePartValid5_0116, anchorHistoryChunk0116] at h5
  have h6 := anchorAggregatePart6_0116
  simp only [anchorAggregatePartValid6_0116, anchorHistoryChunk0116] at h6
  have h7 := anchorAggregatePart7_0116
  simp only [anchorAggregatePartValid7_0116, anchorHistoryChunk0116] at h7
  unfold anchorHistoryChunk0116
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0117 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 119808
  | _ => True

theorem anchorAggregatePart0_0117 :
    anchorAggregatePartValid0_0117 anchorHistoryChunk0117 := by
  unfold anchorAggregatePartValid0_0117 anchorHistoryChunk0117
  decide

def anchorAggregatePartValid1_0117 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 119936
  | _ => True

theorem anchorAggregatePart1_0117 :
    anchorAggregatePartValid1_0117 anchorHistoryChunk0117 := by
  unfold anchorAggregatePartValid1_0117 anchorHistoryChunk0117
  decide

def anchorAggregatePartValid2_0117 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 120064
  | _ => True

theorem anchorAggregatePart2_0117 :
    anchorAggregatePartValid2_0117 anchorHistoryChunk0117 := by
  unfold anchorAggregatePartValid2_0117 anchorHistoryChunk0117
  decide

def anchorAggregatePartValid3_0117 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 120192
  | _ => True

theorem anchorAggregatePart3_0117 :
    anchorAggregatePartValid3_0117 anchorHistoryChunk0117 := by
  unfold anchorAggregatePartValid3_0117 anchorHistoryChunk0117
  decide

def anchorAggregatePartValid4_0117 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 120320
  | _ => True

theorem anchorAggregatePart4_0117 :
    anchorAggregatePartValid4_0117 anchorHistoryChunk0117 := by
  unfold anchorAggregatePartValid4_0117 anchorHistoryChunk0117
  decide

def anchorAggregatePartValid5_0117 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 120448
  | _ => True

theorem anchorAggregatePart5_0117 :
    anchorAggregatePartValid5_0117 anchorHistoryChunk0117 := by
  unfold anchorAggregatePartValid5_0117 anchorHistoryChunk0117
  decide

def anchorAggregatePartValid6_0117 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 120576
  | _ => True

theorem anchorAggregatePart6_0117 :
    anchorAggregatePartValid6_0117 anchorHistoryChunk0117 := by
  unfold anchorAggregatePartValid6_0117 anchorHistoryChunk0117
  decide

def anchorAggregatePartValid7_0117 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 120704
  | _ => True

theorem anchorAggregatePart7_0117 :
    anchorAggregatePartValid7_0117 anchorHistoryChunk0117 := by
  unfold anchorAggregatePartValid7_0117 anchorHistoryChunk0117
  decide

theorem anchorRange_0117 :
    anchorHistoryChunk0117.IndexedValid squarefreeOracle 5000000 119808 := by
  have h0 := anchorAggregatePart0_0117
  simp only [anchorAggregatePartValid0_0117, anchorHistoryChunk0117] at h0
  have h1 := anchorAggregatePart1_0117
  simp only [anchorAggregatePartValid1_0117, anchorHistoryChunk0117] at h1
  have h2 := anchorAggregatePart2_0117
  simp only [anchorAggregatePartValid2_0117, anchorHistoryChunk0117] at h2
  have h3 := anchorAggregatePart3_0117
  simp only [anchorAggregatePartValid3_0117, anchorHistoryChunk0117] at h3
  have h4 := anchorAggregatePart4_0117
  simp only [anchorAggregatePartValid4_0117, anchorHistoryChunk0117] at h4
  have h5 := anchorAggregatePart5_0117
  simp only [anchorAggregatePartValid5_0117, anchorHistoryChunk0117] at h5
  have h6 := anchorAggregatePart6_0117
  simp only [anchorAggregatePartValid6_0117, anchorHistoryChunk0117] at h6
  have h7 := anchorAggregatePart7_0117
  simp only [anchorAggregatePartValid7_0117, anchorHistoryChunk0117] at h7
  unfold anchorHistoryChunk0117
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0118 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 120832
  | _ => True

theorem anchorAggregatePart0_0118 :
    anchorAggregatePartValid0_0118 anchorHistoryChunk0118 := by
  unfold anchorAggregatePartValid0_0118 anchorHistoryChunk0118
  decide

def anchorAggregatePartValid1_0118 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 120960
  | _ => True

theorem anchorAggregatePart1_0118 :
    anchorAggregatePartValid1_0118 anchorHistoryChunk0118 := by
  unfold anchorAggregatePartValid1_0118 anchorHistoryChunk0118
  decide

def anchorAggregatePartValid2_0118 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 121088
  | _ => True

theorem anchorAggregatePart2_0118 :
    anchorAggregatePartValid2_0118 anchorHistoryChunk0118 := by
  unfold anchorAggregatePartValid2_0118 anchorHistoryChunk0118
  decide

def anchorAggregatePartValid3_0118 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 121216
  | _ => True

theorem anchorAggregatePart3_0118 :
    anchorAggregatePartValid3_0118 anchorHistoryChunk0118 := by
  unfold anchorAggregatePartValid3_0118 anchorHistoryChunk0118
  decide

def anchorAggregatePartValid4_0118 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 121344
  | _ => True

theorem anchorAggregatePart4_0118 :
    anchorAggregatePartValid4_0118 anchorHistoryChunk0118 := by
  unfold anchorAggregatePartValid4_0118 anchorHistoryChunk0118
  decide

def anchorAggregatePartValid5_0118 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 121472
  | _ => True

theorem anchorAggregatePart5_0118 :
    anchorAggregatePartValid5_0118 anchorHistoryChunk0118 := by
  unfold anchorAggregatePartValid5_0118 anchorHistoryChunk0118
  decide

def anchorAggregatePartValid6_0118 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 121600
  | _ => True

theorem anchorAggregatePart6_0118 :
    anchorAggregatePartValid6_0118 anchorHistoryChunk0118 := by
  unfold anchorAggregatePartValid6_0118 anchorHistoryChunk0118
  decide

def anchorAggregatePartValid7_0118 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 121728
  | _ => True

theorem anchorAggregatePart7_0118 :
    anchorAggregatePartValid7_0118 anchorHistoryChunk0118 := by
  unfold anchorAggregatePartValid7_0118 anchorHistoryChunk0118
  decide

theorem anchorRange_0118 :
    anchorHistoryChunk0118.IndexedValid squarefreeOracle 5000000 120832 := by
  have h0 := anchorAggregatePart0_0118
  simp only [anchorAggregatePartValid0_0118, anchorHistoryChunk0118] at h0
  have h1 := anchorAggregatePart1_0118
  simp only [anchorAggregatePartValid1_0118, anchorHistoryChunk0118] at h1
  have h2 := anchorAggregatePart2_0118
  simp only [anchorAggregatePartValid2_0118, anchorHistoryChunk0118] at h2
  have h3 := anchorAggregatePart3_0118
  simp only [anchorAggregatePartValid3_0118, anchorHistoryChunk0118] at h3
  have h4 := anchorAggregatePart4_0118
  simp only [anchorAggregatePartValid4_0118, anchorHistoryChunk0118] at h4
  have h5 := anchorAggregatePart5_0118
  simp only [anchorAggregatePartValid5_0118, anchorHistoryChunk0118] at h5
  have h6 := anchorAggregatePart6_0118
  simp only [anchorAggregatePartValid6_0118, anchorHistoryChunk0118] at h6
  have h7 := anchorAggregatePart7_0118
  simp only [anchorAggregatePartValid7_0118, anchorHistoryChunk0118] at h7
  unfold anchorHistoryChunk0118
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0119 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 121856
  | _ => True

theorem anchorAggregatePart0_0119 :
    anchorAggregatePartValid0_0119 anchorHistoryChunk0119 := by
  unfold anchorAggregatePartValid0_0119 anchorHistoryChunk0119
  decide

def anchorAggregatePartValid1_0119 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 121984
  | _ => True

theorem anchorAggregatePart1_0119 :
    anchorAggregatePartValid1_0119 anchorHistoryChunk0119 := by
  unfold anchorAggregatePartValid1_0119 anchorHistoryChunk0119
  decide

def anchorAggregatePartValid2_0119 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 122112
  | _ => True

theorem anchorAggregatePart2_0119 :
    anchorAggregatePartValid2_0119 anchorHistoryChunk0119 := by
  unfold anchorAggregatePartValid2_0119 anchorHistoryChunk0119
  decide

def anchorAggregatePartValid3_0119 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 122240
  | _ => True

theorem anchorAggregatePart3_0119 :
    anchorAggregatePartValid3_0119 anchorHistoryChunk0119 := by
  unfold anchorAggregatePartValid3_0119 anchorHistoryChunk0119
  decide

def anchorAggregatePartValid4_0119 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 122368
  | _ => True

theorem anchorAggregatePart4_0119 :
    anchorAggregatePartValid4_0119 anchorHistoryChunk0119 := by
  unfold anchorAggregatePartValid4_0119 anchorHistoryChunk0119
  decide

def anchorAggregatePartValid5_0119 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 122496
  | _ => True

theorem anchorAggregatePart5_0119 :
    anchorAggregatePartValid5_0119 anchorHistoryChunk0119 := by
  unfold anchorAggregatePartValid5_0119 anchorHistoryChunk0119
  decide

def anchorAggregatePartValid6_0119 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 122624
  | _ => True

theorem anchorAggregatePart6_0119 :
    anchorAggregatePartValid6_0119 anchorHistoryChunk0119 := by
  unfold anchorAggregatePartValid6_0119 anchorHistoryChunk0119
  decide

def anchorAggregatePartValid7_0119 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 122752
  | _ => True

theorem anchorAggregatePart7_0119 :
    anchorAggregatePartValid7_0119 anchorHistoryChunk0119 := by
  unfold anchorAggregatePartValid7_0119 anchorHistoryChunk0119
  decide

theorem anchorRange_0119 :
    anchorHistoryChunk0119.IndexedValid squarefreeOracle 5000000 121856 := by
  have h0 := anchorAggregatePart0_0119
  simp only [anchorAggregatePartValid0_0119, anchorHistoryChunk0119] at h0
  have h1 := anchorAggregatePart1_0119
  simp only [anchorAggregatePartValid1_0119, anchorHistoryChunk0119] at h1
  have h2 := anchorAggregatePart2_0119
  simp only [anchorAggregatePartValid2_0119, anchorHistoryChunk0119] at h2
  have h3 := anchorAggregatePart3_0119
  simp only [anchorAggregatePartValid3_0119, anchorHistoryChunk0119] at h3
  have h4 := anchorAggregatePart4_0119
  simp only [anchorAggregatePartValid4_0119, anchorHistoryChunk0119] at h4
  have h5 := anchorAggregatePart5_0119
  simp only [anchorAggregatePartValid5_0119, anchorHistoryChunk0119] at h5
  have h6 := anchorAggregatePart6_0119
  simp only [anchorAggregatePartValid6_0119, anchorHistoryChunk0119] at h6
  have h7 := anchorAggregatePart7_0119
  simp only [anchorAggregatePartValid7_0119, anchorHistoryChunk0119] at h7
  unfold anchorHistoryChunk0119
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
