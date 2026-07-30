import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0084
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0085
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0086
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0087

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0084, 0085, 0086, 0087 -/

def anchorAggregatePartValid0_0084 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 86016
  | _ => True

theorem anchorAggregatePart0_0084 :
    anchorAggregatePartValid0_0084 anchorHistoryChunk0084 := by
  unfold anchorAggregatePartValid0_0084 anchorHistoryChunk0084
  decide

def anchorAggregatePartValid1_0084 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 86144
  | _ => True

theorem anchorAggregatePart1_0084 :
    anchorAggregatePartValid1_0084 anchorHistoryChunk0084 := by
  unfold anchorAggregatePartValid1_0084 anchorHistoryChunk0084
  decide

def anchorAggregatePartValid2_0084 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 86272
  | _ => True

theorem anchorAggregatePart2_0084 :
    anchorAggregatePartValid2_0084 anchorHistoryChunk0084 := by
  unfold anchorAggregatePartValid2_0084 anchorHistoryChunk0084
  decide

def anchorAggregatePartValid3_0084 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 86400
  | _ => True

theorem anchorAggregatePart3_0084 :
    anchorAggregatePartValid3_0084 anchorHistoryChunk0084 := by
  unfold anchorAggregatePartValid3_0084 anchorHistoryChunk0084
  decide

def anchorAggregatePartValid4_0084 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 86528
  | _ => True

theorem anchorAggregatePart4_0084 :
    anchorAggregatePartValid4_0084 anchorHistoryChunk0084 := by
  unfold anchorAggregatePartValid4_0084 anchorHistoryChunk0084
  decide

def anchorAggregatePartValid5_0084 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 86656
  | _ => True

theorem anchorAggregatePart5_0084 :
    anchorAggregatePartValid5_0084 anchorHistoryChunk0084 := by
  unfold anchorAggregatePartValid5_0084 anchorHistoryChunk0084
  decide

def anchorAggregatePartValid6_0084 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 86784
  | _ => True

theorem anchorAggregatePart6_0084 :
    anchorAggregatePartValid6_0084 anchorHistoryChunk0084 := by
  unfold anchorAggregatePartValid6_0084 anchorHistoryChunk0084
  decide

def anchorAggregatePartValid7_0084 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 86912
  | _ => True

theorem anchorAggregatePart7_0084 :
    anchorAggregatePartValid7_0084 anchorHistoryChunk0084 := by
  unfold anchorAggregatePartValid7_0084 anchorHistoryChunk0084
  decide

theorem anchorRange_0084 :
    anchorHistoryChunk0084.IndexedValid squarefreeOracle 5000000 86016 := by
  have h0 := anchorAggregatePart0_0084
  simp only [anchorAggregatePartValid0_0084, anchorHistoryChunk0084] at h0
  have h1 := anchorAggregatePart1_0084
  simp only [anchorAggregatePartValid1_0084, anchorHistoryChunk0084] at h1
  have h2 := anchorAggregatePart2_0084
  simp only [anchorAggregatePartValid2_0084, anchorHistoryChunk0084] at h2
  have h3 := anchorAggregatePart3_0084
  simp only [anchorAggregatePartValid3_0084, anchorHistoryChunk0084] at h3
  have h4 := anchorAggregatePart4_0084
  simp only [anchorAggregatePartValid4_0084, anchorHistoryChunk0084] at h4
  have h5 := anchorAggregatePart5_0084
  simp only [anchorAggregatePartValid5_0084, anchorHistoryChunk0084] at h5
  have h6 := anchorAggregatePart6_0084
  simp only [anchorAggregatePartValid6_0084, anchorHistoryChunk0084] at h6
  have h7 := anchorAggregatePart7_0084
  simp only [anchorAggregatePartValid7_0084, anchorHistoryChunk0084] at h7
  unfold anchorHistoryChunk0084
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0085 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 87040
  | _ => True

theorem anchorAggregatePart0_0085 :
    anchorAggregatePartValid0_0085 anchorHistoryChunk0085 := by
  unfold anchorAggregatePartValid0_0085 anchorHistoryChunk0085
  decide

def anchorAggregatePartValid1_0085 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 87168
  | _ => True

theorem anchorAggregatePart1_0085 :
    anchorAggregatePartValid1_0085 anchorHistoryChunk0085 := by
  unfold anchorAggregatePartValid1_0085 anchorHistoryChunk0085
  decide

def anchorAggregatePartValid2_0085 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 87296
  | _ => True

theorem anchorAggregatePart2_0085 :
    anchorAggregatePartValid2_0085 anchorHistoryChunk0085 := by
  unfold anchorAggregatePartValid2_0085 anchorHistoryChunk0085
  decide

def anchorAggregatePartValid3_0085 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 87424
  | _ => True

theorem anchorAggregatePart3_0085 :
    anchorAggregatePartValid3_0085 anchorHistoryChunk0085 := by
  unfold anchorAggregatePartValid3_0085 anchorHistoryChunk0085
  decide

