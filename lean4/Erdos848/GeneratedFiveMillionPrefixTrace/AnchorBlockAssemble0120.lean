import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0120
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0121
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0122
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0123

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0120, 0121, 0122, 0123 -/

def anchorAggregatePartValid0_0120 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 122880
  | _ => True

theorem anchorAggregatePart0_0120 :
    anchorAggregatePartValid0_0120 anchorHistoryChunk0120 := by
  unfold anchorAggregatePartValid0_0120 anchorHistoryChunk0120
  decide

def anchorAggregatePartValid1_0120 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 123008
  | _ => True

theorem anchorAggregatePart1_0120 :
    anchorAggregatePartValid1_0120 anchorHistoryChunk0120 := by
  unfold anchorAggregatePartValid1_0120 anchorHistoryChunk0120
  decide

def anchorAggregatePartValid2_0120 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 123136
  | _ => True

theorem anchorAggregatePart2_0120 :
    anchorAggregatePartValid2_0120 anchorHistoryChunk0120 := by
  unfold anchorAggregatePartValid2_0120 anchorHistoryChunk0120
  decide

def anchorAggregatePartValid3_0120 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 123264
  | _ => True

theorem anchorAggregatePart3_0120 :
    anchorAggregatePartValid3_0120 anchorHistoryChunk0120 := by
  unfold anchorAggregatePartValid3_0120 anchorHistoryChunk0120
  decide

def anchorAggregatePartValid4_0120 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 123392
  | _ => True

theorem anchorAggregatePart4_0120 :
    anchorAggregatePartValid4_0120 anchorHistoryChunk0120 := by
  unfold anchorAggregatePartValid4_0120 anchorHistoryChunk0120
  decide

def anchorAggregatePartValid5_0120 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 123520
  | _ => True

theorem anchorAggregatePart5_0120 :
    anchorAggregatePartValid5_0120 anchorHistoryChunk0120 := by
  unfold anchorAggregatePartValid5_0120 anchorHistoryChunk0120
  decide

def anchorAggregatePartValid6_0120 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 123648
  | _ => True

theorem anchorAggregatePart6_0120 :
    anchorAggregatePartValid6_0120 anchorHistoryChunk0120 := by
  unfold anchorAggregatePartValid6_0120 anchorHistoryChunk0120
  decide

def anchorAggregatePartValid7_0120 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 123776
  | _ => True

theorem anchorAggregatePart7_0120 :
    anchorAggregatePartValid7_0120 anchorHistoryChunk0120 := by
  unfold anchorAggregatePartValid7_0120 anchorHistoryChunk0120
  decide

theorem anchorRange_0120 :
    anchorHistoryChunk0120.IndexedValid squarefreeOracle 5000000 122880 := by
  have h0 := anchorAggregatePart0_0120
  simp only [anchorAggregatePartValid0_0120, anchorHistoryChunk0120] at h0
  have h1 := anchorAggregatePart1_0120
  simp only [anchorAggregatePartValid1_0120, anchorHistoryChunk0120] at h1
  have h2 := anchorAggregatePart2_0120
  simp only [anchorAggregatePartValid2_0120, anchorHistoryChunk0120] at h2
  have h3 := anchorAggregatePart3_0120
  simp only [anchorAggregatePartValid3_0120, anchorHistoryChunk0120] at h3
  have h4 := anchorAggregatePart4_0120
  simp only [anchorAggregatePartValid4_0120, anchorHistoryChunk0120] at h4
  have h5 := anchorAggregatePart5_0120
  simp only [anchorAggregatePartValid5_0120, anchorHistoryChunk0120] at h5
  have h6 := anchorAggregatePart6_0120
  simp only [anchorAggregatePartValid6_0120, anchorHistoryChunk0120] at h6
  have h7 := anchorAggregatePart7_0120
  simp only [anchorAggregatePartValid7_0120, anchorHistoryChunk0120] at h7
  unfold anchorHistoryChunk0120
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0121 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 123904
  | _ => True

theorem anchorAggregatePart0_0121 :
    anchorAggregatePartValid0_0121 anchorHistoryChunk0121 := by
  unfold anchorAggregatePartValid0_0121 anchorHistoryChunk0121
  decide

def anchorAggregatePartValid1_0121 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 124032
  | _ => True

theorem anchorAggregatePart1_0121 :
    anchorAggregatePartValid1_0121 anchorHistoryChunk0121 := by
  unfold anchorAggregatePartValid1_0121 anchorHistoryChunk0121
  decide

def anchorAggregatePartValid2_0121 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 124160
  | _ => True

theorem anchorAggregatePart2_0121 :
    anchorAggregatePartValid2_0121 anchorHistoryChunk0121 := by
  unfold anchorAggregatePartValid2_0121 anchorHistoryChunk0121
  decide

def anchorAggregatePartValid3_0121 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 124288
  | _ => True

theorem anchorAggregatePart3_0121 :
    anchorAggregatePartValid3_0121 anchorHistoryChunk0121 := by
  unfold anchorAggregatePartValid3_0121 anchorHistoryChunk0121
  decide

