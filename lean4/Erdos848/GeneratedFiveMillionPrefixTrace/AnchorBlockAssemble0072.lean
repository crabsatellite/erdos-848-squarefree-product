import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0072
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0073
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0074
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0075

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0072, 0073, 0074, 0075 -/

def anchorAggregatePartValid0_0072 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 73728
  | _ => True

theorem anchorAggregatePart0_0072 :
    anchorAggregatePartValid0_0072 anchorHistoryChunk0072 := by
  unfold anchorAggregatePartValid0_0072 anchorHistoryChunk0072
  decide

def anchorAggregatePartValid1_0072 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 73856
  | _ => True

theorem anchorAggregatePart1_0072 :
    anchorAggregatePartValid1_0072 anchorHistoryChunk0072 := by
  unfold anchorAggregatePartValid1_0072 anchorHistoryChunk0072
  decide

def anchorAggregatePartValid2_0072 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 73984
  | _ => True

theorem anchorAggregatePart2_0072 :
    anchorAggregatePartValid2_0072 anchorHistoryChunk0072 := by
  unfold anchorAggregatePartValid2_0072 anchorHistoryChunk0072
  decide

def anchorAggregatePartValid3_0072 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 74112
  | _ => True

theorem anchorAggregatePart3_0072 :
    anchorAggregatePartValid3_0072 anchorHistoryChunk0072 := by
  unfold anchorAggregatePartValid3_0072 anchorHistoryChunk0072
  decide

def anchorAggregatePartValid4_0072 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 74240
  | _ => True

theorem anchorAggregatePart4_0072 :
    anchorAggregatePartValid4_0072 anchorHistoryChunk0072 := by
  unfold anchorAggregatePartValid4_0072 anchorHistoryChunk0072
  decide

def anchorAggregatePartValid5_0072 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 74368
  | _ => True

theorem anchorAggregatePart5_0072 :
    anchorAggregatePartValid5_0072 anchorHistoryChunk0072 := by
  unfold anchorAggregatePartValid5_0072 anchorHistoryChunk0072
  decide

def anchorAggregatePartValid6_0072 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 74496
  | _ => True

theorem anchorAggregatePart6_0072 :
    anchorAggregatePartValid6_0072 anchorHistoryChunk0072 := by
  unfold anchorAggregatePartValid6_0072 anchorHistoryChunk0072
  decide

def anchorAggregatePartValid7_0072 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 74624
  | _ => True

theorem anchorAggregatePart7_0072 :
    anchorAggregatePartValid7_0072 anchorHistoryChunk0072 := by
  unfold anchorAggregatePartValid7_0072 anchorHistoryChunk0072
  decide

theorem anchorRange_0072 :
    anchorHistoryChunk0072.IndexedValid squarefreeOracle 5000000 73728 := by
  have h0 := anchorAggregatePart0_0072
  simp only [anchorAggregatePartValid0_0072, anchorHistoryChunk0072] at h0
  have h1 := anchorAggregatePart1_0072
  simp only [anchorAggregatePartValid1_0072, anchorHistoryChunk0072] at h1
  have h2 := anchorAggregatePart2_0072
  simp only [anchorAggregatePartValid2_0072, anchorHistoryChunk0072] at h2
  have h3 := anchorAggregatePart3_0072
  simp only [anchorAggregatePartValid3_0072, anchorHistoryChunk0072] at h3
  have h4 := anchorAggregatePart4_0072
  simp only [anchorAggregatePartValid4_0072, anchorHistoryChunk0072] at h4
  have h5 := anchorAggregatePart5_0072
  simp only [anchorAggregatePartValid5_0072, anchorHistoryChunk0072] at h5
  have h6 := anchorAggregatePart6_0072
  simp only [anchorAggregatePartValid6_0072, anchorHistoryChunk0072] at h6
  have h7 := anchorAggregatePart7_0072
  simp only [anchorAggregatePartValid7_0072, anchorHistoryChunk0072] at h7
  unfold anchorHistoryChunk0072
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0073 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 74752
  | _ => True

theorem anchorAggregatePart0_0073 :
    anchorAggregatePartValid0_0073 anchorHistoryChunk0073 := by
  unfold anchorAggregatePartValid0_0073 anchorHistoryChunk0073
  decide

def anchorAggregatePartValid1_0073 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 74880
  | _ => True

theorem anchorAggregatePart1_0073 :
    anchorAggregatePartValid1_0073 anchorHistoryChunk0073 := by
  unfold anchorAggregatePartValid1_0073 anchorHistoryChunk0073
  decide

def anchorAggregatePartValid2_0073 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 75008
  | _ => True

theorem anchorAggregatePart2_0073 :
    anchorAggregatePartValid2_0073 anchorHistoryChunk0073 := by
  unfold anchorAggregatePartValid2_0073 anchorHistoryChunk0073
  decide

def anchorAggregatePartValid3_0073 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 75136
  | _ => True