def anchorAggregatePartValid4_0085 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 87552
  | _ => True

theorem anchorAggregatePart4_0085 :
    anchorAggregatePartValid4_0085 anchorHistoryChunk0085 := by
  unfold anchorAggregatePartValid4_0085 anchorHistoryChunk0085
  decide

def anchorAggregatePartValid5_0085 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 87680
  | _ => True

theorem anchorAggregatePart5_0085 :
    anchorAggregatePartValid5_0085 anchorHistoryChunk0085 := by
  unfold anchorAggregatePartValid5_0085 anchorHistoryChunk0085
  decide

def anchorAggregatePartValid6_0085 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 87808
  | _ => True

theorem anchorAggregatePart6_0085 :
    anchorAggregatePartValid6_0085 anchorHistoryChunk0085 := by
  unfold anchorAggregatePartValid6_0085 anchorHistoryChunk0085
  decide

def anchorAggregatePartValid7_0085 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 87936
  | _ => True

theorem anchorAggregatePart7_0085 :
    anchorAggregatePartValid7_0085 anchorHistoryChunk0085 := by
  unfold anchorAggregatePartValid7_0085 anchorHistoryChunk0085
  decide

theorem anchorRange_0085 :
    anchorHistoryChunk0085.IndexedValid squarefreeOracle 5000000 87040 := by
  have h0 := anchorAggregatePart0_0085
  simp only [anchorAggregatePartValid0_0085, anchorHistoryChunk0085] at h0
  have h1 := anchorAggregatePart1_0085
  simp only [anchorAggregatePartValid1_0085, anchorHistoryChunk0085] at h1
  have h2 := anchorAggregatePart2_0085
  simp only [anchorAggregatePartValid2_0085, anchorHistoryChunk0085] at h2
  have h3 := anchorAggregatePart3_0085
  simp only [anchorAggregatePartValid3_0085, anchorHistoryChunk0085] at h3
  have h4 := anchorAggregatePart4_0085
  simp only [anchorAggregatePartValid4_0085, anchorHistoryChunk0085] at h4
  have h5 := anchorAggregatePart5_0085
  simp only [anchorAggregatePartValid5_0085, anchorHistoryChunk0085] at h5
  have h6 := anchorAggregatePart6_0085
  simp only [anchorAggregatePartValid6_0085, anchorHistoryChunk0085] at h6
  have h7 := anchorAggregatePart7_0085
  simp only [anchorAggregatePartValid7_0085, anchorHistoryChunk0085] at h7
  unfold anchorHistoryChunk0085
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0086 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 88064
  | _ => True

theorem anchorAggregatePart0_0086 :
    anchorAggregatePartValid0_0086 anchorHistoryChunk0086 := by
  unfold anchorAggregatePartValid0_0086 anchorHistoryChunk0086
  decide

def anchorAggregatePartValid1_0086 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 88192
  | _ => True

theorem anchorAggregatePart1_0086 :
    anchorAggregatePartValid1_0086 anchorHistoryChunk0086 := by
  unfold anchorAggregatePartValid1_0086 anchorHistoryChunk0086
  decide

def anchorAggregatePartValid2_0086 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 88320
  | _ => True

theorem anchorAggregatePart2_0086 :
    anchorAggregatePartValid2_0086 anchorHistoryChunk0086 := by
  unfold anchorAggregatePartValid2_0086 anchorHistoryChunk0086
  decide

def anchorAggregatePartValid3_0086 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 88448
  | _ => True

theorem anchorAggregatePart3_0086 :
    anchorAggregatePartValid3_0086 anchorHistoryChunk0086 := by
  unfold anchorAggregatePartValid3_0086 anchorHistoryChunk0086
  decide

def anchorAggregatePartValid4_0086 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 88576
  | _ => True

theorem anchorAggregatePart4_0086 :
    anchorAggregatePartValid4_0086 anchorHistoryChunk0086 := by
  unfold anchorAggregatePartValid4_0086 anchorHistoryChunk0086
  decide

def anchorAggregatePartValid5_0086 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 88704
  | _ => True

theorem anchorAggregatePart5_0086 :
    anchorAggregatePartValid5_0086 anchorHistoryChunk0086 := by
  unfold anchorAggregatePartValid5_0086 anchorHistoryChunk0086
  decide

def anchorAggregatePartValid6_0086 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 88832
  | _ => True

theorem anchorAggregatePart6_0086 :
    anchorAggregatePartValid6_0086 anchorHistoryChunk0086 := by
  unfold anchorAggregatePartValid6_0086 anchorHistoryChunk0086
  decide

def anchorAggregatePartValid7_0086 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 88960
  | _ => True

theorem anchorAggregatePart7_0086 :
    anchorAggregatePartValid7_0086 anchorHistoryChunk0086 := by
  unfold anchorAggregatePartValid7_0086 anchorHistoryChunk0086
  decide