def anchorAggregatePartValid4_0121 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 124416
  | _ => True

theorem anchorAggregatePart4_0121 :
    anchorAggregatePartValid4_0121 anchorHistoryChunk0121 := by
  unfold anchorAggregatePartValid4_0121 anchorHistoryChunk0121
  decide

def anchorAggregatePartValid5_0121 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 124544
  | _ => True

theorem anchorAggregatePart5_0121 :
    anchorAggregatePartValid5_0121 anchorHistoryChunk0121 := by
  unfold anchorAggregatePartValid5_0121 anchorHistoryChunk0121
  decide

def anchorAggregatePartValid6_0121 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 124672
  | _ => True

theorem anchorAggregatePart6_0121 :
    anchorAggregatePartValid6_0121 anchorHistoryChunk0121 := by
  unfold anchorAggregatePartValid6_0121 anchorHistoryChunk0121
  decide

def anchorAggregatePartValid7_0121 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 124800
  | _ => True

theorem anchorAggregatePart7_0121 :
    anchorAggregatePartValid7_0121 anchorHistoryChunk0121 := by
  unfold anchorAggregatePartValid7_0121 anchorHistoryChunk0121
  decide

theorem anchorRange_0121 :
    anchorHistoryChunk0121.IndexedValid squarefreeOracle 5000000 123904 := by
  have h0 := anchorAggregatePart0_0121
  simp only [anchorAggregatePartValid0_0121, anchorHistoryChunk0121] at h0
  have h1 := anchorAggregatePart1_0121
  simp only [anchorAggregatePartValid1_0121, anchorHistoryChunk0121] at h1
  have h2 := anchorAggregatePart2_0121
  simp only [anchorAggregatePartValid2_0121, anchorHistoryChunk0121] at h2
  have h3 := anchorAggregatePart3_0121
  simp only [anchorAggregatePartValid3_0121, anchorHistoryChunk0121] at h3
  have h4 := anchorAggregatePart4_0121
  simp only [anchorAggregatePartValid4_0121, anchorHistoryChunk0121] at h4
  have h5 := anchorAggregatePart5_0121
  simp only [anchorAggregatePartValid5_0121, anchorHistoryChunk0121] at h5
  have h6 := anchorAggregatePart6_0121
  simp only [anchorAggregatePartValid6_0121, anchorHistoryChunk0121] at h6
  have h7 := anchorAggregatePart7_0121
  simp only [anchorAggregatePartValid7_0121, anchorHistoryChunk0121] at h7
  unfold anchorHistoryChunk0121
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0122 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 124928
  | _ => True

theorem anchorAggregatePart0_0122 :
    anchorAggregatePartValid0_0122 anchorHistoryChunk0122 := by
  unfold anchorAggregatePartValid0_0122 anchorHistoryChunk0122
  decide

def anchorAggregatePartValid1_0122 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 125056
  | _ => True

theorem anchorAggregatePart1_0122 :
    anchorAggregatePartValid1_0122 anchorHistoryChunk0122 := by
  unfold anchorAggregatePartValid1_0122 anchorHistoryChunk0122
  decide

def anchorAggregatePartValid2_0122 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 125184
  | _ => True

theorem anchorAggregatePart2_0122 :
    anchorAggregatePartValid2_0122 anchorHistoryChunk0122 := by
  unfold anchorAggregatePartValid2_0122 anchorHistoryChunk0122
  decide

def anchorAggregatePartValid3_0122 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 125312
  | _ => True

theorem anchorAggregatePart3_0122 :
    anchorAggregatePartValid3_0122 anchorHistoryChunk0122 := by
  unfold anchorAggregatePartValid3_0122 anchorHistoryChunk0122
  decide

def anchorAggregatePartValid4_0122 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 125440
  | _ => True

theorem anchorAggregatePart4_0122 :
    anchorAggregatePartValid4_0122 anchorHistoryChunk0122 := by
  unfold anchorAggregatePartValid4_0122 anchorHistoryChunk0122
  decide

def anchorAggregatePartValid5_0122 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 125568
  | _ => True

theorem anchorAggregatePart5_0122 :
    anchorAggregatePartValid5_0122 anchorHistoryChunk0122 := by
  unfold anchorAggregatePartValid5_0122 anchorHistoryChunk0122
  decide

def anchorAggregatePartValid6_0122 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 125696
  | _ => True

theorem anchorAggregatePart6_0122 :
    anchorAggregatePartValid6_0122 anchorHistoryChunk0122 := by
  unfold anchorAggregatePartValid6_0122 anchorHistoryChunk0122
  decide

def anchorAggregatePartValid7_0122 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 125824
  | _ => True

theorem anchorAggregatePart7_0122 :
    anchorAggregatePartValid7_0122 anchorHistoryChunk0122 := by
  unfold anchorAggregatePartValid7_0122 anchorHistoryChunk0122
  decide

