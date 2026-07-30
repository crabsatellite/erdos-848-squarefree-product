import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0048
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0049
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0050
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0051

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0048, 0049, 0050, 0051 -/

def anchorAggregatePartValid0_0048 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 49152
  | _ => True

theorem anchorAggregatePart0_0048 :
    anchorAggregatePartValid0_0048 anchorHistoryChunk0048 := by
  unfold anchorAggregatePartValid0_0048 anchorHistoryChunk0048
  decide

def anchorAggregatePartValid1_0048 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 49280
  | _ => True

theorem anchorAggregatePart1_0048 :
    anchorAggregatePartValid1_0048 anchorHistoryChunk0048 := by
  unfold anchorAggregatePartValid1_0048 anchorHistoryChunk0048
  decide

def anchorAggregatePartValid2_0048 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 49408
  | _ => True

theorem anchorAggregatePart2_0048 :
    anchorAggregatePartValid2_0048 anchorHistoryChunk0048 := by
  unfold anchorAggregatePartValid2_0048 anchorHistoryChunk0048
  decide

def anchorAggregatePartValid3_0048 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 49536
  | _ => True

theorem anchorAggregatePart3_0048 :
    anchorAggregatePartValid3_0048 anchorHistoryChunk0048 := by
  unfold anchorAggregatePartValid3_0048 anchorHistoryChunk0048
  decide

def anchorAggregatePartValid4_0048 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 49664
  | _ => True

theorem anchorAggregatePart4_0048 :
    anchorAggregatePartValid4_0048 anchorHistoryChunk0048 := by
  unfold anchorAggregatePartValid4_0048 anchorHistoryChunk0048
  decide

def anchorAggregatePartValid5_0048 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 49792
  | _ => True

theorem anchorAggregatePart5_0048 :
    anchorAggregatePartValid5_0048 anchorHistoryChunk0048 := by
  unfold anchorAggregatePartValid5_0048 anchorHistoryChunk0048
  decide

def anchorAggregatePartValid6_0048 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 49920
  | _ => True

theorem anchorAggregatePart6_0048 :
    anchorAggregatePartValid6_0048 anchorHistoryChunk0048 := by
  unfold anchorAggregatePartValid6_0048 anchorHistoryChunk0048
  decide

def anchorAggregatePartValid7_0048 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 50048
  | _ => True

theorem anchorAggregatePart7_0048 :
    anchorAggregatePartValid7_0048 anchorHistoryChunk0048 := by
  unfold anchorAggregatePartValid7_0048 anchorHistoryChunk0048
  decide

theorem anchorRange_0048 :
    anchorHistoryChunk0048.IndexedValid squarefreeOracle 5000000 49152 := by
  have h0 := anchorAggregatePart0_0048
  simp only [anchorAggregatePartValid0_0048, anchorHistoryChunk0048] at h0
  have h1 := anchorAggregatePart1_0048
  simp only [anchorAggregatePartValid1_0048, anchorHistoryChunk0048] at h1
  have h2 := anchorAggregatePart2_0048
  simp only [anchorAggregatePartValid2_0048, anchorHistoryChunk0048] at h2
  have h3 := anchorAggregatePart3_0048
  simp only [anchorAggregatePartValid3_0048, anchorHistoryChunk0048] at h3
  have h4 := anchorAggregatePart4_0048
  simp only [anchorAggregatePartValid4_0048, anchorHistoryChunk0048] at h4
  have h5 := anchorAggregatePart5_0048
  simp only [anchorAggregatePartValid5_0048, anchorHistoryChunk0048] at h5
  have h6 := anchorAggregatePart6_0048
  simp only [anchorAggregatePartValid6_0048, anchorHistoryChunk0048] at h6
  have h7 := anchorAggregatePart7_0048
  simp only [anchorAggregatePartValid7_0048, anchorHistoryChunk0048] at h7
  unfold anchorHistoryChunk0048
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0049 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 50176
  | _ => True

theorem anchorAggregatePart0_0049 :
    anchorAggregatePartValid0_0049 anchorHistoryChunk0049 := by
  unfold anchorAggregatePartValid0_0049 anchorHistoryChunk0049
  decide

def anchorAggregatePartValid1_0049 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 50304
  | _ => True

theorem anchorAggregatePart1_0049 :
    anchorAggregatePartValid1_0049 anchorHistoryChunk0049 := by
  unfold anchorAggregatePartValid1_0049 anchorHistoryChunk0049
  decide

def anchorAggregatePartValid2_0049 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 50432
  | _ => True

theorem anchorAggregatePart2_0049 :
    anchorAggregatePartValid2_0049 anchorHistoryChunk0049 := by
  unfold anchorAggregatePartValid2_0049 anchorHistoryChunk0049
  decide

def anchorAggregatePartValid3_0049 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 50560
  | _ => True

theorem anchorAggregatePart3_0049 :
    anchorAggregatePartValid3_0049 anchorHistoryChunk0049 := by
  unfold anchorAggregatePartValid3_0049 anchorHistoryChunk0049
  decide

