import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0024
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0025
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0026
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0027

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0024, 0025, 0026, 0027 -/

def anchorAggregatePartValid0_0024 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 24576
  | _ => True

theorem anchorAggregatePart0_0024 :
    anchorAggregatePartValid0_0024 anchorHistoryChunk0024 := by
  unfold anchorAggregatePartValid0_0024 anchorHistoryChunk0024
  decide

def anchorAggregatePartValid1_0024 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 24704
  | _ => True

theorem anchorAggregatePart1_0024 :
    anchorAggregatePartValid1_0024 anchorHistoryChunk0024 := by
  unfold anchorAggregatePartValid1_0024 anchorHistoryChunk0024
  decide

def anchorAggregatePartValid2_0024 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 24832
  | _ => True

theorem anchorAggregatePart2_0024 :
    anchorAggregatePartValid2_0024 anchorHistoryChunk0024 := by
  unfold anchorAggregatePartValid2_0024 anchorHistoryChunk0024
  decide

def anchorAggregatePartValid3_0024 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 24960
  | _ => True

theorem anchorAggregatePart3_0024 :
    anchorAggregatePartValid3_0024 anchorHistoryChunk0024 := by
  unfold anchorAggregatePartValid3_0024 anchorHistoryChunk0024
  decide

def anchorAggregatePartValid4_0024 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 25088
  | _ => True

theorem anchorAggregatePart4_0024 :
    anchorAggregatePartValid4_0024 anchorHistoryChunk0024 := by
  unfold anchorAggregatePartValid4_0024 anchorHistoryChunk0024
  decide

def anchorAggregatePartValid5_0024 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 25216
  | _ => True

theorem anchorAggregatePart5_0024 :
    anchorAggregatePartValid5_0024 anchorHistoryChunk0024 := by
  unfold anchorAggregatePartValid5_0024 anchorHistoryChunk0024
  decide

def anchorAggregatePartValid6_0024 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 25344
  | _ => True

theorem anchorAggregatePart6_0024 :
    anchorAggregatePartValid6_0024 anchorHistoryChunk0024 := by
  unfold anchorAggregatePartValid6_0024 anchorHistoryChunk0024
  decide

def anchorAggregatePartValid7_0024 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 25472
  | _ => True

theorem anchorAggregatePart7_0024 :
    anchorAggregatePartValid7_0024 anchorHistoryChunk0024 := by
  unfold anchorAggregatePartValid7_0024 anchorHistoryChunk0024
  decide

theorem anchorRange_0024 :
    anchorHistoryChunk0024.IndexedValid squarefreeOracle 5000000 24576 := by
  have h0 := anchorAggregatePart0_0024
  simp only [anchorAggregatePartValid0_0024, anchorHistoryChunk0024] at h0
  have h1 := anchorAggregatePart1_0024
  simp only [anchorAggregatePartValid1_0024, anchorHistoryChunk0024] at h1
  have h2 := anchorAggregatePart2_0024
  simp only [anchorAggregatePartValid2_0024, anchorHistoryChunk0024] at h2
  have h3 := anchorAggregatePart3_0024
  simp only [anchorAggregatePartValid3_0024, anchorHistoryChunk0024] at h3
  have h4 := anchorAggregatePart4_0024
  simp only [anchorAggregatePartValid4_0024, anchorHistoryChunk0024] at h4
  have h5 := anchorAggregatePart5_0024
  simp only [anchorAggregatePartValid5_0024, anchorHistoryChunk0024] at h5
  have h6 := anchorAggregatePart6_0024
  simp only [anchorAggregatePartValid6_0024, anchorHistoryChunk0024] at h6
  have h7 := anchorAggregatePart7_0024
  simp only [anchorAggregatePartValid7_0024, anchorHistoryChunk0024] at h7
  unfold anchorHistoryChunk0024
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0025 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 25600
  | _ => True

theorem anchorAggregatePart0_0025 :
    anchorAggregatePartValid0_0025 anchorHistoryChunk0025 := by
  unfold anchorAggregatePartValid0_0025 anchorHistoryChunk0025
  decide

def anchorAggregatePartValid1_0025 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 25728
  | _ => True

theorem anchorAggregatePart1_0025 :
    anchorAggregatePartValid1_0025 anchorHistoryChunk0025 := by
  unfold anchorAggregatePartValid1_0025 anchorHistoryChunk0025
  decide

def anchorAggregatePartValid2_0025 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 25856
  | _ => True

theorem anchorAggregatePart2_0025 :
    anchorAggregatePartValid2_0025 anchorHistoryChunk0025 := by
  unfold anchorAggregatePartValid2_0025 anchorHistoryChunk0025
  decide

def anchorAggregatePartValid3_0025 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 25984
  | _ => True

theorem anchorAggregatePart3_0025 :
    anchorAggregatePartValid3_0025 anchorHistoryChunk0025 := by
  unfold anchorAggregatePartValid3_0025 anchorHistoryChunk0025
  decide

