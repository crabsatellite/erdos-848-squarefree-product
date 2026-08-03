import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0112
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0113
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0114
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0115

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0112, 0113, 0114, 0115 -/

def anchorAggregatePartValid0_0112 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 114688
  | _ => True

theorem anchorAggregatePart0_0112 :
    anchorAggregatePartValid0_0112 anchorHistoryChunk0112 := by
  unfold anchorAggregatePartValid0_0112 anchorHistoryChunk0112
  decide

def anchorAggregatePartValid1_0112 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 114816
  | _ => True

theorem anchorAggregatePart1_0112 :
    anchorAggregatePartValid1_0112 anchorHistoryChunk0112 := by
  unfold anchorAggregatePartValid1_0112 anchorHistoryChunk0112
  decide

def anchorAggregatePartValid2_0112 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 114944
  | _ => True

theorem anchorAggregatePart2_0112 :
    anchorAggregatePartValid2_0112 anchorHistoryChunk0112 := by
  unfold anchorAggregatePartValid2_0112 anchorHistoryChunk0112
  decide

def anchorAggregatePartValid3_0112 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 115072
  | _ => True

theorem anchorAggregatePart3_0112 :
    anchorAggregatePartValid3_0112 anchorHistoryChunk0112 := by
  unfold anchorAggregatePartValid3_0112 anchorHistoryChunk0112
  decide

def anchorAggregatePartValid4_0112 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 115200
  | _ => True

theorem anchorAggregatePart4_0112 :
    anchorAggregatePartValid4_0112 anchorHistoryChunk0112 := by
  unfold anchorAggregatePartValid4_0112 anchorHistoryChunk0112
  decide

def anchorAggregatePartValid5_0112 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 115328
  | _ => True

theorem anchorAggregatePart5_0112 :
    anchorAggregatePartValid5_0112 anchorHistoryChunk0112 := by
  unfold anchorAggregatePartValid5_0112 anchorHistoryChunk0112
  decide

def anchorAggregatePartValid6_0112 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 115456
  | _ => True

theorem anchorAggregatePart6_0112 :
    anchorAggregatePartValid6_0112 anchorHistoryChunk0112 := by
  unfold anchorAggregatePartValid6_0112 anchorHistoryChunk0112
  decide

def anchorAggregatePartValid7_0112 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 115584
  | _ => True

theorem anchorAggregatePart7_0112 :
    anchorAggregatePartValid7_0112 anchorHistoryChunk0112 := by
  unfold anchorAggregatePartValid7_0112 anchorHistoryChunk0112
  decide

theorem anchorRange_0112 :
    anchorHistoryChunk0112.IndexedValid squarefreeOracle 5000000 114688 := by
  have h0 := anchorAggregatePart0_0112
  simp only [anchorAggregatePartValid0_0112, anchorHistoryChunk0112] at h0
  have h1 := anchorAggregatePart1_0112
  simp only [anchorAggregatePartValid1_0112, anchorHistoryChunk0112] at h1
  have h2 := anchorAggregatePart2_0112
  simp only [anchorAggregatePartValid2_0112, anchorHistoryChunk0112] at h2
  have h3 := anchorAggregatePart3_0112
  simp only [anchorAggregatePartValid3_0112, anchorHistoryChunk0112] at h3
  have h4 := anchorAggregatePart4_0112
  simp only [anchorAggregatePartValid4_0112, anchorHistoryChunk0112] at h4
  have h5 := anchorAggregatePart5_0112
  simp only [anchorAggregatePartValid5_0112, anchorHistoryChunk0112] at h5
  have h6 := anchorAggregatePart6_0112
  simp only [anchorAggregatePartValid6_0112, anchorHistoryChunk0112] at h6
  have h7 := anchorAggregatePart7_0112
  simp only [anchorAggregatePartValid7_0112, anchorHistoryChunk0112] at h7
  unfold anchorHistoryChunk0112
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0113 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 115712
  | _ => True

theorem anchorAggregatePart0_0113 :
    anchorAggregatePartValid0_0113 anchorHistoryChunk0113 := by
  unfold anchorAggregatePartValid0_0113 anchorHistoryChunk0113
  decide

def anchorAggregatePartValid1_0113 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 115840
  | _ => True

theorem anchorAggregatePart1_0113 :
    anchorAggregatePartValid1_0113 anchorHistoryChunk0113 := by
  unfold anchorAggregatePartValid1_0113 anchorHistoryChunk0113
  decide

def anchorAggregatePartValid2_0113 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 115968
  | _ => True

theorem anchorAggregatePart2_0113 :
    anchorAggregatePartValid2_0113 anchorHistoryChunk0113 := by
  unfold anchorAggregatePartValid2_0113 anchorHistoryChunk0113
  decide

def anchorAggregatePartValid3_0113 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 116096
  | _ => True

theorem anchorAggregatePart3_0113 :
    anchorAggregatePartValid3_0113 anchorHistoryChunk0113 := by
  unfold anchorAggregatePartValid3_0113 anchorHistoryChunk0113
  decide

