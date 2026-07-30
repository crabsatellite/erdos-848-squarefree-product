import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0156
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0157
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0158
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0159

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0156, 0157, 0158, 0159 -/

def anchorAggregatePartValid0_0156 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 159744
  | _ => True

theorem anchorAggregatePart0_0156 :
    anchorAggregatePartValid0_0156 anchorHistoryChunk0156 := by
  unfold anchorAggregatePartValid0_0156 anchorHistoryChunk0156
  decide

def anchorAggregatePartValid1_0156 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 159872
  | _ => True

theorem anchorAggregatePart1_0156 :
    anchorAggregatePartValid1_0156 anchorHistoryChunk0156 := by
  unfold anchorAggregatePartValid1_0156 anchorHistoryChunk0156
  decide

def anchorAggregatePartValid2_0156 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 160000
  | _ => True

theorem anchorAggregatePart2_0156 :
    anchorAggregatePartValid2_0156 anchorHistoryChunk0156 := by
  unfold anchorAggregatePartValid2_0156 anchorHistoryChunk0156
  decide

def anchorAggregatePartValid3_0156 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 160128
  | _ => True

theorem anchorAggregatePart3_0156 :
    anchorAggregatePartValid3_0156 anchorHistoryChunk0156 := by
  unfold anchorAggregatePartValid3_0156 anchorHistoryChunk0156
  decide

def anchorAggregatePartValid4_0156 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 160256
  | _ => True

theorem anchorAggregatePart4_0156 :
    anchorAggregatePartValid4_0156 anchorHistoryChunk0156 := by
  unfold anchorAggregatePartValid4_0156 anchorHistoryChunk0156
  decide

def anchorAggregatePartValid5_0156 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 160384
  | _ => True

theorem anchorAggregatePart5_0156 :
    anchorAggregatePartValid5_0156 anchorHistoryChunk0156 := by
  unfold anchorAggregatePartValid5_0156 anchorHistoryChunk0156
  decide

def anchorAggregatePartValid6_0156 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 160512
  | _ => True

theorem anchorAggregatePart6_0156 :
    anchorAggregatePartValid6_0156 anchorHistoryChunk0156 := by
  unfold anchorAggregatePartValid6_0156 anchorHistoryChunk0156
  decide

def anchorAggregatePartValid7_0156 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 160640
  | _ => True

theorem anchorAggregatePart7_0156 :
    anchorAggregatePartValid7_0156 anchorHistoryChunk0156 := by
  unfold anchorAggregatePartValid7_0156 anchorHistoryChunk0156
  decide

theorem anchorRange_0156 :
    anchorHistoryChunk0156.IndexedValid squarefreeOracle 5000000 159744 := by
  have h0 := anchorAggregatePart0_0156
  simp only [anchorAggregatePartValid0_0156, anchorHistoryChunk0156] at h0
  have h1 := anchorAggregatePart1_0156
  simp only [anchorAggregatePartValid1_0156, anchorHistoryChunk0156] at h1
  have h2 := anchorAggregatePart2_0156
  simp only [anchorAggregatePartValid2_0156, anchorHistoryChunk0156] at h2
  have h3 := anchorAggregatePart3_0156
  simp only [anchorAggregatePartValid3_0156, anchorHistoryChunk0156] at h3
  have h4 := anchorAggregatePart4_0156
  simp only [anchorAggregatePartValid4_0156, anchorHistoryChunk0156] at h4
  have h5 := anchorAggregatePart5_0156
  simp only [anchorAggregatePartValid5_0156, anchorHistoryChunk0156] at h5
  have h6 := anchorAggregatePart6_0156
  simp only [anchorAggregatePartValid6_0156, anchorHistoryChunk0156] at h6
  have h7 := anchorAggregatePart7_0156
  simp only [anchorAggregatePartValid7_0156, anchorHistoryChunk0156] at h7
  unfold anchorHistoryChunk0156
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0157 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 160768
  | _ => True

theorem anchorAggregatePart0_0157 :
    anchorAggregatePartValid0_0157 anchorHistoryChunk0157 := by
  unfold anchorAggregatePartValid0_0157 anchorHistoryChunk0157
  decide

def anchorAggregatePartValid1_0157 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 160896
  | _ => True

theorem anchorAggregatePart1_0157 :
    anchorAggregatePartValid1_0157 anchorHistoryChunk0157 := by
  unfold anchorAggregatePartValid1_0157 anchorHistoryChunk0157
  decide

def anchorAggregatePartValid2_0157 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 161024
  | _ => True

theorem anchorAggregatePart2_0157 :
    anchorAggregatePartValid2_0157 anchorHistoryChunk0157 := by
  unfold anchorAggregatePartValid2_0157 anchorHistoryChunk0157
  decide

def anchorAggregatePartValid3_0157 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 161152
  | _ => True

theorem anchorAggregatePart3_0157 :
    anchorAggregatePartValid3_0157 anchorHistoryChunk0157 := by
  unfold anchorAggregatePartValid3_0157 anchorHistoryChunk0157
  decide

