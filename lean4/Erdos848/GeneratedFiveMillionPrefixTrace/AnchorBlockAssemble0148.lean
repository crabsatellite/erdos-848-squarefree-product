import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0148
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0149
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0150
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0151

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0148, 0149, 0150, 0151 -/

def anchorAggregatePartValid0_0148 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 151552
  | _ => True

theorem anchorAggregatePart0_0148 :
    anchorAggregatePartValid0_0148 anchorHistoryChunk0148 := by
  unfold anchorAggregatePartValid0_0148 anchorHistoryChunk0148
  decide

def anchorAggregatePartValid1_0148 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 151680
  | _ => True

theorem anchorAggregatePart1_0148 :
    anchorAggregatePartValid1_0148 anchorHistoryChunk0148 := by
  unfold anchorAggregatePartValid1_0148 anchorHistoryChunk0148
  decide

def anchorAggregatePartValid2_0148 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 151808
  | _ => True

theorem anchorAggregatePart2_0148 :
    anchorAggregatePartValid2_0148 anchorHistoryChunk0148 := by
  unfold anchorAggregatePartValid2_0148 anchorHistoryChunk0148
  decide

def anchorAggregatePartValid3_0148 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 151936
  | _ => True

theorem anchorAggregatePart3_0148 :
    anchorAggregatePartValid3_0148 anchorHistoryChunk0148 := by
  unfold anchorAggregatePartValid3_0148 anchorHistoryChunk0148
  decide

def anchorAggregatePartValid4_0148 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 152064
  | _ => True

theorem anchorAggregatePart4_0148 :
    anchorAggregatePartValid4_0148 anchorHistoryChunk0148 := by
  unfold anchorAggregatePartValid4_0148 anchorHistoryChunk0148
  decide

def anchorAggregatePartValid5_0148 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 152192
  | _ => True

theorem anchorAggregatePart5_0148 :
    anchorAggregatePartValid5_0148 anchorHistoryChunk0148 := by
  unfold anchorAggregatePartValid5_0148 anchorHistoryChunk0148
  decide

def anchorAggregatePartValid6_0148 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 152320
  | _ => True

theorem anchorAggregatePart6_0148 :
    anchorAggregatePartValid6_0148 anchorHistoryChunk0148 := by
  unfold anchorAggregatePartValid6_0148 anchorHistoryChunk0148
  decide

def anchorAggregatePartValid7_0148 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 152448
  | _ => True

theorem anchorAggregatePart7_0148 :
    anchorAggregatePartValid7_0148 anchorHistoryChunk0148 := by
  unfold anchorAggregatePartValid7_0148 anchorHistoryChunk0148
  decide

theorem anchorRange_0148 :
    anchorHistoryChunk0148.IndexedValid squarefreeOracle 5000000 151552 := by
  have h0 := anchorAggregatePart0_0148
  simp only [anchorAggregatePartValid0_0148, anchorHistoryChunk0148] at h0
  have h1 := anchorAggregatePart1_0148
  simp only [anchorAggregatePartValid1_0148, anchorHistoryChunk0148] at h1
  have h2 := anchorAggregatePart2_0148
  simp only [anchorAggregatePartValid2_0148, anchorHistoryChunk0148] at h2
  have h3 := anchorAggregatePart3_0148
  simp only [anchorAggregatePartValid3_0148, anchorHistoryChunk0148] at h3
  have h4 := anchorAggregatePart4_0148
  simp only [anchorAggregatePartValid4_0148, anchorHistoryChunk0148] at h4
  have h5 := anchorAggregatePart5_0148
  simp only [anchorAggregatePartValid5_0148, anchorHistoryChunk0148] at h5
  have h6 := anchorAggregatePart6_0148
  simp only [anchorAggregatePartValid6_0148, anchorHistoryChunk0148] at h6
  have h7 := anchorAggregatePart7_0148
  simp only [anchorAggregatePartValid7_0148, anchorHistoryChunk0148] at h7
  unfold anchorHistoryChunk0148
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0149 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 152576
  | _ => True

theorem anchorAggregatePart0_0149 :
    anchorAggregatePartValid0_0149 anchorHistoryChunk0149 := by
  unfold anchorAggregatePartValid0_0149 anchorHistoryChunk0149
  decide

def anchorAggregatePartValid1_0149 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 152704
  | _ => True

theorem anchorAggregatePart1_0149 :
    anchorAggregatePartValid1_0149 anchorHistoryChunk0149 := by
  unfold anchorAggregatePartValid1_0149 anchorHistoryChunk0149
  decide

def anchorAggregatePartValid2_0149 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 152832
  | _ => True

theorem anchorAggregatePart2_0149 :
    anchorAggregatePartValid2_0149 anchorHistoryChunk0149 := by
  unfold anchorAggregatePartValid2_0149 anchorHistoryChunk0149
  decide

def anchorAggregatePartValid3_0149 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 152960
  | _ => True

