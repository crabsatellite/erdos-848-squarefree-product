import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0028
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0029
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0030
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0031

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0028, 0029, 0030, 0031 -/

def anchorAggregatePartValid0_0028 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 28672
  | _ => True

theorem anchorAggregatePart0_0028 :
    anchorAggregatePartValid0_0028 anchorHistoryChunk0028 := by
  unfold anchorAggregatePartValid0_0028 anchorHistoryChunk0028
  decide

def anchorAggregatePartValid1_0028 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 28800
  | _ => True

theorem anchorAggregatePart1_0028 :
    anchorAggregatePartValid1_0028 anchorHistoryChunk0028 := by
  unfold anchorAggregatePartValid1_0028 anchorHistoryChunk0028
  decide

def anchorAggregatePartValid2_0028 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 28928
  | _ => True

theorem anchorAggregatePart2_0028 :
    anchorAggregatePartValid2_0028 anchorHistoryChunk0028 := by
  unfold anchorAggregatePartValid2_0028 anchorHistoryChunk0028
  decide

def anchorAggregatePartValid3_0028 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 29056
  | _ => True

theorem anchorAggregatePart3_0028 :
    anchorAggregatePartValid3_0028 anchorHistoryChunk0028 := by
  unfold anchorAggregatePartValid3_0028 anchorHistoryChunk0028
  decide

def anchorAggregatePartValid4_0028 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 29184
  | _ => True

theorem anchorAggregatePart4_0028 :
    anchorAggregatePartValid4_0028 anchorHistoryChunk0028 := by
  unfold anchorAggregatePartValid4_0028 anchorHistoryChunk0028
  decide

def anchorAggregatePartValid5_0028 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 29312
  | _ => True

theorem anchorAggregatePart5_0028 :
    anchorAggregatePartValid5_0028 anchorHistoryChunk0028 := by
  unfold anchorAggregatePartValid5_0028 anchorHistoryChunk0028
  decide

def anchorAggregatePartValid6_0028 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 29440
  | _ => True

theorem anchorAggregatePart6_0028 :
    anchorAggregatePartValid6_0028 anchorHistoryChunk0028 := by
  unfold anchorAggregatePartValid6_0028 anchorHistoryChunk0028
  decide

def anchorAggregatePartValid7_0028 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 29568
  | _ => True

theorem anchorAggregatePart7_0028 :
    anchorAggregatePartValid7_0028 anchorHistoryChunk0028 := by
  unfold anchorAggregatePartValid7_0028 anchorHistoryChunk0028
  decide

theorem anchorRange_0028 :
    anchorHistoryChunk0028.IndexedValid squarefreeOracle 5000000 28672 := by
  have h0 := anchorAggregatePart0_0028
  simp only [anchorAggregatePartValid0_0028, anchorHistoryChunk0028] at h0
  have h1 := anchorAggregatePart1_0028
  simp only [anchorAggregatePartValid1_0028, anchorHistoryChunk0028] at h1
  have h2 := anchorAggregatePart2_0028
  simp only [anchorAggregatePartValid2_0028, anchorHistoryChunk0028] at h2
  have h3 := anchorAggregatePart3_0028
  simp only [anchorAggregatePartValid3_0028, anchorHistoryChunk0028] at h3
  have h4 := anchorAggregatePart4_0028
  simp only [anchorAggregatePartValid4_0028, anchorHistoryChunk0028] at h4
  have h5 := anchorAggregatePart5_0028
  simp only [anchorAggregatePartValid5_0028, anchorHistoryChunk0028] at h5
  have h6 := anchorAggregatePart6_0028
  simp only [anchorAggregatePartValid6_0028, anchorHistoryChunk0028] at h6
  have h7 := anchorAggregatePart7_0028
  simp only [anchorAggregatePartValid7_0028, anchorHistoryChunk0028] at h7
  unfold anchorHistoryChunk0028
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0029 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 29696
  | _ => True

theorem anchorAggregatePart0_0029 :
    anchorAggregatePartValid0_0029 anchorHistoryChunk0029 := by
  unfold anchorAggregatePartValid0_0029 anchorHistoryChunk0029
  decide

def anchorAggregatePartValid1_0029 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 29824
  | _ => True

theorem anchorAggregatePart1_0029 :
    anchorAggregatePartValid1_0029 anchorHistoryChunk0029 := by
  unfold anchorAggregatePartValid1_0029 anchorHistoryChunk0029
  decide

def anchorAggregatePartValid2_0029 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 29952
  | _ => True

theorem anchorAggregatePart2_0029 :
    anchorAggregatePartValid2_0029 anchorHistoryChunk0029 := by
  unfold anchorAggregatePartValid2_0029 anchorHistoryChunk0029
  decide

def anchorAggregatePartValid3_0029 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 30080
  | _ => True

theorem anchorAggregatePart3_0029 :
    anchorAggregatePartValid3_0029 anchorHistoryChunk0029 := by
  unfold anchorAggregatePartValid3_0029 anchorHistoryChunk0029
  decide

