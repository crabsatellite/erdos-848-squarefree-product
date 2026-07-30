import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0004
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0005
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0006
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0007

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0004, 0005, 0006, 0007 -/

def anchorAggregatePartValid0_0004 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 4096
  | _ => True

theorem anchorAggregatePart0_0004 :
    anchorAggregatePartValid0_0004 anchorHistoryChunk0004 := by
  unfold anchorAggregatePartValid0_0004 anchorHistoryChunk0004
  decide

def anchorAggregatePartValid1_0004 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 4224
  | _ => True

theorem anchorAggregatePart1_0004 :
    anchorAggregatePartValid1_0004 anchorHistoryChunk0004 := by
  unfold anchorAggregatePartValid1_0004 anchorHistoryChunk0004
  decide

def anchorAggregatePartValid2_0004 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 4352
  | _ => True

theorem anchorAggregatePart2_0004 :
    anchorAggregatePartValid2_0004 anchorHistoryChunk0004 := by
  unfold anchorAggregatePartValid2_0004 anchorHistoryChunk0004
  decide

def anchorAggregatePartValid3_0004 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 4480
  | _ => True

theorem anchorAggregatePart3_0004 :
    anchorAggregatePartValid3_0004 anchorHistoryChunk0004 := by
  unfold anchorAggregatePartValid3_0004 anchorHistoryChunk0004
  decide

def anchorAggregatePartValid4_0004 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 4608
  | _ => True

theorem anchorAggregatePart4_0004 :
    anchorAggregatePartValid4_0004 anchorHistoryChunk0004 := by
  unfold anchorAggregatePartValid4_0004 anchorHistoryChunk0004
  decide

def anchorAggregatePartValid5_0004 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 4736
  | _ => True

theorem anchorAggregatePart5_0004 :
    anchorAggregatePartValid5_0004 anchorHistoryChunk0004 := by
  unfold anchorAggregatePartValid5_0004 anchorHistoryChunk0004
  decide

def anchorAggregatePartValid6_0004 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 4864
  | _ => True

theorem anchorAggregatePart6_0004 :
    anchorAggregatePartValid6_0004 anchorHistoryChunk0004 := by
  unfold anchorAggregatePartValid6_0004 anchorHistoryChunk0004
  decide

def anchorAggregatePartValid7_0004 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 4992
  | _ => True

theorem anchorAggregatePart7_0004 :
    anchorAggregatePartValid7_0004 anchorHistoryChunk0004 := by
  unfold anchorAggregatePartValid7_0004 anchorHistoryChunk0004
  decide

theorem anchorRange_0004 :
    anchorHistoryChunk0004.IndexedValid squarefreeOracle 5000000 4096 := by
  have h0 := anchorAggregatePart0_0004
  simp only [anchorAggregatePartValid0_0004, anchorHistoryChunk0004] at h0
  have h1 := anchorAggregatePart1_0004
  simp only [anchorAggregatePartValid1_0004, anchorHistoryChunk0004] at h1
  have h2 := anchorAggregatePart2_0004
  simp only [anchorAggregatePartValid2_0004, anchorHistoryChunk0004] at h2
  have h3 := anchorAggregatePart3_0004
  simp only [anchorAggregatePartValid3_0004, anchorHistoryChunk0004] at h3
  have h4 := anchorAggregatePart4_0004
  simp only [anchorAggregatePartValid4_0004, anchorHistoryChunk0004] at h4
  have h5 := anchorAggregatePart5_0004
  simp only [anchorAggregatePartValid5_0004, anchorHistoryChunk0004] at h5
  have h6 := anchorAggregatePart6_0004
  simp only [anchorAggregatePartValid6_0004, anchorHistoryChunk0004] at h6
  have h7 := anchorAggregatePart7_0004
  simp only [anchorAggregatePartValid7_0004, anchorHistoryChunk0004] at h7
  unfold anchorHistoryChunk0004
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0005 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 5120
  | _ => True

theorem anchorAggregatePart0_0005 :
    anchorAggregatePartValid0_0005 anchorHistoryChunk0005 := by
  unfold anchorAggregatePartValid0_0005 anchorHistoryChunk0005
  decide

def anchorAggregatePartValid1_0005 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 5248
  | _ => True

theorem anchorAggregatePart1_0005 :
    anchorAggregatePartValid1_0005 anchorHistoryChunk0005 := by
  unfold anchorAggregatePartValid1_0005 anchorHistoryChunk0005
  decide

def anchorAggregatePartValid2_0005 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 5376
  | _ => True

theorem anchorAggregatePart2_0005 :
    anchorAggregatePartValid2_0005 anchorHistoryChunk0005 := by
  unfold anchorAggregatePartValid2_0005 anchorHistoryChunk0005
  decide

def anchorAggregatePartValid3_0005 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 5504
  | _ => True

theorem anchorAggregatePart3_0005 :
    anchorAggregatePartValid3_0005 anchorHistoryChunk0005 := by
  unfold anchorAggregatePartValid3_0005 anchorHistoryChunk0005
  decide

