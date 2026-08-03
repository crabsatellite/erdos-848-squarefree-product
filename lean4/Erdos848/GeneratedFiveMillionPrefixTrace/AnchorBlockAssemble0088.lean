import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0088
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0089
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0090
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0091

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0088, 0089, 0090, 0091 -/

def anchorAggregatePartValid0_0088 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 90112
  | _ => True

theorem anchorAggregatePart0_0088 :
    anchorAggregatePartValid0_0088 anchorHistoryChunk0088 := by
  unfold anchorAggregatePartValid0_0088 anchorHistoryChunk0088
  decide

def anchorAggregatePartValid1_0088 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 90240
  | _ => True

theorem anchorAggregatePart1_0088 :
    anchorAggregatePartValid1_0088 anchorHistoryChunk0088 := by
  unfold anchorAggregatePartValid1_0088 anchorHistoryChunk0088
  decide

def anchorAggregatePartValid2_0088 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 90368
  | _ => True

theorem anchorAggregatePart2_0088 :
    anchorAggregatePartValid2_0088 anchorHistoryChunk0088 := by
  unfold anchorAggregatePartValid2_0088 anchorHistoryChunk0088
  decide

def anchorAggregatePartValid3_0088 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 90496
  | _ => True

theorem anchorAggregatePart3_0088 :
    anchorAggregatePartValid3_0088 anchorHistoryChunk0088 := by
  unfold anchorAggregatePartValid3_0088 anchorHistoryChunk0088
  decide

def anchorAggregatePartValid4_0088 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 90624
  | _ => True

theorem anchorAggregatePart4_0088 :
    anchorAggregatePartValid4_0088 anchorHistoryChunk0088 := by
  unfold anchorAggregatePartValid4_0088 anchorHistoryChunk0088
  decide

def anchorAggregatePartValid5_0088 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 90752
  | _ => True

theorem anchorAggregatePart5_0088 :
    anchorAggregatePartValid5_0088 anchorHistoryChunk0088 := by
  unfold anchorAggregatePartValid5_0088 anchorHistoryChunk0088
  decide

def anchorAggregatePartValid6_0088 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 90880
  | _ => True

theorem anchorAggregatePart6_0088 :
    anchorAggregatePartValid6_0088 anchorHistoryChunk0088 := by
  unfold anchorAggregatePartValid6_0088 anchorHistoryChunk0088
  decide

def anchorAggregatePartValid7_0088 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 91008
  | _ => True

theorem anchorAggregatePart7_0088 :
    anchorAggregatePartValid7_0088 anchorHistoryChunk0088 := by
  unfold anchorAggregatePartValid7_0088 anchorHistoryChunk0088
  decide

theorem anchorRange_0088 :
    anchorHistoryChunk0088.IndexedValid squarefreeOracle 5000000 90112 := by
  have h0 := anchorAggregatePart0_0088
  simp only [anchorAggregatePartValid0_0088, anchorHistoryChunk0088] at h0
  have h1 := anchorAggregatePart1_0088
  simp only [anchorAggregatePartValid1_0088, anchorHistoryChunk0088] at h1
  have h2 := anchorAggregatePart2_0088
  simp only [anchorAggregatePartValid2_0088, anchorHistoryChunk0088] at h2
  have h3 := anchorAggregatePart3_0088
  simp only [anchorAggregatePartValid3_0088, anchorHistoryChunk0088] at h3
  have h4 := anchorAggregatePart4_0088
  simp only [anchorAggregatePartValid4_0088, anchorHistoryChunk0088] at h4
  have h5 := anchorAggregatePart5_0088
  simp only [anchorAggregatePartValid5_0088, anchorHistoryChunk0088] at h5
  have h6 := anchorAggregatePart6_0088
  simp only [anchorAggregatePartValid6_0088, anchorHistoryChunk0088] at h6
  have h7 := anchorAggregatePart7_0088
  simp only [anchorAggregatePartValid7_0088, anchorHistoryChunk0088] at h7
  unfold anchorHistoryChunk0088
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0089 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 91136
  | _ => True

theorem anchorAggregatePart0_0089 :
    anchorAggregatePartValid0_0089 anchorHistoryChunk0089 := by
  unfold anchorAggregatePartValid0_0089 anchorHistoryChunk0089
  decide

def anchorAggregatePartValid1_0089 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 91264
  | _ => True

theorem anchorAggregatePart1_0089 :
    anchorAggregatePartValid1_0089 anchorHistoryChunk0089 := by
  unfold anchorAggregatePartValid1_0089 anchorHistoryChunk0089
  decide

def anchorAggregatePartValid2_0089 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 91392
  | _ => True

theorem anchorAggregatePart2_0089 :
    anchorAggregatePartValid2_0089 anchorHistoryChunk0089 := by
  unfold anchorAggregatePartValid2_0089 anchorHistoryChunk0089
  decide

def anchorAggregatePartValid3_0089 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 91520
  | _ => True