theorem anchorRange_0086 :
    anchorHistoryChunk0086.IndexedValid squarefreeOracle 5000000 88064 := by
  have h0 := anchorAggregatePart0_0086
  simp only [anchorAggregatePartValid0_0086, anchorHistoryChunk0086] at h0
  have h1 := anchorAggregatePart1_0086
  simp only [anchorAggregatePartValid1_0086, anchorHistoryChunk0086] at h1
  have h2 := anchorAggregatePart2_0086
  simp only [anchorAggregatePartValid2_0086, anchorHistoryChunk0086] at h2
  have h3 := anchorAggregatePart3_0086
  simp only [anchorAggregatePartValid3_0086, anchorHistoryChunk0086] at h3
  have h4 := anchorAggregatePart4_0086
  simp only [anchorAggregatePartValid4_0086, anchorHistoryChunk0086] at h4
  have h5 := anchorAggregatePart5_0086
  simp only [anchorAggregatePartValid5_0086, anchorHistoryChunk0086] at h5
  have h6 := anchorAggregatePart6_0086
  simp only [anchorAggregatePartValid6_0086, anchorHistoryChunk0086] at h6
  have h7 := anchorAggregatePart7_0086
  simp only [anchorAggregatePartValid7_0086, anchorHistoryChunk0086] at h7
  unfold anchorHistoryChunk0086
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0087 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 89088
  | _ => True

theorem anchorAggregatePart0_0087 :
    anchorAggregatePartValid0_0087 anchorHistoryChunk0087 := by
  unfold anchorAggregatePartValid0_0087 anchorHistoryChunk0087
  decide

def anchorAggregatePartValid1_0087 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 89216
  | _ => True

theorem anchorAggregatePart1_0087 :
    anchorAggregatePartValid1_0087 anchorHistoryChunk0087 := by
  unfold anchorAggregatePartValid1_0087 anchorHistoryChunk0087
  decide

def anchorAggregatePartValid2_0087 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 89344
  | _ => True

theorem anchorAggregatePart2_0087 :
    anchorAggregatePartValid2_0087 anchorHistoryChunk0087 := by
  unfold anchorAggregatePartValid2_0087 anchorHistoryChunk0087
  decide

def anchorAggregatePartValid3_0087 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 89472
  | _ => True

theorem anchorAggregatePart3_0087 :
    anchorAggregatePartValid3_0087 anchorHistoryChunk0087 := by
  unfold anchorAggregatePartValid3_0087 anchorHistoryChunk0087
  decide

def anchorAggregatePartValid4_0087 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 89600
  | _ => True

theorem anchorAggregatePart4_0087 :
    anchorAggregatePartValid4_0087 anchorHistoryChunk0087 := by
  unfold anchorAggregatePartValid4_0087 anchorHistoryChunk0087
  decide

def anchorAggregatePartValid5_0087 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 89728
  | _ => True

theorem anchorAggregatePart5_0087 :
    anchorAggregatePartValid5_0087 anchorHistoryChunk0087 := by
  unfold anchorAggregatePartValid5_0087 anchorHistoryChunk0087
  decide

def anchorAggregatePartValid6_0087 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 89856
  | _ => True

theorem anchorAggregatePart6_0087 :
    anchorAggregatePartValid6_0087 anchorHistoryChunk0087 := by
  unfold anchorAggregatePartValid6_0087 anchorHistoryChunk0087
  decide

def anchorAggregatePartValid7_0087 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 89984
  | _ => True

theorem anchorAggregatePart7_0087 :
    anchorAggregatePartValid7_0087 anchorHistoryChunk0087 := by
  unfold anchorAggregatePartValid7_0087 anchorHistoryChunk0087
  decide

theorem anchorRange_0087 :
    anchorHistoryChunk0087.IndexedValid squarefreeOracle 5000000 89088 := by
  have h0 := anchorAggregatePart0_0087
  simp only [anchorAggregatePartValid0_0087, anchorHistoryChunk0087] at h0
  have h1 := anchorAggregatePart1_0087
  simp only [anchorAggregatePartValid1_0087, anchorHistoryChunk0087] at h1
  have h2 := anchorAggregatePart2_0087
  simp only [anchorAggregatePartValid2_0087, anchorHistoryChunk0087] at h2
  have h3 := anchorAggregatePart3_0087
  simp only [anchorAggregatePartValid3_0087, anchorHistoryChunk0087] at h3
  have h4 := anchorAggregatePart4_0087
  simp only [anchorAggregatePartValid4_0087, anchorHistoryChunk0087] at h4
  have h5 := anchorAggregatePart5_0087
  simp only [anchorAggregatePartValid5_0087, anchorHistoryChunk0087] at h5
  have h6 := anchorAggregatePart6_0087
  simp only [anchorAggregatePartValid6_0087, anchorHistoryChunk0087] at h6
  have h7 := anchorAggregatePart7_0087
  simp only [anchorAggregatePartValid7_0087, anchorHistoryChunk0087] at h7
  unfold anchorHistoryChunk0087
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
