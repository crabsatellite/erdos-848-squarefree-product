import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0040
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0041
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0042
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0043

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0040, 0041, 0042, 0043 -/

def anchorAggregatePartValid0_0040 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 40960
  | _ => True

theorem anchorAggregatePart0_0040 :
    anchorAggregatePartValid0_0040 anchorHistoryChunk0040 := by
  unfold anchorAggregatePartValid0_0040 anchorHistoryChunk0040
  decide

def anchorAggregatePartValid1_0040 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 41088
  | _ => True

theorem anchorAggregatePart1_0040 :
    anchorAggregatePartValid1_0040 anchorHistoryChunk0040 := by
  unfold anchorAggregatePartValid1_0040 anchorHistoryChunk0040
  decide

def anchorAggregatePartValid2_0040 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 41216
  | _ => True

theorem anchorAggregatePart2_0040 :
    anchorAggregatePartValid2_0040 anchorHistoryChunk0040 := by
  unfold anchorAggregatePartValid2_0040 anchorHistoryChunk0040
  decide

def anchorAggregatePartValid3_0040 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 41344
  | _ => True

theorem anchorAggregatePart3_0040 :
    anchorAggregatePartValid3_0040 anchorHistoryChunk0040 := by
  unfold anchorAggregatePartValid3_0040 anchorHistoryChunk0040
  decide

def anchorAggregatePartValid4_0040 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 41472
  | _ => True

theorem anchorAggregatePart4_0040 :
    anchorAggregatePartValid4_0040 anchorHistoryChunk0040 := by
  unfold anchorAggregatePartValid4_0040 anchorHistoryChunk0040
  decide

def anchorAggregatePartValid5_0040 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 41600
  | _ => True

theorem anchorAggregatePart5_0040 :
    anchorAggregatePartValid5_0040 anchorHistoryChunk0040 := by
  unfold anchorAggregatePartValid5_0040 anchorHistoryChunk0040
  decide

def anchorAggregatePartValid6_0040 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 41728
  | _ => True

theorem anchorAggregatePart6_0040 :
    anchorAggregatePartValid6_0040 anchorHistoryChunk0040 := by
  unfold anchorAggregatePartValid6_0040 anchorHistoryChunk0040
  decide

def anchorAggregatePartValid7_0040 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 41856
  | _ => True

theorem anchorAggregatePart7_0040 :
    anchorAggregatePartValid7_0040 anchorHistoryChunk0040 := by
  unfold anchorAggregatePartValid7_0040 anchorHistoryChunk0040
  decide

theorem anchorRange_0040 :
    anchorHistoryChunk0040.IndexedValid squarefreeOracle 5000000 40960 := by
  have h0 := anchorAggregatePart0_0040
  simp only [anchorAggregatePartValid0_0040, anchorHistoryChunk0040] at h0
  have h1 := anchorAggregatePart1_0040
  simp only [anchorAggregatePartValid1_0040, anchorHistoryChunk0040] at h1
  have h2 := anchorAggregatePart2_0040
  simp only [anchorAggregatePartValid2_0040, anchorHistoryChunk0040] at h2
  have h3 := anchorAggregatePart3_0040
  simp only [anchorAggregatePartValid3_0040, anchorHistoryChunk0040] at h3
  have h4 := anchorAggregatePart4_0040
  simp only [anchorAggregatePartValid4_0040, anchorHistoryChunk0040] at h4
  have h5 := anchorAggregatePart5_0040
  simp only [anchorAggregatePartValid5_0040, anchorHistoryChunk0040] at h5
  have h6 := anchorAggregatePart6_0040
  simp only [anchorAggregatePartValid6_0040, anchorHistoryChunk0040] at h6
  have h7 := anchorAggregatePart7_0040
  simp only [anchorAggregatePartValid7_0040, anchorHistoryChunk0040] at h7
  unfold anchorHistoryChunk0040
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0041 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 41984
  | _ => True

theorem anchorAggregatePart0_0041 :
    anchorAggregatePartValid0_0041 anchorHistoryChunk0041 := by
  unfold anchorAggregatePartValid0_0041 anchorHistoryChunk0041
  decide

def anchorAggregatePartValid1_0041 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 42112
  | _ => True

theorem anchorAggregatePart1_0041 :
    anchorAggregatePartValid1_0041 anchorHistoryChunk0041 := by
  unfold anchorAggregatePartValid1_0041 anchorHistoryChunk0041
  decide

def anchorAggregatePartValid2_0041 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 42240
  | _ => True

theorem anchorAggregatePart2_0041 :
    anchorAggregatePartValid2_0041 anchorHistoryChunk0041 := by
  unfold anchorAggregatePartValid2_0041 anchorHistoryChunk0041
  decide

def anchorAggregatePartValid3_0041 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 42368
  | _ => True

theorem anchorAggregatePart3_0041 :
    anchorAggregatePartValid3_0041 anchorHistoryChunk0041 := by
  unfold anchorAggregatePartValid3_0041 anchorHistoryChunk0041
  decide