def anchorAggregatePartValid4_0049 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 50688
  | _ => True

theorem anchorAggregatePart4_0049 :
    anchorAggregatePartValid4_0049 anchorHistoryChunk0049 := by
  unfold anchorAggregatePartValid4_0049 anchorHistoryChunk0049
  decide

def anchorAggregatePartValid5_0049 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 50816
  | _ => True

theorem anchorAggregatePart5_0049 :
    anchorAggregatePartValid5_0049 anchorHistoryChunk0049 := by
  unfold anchorAggregatePartValid5_0049 anchorHistoryChunk0049
  decide

def anchorAggregatePartValid6_0049 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 50944
  | _ => True

theorem anchorAggregatePart6_0049 :
    anchorAggregatePartValid6_0049 anchorHistoryChunk0049 := by
  unfold anchorAggregatePartValid6_0049 anchorHistoryChunk0049
  decide

def anchorAggregatePartValid7_0049 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 51072
  | _ => True

theorem anchorAggregatePart7_0049 :
    anchorAggregatePartValid7_0049 anchorHistoryChunk0049 := by
  unfold anchorAggregatePartValid7_0049 anchorHistoryChunk0049
  decide

theorem anchorRange_0049 :
    anchorHistoryChunk0049.IndexedValid squarefreeOracle 5000000 50176 := by
  have h0 := anchorAggregatePart0_0049
  simp only [anchorAggregatePartValid0_0049, anchorHistoryChunk0049] at h0
  have h1 := anchorAggregatePart1_0049
  simp only [anchorAggregatePartValid1_0049, anchorHistoryChunk0049] at h1
  have h2 := anchorAggregatePart2_0049
  simp only [anchorAggregatePartValid2_0049, anchorHistoryChunk0049] at h2
  have h3 := anchorAggregatePart3_0049
  simp only [anchorAggregatePartValid3_0049, anchorHistoryChunk0049] at h3
  have h4 := anchorAggregatePart4_0049
  simp only [anchorAggregatePartValid4_0049, anchorHistoryChunk0049] at h4
  have h5 := anchorAggregatePart5_0049
  simp only [anchorAggregatePartValid5_0049, anchorHistoryChunk0049] at h5
  have h6 := anchorAggregatePart6_0049
  simp only [anchorAggregatePartValid6_0049, anchorHistoryChunk0049] at h6
  have h7 := anchorAggregatePart7_0049
  simp only [anchorAggregatePartValid7_0049, anchorHistoryChunk0049] at h7
  unfold anchorHistoryChunk0049
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0050 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 51200
  | _ => True

theorem anchorAggregatePart0_0050 :
    anchorAggregatePartValid0_0050 anchorHistoryChunk0050 := by
  unfold anchorAggregatePartValid0_0050 anchorHistoryChunk0050
  decide

def anchorAggregatePartValid1_0050 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 51328
  | _ => True

theorem anchorAggregatePart1_0050 :
    anchorAggregatePartValid1_0050 anchorHistoryChunk0050 := by
  unfold anchorAggregatePartValid1_0050 anchorHistoryChunk0050
  decide

def anchorAggregatePartValid2_0050 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 51456
  | _ => True

theorem anchorAggregatePart2_0050 :
    anchorAggregatePartValid2_0050 anchorHistoryChunk0050 := by
  unfold anchorAggregatePartValid2_0050 anchorHistoryChunk0050
  decide

def anchorAggregatePartValid3_0050 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 51584
  | _ => True

theorem anchorAggregatePart3_0050 :
    anchorAggregatePartValid3_0050 anchorHistoryChunk0050 := by
  unfold anchorAggregatePartValid3_0050 anchorHistoryChunk0050
  decide

def anchorAggregatePartValid4_0050 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 51712
  | _ => True

theorem anchorAggregatePart4_0050 :
    anchorAggregatePartValid4_0050 anchorHistoryChunk0050 := by
  unfold anchorAggregatePartValid4_0050 anchorHistoryChunk0050
  decide

def anchorAggregatePartValid5_0050 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 51840
  | _ => True

theorem anchorAggregatePart5_0050 :
    anchorAggregatePartValid5_0050 anchorHistoryChunk0050 := by
  unfold anchorAggregatePartValid5_0050 anchorHistoryChunk0050
  decide

def anchorAggregatePartValid6_0050 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 51968
  | _ => True

theorem anchorAggregatePart6_0050 :
    anchorAggregatePartValid6_0050 anchorHistoryChunk0050 := by
  unfold anchorAggregatePartValid6_0050 anchorHistoryChunk0050
  decide

def anchorAggregatePartValid7_0050 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 52096
  | _ => True

theorem anchorAggregatePart7_0050 :
    anchorAggregatePartValid7_0050 anchorHistoryChunk0050 := by
  unfold anchorAggregatePartValid7_0050 anchorHistoryChunk0050
  decide