def anchorAggregatePartValid4_0025 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 26112
  | _ => True

theorem anchorAggregatePart4_0025 :
    anchorAggregatePartValid4_0025 anchorHistoryChunk0025 := by
  unfold anchorAggregatePartValid4_0025 anchorHistoryChunk0025
  decide

def anchorAggregatePartValid5_0025 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 26240
  | _ => True

theorem anchorAggregatePart5_0025 :
    anchorAggregatePartValid5_0025 anchorHistoryChunk0025 := by
  unfold anchorAggregatePartValid5_0025 anchorHistoryChunk0025
  decide

def anchorAggregatePartValid6_0025 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 26368
  | _ => True

theorem anchorAggregatePart6_0025 :
    anchorAggregatePartValid6_0025 anchorHistoryChunk0025 := by
  unfold anchorAggregatePartValid6_0025 anchorHistoryChunk0025
  decide

def anchorAggregatePartValid7_0025 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 26496
  | _ => True

theorem anchorAggregatePart7_0025 :
    anchorAggregatePartValid7_0025 anchorHistoryChunk0025 := by
  unfold anchorAggregatePartValid7_0025 anchorHistoryChunk0025
  decide

theorem anchorRange_0025 :
    anchorHistoryChunk0025.IndexedValid squarefreeOracle 5000000 25600 := by
  have h0 := anchorAggregatePart0_0025
  simp only [anchorAggregatePartValid0_0025, anchorHistoryChunk0025] at h0
  have h1 := anchorAggregatePart1_0025
  simp only [anchorAggregatePartValid1_0025, anchorHistoryChunk0025] at h1
  have h2 := anchorAggregatePart2_0025
  simp only [anchorAggregatePartValid2_0025, anchorHistoryChunk0025] at h2
  have h3 := anchorAggregatePart3_0025
  simp only [anchorAggregatePartValid3_0025, anchorHistoryChunk0025] at h3
  have h4 := anchorAggregatePart4_0025
  simp only [anchorAggregatePartValid4_0025, anchorHistoryChunk0025] at h4
  have h5 := anchorAggregatePart5_0025
  simp only [anchorAggregatePartValid5_0025, anchorHistoryChunk0025] at h5
  have h6 := anchorAggregatePart6_0025
  simp only [anchorAggregatePartValid6_0025, anchorHistoryChunk0025] at h6
  have h7 := anchorAggregatePart7_0025
  simp only [anchorAggregatePartValid7_0025, anchorHistoryChunk0025] at h7
  unfold anchorHistoryChunk0025
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0026 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 26624
  | _ => True

theorem anchorAggregatePart0_0026 :
    anchorAggregatePartValid0_0026 anchorHistoryChunk0026 := by
  unfold anchorAggregatePartValid0_0026 anchorHistoryChunk0026
  decide

def anchorAggregatePartValid1_0026 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 26752
  | _ => True

theorem anchorAggregatePart1_0026 :
    anchorAggregatePartValid1_0026 anchorHistoryChunk0026 := by
  unfold anchorAggregatePartValid1_0026 anchorHistoryChunk0026
  decide

def anchorAggregatePartValid2_0026 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 26880
  | _ => True

theorem anchorAggregatePart2_0026 :
    anchorAggregatePartValid2_0026 anchorHistoryChunk0026 := by
  unfold anchorAggregatePartValid2_0026 anchorHistoryChunk0026
  decide

def anchorAggregatePartValid3_0026 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 27008
  | _ => True

theorem anchorAggregatePart3_0026 :
    anchorAggregatePartValid3_0026 anchorHistoryChunk0026 := by
  unfold anchorAggregatePartValid3_0026 anchorHistoryChunk0026
  decide

def anchorAggregatePartValid4_0026 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 27136
  | _ => True

theorem anchorAggregatePart4_0026 :
    anchorAggregatePartValid4_0026 anchorHistoryChunk0026 := by
  unfold anchorAggregatePartValid4_0026 anchorHistoryChunk0026
  decide

def anchorAggregatePartValid5_0026 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 27264
  | _ => True

theorem anchorAggregatePart5_0026 :
    anchorAggregatePartValid5_0026 anchorHistoryChunk0026 := by
  unfold anchorAggregatePartValid5_0026 anchorHistoryChunk0026
  decide

def anchorAggregatePartValid6_0026 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 27392
  | _ => True

theorem anchorAggregatePart6_0026 :
    anchorAggregatePartValid6_0026 anchorHistoryChunk0026 := by
  unfold anchorAggregatePartValid6_0026 anchorHistoryChunk0026
  decide

def anchorAggregatePartValid7_0026 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 27520
  | _ => True

theorem anchorAggregatePart7_0026 :
    anchorAggregatePartValid7_0026 anchorHistoryChunk0026 := by
  unfold anchorAggregatePartValid7_0026 anchorHistoryChunk0026
  decide