theorem anchorAggregatePart3_0073 :
    anchorAggregatePartValid3_0073 anchorHistoryChunk0073 := by
  unfold anchorAggregatePartValid3_0073 anchorHistoryChunk0073
  decide

def anchorAggregatePartValid4_0073 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 75264
  | _ => True

theorem anchorAggregatePart4_0073 :
    anchorAggregatePartValid4_0073 anchorHistoryChunk0073 := by
  unfold anchorAggregatePartValid4_0073 anchorHistoryChunk0073
  decide

def anchorAggregatePartValid5_0073 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 75392
  | _ => True

theorem anchorAggregatePart5_0073 :
    anchorAggregatePartValid5_0073 anchorHistoryChunk0073 := by
  unfold anchorAggregatePartValid5_0073 anchorHistoryChunk0073
  decide

def anchorAggregatePartValid6_0073 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 75520
  | _ => True

theorem anchorAggregatePart6_0073 :
    anchorAggregatePartValid6_0073 anchorHistoryChunk0073 := by
  unfold anchorAggregatePartValid6_0073 anchorHistoryChunk0073
  decide

def anchorAggregatePartValid7_0073 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 75648
  | _ => True

theorem anchorAggregatePart7_0073 :
    anchorAggregatePartValid7_0073 anchorHistoryChunk0073 := by
  unfold anchorAggregatePartValid7_0073 anchorHistoryChunk0073
  decide

theorem anchorRange_0073 :
    anchorHistoryChunk0073.IndexedValid squarefreeOracle 5000000 74752 := by
  have h0 := anchorAggregatePart0_0073
  simp only [anchorAggregatePartValid0_0073, anchorHistoryChunk0073] at h0
  have h1 := anchorAggregatePart1_0073
  simp only [anchorAggregatePartValid1_0073, anchorHistoryChunk0073] at h1
  have h2 := anchorAggregatePart2_0073
  simp only [anchorAggregatePartValid2_0073, anchorHistoryChunk0073] at h2
  have h3 := anchorAggregatePart3_0073
  simp only [anchorAggregatePartValid3_0073, anchorHistoryChunk0073] at h3
  have h4 := anchorAggregatePart4_0073
  simp only [anchorAggregatePartValid4_0073, anchorHistoryChunk0073] at h4
  have h5 := anchorAggregatePart5_0073
  simp only [anchorAggregatePartValid5_0073, anchorHistoryChunk0073] at h5
  have h6 := anchorAggregatePart6_0073
  simp only [anchorAggregatePartValid6_0073, anchorHistoryChunk0073] at h6
  have h7 := anchorAggregatePart7_0073
  simp only [anchorAggregatePartValid7_0073, anchorHistoryChunk0073] at h7
  unfold anchorHistoryChunk0073
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0074 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 75776
  | _ => True

theorem anchorAggregatePart0_0074 :
    anchorAggregatePartValid0_0074 anchorHistoryChunk0074 := by
  unfold anchorAggregatePartValid0_0074 anchorHistoryChunk0074
  decide

def anchorAggregatePartValid1_0074 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 75904
  | _ => True

theorem anchorAggregatePart1_0074 :
    anchorAggregatePartValid1_0074 anchorHistoryChunk0074 := by
  unfold anchorAggregatePartValid1_0074 anchorHistoryChunk0074
  decide

def anchorAggregatePartValid2_0074 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 76032
  | _ => True

theorem anchorAggregatePart2_0074 :
    anchorAggregatePartValid2_0074 anchorHistoryChunk0074 := by
  unfold anchorAggregatePartValid2_0074 anchorHistoryChunk0074
  decide

def anchorAggregatePartValid3_0074 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 76160
  | _ => True

theorem anchorAggregatePart3_0074 :
    anchorAggregatePartValid3_0074 anchorHistoryChunk0074 := by
  unfold anchorAggregatePartValid3_0074 anchorHistoryChunk0074
  decide

def anchorAggregatePartValid4_0074 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 76288
  | _ => True

theorem anchorAggregatePart4_0074 :
    anchorAggregatePartValid4_0074 anchorHistoryChunk0074 := by
  unfold anchorAggregatePartValid4_0074 anchorHistoryChunk0074
  decide

def anchorAggregatePartValid5_0074 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 76416
  | _ => True

theorem anchorAggregatePart5_0074 :
    anchorAggregatePartValid5_0074 anchorHistoryChunk0074 := by
  unfold anchorAggregatePartValid5_0074 anchorHistoryChunk0074
  decide

def anchorAggregatePartValid6_0074 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 76544
  | _ => True

theorem anchorAggregatePart6_0074 :
    anchorAggregatePartValid6_0074 anchorHistoryChunk0074 := by
  unfold anchorAggregatePartValid6_0074 anchorHistoryChunk0074
  decide

def anchorAggregatePartValid7_0074 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 76672
  | _ => True

theorem anchorAggregatePart7_0074 :
    anchorAggregatePartValid7_0074 anchorHistoryChunk0074 := by
  unfold anchorAggregatePartValid7_0074 anchorHistoryChunk0074
  decide