def anchorAggregatePartValid4_0041 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 42496
  | _ => True

theorem anchorAggregatePart4_0041 :
    anchorAggregatePartValid4_0041 anchorHistoryChunk0041 := by
  unfold anchorAggregatePartValid4_0041 anchorHistoryChunk0041
  decide

def anchorAggregatePartValid5_0041 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 42624
  | _ => True

theorem anchorAggregatePart5_0041 :
    anchorAggregatePartValid5_0041 anchorHistoryChunk0041 := by
  unfold anchorAggregatePartValid5_0041 anchorHistoryChunk0041
  decide

def anchorAggregatePartValid6_0041 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 42752
  | _ => True

theorem anchorAggregatePart6_0041 :
    anchorAggregatePartValid6_0041 anchorHistoryChunk0041 := by
  unfold anchorAggregatePartValid6_0041 anchorHistoryChunk0041
  decide

def anchorAggregatePartValid7_0041 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 42880
  | _ => True

theorem anchorAggregatePart7_0041 :
    anchorAggregatePartValid7_0041 anchorHistoryChunk0041 := by
  unfold anchorAggregatePartValid7_0041 anchorHistoryChunk0041
  decide

theorem anchorRange_0041 :
    anchorHistoryChunk0041.IndexedValid squarefreeOracle 5000000 41984 := by
  have h0 := anchorAggregatePart0_0041
  simp only [anchorAggregatePartValid0_0041, anchorHistoryChunk0041] at h0
  have h1 := anchorAggregatePart1_0041
  simp only [anchorAggregatePartValid1_0041, anchorHistoryChunk0041] at h1
  have h2 := anchorAggregatePart2_0041
  simp only [anchorAggregatePartValid2_0041, anchorHistoryChunk0041] at h2
  have h3 := anchorAggregatePart3_0041
  simp only [anchorAggregatePartValid3_0041, anchorHistoryChunk0041] at h3
  have h4 := anchorAggregatePart4_0041
  simp only [anchorAggregatePartValid4_0041, anchorHistoryChunk0041] at h4
  have h5 := anchorAggregatePart5_0041
  simp only [anchorAggregatePartValid5_0041, anchorHistoryChunk0041] at h5
  have h6 := anchorAggregatePart6_0041
  simp only [anchorAggregatePartValid6_0041, anchorHistoryChunk0041] at h6
  have h7 := anchorAggregatePart7_0041
  simp only [anchorAggregatePartValid7_0041, anchorHistoryChunk0041] at h7
  unfold anchorHistoryChunk0041
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0042 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 43008
  | _ => True

theorem anchorAggregatePart0_0042 :
    anchorAggregatePartValid0_0042 anchorHistoryChunk0042 := by
  unfold anchorAggregatePartValid0_0042 anchorHistoryChunk0042
  decide

def anchorAggregatePartValid1_0042 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 43136
  | _ => True

theorem anchorAggregatePart1_0042 :
    anchorAggregatePartValid1_0042 anchorHistoryChunk0042 := by
  unfold anchorAggregatePartValid1_0042 anchorHistoryChunk0042
  decide

def anchorAggregatePartValid2_0042 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 43264
  | _ => True

theorem anchorAggregatePart2_0042 :
    anchorAggregatePartValid2_0042 anchorHistoryChunk0042 := by
  unfold anchorAggregatePartValid2_0042 anchorHistoryChunk0042
  decide

def anchorAggregatePartValid3_0042 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 43392
  | _ => True

theorem anchorAggregatePart3_0042 :
    anchorAggregatePartValid3_0042 anchorHistoryChunk0042 := by
  unfold anchorAggregatePartValid3_0042 anchorHistoryChunk0042
  decide

def anchorAggregatePartValid4_0042 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 43520
  | _ => True

theorem anchorAggregatePart4_0042 :
    anchorAggregatePartValid4_0042 anchorHistoryChunk0042 := by
  unfold anchorAggregatePartValid4_0042 anchorHistoryChunk0042
  decide

def anchorAggregatePartValid5_0042 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 43648
  | _ => True

theorem anchorAggregatePart5_0042 :
    anchorAggregatePartValid5_0042 anchorHistoryChunk0042 := by
  unfold anchorAggregatePartValid5_0042 anchorHistoryChunk0042
  decide

def anchorAggregatePartValid6_0042 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 43776
  | _ => True

theorem anchorAggregatePart6_0042 :
    anchorAggregatePartValid6_0042 anchorHistoryChunk0042 := by
  unfold anchorAggregatePartValid6_0042 anchorHistoryChunk0042
  decide

def anchorAggregatePartValid7_0042 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 43904
  | _ => True

theorem anchorAggregatePart7_0042 :
    anchorAggregatePartValid7_0042 anchorHistoryChunk0042 := by
  unfold anchorAggregatePartValid7_0042 anchorHistoryChunk0042
  decide

