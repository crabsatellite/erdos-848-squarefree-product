import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0180
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0181
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0182
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0183

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0180, 0181, 0182, 0183 -/

def anchorAggregatePartValid0_0180 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 184320
  | _ => True

theorem anchorAggregatePart0_0180 :
    anchorAggregatePartValid0_0180 anchorHistoryChunk0180 := by
  unfold anchorAggregatePartValid0_0180 anchorHistoryChunk0180
  decide

def anchorAggregatePartValid1_0180 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 184448
  | _ => True

theorem anchorAggregatePart1_0180 :
    anchorAggregatePartValid1_0180 anchorHistoryChunk0180 := by
  unfold anchorAggregatePartValid1_0180 anchorHistoryChunk0180
  decide

def anchorAggregatePartValid2_0180 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 184576
  | _ => True

theorem anchorAggregatePart2_0180 :
    anchorAggregatePartValid2_0180 anchorHistoryChunk0180 := by
  unfold anchorAggregatePartValid2_0180 anchorHistoryChunk0180
  decide

def anchorAggregatePartValid3_0180 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 184704
  | _ => True

theorem anchorAggregatePart3_0180 :
    anchorAggregatePartValid3_0180 anchorHistoryChunk0180 := by
  unfold anchorAggregatePartValid3_0180 anchorHistoryChunk0180
  decide

def anchorAggregatePartValid4_0180 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 184832
  | _ => True

theorem anchorAggregatePart4_0180 :
    anchorAggregatePartValid4_0180 anchorHistoryChunk0180 := by
  unfold anchorAggregatePartValid4_0180 anchorHistoryChunk0180
  decide

def anchorAggregatePartValid5_0180 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 184960
  | _ => True

theorem anchorAggregatePart5_0180 :
    anchorAggregatePartValid5_0180 anchorHistoryChunk0180 := by
  unfold anchorAggregatePartValid5_0180 anchorHistoryChunk0180
  decide

def anchorAggregatePartValid6_0180 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 185088
  | _ => True

theorem anchorAggregatePart6_0180 :
    anchorAggregatePartValid6_0180 anchorHistoryChunk0180 := by
  unfold anchorAggregatePartValid6_0180 anchorHistoryChunk0180
  decide

def anchorAggregatePartValid7_0180 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 185216
  | _ => True

theorem anchorAggregatePart7_0180 :
    anchorAggregatePartValid7_0180 anchorHistoryChunk0180 := by
  unfold anchorAggregatePartValid7_0180 anchorHistoryChunk0180
  decide

theorem anchorRange_0180 :
    anchorHistoryChunk0180.IndexedValid squarefreeOracle 5000000 184320 := by
  have h0 := anchorAggregatePart0_0180
  simp only [anchorAggregatePartValid0_0180, anchorHistoryChunk0180] at h0
  have h1 := anchorAggregatePart1_0180
  simp only [anchorAggregatePartValid1_0180, anchorHistoryChunk0180] at h1
  have h2 := anchorAggregatePart2_0180
  simp only [anchorAggregatePartValid2_0180, anchorHistoryChunk0180] at h2
  have h3 := anchorAggregatePart3_0180
  simp only [anchorAggregatePartValid3_0180, anchorHistoryChunk0180] at h3
  have h4 := anchorAggregatePart4_0180
  simp only [anchorAggregatePartValid4_0180, anchorHistoryChunk0180] at h4
  have h5 := anchorAggregatePart5_0180
  simp only [anchorAggregatePartValid5_0180, anchorHistoryChunk0180] at h5
  have h6 := anchorAggregatePart6_0180
  simp only [anchorAggregatePartValid6_0180, anchorHistoryChunk0180] at h6
  have h7 := anchorAggregatePart7_0180
  simp only [anchorAggregatePartValid7_0180, anchorHistoryChunk0180] at h7
  unfold anchorHistoryChunk0180
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0181 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 185344
  | _ => True

theorem anchorAggregatePart0_0181 :
    anchorAggregatePartValid0_0181 anchorHistoryChunk0181 := by
  unfold anchorAggregatePartValid0_0181 anchorHistoryChunk0181
  decide

def anchorAggregatePartValid1_0181 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 185472
  | _ => True

theorem anchorAggregatePart1_0181 :
    anchorAggregatePartValid1_0181 anchorHistoryChunk0181 := by
  unfold anchorAggregatePartValid1_0181 anchorHistoryChunk0181
  decide

def anchorAggregatePartValid2_0181 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 185600
  | _ => True

theorem anchorAggregatePart2_0181 :
    anchorAggregatePartValid2_0181 anchorHistoryChunk0181 := by
  unfold anchorAggregatePartValid2_0181 anchorHistoryChunk0181
  decide

def anchorAggregatePartValid3_0181 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 185728
  | _ => True

theorem anchorAggregatePart3_0181 :
    anchorAggregatePartValid3_0181 anchorHistoryChunk0181 := by
  unfold anchorAggregatePartValid3_0181 anchorHistoryChunk0181
  decide