theorem anchorRange_0122 :
    anchorHistoryChunk0122.IndexedValid squarefreeOracle 5000000 124928 := by
  have h0 := anchorAggregatePart0_0122
  simp only [anchorAggregatePartValid0_0122, anchorHistoryChunk0122] at h0
  have h1 := anchorAggregatePart1_0122
  simp only [anchorAggregatePartValid1_0122, anchorHistoryChunk0122] at h1
  have h2 := anchorAggregatePart2_0122
  simp only [anchorAggregatePartValid2_0122, anchorHistoryChunk0122] at h2
  have h3 := anchorAggregatePart3_0122
  simp only [anchorAggregatePartValid3_0122, anchorHistoryChunk0122] at h3
  have h4 := anchorAggregatePart4_0122
  simp only [anchorAggregatePartValid4_0122, anchorHistoryChunk0122] at h4
  have h5 := anchorAggregatePart5_0122
  simp only [anchorAggregatePartValid5_0122, anchorHistoryChunk0122] at h5
  have h6 := anchorAggregatePart6_0122
  simp only [anchorAggregatePartValid6_0122, anchorHistoryChunk0122] at h6
  have h7 := anchorAggregatePart7_0122
  simp only [anchorAggregatePartValid7_0122, anchorHistoryChunk0122] at h7
  unfold anchorHistoryChunk0122
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0123 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 125952
  | _ => True

theorem anchorAggregatePart0_0123 :
    anchorAggregatePartValid0_0123 anchorHistoryChunk0123 := by
  unfold anchorAggregatePartValid0_0123 anchorHistoryChunk0123
  decide

def anchorAggregatePartValid1_0123 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 126080
  | _ => True

theorem anchorAggregatePart1_0123 :
    anchorAggregatePartValid1_0123 anchorHistoryChunk0123 := by
  unfold anchorAggregatePartValid1_0123 anchorHistoryChunk0123
  decide

def anchorAggregatePartValid2_0123 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 126208
  | _ => True

theorem anchorAggregatePart2_0123 :
    anchorAggregatePartValid2_0123 anchorHistoryChunk0123 := by
  unfold anchorAggregatePartValid2_0123 anchorHistoryChunk0123
  decide

def anchorAggregatePartValid3_0123 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 126336
  | _ => True

theorem anchorAggregatePart3_0123 :
    anchorAggregatePartValid3_0123 anchorHistoryChunk0123 := by
  unfold anchorAggregatePartValid3_0123 anchorHistoryChunk0123
  decide

def anchorAggregatePartValid4_0123 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 126464
  | _ => True

theorem anchorAggregatePart4_0123 :
    anchorAggregatePartValid4_0123 anchorHistoryChunk0123 := by
  unfold anchorAggregatePartValid4_0123 anchorHistoryChunk0123
  decide

def anchorAggregatePartValid5_0123 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 126592
  | _ => True

theorem anchorAggregatePart5_0123 :
    anchorAggregatePartValid5_0123 anchorHistoryChunk0123 := by
  unfold anchorAggregatePartValid5_0123 anchorHistoryChunk0123
  decide

def anchorAggregatePartValid6_0123 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 126720
  | _ => True

theorem anchorAggregatePart6_0123 :
    anchorAggregatePartValid6_0123 anchorHistoryChunk0123 := by
  unfold anchorAggregatePartValid6_0123 anchorHistoryChunk0123
  decide

def anchorAggregatePartValid7_0123 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 126848
  | _ => True

theorem anchorAggregatePart7_0123 :
    anchorAggregatePartValid7_0123 anchorHistoryChunk0123 := by
  unfold anchorAggregatePartValid7_0123 anchorHistoryChunk0123
  decide

theorem anchorRange_0123 :
    anchorHistoryChunk0123.IndexedValid squarefreeOracle 5000000 125952 := by
  have h0 := anchorAggregatePart0_0123
  simp only [anchorAggregatePartValid0_0123, anchorHistoryChunk0123] at h0
  have h1 := anchorAggregatePart1_0123
  simp only [anchorAggregatePartValid1_0123, anchorHistoryChunk0123] at h1
  have h2 := anchorAggregatePart2_0123
  simp only [anchorAggregatePartValid2_0123, anchorHistoryChunk0123] at h2
  have h3 := anchorAggregatePart3_0123
  simp only [anchorAggregatePartValid3_0123, anchorHistoryChunk0123] at h3
  have h4 := anchorAggregatePart4_0123
  simp only [anchorAggregatePartValid4_0123, anchorHistoryChunk0123] at h4
  have h5 := anchorAggregatePart5_0123
  simp only [anchorAggregatePartValid5_0123, anchorHistoryChunk0123] at h5
  have h6 := anchorAggregatePart6_0123
  simp only [anchorAggregatePartValid6_0123, anchorHistoryChunk0123] at h6
  have h7 := anchorAggregatePart7_0123
  simp only [anchorAggregatePartValid7_0123, anchorHistoryChunk0123] at h7
  unfold anchorHistoryChunk0123
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