theorem anchorRange_0042 :
    anchorHistoryChunk0042.IndexedValid squarefreeOracle 5000000 43008 := by
  have h0 := anchorAggregatePart0_0042
  simp only [anchorAggregatePartValid0_0042, anchorHistoryChunk0042] at h0
  have h1 := anchorAggregatePart1_0042
  simp only [anchorAggregatePartValid1_0042, anchorHistoryChunk0042] at h1
  have h2 := anchorAggregatePart2_0042
  simp only [anchorAggregatePartValid2_0042, anchorHistoryChunk0042] at h2
  have h3 := anchorAggregatePart3_0042
  simp only [anchorAggregatePartValid3_0042, anchorHistoryChunk0042] at h3
  have h4 := anchorAggregatePart4_0042
  simp only [anchorAggregatePartValid4_0042, anchorHistoryChunk0042] at h4
  have h5 := anchorAggregatePart5_0042
  simp only [anchorAggregatePartValid5_0042, anchorHistoryChunk0042] at h5
  have h6 := anchorAggregatePart6_0042
  simp only [anchorAggregatePartValid6_0042, anchorHistoryChunk0042] at h6
  have h7 := anchorAggregatePart7_0042
  simp only [anchorAggregatePartValid7_0042, anchorHistoryChunk0042] at h7
  unfold anchorHistoryChunk0042
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0043 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 44032
  | _ => True

theorem anchorAggregatePart0_0043 :
    anchorAggregatePartValid0_0043 anchorHistoryChunk0043 := by
  unfold anchorAggregatePartValid0_0043 anchorHistoryChunk0043
  decide

def anchorAggregatePartValid1_0043 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 44160
  | _ => True

theorem anchorAggregatePart1_0043 :
    anchorAggregatePartValid1_0043 anchorHistoryChunk0043 := by
  unfold anchorAggregatePartValid1_0043 anchorHistoryChunk0043
  decide

def anchorAggregatePartValid2_0043 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 44288
  | _ => True

theorem anchorAggregatePart2_0043 :
    anchorAggregatePartValid2_0043 anchorHistoryChunk0043 := by
  unfold anchorAggregatePartValid2_0043 anchorHistoryChunk0043
  decide

def anchorAggregatePartValid3_0043 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 44416
  | _ => True

theorem anchorAggregatePart3_0043 :
    anchorAggregatePartValid3_0043 anchorHistoryChunk0043 := by
  unfold anchorAggregatePartValid3_0043 anchorHistoryChunk0043
  decide

def anchorAggregatePartValid4_0043 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 44544
  | _ => True

theorem anchorAggregatePart4_0043 :
    anchorAggregatePartValid4_0043 anchorHistoryChunk0043 := by
  unfold anchorAggregatePartValid4_0043 anchorHistoryChunk0043
  decide

def anchorAggregatePartValid5_0043 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 44672
  | _ => True

theorem anchorAggregatePart5_0043 :
    anchorAggregatePartValid5_0043 anchorHistoryChunk0043 := by
  unfold anchorAggregatePartValid5_0043 anchorHistoryChunk0043
  decide

def anchorAggregatePartValid6_0043 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 44800
  | _ => True

theorem anchorAggregatePart6_0043 :
    anchorAggregatePartValid6_0043 anchorHistoryChunk0043 := by
  unfold anchorAggregatePartValid6_0043 anchorHistoryChunk0043
  decide

def anchorAggregatePartValid7_0043 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 44928
  | _ => True

theorem anchorAggregatePart7_0043 :
    anchorAggregatePartValid7_0043 anchorHistoryChunk0043 := by
  unfold anchorAggregatePartValid7_0043 anchorHistoryChunk0043
  decide

theorem anchorRange_0043 :
    anchorHistoryChunk0043.IndexedValid squarefreeOracle 5000000 44032 := by
  have h0 := anchorAggregatePart0_0043
  simp only [anchorAggregatePartValid0_0043, anchorHistoryChunk0043] at h0
  have h1 := anchorAggregatePart1_0043
  simp only [anchorAggregatePartValid1_0043, anchorHistoryChunk0043] at h1
  have h2 := anchorAggregatePart2_0043
  simp only [anchorAggregatePartValid2_0043, anchorHistoryChunk0043] at h2
  have h3 := anchorAggregatePart3_0043
  simp only [anchorAggregatePartValid3_0043, anchorHistoryChunk0043] at h3
  have h4 := anchorAggregatePart4_0043
  simp only [anchorAggregatePartValid4_0043, anchorHistoryChunk0043] at h4
  have h5 := anchorAggregatePart5_0043
  simp only [anchorAggregatePartValid5_0043, anchorHistoryChunk0043] at h5
  have h6 := anchorAggregatePart6_0043
  simp only [anchorAggregatePartValid6_0043, anchorHistoryChunk0043] at h6
  have h7 := anchorAggregatePart7_0043
  simp only [anchorAggregatePartValid7_0043, anchorHistoryChunk0043] at h7
  unfold anchorHistoryChunk0043
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
