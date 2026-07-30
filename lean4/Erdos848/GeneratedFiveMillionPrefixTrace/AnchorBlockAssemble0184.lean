import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0184
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0185
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0186
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0187

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0184, 0185, 0186, 0187 -/

def anchorAggregatePartValid0_0184 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 188416
  | _ => True

theorem anchorAggregatePart0_0184 :
    anchorAggregatePartValid0_0184 anchorHistoryChunk0184 := by
  unfold anchorAggregatePartValid0_0184 anchorHistoryChunk0184
  decide

def anchorAggregatePartValid1_0184 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 188544
  | _ => True

theorem anchorAggregatePart1_0184 :
    anchorAggregatePartValid1_0184 anchorHistoryChunk0184 := by
  unfold anchorAggregatePartValid1_0184 anchorHistoryChunk0184
  decide

def anchorAggregatePartValid2_0184 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 188672
  | _ => True

theorem anchorAggregatePart2_0184 :
    anchorAggregatePartValid2_0184 anchorHistoryChunk0184 := by
  unfold anchorAggregatePartValid2_0184 anchorHistoryChunk0184
  decide

def anchorAggregatePartValid3_0184 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 188800
  | _ => True

theorem anchorAggregatePart3_0184 :
    anchorAggregatePartValid3_0184 anchorHistoryChunk0184 := by
  unfold anchorAggregatePartValid3_0184 anchorHistoryChunk0184
  decide

def anchorAggregatePartValid4_0184 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 188928
  | _ => True

theorem anchorAggregatePart4_0184 :
    anchorAggregatePartValid4_0184 anchorHistoryChunk0184 := by
  unfold anchorAggregatePartValid4_0184 anchorHistoryChunk0184
  decide

def anchorAggregatePartValid5_0184 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 189056
  | _ => True

theorem anchorAggregatePart5_0184 :
    anchorAggregatePartValid5_0184 anchorHistoryChunk0184 := by
  unfold anchorAggregatePartValid5_0184 anchorHistoryChunk0184
  decide

def anchorAggregatePartValid6_0184 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 189184
  | _ => True

theorem anchorAggregatePart6_0184 :
    anchorAggregatePartValid6_0184 anchorHistoryChunk0184 := by
  unfold anchorAggregatePartValid6_0184 anchorHistoryChunk0184
  decide

def anchorAggregatePartValid7_0184 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 189312
  | _ => True

theorem anchorAggregatePart7_0184 :
    anchorAggregatePartValid7_0184 anchorHistoryChunk0184 := by
  unfold anchorAggregatePartValid7_0184 anchorHistoryChunk0184
  decide

theorem anchorRange_0184 :
    anchorHistoryChunk0184.IndexedValid squarefreeOracle 5000000 188416 := by
  have h0 := anchorAggregatePart0_0184
  simp only [anchorAggregatePartValid0_0184, anchorHistoryChunk0184] at h0
  have h1 := anchorAggregatePart1_0184
  simp only [anchorAggregatePartValid1_0184, anchorHistoryChunk0184] at h1
  have h2 := anchorAggregatePart2_0184
  simp only [anchorAggregatePartValid2_0184, anchorHistoryChunk0184] at h2
  have h3 := anchorAggregatePart3_0184
  simp only [anchorAggregatePartValid3_0184, anchorHistoryChunk0184] at h3
  have h4 := anchorAggregatePart4_0184
  simp only [anchorAggregatePartValid4_0184, anchorHistoryChunk0184] at h4
  have h5 := anchorAggregatePart5_0184
  simp only [anchorAggregatePartValid5_0184, anchorHistoryChunk0184] at h5
  have h6 := anchorAggregatePart6_0184
  simp only [anchorAggregatePartValid6_0184, anchorHistoryChunk0184] at h6
  have h7 := anchorAggregatePart7_0184
  simp only [anchorAggregatePartValid7_0184, anchorHistoryChunk0184] at h7
  unfold anchorHistoryChunk0184
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0185 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 189440
  | _ => True

theorem anchorAggregatePart0_0185 :
    anchorAggregatePartValid0_0185 anchorHistoryChunk0185 := by
  unfold anchorAggregatePartValid0_0185 anchorHistoryChunk0185
  decide

def anchorAggregatePartValid1_0185 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 189568
  | _ => True

theorem anchorAggregatePart1_0185 :
    anchorAggregatePartValid1_0185 anchorHistoryChunk0185 := by
  unfold anchorAggregatePartValid1_0185 anchorHistoryChunk0185
  decide

def anchorAggregatePartValid2_0185 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 189696
  | _ => True

theorem anchorAggregatePart2_0185 :
    anchorAggregatePartValid2_0185 anchorHistoryChunk0185 := by
  unfold anchorAggregatePartValid2_0185 anchorHistoryChunk0185
  decide

def anchorAggregatePartValid3_0185 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 189824
  | _ => True

theorem anchorAggregatePart3_0185 :
    anchorAggregatePartValid3_0185 anchorHistoryChunk0185 := by
  unfold anchorAggregatePartValid3_0185 anchorHistoryChunk0185
  decide