theorem anchorAggregatePart3_0149 :
    anchorAggregatePartValid3_0149 anchorHistoryChunk0149 := by
  unfold anchorAggregatePartValid3_0149 anchorHistoryChunk0149
  decide

def anchorAggregatePartValid4_0149 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 153088
  | _ => True

theorem anchorAggregatePart4_0149 :
    anchorAggregatePartValid4_0149 anchorHistoryChunk0149 := by
  unfold anchorAggregatePartValid4_0149 anchorHistoryChunk0149
  decide

def anchorAggregatePartValid5_0149 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 153216
  | _ => True

theorem anchorAggregatePart5_0149 :
    anchorAggregatePartValid5_0149 anchorHistoryChunk0149 := by
  unfold anchorAggregatePartValid5_0149 anchorHistoryChunk0149
  decide

def anchorAggregatePartValid6_0149 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 153344
  | _ => True

theorem anchorAggregatePart6_0149 :
    anchorAggregatePartValid6_0149 anchorHistoryChunk0149 := by
  unfold anchorAggregatePartValid6_0149 anchorHistoryChunk0149
  decide

def anchorAggregatePartValid7_0149 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 153472
  | _ => True

theorem anchorAggregatePart7_0149 :
    anchorAggregatePartValid7_0149 anchorHistoryChunk0149 := by
  unfold anchorAggregatePartValid7_0149 anchorHistoryChunk0149
  decide

theorem anchorRange_0149 :
    anchorHistoryChunk0149.IndexedValid squarefreeOracle 5000000 152576 := by
  have h0 := anchorAggregatePart0_0149
  simp only [anchorAggregatePartValid0_0149, anchorHistoryChunk0149] at h0
  have h1 := anchorAggregatePart1_0149
  simp only [anchorAggregatePartValid1_0149, anchorHistoryChunk0149] at h1
  have h2 := anchorAggregatePart2_0149
  simp only [anchorAggregatePartValid2_0149, anchorHistoryChunk0149] at h2
  have h3 := anchorAggregatePart3_0149
  simp only [anchorAggregatePartValid3_0149, anchorHistoryChunk0149] at h3
  have h4 := anchorAggregatePart4_0149
  simp only [anchorAggregatePartValid4_0149, anchorHistoryChunk0149] at h4
  have h5 := anchorAggregatePart5_0149
  simp only [anchorAggregatePartValid5_0149, anchorHistoryChunk0149] at h5
  have h6 := anchorAggregatePart6_0149
  simp only [anchorAggregatePartValid6_0149, anchorHistoryChunk0149] at h6
  have h7 := anchorAggregatePart7_0149
  simp only [anchorAggregatePartValid7_0149, anchorHistoryChunk0149] at h7
  unfold anchorHistoryChunk0149
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0150 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 153600
  | _ => True

theorem anchorAggregatePart0_0150 :
    anchorAggregatePartValid0_0150 anchorHistoryChunk0150 := by
  unfold anchorAggregatePartValid0_0150 anchorHistoryChunk0150
  decide

def anchorAggregatePartValid1_0150 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 153728
  | _ => True

theorem anchorAggregatePart1_0150 :
    anchorAggregatePartValid1_0150 anchorHistoryChunk0150 := by
  unfold anchorAggregatePartValid1_0150 anchorHistoryChunk0150
  decide

def anchorAggregatePartValid2_0150 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 153856
  | _ => True

theorem anchorAggregatePart2_0150 :
    anchorAggregatePartValid2_0150 anchorHistoryChunk0150 := by
  unfold anchorAggregatePartValid2_0150 anchorHistoryChunk0150
  decide

def anchorAggregatePartValid3_0150 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 153984
  | _ => True

theorem anchorAggregatePart3_0150 :
    anchorAggregatePartValid3_0150 anchorHistoryChunk0150 := by
  unfold anchorAggregatePartValid3_0150 anchorHistoryChunk0150
  decide

def anchorAggregatePartValid4_0150 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 154112
  | _ => True

theorem anchorAggregatePart4_0150 :
    anchorAggregatePartValid4_0150 anchorHistoryChunk0150 := by
  unfold anchorAggregatePartValid4_0150 anchorHistoryChunk0150
  decide

def anchorAggregatePartValid5_0150 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 154240
  | _ => True

theorem anchorAggregatePart5_0150 :
    anchorAggregatePartValid5_0150 anchorHistoryChunk0150 := by
  unfold anchorAggregatePartValid5_0150 anchorHistoryChunk0150
  decide

def anchorAggregatePartValid6_0150 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 154368
  | _ => True

theorem anchorAggregatePart6_0150 :
    anchorAggregatePartValid6_0150 anchorHistoryChunk0150 := by
  unfold anchorAggregatePartValid6_0150 anchorHistoryChunk0150
  decide

def anchorAggregatePartValid7_0150 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 154496
  | _ => True

theorem anchorAggregatePart7_0150 :
    anchorAggregatePartValid7_0150 anchorHistoryChunk0150 := by
  unfold anchorAggregatePartValid7_0150 anchorHistoryChunk0150
  decide