def anchorAggregatePartValid4_0029 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 30208
  | _ => True

theorem anchorAggregatePart4_0029 :
    anchorAggregatePartValid4_0029 anchorHistoryChunk0029 := by
  unfold anchorAggregatePartValid4_0029 anchorHistoryChunk0029
  decide

def anchorAggregatePartValid5_0029 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 30336
  | _ => True

theorem anchorAggregatePart5_0029 :
    anchorAggregatePartValid5_0029 anchorHistoryChunk0029 := by
  unfold anchorAggregatePartValid5_0029 anchorHistoryChunk0029
  decide

def anchorAggregatePartValid6_0029 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 30464
  | _ => True

theorem anchorAggregatePart6_0029 :
    anchorAggregatePartValid6_0029 anchorHistoryChunk0029 := by
  unfold anchorAggregatePartValid6_0029 anchorHistoryChunk0029
  decide

def anchorAggregatePartValid7_0029 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 30592
  | _ => True

theorem anchorAggregatePart7_0029 :
    anchorAggregatePartValid7_0029 anchorHistoryChunk0029 := by
  unfold anchorAggregatePartValid7_0029 anchorHistoryChunk0029
  decide

theorem anchorRange_0029 :
    anchorHistoryChunk0029.IndexedValid squarefreeOracle 5000000 29696 := by
  have h0 := anchorAggregatePart0_0029
  simp only [anchorAggregatePartValid0_0029, anchorHistoryChunk0029] at h0
  have h1 := anchorAggregatePart1_0029
  simp only [anchorAggregatePartValid1_0029, anchorHistoryChunk0029] at h1
  have h2 := anchorAggregatePart2_0029
  simp only [anchorAggregatePartValid2_0029, anchorHistoryChunk0029] at h2
  have h3 := anchorAggregatePart3_0029
  simp only [anchorAggregatePartValid3_0029, anchorHistoryChunk0029] at h3
  have h4 := anchorAggregatePart4_0029
  simp only [anchorAggregatePartValid4_0029, anchorHistoryChunk0029] at h4
  have h5 := anchorAggregatePart5_0029
  simp only [anchorAggregatePartValid5_0029, anchorHistoryChunk0029] at h5
  have h6 := anchorAggregatePart6_0029
  simp only [anchorAggregatePartValid6_0029, anchorHistoryChunk0029] at h6
  have h7 := anchorAggregatePart7_0029
  simp only [anchorAggregatePartValid7_0029, anchorHistoryChunk0029] at h7
  unfold anchorHistoryChunk0029
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0030 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 30720
  | _ => True

theorem anchorAggregatePart0_0030 :
    anchorAggregatePartValid0_0030 anchorHistoryChunk0030 := by
  unfold anchorAggregatePartValid0_0030 anchorHistoryChunk0030
  decide

def anchorAggregatePartValid1_0030 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 30848
  | _ => True

theorem anchorAggregatePart1_0030 :
    anchorAggregatePartValid1_0030 anchorHistoryChunk0030 := by
  unfold anchorAggregatePartValid1_0030 anchorHistoryChunk0030
  decide

def anchorAggregatePartValid2_0030 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 30976
  | _ => True

theorem anchorAggregatePart2_0030 :
    anchorAggregatePartValid2_0030 anchorHistoryChunk0030 := by
  unfold anchorAggregatePartValid2_0030 anchorHistoryChunk0030
  decide

def anchorAggregatePartValid3_0030 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 31104
  | _ => True

theorem anchorAggregatePart3_0030 :
    anchorAggregatePartValid3_0030 anchorHistoryChunk0030 := by
  unfold anchorAggregatePartValid3_0030 anchorHistoryChunk0030
  decide

def anchorAggregatePartValid4_0030 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 31232
  | _ => True

theorem anchorAggregatePart4_0030 :
    anchorAggregatePartValid4_0030 anchorHistoryChunk0030 := by
  unfold anchorAggregatePartValid4_0030 anchorHistoryChunk0030
  decide

def anchorAggregatePartValid5_0030 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 31360
  | _ => True

theorem anchorAggregatePart5_0030 :
    anchorAggregatePartValid5_0030 anchorHistoryChunk0030 := by
  unfold anchorAggregatePartValid5_0030 anchorHistoryChunk0030
  decide

def anchorAggregatePartValid6_0030 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 31488
  | _ => True

theorem anchorAggregatePart6_0030 :
    anchorAggregatePartValid6_0030 anchorHistoryChunk0030 := by
  unfold anchorAggregatePartValid6_0030 anchorHistoryChunk0030
  decide

def anchorAggregatePartValid7_0030 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 31616
  | _ => True

theorem anchorAggregatePart7_0030 :
    anchorAggregatePartValid7_0030 anchorHistoryChunk0030 := by
  unfold anchorAggregatePartValid7_0030 anchorHistoryChunk0030
  decide