theorem anchorRange_0026 :
    anchorHistoryChunk0026.IndexedValid squarefreeOracle 5000000 26624 := by
  have h0 := anchorAggregatePart0_0026
  simp only [anchorAggregatePartValid0_0026, anchorHistoryChunk0026] at h0
  have h1 := anchorAggregatePart1_0026
  simp only [anchorAggregatePartValid1_0026, anchorHistoryChunk0026] at h1
  have h2 := anchorAggregatePart2_0026
  simp only [anchorAggregatePartValid2_0026, anchorHistoryChunk0026] at h2
  have h3 := anchorAggregatePart3_0026
  simp only [anchorAggregatePartValid3_0026, anchorHistoryChunk0026] at h3
  have h4 := anchorAggregatePart4_0026
  simp only [anchorAggregatePartValid4_0026, anchorHistoryChunk0026] at h4
  have h5 := anchorAggregatePart5_0026
  simp only [anchorAggregatePartValid5_0026, anchorHistoryChunk0026] at h5
  have h6 := anchorAggregatePart6_0026
  simp only [anchorAggregatePartValid6_0026, anchorHistoryChunk0026] at h6
  have h7 := anchorAggregatePart7_0026
  simp only [anchorAggregatePartValid7_0026, anchorHistoryChunk0026] at h7
  unfold anchorHistoryChunk0026
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0027 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 27648
  | _ => True

theorem anchorAggregatePart0_0027 :
    anchorAggregatePartValid0_0027 anchorHistoryChunk0027 := by
  unfold anchorAggregatePartValid0_0027 anchorHistoryChunk0027
  decide

def anchorAggregatePartValid1_0027 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 27776
  | _ => True

theorem anchorAggregatePart1_0027 :
    anchorAggregatePartValid1_0027 anchorHistoryChunk0027 := by
  unfold anchorAggregatePartValid1_0027 anchorHistoryChunk0027
  decide

def anchorAggregatePartValid2_0027 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 27904
  | _ => True

theorem anchorAggregatePart2_0027 :
    anchorAggregatePartValid2_0027 anchorHistoryChunk0027 := by
  unfold anchorAggregatePartValid2_0027 anchorHistoryChunk0027
  decide

def anchorAggregatePartValid3_0027 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 28032
  | _ => True

theorem anchorAggregatePart3_0027 :
    anchorAggregatePartValid3_0027 anchorHistoryChunk0027 := by
  unfold anchorAggregatePartValid3_0027 anchorHistoryChunk0027
  decide

def anchorAggregatePartValid4_0027 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 28160
  | _ => True

theorem anchorAggregatePart4_0027 :
    anchorAggregatePartValid4_0027 anchorHistoryChunk0027 := by
  unfold anchorAggregatePartValid4_0027 anchorHistoryChunk0027
  decide

def anchorAggregatePartValid5_0027 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 28288
  | _ => True

theorem anchorAggregatePart5_0027 :
    anchorAggregatePartValid5_0027 anchorHistoryChunk0027 := by
  unfold anchorAggregatePartValid5_0027 anchorHistoryChunk0027
  decide

def anchorAggregatePartValid6_0027 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 28416
  | _ => True

theorem anchorAggregatePart6_0027 :
    anchorAggregatePartValid6_0027 anchorHistoryChunk0027 := by
  unfold anchorAggregatePartValid6_0027 anchorHistoryChunk0027
  decide

def anchorAggregatePartValid7_0027 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 28544
  | _ => True

theorem anchorAggregatePart7_0027 :
    anchorAggregatePartValid7_0027 anchorHistoryChunk0027 := by
  unfold anchorAggregatePartValid7_0027 anchorHistoryChunk0027
  decide

theorem anchorRange_0027 :
    anchorHistoryChunk0027.IndexedValid squarefreeOracle 5000000 27648 := by
  have h0 := anchorAggregatePart0_0027
  simp only [anchorAggregatePartValid0_0027, anchorHistoryChunk0027] at h0
  have h1 := anchorAggregatePart1_0027
  simp only [anchorAggregatePartValid1_0027, anchorHistoryChunk0027] at h1
  have h2 := anchorAggregatePart2_0027
  simp only [anchorAggregatePartValid2_0027, anchorHistoryChunk0027] at h2
  have h3 := anchorAggregatePart3_0027
  simp only [anchorAggregatePartValid3_0027, anchorHistoryChunk0027] at h3
  have h4 := anchorAggregatePart4_0027
  simp only [anchorAggregatePartValid4_0027, anchorHistoryChunk0027] at h4
  have h5 := anchorAggregatePart5_0027
  simp only [anchorAggregatePartValid5_0027, anchorHistoryChunk0027] at h5
  have h6 := anchorAggregatePart6_0027
  simp only [anchorAggregatePartValid6_0027, anchorHistoryChunk0027] at h6
  have h7 := anchorAggregatePart7_0027
  simp only [anchorAggregatePartValid7_0027, anchorHistoryChunk0027] at h7
  unfold anchorHistoryChunk0027
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
