import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0068
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0069
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0070
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0071

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0068, 0069, 0070, 0071 -/

def anchorAggregatePartValid0_0068 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 69632
  | _ => True

theorem anchorAggregatePart0_0068 :
    anchorAggregatePartValid0_0068 anchorHistoryChunk0068 := by
  unfold anchorAggregatePartValid0_0068 anchorHistoryChunk0068
  decide

def anchorAggregatePartValid1_0068 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 69760
  | _ => True

theorem anchorAggregatePart1_0068 :
    anchorAggregatePartValid1_0068 anchorHistoryChunk0068 := by
  unfold anchorAggregatePartValid1_0068 anchorHistoryChunk0068
  decide

def anchorAggregatePartValid2_0068 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 69888
  | _ => True

theorem anchorAggregatePart2_0068 :
    anchorAggregatePartValid2_0068 anchorHistoryChunk0068 := by
  unfold anchorAggregatePartValid2_0068 anchorHistoryChunk0068
  decide

def anchorAggregatePartValid3_0068 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 70016
  | _ => True

theorem anchorAggregatePart3_0068 :
    anchorAggregatePartValid3_0068 anchorHistoryChunk0068 := by
  unfold anchorAggregatePartValid3_0068 anchorHistoryChunk0068
  decide

def anchorAggregatePartValid4_0068 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 70144
  | _ => True

theorem anchorAggregatePart4_0068 :
    anchorAggregatePartValid4_0068 anchorHistoryChunk0068 := by
  unfold anchorAggregatePartValid4_0068 anchorHistoryChunk0068
  decide

def anchorAggregatePartValid5_0068 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 70272
  | _ => True

theorem anchorAggregatePart5_0068 :
    anchorAggregatePartValid5_0068 anchorHistoryChunk0068 := by
  unfold anchorAggregatePartValid5_0068 anchorHistoryChunk0068
  decide

def anchorAggregatePartValid6_0068 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 70400
  | _ => True

theorem anchorAggregatePart6_0068 :
    anchorAggregatePartValid6_0068 anchorHistoryChunk0068 := by
  unfold anchorAggregatePartValid6_0068 anchorHistoryChunk0068
  decide

def anchorAggregatePartValid7_0068 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 70528
  | _ => True

theorem anchorAggregatePart7_0068 :
    anchorAggregatePartValid7_0068 anchorHistoryChunk0068 := by
  unfold anchorAggregatePartValid7_0068 anchorHistoryChunk0068
  decide

theorem anchorRange_0068 :
    anchorHistoryChunk0068.IndexedValid squarefreeOracle 5000000 69632 := by
  have h0 := anchorAggregatePart0_0068
  simp only [anchorAggregatePartValid0_0068, anchorHistoryChunk0068] at h0
  have h1 := anchorAggregatePart1_0068
  simp only [anchorAggregatePartValid1_0068, anchorHistoryChunk0068] at h1
  have h2 := anchorAggregatePart2_0068
  simp only [anchorAggregatePartValid2_0068, anchorHistoryChunk0068] at h2
  have h3 := anchorAggregatePart3_0068
  simp only [anchorAggregatePartValid3_0068, anchorHistoryChunk0068] at h3
  have h4 := anchorAggregatePart4_0068
  simp only [anchorAggregatePartValid4_0068, anchorHistoryChunk0068] at h4
  have h5 := anchorAggregatePart5_0068
  simp only [anchorAggregatePartValid5_0068, anchorHistoryChunk0068] at h5
  have h6 := anchorAggregatePart6_0068
  simp only [anchorAggregatePartValid6_0068, anchorHistoryChunk0068] at h6
  have h7 := anchorAggregatePart7_0068
  simp only [anchorAggregatePartValid7_0068, anchorHistoryChunk0068] at h7
  unfold anchorHistoryChunk0068
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0069 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 70656
  | _ => True

theorem anchorAggregatePart0_0069 :
    anchorAggregatePartValid0_0069 anchorHistoryChunk0069 := by
  unfold anchorAggregatePartValid0_0069 anchorHistoryChunk0069
  decide

def anchorAggregatePartValid1_0069 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 70784
  | _ => True

theorem anchorAggregatePart1_0069 :
    anchorAggregatePartValid1_0069 anchorHistoryChunk0069 := by
  unfold anchorAggregatePartValid1_0069 anchorHistoryChunk0069
  decide

def anchorAggregatePartValid2_0069 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 70912
  | _ => True

theorem anchorAggregatePart2_0069 :
    anchorAggregatePartValid2_0069 anchorHistoryChunk0069 := by
  unfold anchorAggregatePartValid2_0069 anchorHistoryChunk0069
  decide

def anchorAggregatePartValid3_0069 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 71040
  | _ => True

theorem anchorAggregatePart3_0069 :
    anchorAggregatePartValid3_0069 anchorHistoryChunk0069 := by
  unfold anchorAggregatePartValid3_0069 anchorHistoryChunk0069
  decide