theorem anchorRange_0030 :
    anchorHistoryChunk0030.IndexedValid squarefreeOracle 5000000 30720 := by
  have h0 := anchorAggregatePart0_0030
  simp only [anchorAggregatePartValid0_0030, anchorHistoryChunk0030] at h0
  have h1 := anchorAggregatePart1_0030
  simp only [anchorAggregatePartValid1_0030, anchorHistoryChunk0030] at h1
  have h2 := anchorAggregatePart2_0030
  simp only [anchorAggregatePartValid2_0030, anchorHistoryChunk0030] at h2
  have h3 := anchorAggregatePart3_0030
  simp only [anchorAggregatePartValid3_0030, anchorHistoryChunk0030] at h3
  have h4 := anchorAggregatePart4_0030
  simp only [anchorAggregatePartValid4_0030, anchorHistoryChunk0030] at h4
  have h5 := anchorAggregatePart5_0030
  simp only [anchorAggregatePartValid5_0030, anchorHistoryChunk0030] at h5
  have h6 := anchorAggregatePart6_0030
  simp only [anchorAggregatePartValid6_0030, anchorHistoryChunk0030] at h6
  have h7 := anchorAggregatePart7_0030
  simp only [anchorAggregatePartValid7_0030, anchorHistoryChunk0030] at h7
  unfold anchorHistoryChunk0030
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0031 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 31744
  | _ => True

theorem anchorAggregatePart0_0031 :
    anchorAggregatePartValid0_0031 anchorHistoryChunk0031 := by
  unfold anchorAggregatePartValid0_0031 anchorHistoryChunk0031
  decide

def anchorAggregatePartValid1_0031 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 31872
  | _ => True

theorem anchorAggregatePart1_0031 :
    anchorAggregatePartValid1_0031 anchorHistoryChunk0031 := by
  unfold anchorAggregatePartValid1_0031 anchorHistoryChunk0031
  decide

def anchorAggregatePartValid2_0031 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 32000
  | _ => True

theorem anchorAggregatePart2_0031 :
    anchorAggregatePartValid2_0031 anchorHistoryChunk0031 := by
  unfold anchorAggregatePartValid2_0031 anchorHistoryChunk0031
  decide

def anchorAggregatePartValid3_0031 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 32128
  | _ => True

theorem anchorAggregatePart3_0031 :
    anchorAggregatePartValid3_0031 anchorHistoryChunk0031 := by
  unfold anchorAggregatePartValid3_0031 anchorHistoryChunk0031
  decide

def anchorAggregatePartValid4_0031 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 32256
  | _ => True

theorem anchorAggregatePart4_0031 :
    anchorAggregatePartValid4_0031 anchorHistoryChunk0031 := by
  unfold anchorAggregatePartValid4_0031 anchorHistoryChunk0031
  decide

def anchorAggregatePartValid5_0031 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 32384
  | _ => True

theorem anchorAggregatePart5_0031 :
    anchorAggregatePartValid5_0031 anchorHistoryChunk0031 := by
  unfold anchorAggregatePartValid5_0031 anchorHistoryChunk0031
  decide

def anchorAggregatePartValid6_0031 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 32512
  | _ => True

theorem anchorAggregatePart6_0031 :
    anchorAggregatePartValid6_0031 anchorHistoryChunk0031 := by
  unfold anchorAggregatePartValid6_0031 anchorHistoryChunk0031
  decide

def anchorAggregatePartValid7_0031 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 32640
  | _ => True

theorem anchorAggregatePart7_0031 :
    anchorAggregatePartValid7_0031 anchorHistoryChunk0031 := by
  unfold anchorAggregatePartValid7_0031 anchorHistoryChunk0031
  decide

theorem anchorRange_0031 :
    anchorHistoryChunk0031.IndexedValid squarefreeOracle 5000000 31744 := by
  have h0 := anchorAggregatePart0_0031
  simp only [anchorAggregatePartValid0_0031, anchorHistoryChunk0031] at h0
  have h1 := anchorAggregatePart1_0031
  simp only [anchorAggregatePartValid1_0031, anchorHistoryChunk0031] at h1
  have h2 := anchorAggregatePart2_0031
  simp only [anchorAggregatePartValid2_0031, anchorHistoryChunk0031] at h2
  have h3 := anchorAggregatePart3_0031
  simp only [anchorAggregatePartValid3_0031, anchorHistoryChunk0031] at h3
  have h4 := anchorAggregatePart4_0031
  simp only [anchorAggregatePartValid4_0031, anchorHistoryChunk0031] at h4
  have h5 := anchorAggregatePart5_0031
  simp only [anchorAggregatePartValid5_0031, anchorHistoryChunk0031] at h5
  have h6 := anchorAggregatePart6_0031
  simp only [anchorAggregatePartValid6_0031, anchorHistoryChunk0031] at h6
  have h7 := anchorAggregatePart7_0031
  simp only [anchorAggregatePartValid7_0031, anchorHistoryChunk0031] at h7
  unfold anchorHistoryChunk0031
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