theorem anchorRange_0050 :
    anchorHistoryChunk0050.IndexedValid squarefreeOracle 5000000 51200 := by
  have h0 := anchorAggregatePart0_0050
  simp only [anchorAggregatePartValid0_0050, anchorHistoryChunk0050] at h0
  have h1 := anchorAggregatePart1_0050
  simp only [anchorAggregatePartValid1_0050, anchorHistoryChunk0050] at h1
  have h2 := anchorAggregatePart2_0050
  simp only [anchorAggregatePartValid2_0050, anchorHistoryChunk0050] at h2
  have h3 := anchorAggregatePart3_0050
  simp only [anchorAggregatePartValid3_0050, anchorHistoryChunk0050] at h3
  have h4 := anchorAggregatePart4_0050
  simp only [anchorAggregatePartValid4_0050, anchorHistoryChunk0050] at h4
  have h5 := anchorAggregatePart5_0050
  simp only [anchorAggregatePartValid5_0050, anchorHistoryChunk0050] at h5
  have h6 := anchorAggregatePart6_0050
  simp only [anchorAggregatePartValid6_0050, anchorHistoryChunk0050] at h6
  have h7 := anchorAggregatePart7_0050
  simp only [anchorAggregatePartValid7_0050, anchorHistoryChunk0050] at h7
  unfold anchorHistoryChunk0050
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0051 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 52224
  | _ => True

theorem anchorAggregatePart0_0051 :
    anchorAggregatePartValid0_0051 anchorHistoryChunk0051 := by
  unfold anchorAggregatePartValid0_0051 anchorHistoryChunk0051
  decide

def anchorAggregatePartValid1_0051 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 52352
  | _ => True

theorem anchorAggregatePart1_0051 :
    anchorAggregatePartValid1_0051 anchorHistoryChunk0051 := by
  unfold anchorAggregatePartValid1_0051 anchorHistoryChunk0051
  decide

def anchorAggregatePartValid2_0051 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 52480
  | _ => True

theorem anchorAggregatePart2_0051 :
    anchorAggregatePartValid2_0051 anchorHistoryChunk0051 := by
  unfold anchorAggregatePartValid2_0051 anchorHistoryChunk0051
  decide

def anchorAggregatePartValid3_0051 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 52608
  | _ => True

theorem anchorAggregatePart3_0051 :
    anchorAggregatePartValid3_0051 anchorHistoryChunk0051 := by
  unfold anchorAggregatePartValid3_0051 anchorHistoryChunk0051
  decide

def anchorAggregatePartValid4_0051 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 52736
  | _ => True

theorem anchorAggregatePart4_0051 :
    anchorAggregatePartValid4_0051 anchorHistoryChunk0051 := by
  unfold anchorAggregatePartValid4_0051 anchorHistoryChunk0051
  decide

def anchorAggregatePartValid5_0051 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 52864
  | _ => True

theorem anchorAggregatePart5_0051 :
    anchorAggregatePartValid5_0051 anchorHistoryChunk0051 := by
  unfold anchorAggregatePartValid5_0051 anchorHistoryChunk0051
  decide

def anchorAggregatePartValid6_0051 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 52992
  | _ => True

theorem anchorAggregatePart6_0051 :
    anchorAggregatePartValid6_0051 anchorHistoryChunk0051 := by
  unfold anchorAggregatePartValid6_0051 anchorHistoryChunk0051
  decide

def anchorAggregatePartValid7_0051 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 53120
  | _ => True

theorem anchorAggregatePart7_0051 :
    anchorAggregatePartValid7_0051 anchorHistoryChunk0051 := by
  unfold anchorAggregatePartValid7_0051 anchorHistoryChunk0051
  decide

theorem anchorRange_0051 :
    anchorHistoryChunk0051.IndexedValid squarefreeOracle 5000000 52224 := by
  have h0 := anchorAggregatePart0_0051
  simp only [anchorAggregatePartValid0_0051, anchorHistoryChunk0051] at h0
  have h1 := anchorAggregatePart1_0051
  simp only [anchorAggregatePartValid1_0051, anchorHistoryChunk0051] at h1
  have h2 := anchorAggregatePart2_0051
  simp only [anchorAggregatePartValid2_0051, anchorHistoryChunk0051] at h2
  have h3 := anchorAggregatePart3_0051
  simp only [anchorAggregatePartValid3_0051, anchorHistoryChunk0051] at h3
  have h4 := anchorAggregatePart4_0051
  simp only [anchorAggregatePartValid4_0051, anchorHistoryChunk0051] at h4
  have h5 := anchorAggregatePart5_0051
  simp only [anchorAggregatePartValid5_0051, anchorHistoryChunk0051] at h5
  have h6 := anchorAggregatePart6_0051
  simp only [anchorAggregatePartValid6_0051, anchorHistoryChunk0051] at h6
  have h7 := anchorAggregatePart7_0051
  simp only [anchorAggregatePartValid7_0051, anchorHistoryChunk0051] at h7
  unfold anchorHistoryChunk0051
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
