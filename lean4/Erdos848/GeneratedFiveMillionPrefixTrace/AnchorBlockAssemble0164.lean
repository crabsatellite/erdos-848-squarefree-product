import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0164
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0165
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0166
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0167

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0164, 0165, 0166, 0167 -/

def anchorAggregatePartValid0_0164 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 167936
  | _ => True

theorem anchorAggregatePart0_0164 :
    anchorAggregatePartValid0_0164 anchorHistoryChunk0164 := by
  unfold anchorAggregatePartValid0_0164 anchorHistoryChunk0164
  decide

def anchorAggregatePartValid1_0164 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 168064
  | _ => True

theorem anchorAggregatePart1_0164 :
    anchorAggregatePartValid1_0164 anchorHistoryChunk0164 := by
  unfold anchorAggregatePartValid1_0164 anchorHistoryChunk0164
  decide

def anchorAggregatePartValid2_0164 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 168192
  | _ => True

theorem anchorAggregatePart2_0164 :
    anchorAggregatePartValid2_0164 anchorHistoryChunk0164 := by
  unfold anchorAggregatePartValid2_0164 anchorHistoryChunk0164
  decide

def anchorAggregatePartValid3_0164 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 168320
  | _ => True

theorem anchorAggregatePart3_0164 :
    anchorAggregatePartValid3_0164 anchorHistoryChunk0164 := by
  unfold anchorAggregatePartValid3_0164 anchorHistoryChunk0164
  decide

def anchorAggregatePartValid4_0164 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 168448
  | _ => True

theorem anchorAggregatePart4_0164 :
    anchorAggregatePartValid4_0164 anchorHistoryChunk0164 := by
  unfold anchorAggregatePartValid4_0164 anchorHistoryChunk0164
  decide

def anchorAggregatePartValid5_0164 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 168576
  | _ => True

theorem anchorAggregatePart5_0164 :
    anchorAggregatePartValid5_0164 anchorHistoryChunk0164 := by
  unfold anchorAggregatePartValid5_0164 anchorHistoryChunk0164
  decide

def anchorAggregatePartValid6_0164 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 168704
  | _ => True

theorem anchorAggregatePart6_0164 :
    anchorAggregatePartValid6_0164 anchorHistoryChunk0164 := by
  unfold anchorAggregatePartValid6_0164 anchorHistoryChunk0164
  decide

def anchorAggregatePartValid7_0164 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 168832
  | _ => True

theorem anchorAggregatePart7_0164 :
    anchorAggregatePartValid7_0164 anchorHistoryChunk0164 := by
  unfold anchorAggregatePartValid7_0164 anchorHistoryChunk0164
  decide

theorem anchorRange_0164 :
    anchorHistoryChunk0164.IndexedValid squarefreeOracle 5000000 167936 := by
  have h0 := anchorAggregatePart0_0164
  simp only [anchorAggregatePartValid0_0164, anchorHistoryChunk0164] at h0
  have h1 := anchorAggregatePart1_0164
  simp only [anchorAggregatePartValid1_0164, anchorHistoryChunk0164] at h1
  have h2 := anchorAggregatePart2_0164
  simp only [anchorAggregatePartValid2_0164, anchorHistoryChunk0164] at h2
  have h3 := anchorAggregatePart3_0164
  simp only [anchorAggregatePartValid3_0164, anchorHistoryChunk0164] at h3
  have h4 := anchorAggregatePart4_0164
  simp only [anchorAggregatePartValid4_0164, anchorHistoryChunk0164] at h4
  have h5 := anchorAggregatePart5_0164
  simp only [anchorAggregatePartValid5_0164, anchorHistoryChunk0164] at h5
  have h6 := anchorAggregatePart6_0164
  simp only [anchorAggregatePartValid6_0164, anchorHistoryChunk0164] at h6
  have h7 := anchorAggregatePart7_0164
  simp only [anchorAggregatePartValid7_0164, anchorHistoryChunk0164] at h7
  unfold anchorHistoryChunk0164
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0165 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 168960
  | _ => True

theorem anchorAggregatePart0_0165 :
    anchorAggregatePartValid0_0165 anchorHistoryChunk0165 := by
  unfold anchorAggregatePartValid0_0165 anchorHistoryChunk0165
  decide

def anchorAggregatePartValid1_0165 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 169088
  | _ => True

theorem anchorAggregatePart1_0165 :
    anchorAggregatePartValid1_0165 anchorHistoryChunk0165 := by
  unfold anchorAggregatePartValid1_0165 anchorHistoryChunk0165
  decide

def anchorAggregatePartValid2_0165 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 169216
  | _ => True

theorem anchorAggregatePart2_0165 :
    anchorAggregatePartValid2_0165 anchorHistoryChunk0165 := by
  unfold anchorAggregatePartValid2_0165 anchorHistoryChunk0165
  decide

def anchorAggregatePartValid3_0165 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 169344
  | _ => True