theorem anchorRange_0074 :
    anchorHistoryChunk0074.IndexedValid squarefreeOracle 5000000 75776 := by
  have h0 := anchorAggregatePart0_0074
  simp only [anchorAggregatePartValid0_0074, anchorHistoryChunk0074] at h0
  have h1 := anchorAggregatePart1_0074
  simp only [anchorAggregatePartValid1_0074, anchorHistoryChunk0074] at h1
  have h2 := anchorAggregatePart2_0074
  simp only [anchorAggregatePartValid2_0074, anchorHistoryChunk0074] at h2
  have h3 := anchorAggregatePart3_0074
  simp only [anchorAggregatePartValid3_0074, anchorHistoryChunk0074] at h3
  have h4 := anchorAggregatePart4_0074
  simp only [anchorAggregatePartValid4_0074, anchorHistoryChunk0074] at h4
  have h5 := anchorAggregatePart5_0074
  simp only [anchorAggregatePartValid5_0074, anchorHistoryChunk0074] at h5
  have h6 := anchorAggregatePart6_0074
  simp only [anchorAggregatePartValid6_0074, anchorHistoryChunk0074] at h6
  have h7 := anchorAggregatePart7_0074
  simp only [anchorAggregatePartValid7_0074, anchorHistoryChunk0074] at h7
  unfold anchorHistoryChunk0074
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0075 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 76800
  | _ => True

theorem anchorAggregatePart0_0075 :
    anchorAggregatePartValid0_0075 anchorHistoryChunk0075 := by
  unfold anchorAggregatePartValid0_0075 anchorHistoryChunk0075
  decide

def anchorAggregatePartValid1_0075 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 76928
  | _ => True

theorem anchorAggregatePart1_0075 :
    anchorAggregatePartValid1_0075 anchorHistoryChunk0075 := by
  unfold anchorAggregatePartValid1_0075 anchorHistoryChunk0075
  decide

def anchorAggregatePartValid2_0075 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 77056
  | _ => True

theorem anchorAggregatePart2_0075 :
    anchorAggregatePartValid2_0075 anchorHistoryChunk0075 := by
  unfold anchorAggregatePartValid2_0075 anchorHistoryChunk0075
  decide

def anchorAggregatePartValid3_0075 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 77184
  | _ => True

theorem anchorAggregatePart3_0075 :
    anchorAggregatePartValid3_0075 anchorHistoryChunk0075 := by
  unfold anchorAggregatePartValid3_0075 anchorHistoryChunk0075
  decide

def anchorAggregatePartValid4_0075 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 77312
  | _ => True

theorem anchorAggregatePart4_0075 :
    anchorAggregatePartValid4_0075 anchorHistoryChunk0075 := by
  unfold anchorAggregatePartValid4_0075 anchorHistoryChunk0075
  decide

def anchorAggregatePartValid5_0075 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 77440
  | _ => True

theorem anchorAggregatePart5_0075 :
    anchorAggregatePartValid5_0075 anchorHistoryChunk0075 := by
  unfold anchorAggregatePartValid5_0075 anchorHistoryChunk0075
  decide

def anchorAggregatePartValid6_0075 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 77568
  | _ => True

theorem anchorAggregatePart6_0075 :
    anchorAggregatePartValid6_0075 anchorHistoryChunk0075 := by
  unfold anchorAggregatePartValid6_0075 anchorHistoryChunk0075
  decide

def anchorAggregatePartValid7_0075 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 77696
  | _ => True

theorem anchorAggregatePart7_0075 :
    anchorAggregatePartValid7_0075 anchorHistoryChunk0075 := by
  unfold anchorAggregatePartValid7_0075 anchorHistoryChunk0075
  decide

theorem anchorRange_0075 :
    anchorHistoryChunk0075.IndexedValid squarefreeOracle 5000000 76800 := by
  have h0 := anchorAggregatePart0_0075
  simp only [anchorAggregatePartValid0_0075, anchorHistoryChunk0075] at h0
  have h1 := anchorAggregatePart1_0075
  simp only [anchorAggregatePartValid1_0075, anchorHistoryChunk0075] at h1
  have h2 := anchorAggregatePart2_0075
  simp only [anchorAggregatePartValid2_0075, anchorHistoryChunk0075] at h2
  have h3 := anchorAggregatePart3_0075
  simp only [anchorAggregatePartValid3_0075, anchorHistoryChunk0075] at h3
  have h4 := anchorAggregatePart4_0075
  simp only [anchorAggregatePartValid4_0075, anchorHistoryChunk0075] at h4
  have h5 := anchorAggregatePart5_0075
  simp only [anchorAggregatePartValid5_0075, anchorHistoryChunk0075] at h5
  have h6 := anchorAggregatePart6_0075
  simp only [anchorAggregatePartValid6_0075, anchorHistoryChunk0075] at h6
  have h7 := anchorAggregatePart7_0075
  simp only [anchorAggregatePartValid7_0075, anchorHistoryChunk0075] at h7
  unfold anchorHistoryChunk0075
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