def anchorAggregatePartValid4_0005 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 5632
  | _ => True

theorem anchorAggregatePart4_0005 :
    anchorAggregatePartValid4_0005 anchorHistoryChunk0005 := by
  unfold anchorAggregatePartValid4_0005 anchorHistoryChunk0005
  decide

def anchorAggregatePartValid5_0005 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 5760
  | _ => True

theorem anchorAggregatePart5_0005 :
    anchorAggregatePartValid5_0005 anchorHistoryChunk0005 := by
  unfold anchorAggregatePartValid5_0005 anchorHistoryChunk0005
  decide

def anchorAggregatePartValid6_0005 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 5888
  | _ => True

theorem anchorAggregatePart6_0005 :
    anchorAggregatePartValid6_0005 anchorHistoryChunk0005 := by
  unfold anchorAggregatePartValid6_0005 anchorHistoryChunk0005
  decide

def anchorAggregatePartValid7_0005 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 6016
  | _ => True

theorem anchorAggregatePart7_0005 :
    anchorAggregatePartValid7_0005 anchorHistoryChunk0005 := by
  unfold anchorAggregatePartValid7_0005 anchorHistoryChunk0005
  decide

theorem anchorRange_0005 :
    anchorHistoryChunk0005.IndexedValid squarefreeOracle 5000000 5120 := by
  have h0 := anchorAggregatePart0_0005
  simp only [anchorAggregatePartValid0_0005, anchorHistoryChunk0005] at h0
  have h1 := anchorAggregatePart1_0005
  simp only [anchorAggregatePartValid1_0005, anchorHistoryChunk0005] at h1
  have h2 := anchorAggregatePart2_0005
  simp only [anchorAggregatePartValid2_0005, anchorHistoryChunk0005] at h2
  have h3 := anchorAggregatePart3_0005
  simp only [anchorAggregatePartValid3_0005, anchorHistoryChunk0005] at h3
  have h4 := anchorAggregatePart4_0005
  simp only [anchorAggregatePartValid4_0005, anchorHistoryChunk0005] at h4
  have h5 := anchorAggregatePart5_0005
  simp only [anchorAggregatePartValid5_0005, anchorHistoryChunk0005] at h5
  have h6 := anchorAggregatePart6_0005
  simp only [anchorAggregatePartValid6_0005, anchorHistoryChunk0005] at h6
  have h7 := anchorAggregatePart7_0005
  simp only [anchorAggregatePartValid7_0005, anchorHistoryChunk0005] at h7
  unfold anchorHistoryChunk0005
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0006 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 6144
  | _ => True

theorem anchorAggregatePart0_0006 :
    anchorAggregatePartValid0_0006 anchorHistoryChunk0006 := by
  unfold anchorAggregatePartValid0_0006 anchorHistoryChunk0006
  decide

def anchorAggregatePartValid1_0006 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 6272
  | _ => True

theorem anchorAggregatePart1_0006 :
    anchorAggregatePartValid1_0006 anchorHistoryChunk0006 := by
  unfold anchorAggregatePartValid1_0006 anchorHistoryChunk0006
  decide

def anchorAggregatePartValid2_0006 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 6400
  | _ => True

theorem anchorAggregatePart2_0006 :
    anchorAggregatePartValid2_0006 anchorHistoryChunk0006 := by
  unfold anchorAggregatePartValid2_0006 anchorHistoryChunk0006
  decide

def anchorAggregatePartValid3_0006 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 6528
  | _ => True

theorem anchorAggregatePart3_0006 :
    anchorAggregatePartValid3_0006 anchorHistoryChunk0006 := by
  unfold anchorAggregatePartValid3_0006 anchorHistoryChunk0006
  decide

def anchorAggregatePartValid4_0006 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 6656
  | _ => True

theorem anchorAggregatePart4_0006 :
    anchorAggregatePartValid4_0006 anchorHistoryChunk0006 := by
  unfold anchorAggregatePartValid4_0006 anchorHistoryChunk0006
  decide

def anchorAggregatePartValid5_0006 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 6784
  | _ => True

theorem anchorAggregatePart5_0006 :
    anchorAggregatePartValid5_0006 anchorHistoryChunk0006 := by
  unfold anchorAggregatePartValid5_0006 anchorHistoryChunk0006
  decide

def anchorAggregatePartValid6_0006 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 6912
  | _ => True

theorem anchorAggregatePart6_0006 :
    anchorAggregatePartValid6_0006 anchorHistoryChunk0006 := by
  unfold anchorAggregatePartValid6_0006 anchorHistoryChunk0006
  decide

def anchorAggregatePartValid7_0006 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 7040
  | _ => True

theorem anchorAggregatePart7_0006 :
    anchorAggregatePartValid7_0006 anchorHistoryChunk0006 := by
  unfold anchorAggregatePartValid7_0006 anchorHistoryChunk0006
  decide