theorem anchorAggregatePart3_0165 :
    anchorAggregatePartValid3_0165 anchorHistoryChunk0165 := by
  unfold anchorAggregatePartValid3_0165 anchorHistoryChunk0165
  decide

def anchorAggregatePartValid4_0165 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 169472
  | _ => True

theorem anchorAggregatePart4_0165 :
    anchorAggregatePartValid4_0165 anchorHistoryChunk0165 := by
  unfold anchorAggregatePartValid4_0165 anchorHistoryChunk0165
  decide

def anchorAggregatePartValid5_0165 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 169600
  | _ => True

theorem anchorAggregatePart5_0165 :
    anchorAggregatePartValid5_0165 anchorHistoryChunk0165 := by
  unfold anchorAggregatePartValid5_0165 anchorHistoryChunk0165
  decide

def anchorAggregatePartValid6_0165 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 169728
  | _ => True

theorem anchorAggregatePart6_0165 :
    anchorAggregatePartValid6_0165 anchorHistoryChunk0165 := by
  unfold anchorAggregatePartValid6_0165 anchorHistoryChunk0165
  decide

def anchorAggregatePartValid7_0165 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 169856
  | _ => True

theorem anchorAggregatePart7_0165 :
    anchorAggregatePartValid7_0165 anchorHistoryChunk0165 := by
  unfold anchorAggregatePartValid7_0165 anchorHistoryChunk0165
  decide

theorem anchorRange_0165 :
    anchorHistoryChunk0165.IndexedValid squarefreeOracle 5000000 168960 := by
  have h0 := anchorAggregatePart0_0165
  simp only [anchorAggregatePartValid0_0165, anchorHistoryChunk0165] at h0
  have h1 := anchorAggregatePart1_0165
  simp only [anchorAggregatePartValid1_0165, anchorHistoryChunk0165] at h1
  have h2 := anchorAggregatePart2_0165
  simp only [anchorAggregatePartValid2_0165, anchorHistoryChunk0165] at h2
  have h3 := anchorAggregatePart3_0165
  simp only [anchorAggregatePartValid3_0165, anchorHistoryChunk0165] at h3
  have h4 := anchorAggregatePart4_0165
  simp only [anchorAggregatePartValid4_0165, anchorHistoryChunk0165] at h4
  have h5 := anchorAggregatePart5_0165
  simp only [anchorAggregatePartValid5_0165, anchorHistoryChunk0165] at h5
  have h6 := anchorAggregatePart6_0165
  simp only [anchorAggregatePartValid6_0165, anchorHistoryChunk0165] at h6
  have h7 := anchorAggregatePart7_0165
  simp only [anchorAggregatePartValid7_0165, anchorHistoryChunk0165] at h7
  unfold anchorHistoryChunk0165
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0166 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 169984
  | _ => True

theorem anchorAggregatePart0_0166 :
    anchorAggregatePartValid0_0166 anchorHistoryChunk0166 := by
  unfold anchorAggregatePartValid0_0166 anchorHistoryChunk0166
  decide

def anchorAggregatePartValid1_0166 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 170112
  | _ => True

theorem anchorAggregatePart1_0166 :
    anchorAggregatePartValid1_0166 anchorHistoryChunk0166 := by
  unfold anchorAggregatePartValid1_0166 anchorHistoryChunk0166
  decide

def anchorAggregatePartValid2_0166 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 170240
  | _ => True

theorem anchorAggregatePart2_0166 :
    anchorAggregatePartValid2_0166 anchorHistoryChunk0166 := by
  unfold anchorAggregatePartValid2_0166 anchorHistoryChunk0166
  decide

def anchorAggregatePartValid3_0166 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 170368
  | _ => True

theorem anchorAggregatePart3_0166 :
    anchorAggregatePartValid3_0166 anchorHistoryChunk0166 := by
  unfold anchorAggregatePartValid3_0166 anchorHistoryChunk0166
  decide

def anchorAggregatePartValid4_0166 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 170496
  | _ => True

theorem anchorAggregatePart4_0166 :
    anchorAggregatePartValid4_0166 anchorHistoryChunk0166 := by
  unfold anchorAggregatePartValid4_0166 anchorHistoryChunk0166
  decide

def anchorAggregatePartValid5_0166 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 170624
  | _ => True

theorem anchorAggregatePart5_0166 :
    anchorAggregatePartValid5_0166 anchorHistoryChunk0166 := by
  unfold anchorAggregatePartValid5_0166 anchorHistoryChunk0166
  decide

def anchorAggregatePartValid6_0166 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 170752
  | _ => True

theorem anchorAggregatePart6_0166 :
    anchorAggregatePartValid6_0166 anchorHistoryChunk0166 := by
  unfold anchorAggregatePartValid6_0166 anchorHistoryChunk0166
  decide

def anchorAggregatePartValid7_0166 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 170880
  | _ => True

theorem anchorAggregatePart7_0166 :
    anchorAggregatePartValid7_0166 anchorHistoryChunk0166 := by
  unfold anchorAggregatePartValid7_0166 anchorHistoryChunk0166
  decide