def anchorAggregatePartValid4_0113 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 116224
  | _ => True

theorem anchorAggregatePart4_0113 :
    anchorAggregatePartValid4_0113 anchorHistoryChunk0113 := by
  unfold anchorAggregatePartValid4_0113 anchorHistoryChunk0113
  decide

def anchorAggregatePartValid5_0113 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 116352
  | _ => True

theorem anchorAggregatePart5_0113 :
    anchorAggregatePartValid5_0113 anchorHistoryChunk0113 := by
  unfold anchorAggregatePartValid5_0113 anchorHistoryChunk0113
  decide

def anchorAggregatePartValid6_0113 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 116480
  | _ => True

theorem anchorAggregatePart6_0113 :
    anchorAggregatePartValid6_0113 anchorHistoryChunk0113 := by
  unfold anchorAggregatePartValid6_0113 anchorHistoryChunk0113
  decide

def anchorAggregatePartValid7_0113 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 116608
  | _ => True

theorem anchorAggregatePart7_0113 :
    anchorAggregatePartValid7_0113 anchorHistoryChunk0113 := by
  unfold anchorAggregatePartValid7_0113 anchorHistoryChunk0113
  decide

theorem anchorRange_0113 :
    anchorHistoryChunk0113.IndexedValid squarefreeOracle 5000000 115712 := by
  have h0 := anchorAggregatePart0_0113
  simp only [anchorAggregatePartValid0_0113, anchorHistoryChunk0113] at h0
  have h1 := anchorAggregatePart1_0113
  simp only [anchorAggregatePartValid1_0113, anchorHistoryChunk0113] at h1
  have h2 := anchorAggregatePart2_0113
  simp only [anchorAggregatePartValid2_0113, anchorHistoryChunk0113] at h2
  have h3 := anchorAggregatePart3_0113
  simp only [anchorAggregatePartValid3_0113, anchorHistoryChunk0113] at h3
  have h4 := anchorAggregatePart4_0113
  simp only [anchorAggregatePartValid4_0113, anchorHistoryChunk0113] at h4
  have h5 := anchorAggregatePart5_0113
  simp only [anchorAggregatePartValid5_0113, anchorHistoryChunk0113] at h5
  have h6 := anchorAggregatePart6_0113
  simp only [anchorAggregatePartValid6_0113, anchorHistoryChunk0113] at h6
  have h7 := anchorAggregatePart7_0113
  simp only [anchorAggregatePartValid7_0113, anchorHistoryChunk0113] at h7
  unfold anchorHistoryChunk0113
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0114 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 116736
  | _ => True

theorem anchorAggregatePart0_0114 :
    anchorAggregatePartValid0_0114 anchorHistoryChunk0114 := by
  unfold anchorAggregatePartValid0_0114 anchorHistoryChunk0114
  decide

def anchorAggregatePartValid1_0114 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 116864
  | _ => True

theorem anchorAggregatePart1_0114 :
    anchorAggregatePartValid1_0114 anchorHistoryChunk0114 := by
  unfold anchorAggregatePartValid1_0114 anchorHistoryChunk0114
  decide

def anchorAggregatePartValid2_0114 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 116992
  | _ => True

theorem anchorAggregatePart2_0114 :
    anchorAggregatePartValid2_0114 anchorHistoryChunk0114 := by
  unfold anchorAggregatePartValid2_0114 anchorHistoryChunk0114
  decide

def anchorAggregatePartValid3_0114 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 117120
  | _ => True

theorem anchorAggregatePart3_0114 :
    anchorAggregatePartValid3_0114 anchorHistoryChunk0114 := by
  unfold anchorAggregatePartValid3_0114 anchorHistoryChunk0114
  decide

def anchorAggregatePartValid4_0114 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 117248
  | _ => True

theorem anchorAggregatePart4_0114 :
    anchorAggregatePartValid4_0114 anchorHistoryChunk0114 := by
  unfold anchorAggregatePartValid4_0114 anchorHistoryChunk0114
  decide

def anchorAggregatePartValid5_0114 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 117376
  | _ => True

theorem anchorAggregatePart5_0114 :
    anchorAggregatePartValid5_0114 anchorHistoryChunk0114 := by
  unfold anchorAggregatePartValid5_0114 anchorHistoryChunk0114
  decide

def anchorAggregatePartValid6_0114 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 117504
  | _ => True

theorem anchorAggregatePart6_0114 :
    anchorAggregatePartValid6_0114 anchorHistoryChunk0114 := by
  unfold anchorAggregatePartValid6_0114 anchorHistoryChunk0114
  decide

def anchorAggregatePartValid7_0114 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 117632
  | _ => True

theorem anchorAggregatePart7_0114 :
    anchorAggregatePartValid7_0114 anchorHistoryChunk0114 := by
  unfold anchorAggregatePartValid7_0114 anchorHistoryChunk0114
  decide