def anchorAggregatePartValid4_0181 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 185856
  | _ => True

theorem anchorAggregatePart4_0181 :
    anchorAggregatePartValid4_0181 anchorHistoryChunk0181 := by
  unfold anchorAggregatePartValid4_0181 anchorHistoryChunk0181
  decide

def anchorAggregatePartValid5_0181 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 185984
  | _ => True

theorem anchorAggregatePart5_0181 :
    anchorAggregatePartValid5_0181 anchorHistoryChunk0181 := by
  unfold anchorAggregatePartValid5_0181 anchorHistoryChunk0181
  decide

def anchorAggregatePartValid6_0181 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 186112
  | _ => True

theorem anchorAggregatePart6_0181 :
    anchorAggregatePartValid6_0181 anchorHistoryChunk0181 := by
  unfold anchorAggregatePartValid6_0181 anchorHistoryChunk0181
  decide

def anchorAggregatePartValid7_0181 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 186240
  | _ => True

theorem anchorAggregatePart7_0181 :
    anchorAggregatePartValid7_0181 anchorHistoryChunk0181 := by
  unfold anchorAggregatePartValid7_0181 anchorHistoryChunk0181
  decide

theorem anchorRange_0181 :
    anchorHistoryChunk0181.IndexedValid squarefreeOracle 5000000 185344 := by
  have h0 := anchorAggregatePart0_0181
  simp only [anchorAggregatePartValid0_0181, anchorHistoryChunk0181] at h0
  have h1 := anchorAggregatePart1_0181
  simp only [anchorAggregatePartValid1_0181, anchorHistoryChunk0181] at h1
  have h2 := anchorAggregatePart2_0181
  simp only [anchorAggregatePartValid2_0181, anchorHistoryChunk0181] at h2
  have h3 := anchorAggregatePart3_0181
  simp only [anchorAggregatePartValid3_0181, anchorHistoryChunk0181] at h3
  have h4 := anchorAggregatePart4_0181
  simp only [anchorAggregatePartValid4_0181, anchorHistoryChunk0181] at h4
  have h5 := anchorAggregatePart5_0181
  simp only [anchorAggregatePartValid5_0181, anchorHistoryChunk0181] at h5
  have h6 := anchorAggregatePart6_0181
  simp only [anchorAggregatePartValid6_0181, anchorHistoryChunk0181] at h6
  have h7 := anchorAggregatePart7_0181
  simp only [anchorAggregatePartValid7_0181, anchorHistoryChunk0181] at h7
  unfold anchorHistoryChunk0181
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0182 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 186368
  | _ => True

theorem anchorAggregatePart0_0182 :
    anchorAggregatePartValid0_0182 anchorHistoryChunk0182 := by
  unfold anchorAggregatePartValid0_0182 anchorHistoryChunk0182
  decide

def anchorAggregatePartValid1_0182 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 186496
  | _ => True

theorem anchorAggregatePart1_0182 :
    anchorAggregatePartValid1_0182 anchorHistoryChunk0182 := by
  unfold anchorAggregatePartValid1_0182 anchorHistoryChunk0182
  decide

def anchorAggregatePartValid2_0182 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 186624
  | _ => True

theorem anchorAggregatePart2_0182 :
    anchorAggregatePartValid2_0182 anchorHistoryChunk0182 := by
  unfold anchorAggregatePartValid2_0182 anchorHistoryChunk0182
  decide

def anchorAggregatePartValid3_0182 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 186752
  | _ => True

theorem anchorAggregatePart3_0182 :
    anchorAggregatePartValid3_0182 anchorHistoryChunk0182 := by
  unfold anchorAggregatePartValid3_0182 anchorHistoryChunk0182
  decide

def anchorAggregatePartValid4_0182 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 186880
  | _ => True

theorem anchorAggregatePart4_0182 :
    anchorAggregatePartValid4_0182 anchorHistoryChunk0182 := by
  unfold anchorAggregatePartValid4_0182 anchorHistoryChunk0182
  decide

def anchorAggregatePartValid5_0182 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 187008
  | _ => True

theorem anchorAggregatePart5_0182 :
    anchorAggregatePartValid5_0182 anchorHistoryChunk0182 := by
  unfold anchorAggregatePartValid5_0182 anchorHistoryChunk0182
  decide

def anchorAggregatePartValid6_0182 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 187136
  | _ => True

theorem anchorAggregatePart6_0182 :
    anchorAggregatePartValid6_0182 anchorHistoryChunk0182 := by
  unfold anchorAggregatePartValid6_0182 anchorHistoryChunk0182
  decide

def anchorAggregatePartValid7_0182 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 187264
  | _ => True

theorem anchorAggregatePart7_0182 :
    anchorAggregatePartValid7_0182 anchorHistoryChunk0182 := by
  unfold anchorAggregatePartValid7_0182 anchorHistoryChunk0182
  decide