theorem anchorRange_0166 :
    anchorHistoryChunk0166.IndexedValid squarefreeOracle 5000000 169984 := by
  have h0 := anchorAggregatePart0_0166
  simp only [anchorAggregatePartValid0_0166, anchorHistoryChunk0166] at h0
  have h1 := anchorAggregatePart1_0166
  simp only [anchorAggregatePartValid1_0166, anchorHistoryChunk0166] at h1
  have h2 := anchorAggregatePart2_0166
  simp only [anchorAggregatePartValid2_0166, anchorHistoryChunk0166] at h2
  have h3 := anchorAggregatePart3_0166
  simp only [anchorAggregatePartValid3_0166, anchorHistoryChunk0166] at h3
  have h4 := anchorAggregatePart4_0166
  simp only [anchorAggregatePartValid4_0166, anchorHistoryChunk0166] at h4
  have h5 := anchorAggregatePart5_0166
  simp only [anchorAggregatePartValid5_0166, anchorHistoryChunk0166] at h5
  have h6 := anchorAggregatePart6_0166
  simp only [anchorAggregatePartValid6_0166, anchorHistoryChunk0166] at h6
  have h7 := anchorAggregatePart7_0166
  simp only [anchorAggregatePartValid7_0166, anchorHistoryChunk0166] at h7
  unfold anchorHistoryChunk0166
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0167 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 171008
  | _ => True

theorem anchorAggregatePart0_0167 :
    anchorAggregatePartValid0_0167 anchorHistoryChunk0167 := by
  unfold anchorAggregatePartValid0_0167 anchorHistoryChunk0167
  decide

def anchorAggregatePartValid1_0167 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 171136
  | _ => True

theorem anchorAggregatePart1_0167 :
    anchorAggregatePartValid1_0167 anchorHistoryChunk0167 := by
  unfold anchorAggregatePartValid1_0167 anchorHistoryChunk0167
  decide

def anchorAggregatePartValid2_0167 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 171264
  | _ => True

theorem anchorAggregatePart2_0167 :
    anchorAggregatePartValid2_0167 anchorHistoryChunk0167 := by
  unfold anchorAggregatePartValid2_0167 anchorHistoryChunk0167
  decide

def anchorAggregatePartValid3_0167 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 171392
  | _ => True

theorem anchorAggregatePart3_0167 :
    anchorAggregatePartValid3_0167 anchorHistoryChunk0167 := by
  unfold anchorAggregatePartValid3_0167 anchorHistoryChunk0167
  decide

def anchorAggregatePartValid4_0167 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 171520
  | _ => True

theorem anchorAggregatePart4_0167 :
    anchorAggregatePartValid4_0167 anchorHistoryChunk0167 := by
  unfold anchorAggregatePartValid4_0167 anchorHistoryChunk0167
  decide

def anchorAggregatePartValid5_0167 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 171648
  | _ => True

theorem anchorAggregatePart5_0167 :
    anchorAggregatePartValid5_0167 anchorHistoryChunk0167 := by
  unfold anchorAggregatePartValid5_0167 anchorHistoryChunk0167
  decide

def anchorAggregatePartValid6_0167 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 171776
  | _ => True

theorem anchorAggregatePart6_0167 :
    anchorAggregatePartValid6_0167 anchorHistoryChunk0167 := by
  unfold anchorAggregatePartValid6_0167 anchorHistoryChunk0167
  decide

def anchorAggregatePartValid7_0167 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 171904
  | _ => True

theorem anchorAggregatePart7_0167 :
    anchorAggregatePartValid7_0167 anchorHistoryChunk0167 := by
  unfold anchorAggregatePartValid7_0167 anchorHistoryChunk0167
  decide

theorem anchorRange_0167 :
    anchorHistoryChunk0167.IndexedValid squarefreeOracle 5000000 171008 := by
  have h0 := anchorAggregatePart0_0167
  simp only [anchorAggregatePartValid0_0167, anchorHistoryChunk0167] at h0
  have h1 := anchorAggregatePart1_0167
  simp only [anchorAggregatePartValid1_0167, anchorHistoryChunk0167] at h1
  have h2 := anchorAggregatePart2_0167
  simp only [anchorAggregatePartValid2_0167, anchorHistoryChunk0167] at h2
  have h3 := anchorAggregatePart3_0167
  simp only [anchorAggregatePartValid3_0167, anchorHistoryChunk0167] at h3
  have h4 := anchorAggregatePart4_0167
  simp only [anchorAggregatePartValid4_0167, anchorHistoryChunk0167] at h4
  have h5 := anchorAggregatePart5_0167
  simp only [anchorAggregatePartValid5_0167, anchorHistoryChunk0167] at h5
  have h6 := anchorAggregatePart6_0167
  simp only [anchorAggregatePartValid6_0167, anchorHistoryChunk0167] at h6
  have h7 := anchorAggregatePart7_0167
  simp only [anchorAggregatePartValid7_0167, anchorHistoryChunk0167] at h7
  unfold anchorHistoryChunk0167
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