def anchorAggregatePartValid4_0185 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 189952
  | _ => True

theorem anchorAggregatePart4_0185 :
    anchorAggregatePartValid4_0185 anchorHistoryChunk0185 := by
  unfold anchorAggregatePartValid4_0185 anchorHistoryChunk0185
  decide

def anchorAggregatePartValid5_0185 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 190080
  | _ => True

theorem anchorAggregatePart5_0185 :
    anchorAggregatePartValid5_0185 anchorHistoryChunk0185 := by
  unfold anchorAggregatePartValid5_0185 anchorHistoryChunk0185
  decide

def anchorAggregatePartValid6_0185 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 190208
  | _ => True

theorem anchorAggregatePart6_0185 :
    anchorAggregatePartValid6_0185 anchorHistoryChunk0185 := by
  unfold anchorAggregatePartValid6_0185 anchorHistoryChunk0185
  decide

def anchorAggregatePartValid7_0185 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 190336
  | _ => True

theorem anchorAggregatePart7_0185 :
    anchorAggregatePartValid7_0185 anchorHistoryChunk0185 := by
  unfold anchorAggregatePartValid7_0185 anchorHistoryChunk0185
  decide

theorem anchorRange_0185 :
    anchorHistoryChunk0185.IndexedValid squarefreeOracle 5000000 189440 := by
  have h0 := anchorAggregatePart0_0185
  simp only [anchorAggregatePartValid0_0185, anchorHistoryChunk0185] at h0
  have h1 := anchorAggregatePart1_0185
  simp only [anchorAggregatePartValid1_0185, anchorHistoryChunk0185] at h1
  have h2 := anchorAggregatePart2_0185
  simp only [anchorAggregatePartValid2_0185, anchorHistoryChunk0185] at h2
  have h3 := anchorAggregatePart3_0185
  simp only [anchorAggregatePartValid3_0185, anchorHistoryChunk0185] at h3
  have h4 := anchorAggregatePart4_0185
  simp only [anchorAggregatePartValid4_0185, anchorHistoryChunk0185] at h4
  have h5 := anchorAggregatePart5_0185
  simp only [anchorAggregatePartValid5_0185, anchorHistoryChunk0185] at h5
  have h6 := anchorAggregatePart6_0185
  simp only [anchorAggregatePartValid6_0185, anchorHistoryChunk0185] at h6
  have h7 := anchorAggregatePart7_0185
  simp only [anchorAggregatePartValid7_0185, anchorHistoryChunk0185] at h7
  unfold anchorHistoryChunk0185
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0186 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 190464
  | _ => True

theorem anchorAggregatePart0_0186 :
    anchorAggregatePartValid0_0186 anchorHistoryChunk0186 := by
  unfold anchorAggregatePartValid0_0186 anchorHistoryChunk0186
  decide

def anchorAggregatePartValid1_0186 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 190592
  | _ => True

theorem anchorAggregatePart1_0186 :
    anchorAggregatePartValid1_0186 anchorHistoryChunk0186 := by
  unfold anchorAggregatePartValid1_0186 anchorHistoryChunk0186
  decide

def anchorAggregatePartValid2_0186 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 190720
  | _ => True

theorem anchorAggregatePart2_0186 :
    anchorAggregatePartValid2_0186 anchorHistoryChunk0186 := by
  unfold anchorAggregatePartValid2_0186 anchorHistoryChunk0186
  decide

def anchorAggregatePartValid3_0186 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 190848
  | _ => True

theorem anchorAggregatePart3_0186 :
    anchorAggregatePartValid3_0186 anchorHistoryChunk0186 := by
  unfold anchorAggregatePartValid3_0186 anchorHistoryChunk0186
  decide

def anchorAggregatePartValid4_0186 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 190976
  | _ => True

theorem anchorAggregatePart4_0186 :
    anchorAggregatePartValid4_0186 anchorHistoryChunk0186 := by
  unfold anchorAggregatePartValid4_0186 anchorHistoryChunk0186
  decide

def anchorAggregatePartValid5_0186 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 191104
  | _ => True

theorem anchorAggregatePart5_0186 :
    anchorAggregatePartValid5_0186 anchorHistoryChunk0186 := by
  unfold anchorAggregatePartValid5_0186 anchorHistoryChunk0186
  decide

def anchorAggregatePartValid6_0186 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 191232
  | _ => True

theorem anchorAggregatePart6_0186 :
    anchorAggregatePartValid6_0186 anchorHistoryChunk0186 := by
  unfold anchorAggregatePartValid6_0186 anchorHistoryChunk0186
  decide

def anchorAggregatePartValid7_0186 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 191360
  | _ => True

theorem anchorAggregatePart7_0186 :
    anchorAggregatePartValid7_0186 anchorHistoryChunk0186 := by
  unfold anchorAggregatePartValid7_0186 anchorHistoryChunk0186
  decide