def anchorAggregatePartValid4_0069 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 71168
  | _ => True

theorem anchorAggregatePart4_0069 :
    anchorAggregatePartValid4_0069 anchorHistoryChunk0069 := by
  unfold anchorAggregatePartValid4_0069 anchorHistoryChunk0069
  decide

def anchorAggregatePartValid5_0069 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 71296
  | _ => True

theorem anchorAggregatePart5_0069 :
    anchorAggregatePartValid5_0069 anchorHistoryChunk0069 := by
  unfold anchorAggregatePartValid5_0069 anchorHistoryChunk0069
  decide

def anchorAggregatePartValid6_0069 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 71424
  | _ => True

theorem anchorAggregatePart6_0069 :
    anchorAggregatePartValid6_0069 anchorHistoryChunk0069 := by
  unfold anchorAggregatePartValid6_0069 anchorHistoryChunk0069
  decide

def anchorAggregatePartValid7_0069 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 71552
  | _ => True

theorem anchorAggregatePart7_0069 :
    anchorAggregatePartValid7_0069 anchorHistoryChunk0069 := by
  unfold anchorAggregatePartValid7_0069 anchorHistoryChunk0069
  decide

theorem anchorRange_0069 :
    anchorHistoryChunk0069.IndexedValid squarefreeOracle 5000000 70656 := by
  have h0 := anchorAggregatePart0_0069
  simp only [anchorAggregatePartValid0_0069, anchorHistoryChunk0069] at h0
  have h1 := anchorAggregatePart1_0069
  simp only [anchorAggregatePartValid1_0069, anchorHistoryChunk0069] at h1
  have h2 := anchorAggregatePart2_0069
  simp only [anchorAggregatePartValid2_0069, anchorHistoryChunk0069] at h2
  have h3 := anchorAggregatePart3_0069
  simp only [anchorAggregatePartValid3_0069, anchorHistoryChunk0069] at h3
  have h4 := anchorAggregatePart4_0069
  simp only [anchorAggregatePartValid4_0069, anchorHistoryChunk0069] at h4
  have h5 := anchorAggregatePart5_0069
  simp only [anchorAggregatePartValid5_0069, anchorHistoryChunk0069] at h5
  have h6 := anchorAggregatePart6_0069
  simp only [anchorAggregatePartValid6_0069, anchorHistoryChunk0069] at h6
  have h7 := anchorAggregatePart7_0069
  simp only [anchorAggregatePartValid7_0069, anchorHistoryChunk0069] at h7
  unfold anchorHistoryChunk0069
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0070 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 71680
  | _ => True

theorem anchorAggregatePart0_0070 :
    anchorAggregatePartValid0_0070 anchorHistoryChunk0070 := by
  unfold anchorAggregatePartValid0_0070 anchorHistoryChunk0070
  decide

def anchorAggregatePartValid1_0070 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 71808
  | _ => True

theorem anchorAggregatePart1_0070 :
    anchorAggregatePartValid1_0070 anchorHistoryChunk0070 := by
  unfold anchorAggregatePartValid1_0070 anchorHistoryChunk0070
  decide

def anchorAggregatePartValid2_0070 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 71936
  | _ => True

theorem anchorAggregatePart2_0070 :
    anchorAggregatePartValid2_0070 anchorHistoryChunk0070 := by
  unfold anchorAggregatePartValid2_0070 anchorHistoryChunk0070
  decide

def anchorAggregatePartValid3_0070 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 72064
  | _ => True

theorem anchorAggregatePart3_0070 :
    anchorAggregatePartValid3_0070 anchorHistoryChunk0070 := by
  unfold anchorAggregatePartValid3_0070 anchorHistoryChunk0070
  decide

def anchorAggregatePartValid4_0070 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 72192
  | _ => True

theorem anchorAggregatePart4_0070 :
    anchorAggregatePartValid4_0070 anchorHistoryChunk0070 := by
  unfold anchorAggregatePartValid4_0070 anchorHistoryChunk0070
  decide

def anchorAggregatePartValid5_0070 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 72320
  | _ => True

theorem anchorAggregatePart5_0070 :
    anchorAggregatePartValid5_0070 anchorHistoryChunk0070 := by
  unfold anchorAggregatePartValid5_0070 anchorHistoryChunk0070
  decide

def anchorAggregatePartValid6_0070 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 72448
  | _ => True

theorem anchorAggregatePart6_0070 :
    anchorAggregatePartValid6_0070 anchorHistoryChunk0070 := by
  unfold anchorAggregatePartValid6_0070 anchorHistoryChunk0070
  decide

def anchorAggregatePartValid7_0070 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 72576
  | _ => True

theorem anchorAggregatePart7_0070 :
    anchorAggregatePartValid7_0070 anchorHistoryChunk0070 := by
  unfold anchorAggregatePartValid7_0070 anchorHistoryChunk0070
  decide