theorem anchorAggregatePart3_0089 :
    anchorAggregatePartValid3_0089 anchorHistoryChunk0089 := by
  unfold anchorAggregatePartValid3_0089 anchorHistoryChunk0089
  decide

def anchorAggregatePartValid4_0089 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 91648
  | _ => True

theorem anchorAggregatePart4_0089 :
    anchorAggregatePartValid4_0089 anchorHistoryChunk0089 := by
  unfold anchorAggregatePartValid4_0089 anchorHistoryChunk0089
  decide

def anchorAggregatePartValid5_0089 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 91776
  | _ => True

theorem anchorAggregatePart5_0089 :
    anchorAggregatePartValid5_0089 anchorHistoryChunk0089 := by
  unfold anchorAggregatePartValid5_0089 anchorHistoryChunk0089
  decide

def anchorAggregatePartValid6_0089 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 91904
  | _ => True

theorem anchorAggregatePart6_0089 :
    anchorAggregatePartValid6_0089 anchorHistoryChunk0089 := by
  unfold anchorAggregatePartValid6_0089 anchorHistoryChunk0089
  decide

def anchorAggregatePartValid7_0089 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 92032
  | _ => True

theorem anchorAggregatePart7_0089 :
    anchorAggregatePartValid7_0089 anchorHistoryChunk0089 := by
  unfold anchorAggregatePartValid7_0089 anchorHistoryChunk0089
  decide

theorem anchorRange_0089 :
    anchorHistoryChunk0089.IndexedValid squarefreeOracle 5000000 91136 := by
  have h0 := anchorAggregatePart0_0089
  simp only [anchorAggregatePartValid0_0089, anchorHistoryChunk0089] at h0
  have h1 := anchorAggregatePart1_0089
  simp only [anchorAggregatePartValid1_0089, anchorHistoryChunk0089] at h1
  have h2 := anchorAggregatePart2_0089
  simp only [anchorAggregatePartValid2_0089, anchorHistoryChunk0089] at h2
  have h3 := anchorAggregatePart3_0089
  simp only [anchorAggregatePartValid3_0089, anchorHistoryChunk0089] at h3
  have h4 := anchorAggregatePart4_0089
  simp only [anchorAggregatePartValid4_0089, anchorHistoryChunk0089] at h4
  have h5 := anchorAggregatePart5_0089
  simp only [anchorAggregatePartValid5_0089, anchorHistoryChunk0089] at h5
  have h6 := anchorAggregatePart6_0089
  simp only [anchorAggregatePartValid6_0089, anchorHistoryChunk0089] at h6
  have h7 := anchorAggregatePart7_0089
  simp only [anchorAggregatePartValid7_0089, anchorHistoryChunk0089] at h7
  unfold anchorHistoryChunk0089
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0090 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 92160
  | _ => True

theorem anchorAggregatePart0_0090 :
    anchorAggregatePartValid0_0090 anchorHistoryChunk0090 := by
  unfold anchorAggregatePartValid0_0090 anchorHistoryChunk0090
  decide

def anchorAggregatePartValid1_0090 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 92288
  | _ => True

theorem anchorAggregatePart1_0090 :
    anchorAggregatePartValid1_0090 anchorHistoryChunk0090 := by
  unfold anchorAggregatePartValid1_0090 anchorHistoryChunk0090
  decide

def anchorAggregatePartValid2_0090 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 92416
  | _ => True

theorem anchorAggregatePart2_0090 :
    anchorAggregatePartValid2_0090 anchorHistoryChunk0090 := by
  unfold anchorAggregatePartValid2_0090 anchorHistoryChunk0090
  decide

def anchorAggregatePartValid3_0090 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 92544
  | _ => True

theorem anchorAggregatePart3_0090 :
    anchorAggregatePartValid3_0090 anchorHistoryChunk0090 := by
  unfold anchorAggregatePartValid3_0090 anchorHistoryChunk0090
  decide

def anchorAggregatePartValid4_0090 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 92672
  | _ => True

theorem anchorAggregatePart4_0090 :
    anchorAggregatePartValid4_0090 anchorHistoryChunk0090 := by
  unfold anchorAggregatePartValid4_0090 anchorHistoryChunk0090
  decide

def anchorAggregatePartValid5_0090 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 92800
  | _ => True

theorem anchorAggregatePart5_0090 :
    anchorAggregatePartValid5_0090 anchorHistoryChunk0090 := by
  unfold anchorAggregatePartValid5_0090 anchorHistoryChunk0090
  decide

def anchorAggregatePartValid6_0090 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 92928
  | _ => True

theorem anchorAggregatePart6_0090 :
    anchorAggregatePartValid6_0090 anchorHistoryChunk0090 := by
  unfold anchorAggregatePartValid6_0090 anchorHistoryChunk0090
  decide

def anchorAggregatePartValid7_0090 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 93056
  | _ => True

theorem anchorAggregatePart7_0090 :
    anchorAggregatePartValid7_0090 anchorHistoryChunk0090 := by
  unfold anchorAggregatePartValid7_0090 anchorHistoryChunk0090
  decide