def anchorAggregatePartValid4_0157 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 161280
  | _ => True

theorem anchorAggregatePart4_0157 :
    anchorAggregatePartValid4_0157 anchorHistoryChunk0157 := by
  unfold anchorAggregatePartValid4_0157 anchorHistoryChunk0157
  decide

def anchorAggregatePartValid5_0157 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 161408
  | _ => True

theorem anchorAggregatePart5_0157 :
    anchorAggregatePartValid5_0157 anchorHistoryChunk0157 := by
  unfold anchorAggregatePartValid5_0157 anchorHistoryChunk0157
  decide

def anchorAggregatePartValid6_0157 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 161536
  | _ => True

theorem anchorAggregatePart6_0157 :
    anchorAggregatePartValid6_0157 anchorHistoryChunk0157 := by
  unfold anchorAggregatePartValid6_0157 anchorHistoryChunk0157
  decide

def anchorAggregatePartValid7_0157 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 161664
  | _ => True

theorem anchorAggregatePart7_0157 :
    anchorAggregatePartValid7_0157 anchorHistoryChunk0157 := by
  unfold anchorAggregatePartValid7_0157 anchorHistoryChunk0157
  decide

theorem anchorRange_0157 :
    anchorHistoryChunk0157.IndexedValid squarefreeOracle 5000000 160768 := by
  have h0 := anchorAggregatePart0_0157
  simp only [anchorAggregatePartValid0_0157, anchorHistoryChunk0157] at h0
  have h1 := anchorAggregatePart1_0157
  simp only [anchorAggregatePartValid1_0157, anchorHistoryChunk0157] at h1
  have h2 := anchorAggregatePart2_0157
  simp only [anchorAggregatePartValid2_0157, anchorHistoryChunk0157] at h2
  have h3 := anchorAggregatePart3_0157
  simp only [anchorAggregatePartValid3_0157, anchorHistoryChunk0157] at h3
  have h4 := anchorAggregatePart4_0157
  simp only [anchorAggregatePartValid4_0157, anchorHistoryChunk0157] at h4
  have h5 := anchorAggregatePart5_0157
  simp only [anchorAggregatePartValid5_0157, anchorHistoryChunk0157] at h5
  have h6 := anchorAggregatePart6_0157
  simp only [anchorAggregatePartValid6_0157, anchorHistoryChunk0157] at h6
  have h7 := anchorAggregatePart7_0157
  simp only [anchorAggregatePartValid7_0157, anchorHistoryChunk0157] at h7
  unfold anchorHistoryChunk0157
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0158 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 161792
  | _ => True

theorem anchorAggregatePart0_0158 :
    anchorAggregatePartValid0_0158 anchorHistoryChunk0158 := by
  unfold anchorAggregatePartValid0_0158 anchorHistoryChunk0158
  decide

def anchorAggregatePartValid1_0158 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 161920
  | _ => True

theorem anchorAggregatePart1_0158 :
    anchorAggregatePartValid1_0158 anchorHistoryChunk0158 := by
  unfold anchorAggregatePartValid1_0158 anchorHistoryChunk0158
  decide

def anchorAggregatePartValid2_0158 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 162048
  | _ => True

theorem anchorAggregatePart2_0158 :
    anchorAggregatePartValid2_0158 anchorHistoryChunk0158 := by
  unfold anchorAggregatePartValid2_0158 anchorHistoryChunk0158
  decide

def anchorAggregatePartValid3_0158 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 162176
  | _ => True

theorem anchorAggregatePart3_0158 :
    anchorAggregatePartValid3_0158 anchorHistoryChunk0158 := by
  unfold anchorAggregatePartValid3_0158 anchorHistoryChunk0158
  decide

def anchorAggregatePartValid4_0158 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 162304
  | _ => True

theorem anchorAggregatePart4_0158 :
    anchorAggregatePartValid4_0158 anchorHistoryChunk0158 := by
  unfold anchorAggregatePartValid4_0158 anchorHistoryChunk0158
  decide

def anchorAggregatePartValid5_0158 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 162432
  | _ => True

theorem anchorAggregatePart5_0158 :
    anchorAggregatePartValid5_0158 anchorHistoryChunk0158 := by
  unfold anchorAggregatePartValid5_0158 anchorHistoryChunk0158
  decide

def anchorAggregatePartValid6_0158 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 162560
  | _ => True

theorem anchorAggregatePart6_0158 :
    anchorAggregatePartValid6_0158 anchorHistoryChunk0158 := by
  unfold anchorAggregatePartValid6_0158 anchorHistoryChunk0158
  decide

def anchorAggregatePartValid7_0158 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 162688
  | _ => True

theorem anchorAggregatePart7_0158 :
    anchorAggregatePartValid7_0158 anchorHistoryChunk0158 := by
  unfold anchorAggregatePartValid7_0158 anchorHistoryChunk0158
  decide