theorem anchorRange_0070 :
    anchorHistoryChunk0070.IndexedValid squarefreeOracle 5000000 71680 := by
  have h0 := anchorAggregatePart0_0070
  simp only [anchorAggregatePartValid0_0070, anchorHistoryChunk0070] at h0
  have h1 := anchorAggregatePart1_0070
  simp only [anchorAggregatePartValid1_0070, anchorHistoryChunk0070] at h1
  have h2 := anchorAggregatePart2_0070
  simp only [anchorAggregatePartValid2_0070, anchorHistoryChunk0070] at h2
  have h3 := anchorAggregatePart3_0070
  simp only [anchorAggregatePartValid3_0070, anchorHistoryChunk0070] at h3
  have h4 := anchorAggregatePart4_0070
  simp only [anchorAggregatePartValid4_0070, anchorHistoryChunk0070] at h4
  have h5 := anchorAggregatePart5_0070
  simp only [anchorAggregatePartValid5_0070, anchorHistoryChunk0070] at h5
  have h6 := anchorAggregatePart6_0070
  simp only [anchorAggregatePartValid6_0070, anchorHistoryChunk0070] at h6
  have h7 := anchorAggregatePart7_0070
  simp only [anchorAggregatePartValid7_0070, anchorHistoryChunk0070] at h7
  unfold anchorHistoryChunk0070
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0071 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 72704
  | _ => True

theorem anchorAggregatePart0_0071 :
    anchorAggregatePartValid0_0071 anchorHistoryChunk0071 := by
  unfold anchorAggregatePartValid0_0071 anchorHistoryChunk0071
  decide

def anchorAggregatePartValid1_0071 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 72832
  | _ => True

theorem anchorAggregatePart1_0071 :
    anchorAggregatePartValid1_0071 anchorHistoryChunk0071 := by
  unfold anchorAggregatePartValid1_0071 anchorHistoryChunk0071
  decide

def anchorAggregatePartValid2_0071 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 72960
  | _ => True

theorem anchorAggregatePart2_0071 :
    anchorAggregatePartValid2_0071 anchorHistoryChunk0071 := by
  unfold anchorAggregatePartValid2_0071 anchorHistoryChunk0071
  decide

def anchorAggregatePartValid3_0071 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 73088
  | _ => True

theorem anchorAggregatePart3_0071 :
    anchorAggregatePartValid3_0071 anchorHistoryChunk0071 := by
  unfold anchorAggregatePartValid3_0071 anchorHistoryChunk0071
  decide

def anchorAggregatePartValid4_0071 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 73216
  | _ => True

theorem anchorAggregatePart4_0071 :
    anchorAggregatePartValid4_0071 anchorHistoryChunk0071 := by
  unfold anchorAggregatePartValid4_0071 anchorHistoryChunk0071
  decide

def anchorAggregatePartValid5_0071 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 73344
  | _ => True

theorem anchorAggregatePart5_0071 :
    anchorAggregatePartValid5_0071 anchorHistoryChunk0071 := by
  unfold anchorAggregatePartValid5_0071 anchorHistoryChunk0071
  decide

def anchorAggregatePartValid6_0071 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 73472
  | _ => True

theorem anchorAggregatePart6_0071 :
    anchorAggregatePartValid6_0071 anchorHistoryChunk0071 := by
  unfold anchorAggregatePartValid6_0071 anchorHistoryChunk0071
  decide

def anchorAggregatePartValid7_0071 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 73600
  | _ => True

theorem anchorAggregatePart7_0071 :
    anchorAggregatePartValid7_0071 anchorHistoryChunk0071 := by
  unfold anchorAggregatePartValid7_0071 anchorHistoryChunk0071
  decide

theorem anchorRange_0071 :
    anchorHistoryChunk0071.IndexedValid squarefreeOracle 5000000 72704 := by
  have h0 := anchorAggregatePart0_0071
  simp only [anchorAggregatePartValid0_0071, anchorHistoryChunk0071] at h0
  have h1 := anchorAggregatePart1_0071
  simp only [anchorAggregatePartValid1_0071, anchorHistoryChunk0071] at h1
  have h2 := anchorAggregatePart2_0071
  simp only [anchorAggregatePartValid2_0071, anchorHistoryChunk0071] at h2
  have h3 := anchorAggregatePart3_0071
  simp only [anchorAggregatePartValid3_0071, anchorHistoryChunk0071] at h3
  have h4 := anchorAggregatePart4_0071
  simp only [anchorAggregatePartValid4_0071, anchorHistoryChunk0071] at h4
  have h5 := anchorAggregatePart5_0071
  simp only [anchorAggregatePartValid5_0071, anchorHistoryChunk0071] at h5
  have h6 := anchorAggregatePart6_0071
  simp only [anchorAggregatePartValid6_0071, anchorHistoryChunk0071] at h6
  have h7 := anchorAggregatePart7_0071
  simp only [anchorAggregatePartValid7_0071, anchorHistoryChunk0071] at h7
  unfold anchorHistoryChunk0071
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