theorem anchorRange_0182 :
    anchorHistoryChunk0182.IndexedValid squarefreeOracle 5000000 186368 := by
  have h0 := anchorAggregatePart0_0182
  simp only [anchorAggregatePartValid0_0182, anchorHistoryChunk0182] at h0
  have h1 := anchorAggregatePart1_0182
  simp only [anchorAggregatePartValid1_0182, anchorHistoryChunk0182] at h1
  have h2 := anchorAggregatePart2_0182
  simp only [anchorAggregatePartValid2_0182, anchorHistoryChunk0182] at h2
  have h3 := anchorAggregatePart3_0182
  simp only [anchorAggregatePartValid3_0182, anchorHistoryChunk0182] at h3
  have h4 := anchorAggregatePart4_0182
  simp only [anchorAggregatePartValid4_0182, anchorHistoryChunk0182] at h4
  have h5 := anchorAggregatePart5_0182
  simp only [anchorAggregatePartValid5_0182, anchorHistoryChunk0182] at h5
  have h6 := anchorAggregatePart6_0182
  simp only [anchorAggregatePartValid6_0182, anchorHistoryChunk0182] at h6
  have h7 := anchorAggregatePart7_0182
  simp only [anchorAggregatePartValid7_0182, anchorHistoryChunk0182] at h7
  unfold anchorHistoryChunk0182
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0183 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 187392
  | _ => True

theorem anchorAggregatePart0_0183 :
    anchorAggregatePartValid0_0183 anchorHistoryChunk0183 := by
  unfold anchorAggregatePartValid0_0183 anchorHistoryChunk0183
  decide

def anchorAggregatePartValid1_0183 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 187520
  | _ => True

theorem anchorAggregatePart1_0183 :
    anchorAggregatePartValid1_0183 anchorHistoryChunk0183 := by
  unfold anchorAggregatePartValid1_0183 anchorHistoryChunk0183
  decide

def anchorAggregatePartValid2_0183 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 187648
  | _ => True

theorem anchorAggregatePart2_0183 :
    anchorAggregatePartValid2_0183 anchorHistoryChunk0183 := by
  unfold anchorAggregatePartValid2_0183 anchorHistoryChunk0183
  decide

def anchorAggregatePartValid3_0183 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 187776
  | _ => True

theorem anchorAggregatePart3_0183 :
    anchorAggregatePartValid3_0183 anchorHistoryChunk0183 := by
  unfold anchorAggregatePartValid3_0183 anchorHistoryChunk0183
  decide

def anchorAggregatePartValid4_0183 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 187904
  | _ => True

theorem anchorAggregatePart4_0183 :
    anchorAggregatePartValid4_0183 anchorHistoryChunk0183 := by
  unfold anchorAggregatePartValid4_0183 anchorHistoryChunk0183
  decide

def anchorAggregatePartValid5_0183 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 188032
  | _ => True

theorem anchorAggregatePart5_0183 :
    anchorAggregatePartValid5_0183 anchorHistoryChunk0183 := by
  unfold anchorAggregatePartValid5_0183 anchorHistoryChunk0183
  decide

def anchorAggregatePartValid6_0183 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 188160
  | _ => True

theorem anchorAggregatePart6_0183 :
    anchorAggregatePartValid6_0183 anchorHistoryChunk0183 := by
  unfold anchorAggregatePartValid6_0183 anchorHistoryChunk0183
  decide

def anchorAggregatePartValid7_0183 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 188288
  | _ => True

theorem anchorAggregatePart7_0183 :
    anchorAggregatePartValid7_0183 anchorHistoryChunk0183 := by
  unfold anchorAggregatePartValid7_0183 anchorHistoryChunk0183
  decide

theorem anchorRange_0183 :
    anchorHistoryChunk0183.IndexedValid squarefreeOracle 5000000 187392 := by
  have h0 := anchorAggregatePart0_0183
  simp only [anchorAggregatePartValid0_0183, anchorHistoryChunk0183] at h0
  have h1 := anchorAggregatePart1_0183
  simp only [anchorAggregatePartValid1_0183, anchorHistoryChunk0183] at h1
  have h2 := anchorAggregatePart2_0183
  simp only [anchorAggregatePartValid2_0183, anchorHistoryChunk0183] at h2
  have h3 := anchorAggregatePart3_0183
  simp only [anchorAggregatePartValid3_0183, anchorHistoryChunk0183] at h3
  have h4 := anchorAggregatePart4_0183
  simp only [anchorAggregatePartValid4_0183, anchorHistoryChunk0183] at h4
  have h5 := anchorAggregatePart5_0183
  simp only [anchorAggregatePartValid5_0183, anchorHistoryChunk0183] at h5
  have h6 := anchorAggregatePart6_0183
  simp only [anchorAggregatePartValid6_0183, anchorHistoryChunk0183] at h6
  have h7 := anchorAggregatePart7_0183
  simp only [anchorAggregatePartValid7_0183, anchorHistoryChunk0183] at h7
  unfold anchorHistoryChunk0183
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