theorem anchorRange_0006 :
    anchorHistoryChunk0006.IndexedValid squarefreeOracle 5000000 6144 := by
  have h0 := anchorAggregatePart0_0006
  simp only [anchorAggregatePartValid0_0006, anchorHistoryChunk0006] at h0
  have h1 := anchorAggregatePart1_0006
  simp only [anchorAggregatePartValid1_0006, anchorHistoryChunk0006] at h1
  have h2 := anchorAggregatePart2_0006
  simp only [anchorAggregatePartValid2_0006, anchorHistoryChunk0006] at h2
  have h3 := anchorAggregatePart3_0006
  simp only [anchorAggregatePartValid3_0006, anchorHistoryChunk0006] at h3
  have h4 := anchorAggregatePart4_0006
  simp only [anchorAggregatePartValid4_0006, anchorHistoryChunk0006] at h4
  have h5 := anchorAggregatePart5_0006
  simp only [anchorAggregatePartValid5_0006, anchorHistoryChunk0006] at h5
  have h6 := anchorAggregatePart6_0006
  simp only [anchorAggregatePartValid6_0006, anchorHistoryChunk0006] at h6
  have h7 := anchorAggregatePart7_0006
  simp only [anchorAggregatePartValid7_0006, anchorHistoryChunk0006] at h7
  unfold anchorHistoryChunk0006
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0007 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 7168
  | _ => True

theorem anchorAggregatePart0_0007 :
    anchorAggregatePartValid0_0007 anchorHistoryChunk0007 := by
  unfold anchorAggregatePartValid0_0007 anchorHistoryChunk0007
  decide

def anchorAggregatePartValid1_0007 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 7296
  | _ => True

theorem anchorAggregatePart1_0007 :
    anchorAggregatePartValid1_0007 anchorHistoryChunk0007 := by
  unfold anchorAggregatePartValid1_0007 anchorHistoryChunk0007
  decide

def anchorAggregatePartValid2_0007 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 7424
  | _ => True

theorem anchorAggregatePart2_0007 :
    anchorAggregatePartValid2_0007 anchorHistoryChunk0007 := by
  unfold anchorAggregatePartValid2_0007 anchorHistoryChunk0007
  decide

def anchorAggregatePartValid3_0007 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 7552
  | _ => True

theorem anchorAggregatePart3_0007 :
    anchorAggregatePartValid3_0007 anchorHistoryChunk0007 := by
  unfold anchorAggregatePartValid3_0007 anchorHistoryChunk0007
  decide

def anchorAggregatePartValid4_0007 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 7680
  | _ => True

theorem anchorAggregatePart4_0007 :
    anchorAggregatePartValid4_0007 anchorHistoryChunk0007 := by
  unfold anchorAggregatePartValid4_0007 anchorHistoryChunk0007
  decide

def anchorAggregatePartValid5_0007 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 7808
  | _ => True

theorem anchorAggregatePart5_0007 :
    anchorAggregatePartValid5_0007 anchorHistoryChunk0007 := by
  unfold anchorAggregatePartValid5_0007 anchorHistoryChunk0007
  decide

def anchorAggregatePartValid6_0007 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 7936
  | _ => True

theorem anchorAggregatePart6_0007 :
    anchorAggregatePartValid6_0007 anchorHistoryChunk0007 := by
  unfold anchorAggregatePartValid6_0007 anchorHistoryChunk0007
  decide

def anchorAggregatePartValid7_0007 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 8064
  | _ => True

theorem anchorAggregatePart7_0007 :
    anchorAggregatePartValid7_0007 anchorHistoryChunk0007 := by
  unfold anchorAggregatePartValid7_0007 anchorHistoryChunk0007
  decide

theorem anchorRange_0007 :
    anchorHistoryChunk0007.IndexedValid squarefreeOracle 5000000 7168 := by
  have h0 := anchorAggregatePart0_0007
  simp only [anchorAggregatePartValid0_0007, anchorHistoryChunk0007] at h0
  have h1 := anchorAggregatePart1_0007
  simp only [anchorAggregatePartValid1_0007, anchorHistoryChunk0007] at h1
  have h2 := anchorAggregatePart2_0007
  simp only [anchorAggregatePartValid2_0007, anchorHistoryChunk0007] at h2
  have h3 := anchorAggregatePart3_0007
  simp only [anchorAggregatePartValid3_0007, anchorHistoryChunk0007] at h3
  have h4 := anchorAggregatePart4_0007
  simp only [anchorAggregatePartValid4_0007, anchorHistoryChunk0007] at h4
  have h5 := anchorAggregatePart5_0007
  simp only [anchorAggregatePartValid5_0007, anchorHistoryChunk0007] at h5
  have h6 := anchorAggregatePart6_0007
  simp only [anchorAggregatePartValid6_0007, anchorHistoryChunk0007] at h6
  have h7 := anchorAggregatePart7_0007
  simp only [anchorAggregatePartValid7_0007, anchorHistoryChunk0007] at h7
  unfold anchorHistoryChunk0007
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