theorem anchorRange_0150 :
    anchorHistoryChunk0150.IndexedValid squarefreeOracle 5000000 153600 := by
  have h0 := anchorAggregatePart0_0150
  simp only [anchorAggregatePartValid0_0150, anchorHistoryChunk0150] at h0
  have h1 := anchorAggregatePart1_0150
  simp only [anchorAggregatePartValid1_0150, anchorHistoryChunk0150] at h1
  have h2 := anchorAggregatePart2_0150
  simp only [anchorAggregatePartValid2_0150, anchorHistoryChunk0150] at h2
  have h3 := anchorAggregatePart3_0150
  simp only [anchorAggregatePartValid3_0150, anchorHistoryChunk0150] at h3
  have h4 := anchorAggregatePart4_0150
  simp only [anchorAggregatePartValid4_0150, anchorHistoryChunk0150] at h4
  have h5 := anchorAggregatePart5_0150
  simp only [anchorAggregatePartValid5_0150, anchorHistoryChunk0150] at h5
  have h6 := anchorAggregatePart6_0150
  simp only [anchorAggregatePartValid6_0150, anchorHistoryChunk0150] at h6
  have h7 := anchorAggregatePart7_0150
  simp only [anchorAggregatePartValid7_0150, anchorHistoryChunk0150] at h7
  unfold anchorHistoryChunk0150
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0151 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 154624
  | _ => True

theorem anchorAggregatePart0_0151 :
    anchorAggregatePartValid0_0151 anchorHistoryChunk0151 := by
  unfold anchorAggregatePartValid0_0151 anchorHistoryChunk0151
  decide

def anchorAggregatePartValid1_0151 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 154752
  | _ => True

theorem anchorAggregatePart1_0151 :
    anchorAggregatePartValid1_0151 anchorHistoryChunk0151 := by
  unfold anchorAggregatePartValid1_0151 anchorHistoryChunk0151
  decide

def anchorAggregatePartValid2_0151 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 154880
  | _ => True

theorem anchorAggregatePart2_0151 :
    anchorAggregatePartValid2_0151 anchorHistoryChunk0151 := by
  unfold anchorAggregatePartValid2_0151 anchorHistoryChunk0151
  decide

def anchorAggregatePartValid3_0151 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 155008
  | _ => True

theorem anchorAggregatePart3_0151 :
    anchorAggregatePartValid3_0151 anchorHistoryChunk0151 := by
  unfold anchorAggregatePartValid3_0151 anchorHistoryChunk0151
  decide

def anchorAggregatePartValid4_0151 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 155136
  | _ => True

theorem anchorAggregatePart4_0151 :
    anchorAggregatePartValid4_0151 anchorHistoryChunk0151 := by
  unfold anchorAggregatePartValid4_0151 anchorHistoryChunk0151
  decide

def anchorAggregatePartValid5_0151 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 155264
  | _ => True

theorem anchorAggregatePart5_0151 :
    anchorAggregatePartValid5_0151 anchorHistoryChunk0151 := by
  unfold anchorAggregatePartValid5_0151 anchorHistoryChunk0151
  decide

def anchorAggregatePartValid6_0151 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 155392
  | _ => True

theorem anchorAggregatePart6_0151 :
    anchorAggregatePartValid6_0151 anchorHistoryChunk0151 := by
  unfold anchorAggregatePartValid6_0151 anchorHistoryChunk0151
  decide

def anchorAggregatePartValid7_0151 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 155520
  | _ => True

theorem anchorAggregatePart7_0151 :
    anchorAggregatePartValid7_0151 anchorHistoryChunk0151 := by
  unfold anchorAggregatePartValid7_0151 anchorHistoryChunk0151
  decide

theorem anchorRange_0151 :
    anchorHistoryChunk0151.IndexedValid squarefreeOracle 5000000 154624 := by
  have h0 := anchorAggregatePart0_0151
  simp only [anchorAggregatePartValid0_0151, anchorHistoryChunk0151] at h0
  have h1 := anchorAggregatePart1_0151
  simp only [anchorAggregatePartValid1_0151, anchorHistoryChunk0151] at h1
  have h2 := anchorAggregatePart2_0151
  simp only [anchorAggregatePartValid2_0151, anchorHistoryChunk0151] at h2
  have h3 := anchorAggregatePart3_0151
  simp only [anchorAggregatePartValid3_0151, anchorHistoryChunk0151] at h3
  have h4 := anchorAggregatePart4_0151
  simp only [anchorAggregatePartValid4_0151, anchorHistoryChunk0151] at h4
  have h5 := anchorAggregatePart5_0151
  simp only [anchorAggregatePartValid5_0151, anchorHistoryChunk0151] at h5
  have h6 := anchorAggregatePart6_0151
  simp only [anchorAggregatePartValid6_0151, anchorHistoryChunk0151] at h6
  have h7 := anchorAggregatePart7_0151
  simp only [anchorAggregatePartValid7_0151, anchorHistoryChunk0151] at h7
  unfold anchorHistoryChunk0151
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