theorem anchorRange_0186 :
    anchorHistoryChunk0186.IndexedValid squarefreeOracle 5000000 190464 := by
  have h0 := anchorAggregatePart0_0186
  simp only [anchorAggregatePartValid0_0186, anchorHistoryChunk0186] at h0
  have h1 := anchorAggregatePart1_0186
  simp only [anchorAggregatePartValid1_0186, anchorHistoryChunk0186] at h1
  have h2 := anchorAggregatePart2_0186
  simp only [anchorAggregatePartValid2_0186, anchorHistoryChunk0186] at h2
  have h3 := anchorAggregatePart3_0186
  simp only [anchorAggregatePartValid3_0186, anchorHistoryChunk0186] at h3
  have h4 := anchorAggregatePart4_0186
  simp only [anchorAggregatePartValid4_0186, anchorHistoryChunk0186] at h4
  have h5 := anchorAggregatePart5_0186
  simp only [anchorAggregatePartValid5_0186, anchorHistoryChunk0186] at h5
  have h6 := anchorAggregatePart6_0186
  simp only [anchorAggregatePartValid6_0186, anchorHistoryChunk0186] at h6
  have h7 := anchorAggregatePart7_0186
  simp only [anchorAggregatePartValid7_0186, anchorHistoryChunk0186] at h7
  unfold anchorHistoryChunk0186
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0187 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 191488
  | _ => True

theorem anchorAggregatePart0_0187 :
    anchorAggregatePartValid0_0187 anchorHistoryChunk0187 := by
  unfold anchorAggregatePartValid0_0187 anchorHistoryChunk0187
  decide

def anchorAggregatePartValid1_0187 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 191616
  | _ => True

theorem anchorAggregatePart1_0187 :
    anchorAggregatePartValid1_0187 anchorHistoryChunk0187 := by
  unfold anchorAggregatePartValid1_0187 anchorHistoryChunk0187
  decide

def anchorAggregatePartValid2_0187 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 191744
  | _ => True

theorem anchorAggregatePart2_0187 :
    anchorAggregatePartValid2_0187 anchorHistoryChunk0187 := by
  unfold anchorAggregatePartValid2_0187 anchorHistoryChunk0187
  decide

def anchorAggregatePartValid3_0187 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 191872
  | _ => True

theorem anchorAggregatePart3_0187 :
    anchorAggregatePartValid3_0187 anchorHistoryChunk0187 := by
  unfold anchorAggregatePartValid3_0187 anchorHistoryChunk0187
  decide

def anchorAggregatePartValid4_0187 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 192000
  | _ => True

theorem anchorAggregatePart4_0187 :
    anchorAggregatePartValid4_0187 anchorHistoryChunk0187 := by
  unfold anchorAggregatePartValid4_0187 anchorHistoryChunk0187
  decide

def anchorAggregatePartValid5_0187 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 192128
  | _ => True

theorem anchorAggregatePart5_0187 :
    anchorAggregatePartValid5_0187 anchorHistoryChunk0187 := by
  unfold anchorAggregatePartValid5_0187 anchorHistoryChunk0187
  decide

def anchorAggregatePartValid6_0187 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 192256
  | _ => True

theorem anchorAggregatePart6_0187 :
    anchorAggregatePartValid6_0187 anchorHistoryChunk0187 := by
  unfold anchorAggregatePartValid6_0187 anchorHistoryChunk0187
  decide

def anchorAggregatePartValid7_0187 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 192384
  | _ => True

theorem anchorAggregatePart7_0187 :
    anchorAggregatePartValid7_0187 anchorHistoryChunk0187 := by
  unfold anchorAggregatePartValid7_0187 anchorHistoryChunk0187
  decide

theorem anchorRange_0187 :
    anchorHistoryChunk0187.IndexedValid squarefreeOracle 5000000 191488 := by
  have h0 := anchorAggregatePart0_0187
  simp only [anchorAggregatePartValid0_0187, anchorHistoryChunk0187] at h0
  have h1 := anchorAggregatePart1_0187
  simp only [anchorAggregatePartValid1_0187, anchorHistoryChunk0187] at h1
  have h2 := anchorAggregatePart2_0187
  simp only [anchorAggregatePartValid2_0187, anchorHistoryChunk0187] at h2
  have h3 := anchorAggregatePart3_0187
  simp only [anchorAggregatePartValid3_0187, anchorHistoryChunk0187] at h3
  have h4 := anchorAggregatePart4_0187
  simp only [anchorAggregatePartValid4_0187, anchorHistoryChunk0187] at h4
  have h5 := anchorAggregatePart5_0187
  simp only [anchorAggregatePartValid5_0187, anchorHistoryChunk0187] at h5
  have h6 := anchorAggregatePart6_0187
  simp only [anchorAggregatePartValid6_0187, anchorHistoryChunk0187] at h6
  have h7 := anchorAggregatePart7_0187
  simp only [anchorAggregatePartValid7_0187, anchorHistoryChunk0187] at h7
  unfold anchorHistoryChunk0187
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