theorem anchorRange_0114 :
    anchorHistoryChunk0114.IndexedValid squarefreeOracle 5000000 116736 := by
  have h0 := anchorAggregatePart0_0114
  simp only [anchorAggregatePartValid0_0114, anchorHistoryChunk0114] at h0
  have h1 := anchorAggregatePart1_0114
  simp only [anchorAggregatePartValid1_0114, anchorHistoryChunk0114] at h1
  have h2 := anchorAggregatePart2_0114
  simp only [anchorAggregatePartValid2_0114, anchorHistoryChunk0114] at h2
  have h3 := anchorAggregatePart3_0114
  simp only [anchorAggregatePartValid3_0114, anchorHistoryChunk0114] at h3
  have h4 := anchorAggregatePart4_0114
  simp only [anchorAggregatePartValid4_0114, anchorHistoryChunk0114] at h4
  have h5 := anchorAggregatePart5_0114
  simp only [anchorAggregatePartValid5_0114, anchorHistoryChunk0114] at h5
  have h6 := anchorAggregatePart6_0114
  simp only [anchorAggregatePartValid6_0114, anchorHistoryChunk0114] at h6
  have h7 := anchorAggregatePart7_0114
  simp only [anchorAggregatePartValid7_0114, anchorHistoryChunk0114] at h7
  unfold anchorHistoryChunk0114
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0115 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 117760
  | _ => True

theorem anchorAggregatePart0_0115 :
    anchorAggregatePartValid0_0115 anchorHistoryChunk0115 := by
  unfold anchorAggregatePartValid0_0115 anchorHistoryChunk0115
  decide

def anchorAggregatePartValid1_0115 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 117888
  | _ => True

theorem anchorAggregatePart1_0115 :
    anchorAggregatePartValid1_0115 anchorHistoryChunk0115 := by
  unfold anchorAggregatePartValid1_0115 anchorHistoryChunk0115
  decide

def anchorAggregatePartValid2_0115 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 118016
  | _ => True

theorem anchorAggregatePart2_0115 :
    anchorAggregatePartValid2_0115 anchorHistoryChunk0115 := by
  unfold anchorAggregatePartValid2_0115 anchorHistoryChunk0115
  decide

def anchorAggregatePartValid3_0115 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 118144
  | _ => True

theorem anchorAggregatePart3_0115 :
    anchorAggregatePartValid3_0115 anchorHistoryChunk0115 := by
  unfold anchorAggregatePartValid3_0115 anchorHistoryChunk0115
  decide

def anchorAggregatePartValid4_0115 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 118272
  | _ => True

theorem anchorAggregatePart4_0115 :
    anchorAggregatePartValid4_0115 anchorHistoryChunk0115 := by
  unfold anchorAggregatePartValid4_0115 anchorHistoryChunk0115
  decide

def anchorAggregatePartValid5_0115 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 118400
  | _ => True

theorem anchorAggregatePart5_0115 :
    anchorAggregatePartValid5_0115 anchorHistoryChunk0115 := by
  unfold anchorAggregatePartValid5_0115 anchorHistoryChunk0115
  decide

def anchorAggregatePartValid6_0115 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 118528
  | _ => True

theorem anchorAggregatePart6_0115 :
    anchorAggregatePartValid6_0115 anchorHistoryChunk0115 := by
  unfold anchorAggregatePartValid6_0115 anchorHistoryChunk0115
  decide

def anchorAggregatePartValid7_0115 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 118656
  | _ => True

theorem anchorAggregatePart7_0115 :
    anchorAggregatePartValid7_0115 anchorHistoryChunk0115 := by
  unfold anchorAggregatePartValid7_0115 anchorHistoryChunk0115
  decide

theorem anchorRange_0115 :
    anchorHistoryChunk0115.IndexedValid squarefreeOracle 5000000 117760 := by
  have h0 := anchorAggregatePart0_0115
  simp only [anchorAggregatePartValid0_0115, anchorHistoryChunk0115] at h0
  have h1 := anchorAggregatePart1_0115
  simp only [anchorAggregatePartValid1_0115, anchorHistoryChunk0115] at h1
  have h2 := anchorAggregatePart2_0115
  simp only [anchorAggregatePartValid2_0115, anchorHistoryChunk0115] at h2
  have h3 := anchorAggregatePart3_0115
  simp only [anchorAggregatePartValid3_0115, anchorHistoryChunk0115] at h3
  have h4 := anchorAggregatePart4_0115
  simp only [anchorAggregatePartValid4_0115, anchorHistoryChunk0115] at h4
  have h5 := anchorAggregatePart5_0115
  simp only [anchorAggregatePartValid5_0115, anchorHistoryChunk0115] at h5
  have h6 := anchorAggregatePart6_0115
  simp only [anchorAggregatePartValid6_0115, anchorHistoryChunk0115] at h6
  have h7 := anchorAggregatePart7_0115
  simp only [anchorAggregatePartValid7_0115, anchorHistoryChunk0115] at h7
  unfold anchorHistoryChunk0115
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