theorem anchorRange_0158 :
    anchorHistoryChunk0158.IndexedValid squarefreeOracle 5000000 161792 := by
  have h0 := anchorAggregatePart0_0158
  simp only [anchorAggregatePartValid0_0158, anchorHistoryChunk0158] at h0
  have h1 := anchorAggregatePart1_0158
  simp only [anchorAggregatePartValid1_0158, anchorHistoryChunk0158] at h1
  have h2 := anchorAggregatePart2_0158
  simp only [anchorAggregatePartValid2_0158, anchorHistoryChunk0158] at h2
  have h3 := anchorAggregatePart3_0158
  simp only [anchorAggregatePartValid3_0158, anchorHistoryChunk0158] at h3
  have h4 := anchorAggregatePart4_0158
  simp only [anchorAggregatePartValid4_0158, anchorHistoryChunk0158] at h4
  have h5 := anchorAggregatePart5_0158
  simp only [anchorAggregatePartValid5_0158, anchorHistoryChunk0158] at h5
  have h6 := anchorAggregatePart6_0158
  simp only [anchorAggregatePartValid6_0158, anchorHistoryChunk0158] at h6
  have h7 := anchorAggregatePart7_0158
  simp only [anchorAggregatePartValid7_0158, anchorHistoryChunk0158] at h7
  unfold anchorHistoryChunk0158
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0159 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 162816
  | _ => True

theorem anchorAggregatePart0_0159 :
    anchorAggregatePartValid0_0159 anchorHistoryChunk0159 := by
  unfold anchorAggregatePartValid0_0159 anchorHistoryChunk0159
  decide

def anchorAggregatePartValid1_0159 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 162944
  | _ => True

theorem anchorAggregatePart1_0159 :
    anchorAggregatePartValid1_0159 anchorHistoryChunk0159 := by
  unfold anchorAggregatePartValid1_0159 anchorHistoryChunk0159
  decide

def anchorAggregatePartValid2_0159 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 163072
  | _ => True

theorem anchorAggregatePart2_0159 :
    anchorAggregatePartValid2_0159 anchorHistoryChunk0159 := by
  unfold anchorAggregatePartValid2_0159 anchorHistoryChunk0159
  decide

def anchorAggregatePartValid3_0159 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 163200
  | _ => True

theorem anchorAggregatePart3_0159 :
    anchorAggregatePartValid3_0159 anchorHistoryChunk0159 := by
  unfold anchorAggregatePartValid3_0159 anchorHistoryChunk0159
  decide

def anchorAggregatePartValid4_0159 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 163328
  | _ => True

theorem anchorAggregatePart4_0159 :
    anchorAggregatePartValid4_0159 anchorHistoryChunk0159 := by
  unfold anchorAggregatePartValid4_0159 anchorHistoryChunk0159
  decide

def anchorAggregatePartValid5_0159 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 163456
  | _ => True

theorem anchorAggregatePart5_0159 :
    anchorAggregatePartValid5_0159 anchorHistoryChunk0159 := by
  unfold anchorAggregatePartValid5_0159 anchorHistoryChunk0159
  decide

def anchorAggregatePartValid6_0159 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 163584
  | _ => True

theorem anchorAggregatePart6_0159 :
    anchorAggregatePartValid6_0159 anchorHistoryChunk0159 := by
  unfold anchorAggregatePartValid6_0159 anchorHistoryChunk0159
  decide

def anchorAggregatePartValid7_0159 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 163712
  | _ => True

theorem anchorAggregatePart7_0159 :
    anchorAggregatePartValid7_0159 anchorHistoryChunk0159 := by
  unfold anchorAggregatePartValid7_0159 anchorHistoryChunk0159
  decide

theorem anchorRange_0159 :
    anchorHistoryChunk0159.IndexedValid squarefreeOracle 5000000 162816 := by
  have h0 := anchorAggregatePart0_0159
  simp only [anchorAggregatePartValid0_0159, anchorHistoryChunk0159] at h0
  have h1 := anchorAggregatePart1_0159
  simp only [anchorAggregatePartValid1_0159, anchorHistoryChunk0159] at h1
  have h2 := anchorAggregatePart2_0159
  simp only [anchorAggregatePartValid2_0159, anchorHistoryChunk0159] at h2
  have h3 := anchorAggregatePart3_0159
  simp only [anchorAggregatePartValid3_0159, anchorHistoryChunk0159] at h3
  have h4 := anchorAggregatePart4_0159
  simp only [anchorAggregatePartValid4_0159, anchorHistoryChunk0159] at h4
  have h5 := anchorAggregatePart5_0159
  simp only [anchorAggregatePartValid5_0159, anchorHistoryChunk0159] at h5
  have h6 := anchorAggregatePart6_0159
  simp only [anchorAggregatePartValid6_0159, anchorHistoryChunk0159] at h6
  have h7 := anchorAggregatePart7_0159
  simp only [anchorAggregatePartValid7_0159, anchorHistoryChunk0159] at h7
  unfold anchorHistoryChunk0159
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