theorem anchorRange_0090 :
    anchorHistoryChunk0090.IndexedValid squarefreeOracle 5000000 92160 := by
  have h0 := anchorAggregatePart0_0090
  simp only [anchorAggregatePartValid0_0090, anchorHistoryChunk0090] at h0
  have h1 := anchorAggregatePart1_0090
  simp only [anchorAggregatePartValid1_0090, anchorHistoryChunk0090] at h1
  have h2 := anchorAggregatePart2_0090
  simp only [anchorAggregatePartValid2_0090, anchorHistoryChunk0090] at h2
  have h3 := anchorAggregatePart3_0090
  simp only [anchorAggregatePartValid3_0090, anchorHistoryChunk0090] at h3
  have h4 := anchorAggregatePart4_0090
  simp only [anchorAggregatePartValid4_0090, anchorHistoryChunk0090] at h4
  have h5 := anchorAggregatePart5_0090
  simp only [anchorAggregatePartValid5_0090, anchorHistoryChunk0090] at h5
  have h6 := anchorAggregatePart6_0090
  simp only [anchorAggregatePartValid6_0090, anchorHistoryChunk0090] at h6
  have h7 := anchorAggregatePart7_0090
  simp only [anchorAggregatePartValid7_0090, anchorHistoryChunk0090] at h7
  unfold anchorHistoryChunk0090
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0091 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 93184
  | _ => True

theorem anchorAggregatePart0_0091 :
    anchorAggregatePartValid0_0091 anchorHistoryChunk0091 := by
  unfold anchorAggregatePartValid0_0091 anchorHistoryChunk0091
  decide

def anchorAggregatePartValid1_0091 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 93312
  | _ => True

theorem anchorAggregatePart1_0091 :
    anchorAggregatePartValid1_0091 anchorHistoryChunk0091 := by
  unfold anchorAggregatePartValid1_0091 anchorHistoryChunk0091
  decide

def anchorAggregatePartValid2_0091 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 93440
  | _ => True

theorem anchorAggregatePart2_0091 :
    anchorAggregatePartValid2_0091 anchorHistoryChunk0091 := by
  unfold anchorAggregatePartValid2_0091 anchorHistoryChunk0091
  decide

def anchorAggregatePartValid3_0091 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 93568
  | _ => True

theorem anchorAggregatePart3_0091 :
    anchorAggregatePartValid3_0091 anchorHistoryChunk0091 := by
  unfold anchorAggregatePartValid3_0091 anchorHistoryChunk0091
  decide

def anchorAggregatePartValid4_0091 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 93696
  | _ => True

theorem anchorAggregatePart4_0091 :
    anchorAggregatePartValid4_0091 anchorHistoryChunk0091 := by
  unfold anchorAggregatePartValid4_0091 anchorHistoryChunk0091
  decide

def anchorAggregatePartValid5_0091 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 93824
  | _ => True

theorem anchorAggregatePart5_0091 :
    anchorAggregatePartValid5_0091 anchorHistoryChunk0091 := by
  unfold anchorAggregatePartValid5_0091 anchorHistoryChunk0091
  decide

def anchorAggregatePartValid6_0091 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 93952
  | _ => True

theorem anchorAggregatePart6_0091 :
    anchorAggregatePartValid6_0091 anchorHistoryChunk0091 := by
  unfold anchorAggregatePartValid6_0091 anchorHistoryChunk0091
  decide

def anchorAggregatePartValid7_0091 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 94080
  | _ => True

theorem anchorAggregatePart7_0091 :
    anchorAggregatePartValid7_0091 anchorHistoryChunk0091 := by
  unfold anchorAggregatePartValid7_0091 anchorHistoryChunk0091
  decide

theorem anchorRange_0091 :
    anchorHistoryChunk0091.IndexedValid squarefreeOracle 5000000 93184 := by
  have h0 := anchorAggregatePart0_0091
  simp only [anchorAggregatePartValid0_0091, anchorHistoryChunk0091] at h0
  have h1 := anchorAggregatePart1_0091
  simp only [anchorAggregatePartValid1_0091, anchorHistoryChunk0091] at h1
  have h2 := anchorAggregatePart2_0091
  simp only [anchorAggregatePartValid2_0091, anchorHistoryChunk0091] at h2
  have h3 := anchorAggregatePart3_0091
  simp only [anchorAggregatePartValid3_0091, anchorHistoryChunk0091] at h3
  have h4 := anchorAggregatePart4_0091
  simp only [anchorAggregatePartValid4_0091, anchorHistoryChunk0091] at h4
  have h5 := anchorAggregatePart5_0091
  simp only [anchorAggregatePartValid5_0091, anchorHistoryChunk0091] at h5
  have h6 := anchorAggregatePart6_0091
  simp only [anchorAggregatePartValid6_0091, anchorHistoryChunk0091] at h6
  have h7 := anchorAggregatePart7_0091
  simp only [anchorAggregatePartValid7_0091, anchorHistoryChunk0091] at h7
  unfold anchorHistoryChunk0091
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
