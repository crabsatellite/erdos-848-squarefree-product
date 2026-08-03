import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0096
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0097
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0098
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0099

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0096, 0097, 0098, 0099 -/

def anchorAggregatePartValid0_0096 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 98304
  | _ => True

theorem anchorAggregatePart0_0096 :
    anchorAggregatePartValid0_0096 anchorHistoryChunk0096 := by
  unfold anchorAggregatePartValid0_0096 anchorHistoryChunk0096
  decide

def anchorAggregatePartValid1_0096 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 98432
  | _ => True

theorem anchorAggregatePart1_0096 :
    anchorAggregatePartValid1_0096 anchorHistoryChunk0096 := by
  unfold anchorAggregatePartValid1_0096 anchorHistoryChunk0096
  decide

def anchorAggregatePartValid2_0096 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 98560
  | _ => True

theorem anchorAggregatePart2_0096 :
    anchorAggregatePartValid2_0096 anchorHistoryChunk0096 := by
  unfold anchorAggregatePartValid2_0096 anchorHistoryChunk0096
  decide

def anchorAggregatePartValid3_0096 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 98688
  | _ => True

theorem anchorAggregatePart3_0096 :
    anchorAggregatePartValid3_0096 anchorHistoryChunk0096 := by
  unfold anchorAggregatePartValid3_0096 anchorHistoryChunk0096
  decide

def anchorAggregatePartValid4_0096 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 98816
  | _ => True

theorem anchorAggregatePart4_0096 :
    anchorAggregatePartValid4_0096 anchorHistoryChunk0096 := by
  unfold anchorAggregatePartValid4_0096 anchorHistoryChunk0096
  decide

def anchorAggregatePartValid5_0096 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 98944
  | _ => True

theorem anchorAggregatePart5_0096 :
    anchorAggregatePartValid5_0096 anchorHistoryChunk0096 := by
  unfold anchorAggregatePartValid5_0096 anchorHistoryChunk0096
  decide

def anchorAggregatePartValid6_0096 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 99072
  | _ => True

theorem anchorAggregatePart6_0096 :
    anchorAggregatePartValid6_0096 anchorHistoryChunk0096 := by
  unfold anchorAggregatePartValid6_0096 anchorHistoryChunk0096
  decide

def anchorAggregatePartValid7_0096 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 99200
  | _ => True

theorem anchorAggregatePart7_0096 :
    anchorAggregatePartValid7_0096 anchorHistoryChunk0096 := by
  unfold anchorAggregatePartValid7_0096 anchorHistoryChunk0096
  decide

theorem anchorRange_0096 :
    anchorHistoryChunk0096.IndexedValid squarefreeOracle 5000000 98304 := by
  have h0 := anchorAggregatePart0_0096
  simp only [anchorAggregatePartValid0_0096, anchorHistoryChunk0096] at h0
  have h1 := anchorAggregatePart1_0096
  simp only [anchorAggregatePartValid1_0096, anchorHistoryChunk0096] at h1
  have h2 := anchorAggregatePart2_0096
  simp only [anchorAggregatePartValid2_0096, anchorHistoryChunk0096] at h2
  have h3 := anchorAggregatePart3_0096
  simp only [anchorAggregatePartValid3_0096, anchorHistoryChunk0096] at h3
  have h4 := anchorAggregatePart4_0096
  simp only [anchorAggregatePartValid4_0096, anchorHistoryChunk0096] at h4
  have h5 := anchorAggregatePart5_0096
  simp only [anchorAggregatePartValid5_0096, anchorHistoryChunk0096] at h5
  have h6 := anchorAggregatePart6_0096
  simp only [anchorAggregatePartValid6_0096, anchorHistoryChunk0096] at h6
  have h7 := anchorAggregatePart7_0096
  simp only [anchorAggregatePartValid7_0096, anchorHistoryChunk0096] at h7
  unfold anchorHistoryChunk0096
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0097 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 99328
  | _ => True

theorem anchorAggregatePart0_0097 :
    anchorAggregatePartValid0_0097 anchorHistoryChunk0097 := by
  unfold anchorAggregatePartValid0_0097 anchorHistoryChunk0097
  decide

def anchorAggregatePartValid1_0097 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 99456
  | _ => True

theorem anchorAggregatePart1_0097 :
    anchorAggregatePartValid1_0097 anchorHistoryChunk0097 := by
  unfold anchorAggregatePartValid1_0097 anchorHistoryChunk0097
  decide

def anchorAggregatePartValid2_0097 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 99584
  | _ => True

theorem anchorAggregatePart2_0097 :
    anchorAggregatePartValid2_0097 anchorHistoryChunk0097 := by
  unfold anchorAggregatePartValid2_0097 anchorHistoryChunk0097
  decide

def anchorAggregatePartValid3_0097 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 99712
  | _ => True

theorem anchorAggregatePart3_0097 :
    anchorAggregatePartValid3_0097 anchorHistoryChunk0097 := by
  unfold anchorAggregatePartValid3_0097 anchorHistoryChunk0097
  decide

def anchorAggregatePartValid4_0097 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 99840
  | _ => True

theorem anchorAggregatePart4_0097 :
    anchorAggregatePartValid4_0097 anchorHistoryChunk0097 := by
  unfold anchorAggregatePartValid4_0097 anchorHistoryChunk0097
  decide

def anchorAggregatePartValid5_0097 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 99968
  | _ => True

theorem anchorAggregatePart5_0097 :
    anchorAggregatePartValid5_0097 anchorHistoryChunk0097 := by
  unfold anchorAggregatePartValid5_0097 anchorHistoryChunk0097
  decide

def anchorAggregatePartValid6_0097 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 100096
  | _ => True

theorem anchorAggregatePart6_0097 :
    anchorAggregatePartValid6_0097 anchorHistoryChunk0097 := by
  unfold anchorAggregatePartValid6_0097 anchorHistoryChunk0097
  decide

def anchorAggregatePartValid7_0097 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 100224
  | _ => True

theorem anchorAggregatePart7_0097 :
    anchorAggregatePartValid7_0097 anchorHistoryChunk0097 := by
  unfold anchorAggregatePartValid7_0097 anchorHistoryChunk0097
  decide

theorem anchorRange_0097 :
    anchorHistoryChunk0097.IndexedValid squarefreeOracle 5000000 99328 := by
  have h0 := anchorAggregatePart0_0097
  simp only [anchorAggregatePartValid0_0097, anchorHistoryChunk0097] at h0
  have h1 := anchorAggregatePart1_0097
  simp only [anchorAggregatePartValid1_0097, anchorHistoryChunk0097] at h1
  have h2 := anchorAggregatePart2_0097
  simp only [anchorAggregatePartValid2_0097, anchorHistoryChunk0097] at h2
  have h3 := anchorAggregatePart3_0097
  simp only [anchorAggregatePartValid3_0097, anchorHistoryChunk0097] at h3
  have h4 := anchorAggregatePart4_0097
  simp only [anchorAggregatePartValid4_0097, anchorHistoryChunk0097] at h4
  have h5 := anchorAggregatePart5_0097
  simp only [anchorAggregatePartValid5_0097, anchorHistoryChunk0097] at h5
  have h6 := anchorAggregatePart6_0097
  simp only [anchorAggregatePartValid6_0097, anchorHistoryChunk0097] at h6
  have h7 := anchorAggregatePart7_0097
  simp only [anchorAggregatePartValid7_0097, anchorHistoryChunk0097] at h7
  unfold anchorHistoryChunk0097
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0098 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 100352
  | _ => True

theorem anchorAggregatePart0_0098 :
    anchorAggregatePartValid0_0098 anchorHistoryChunk0098 := by
  unfold anchorAggregatePartValid0_0098 anchorHistoryChunk0098
  decide

def anchorAggregatePartValid1_0098 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 100480
  | _ => True

theorem anchorAggregatePart1_0098 :
    anchorAggregatePartValid1_0098 anchorHistoryChunk0098 := by
  unfold anchorAggregatePartValid1_0098 anchorHistoryChunk0098
  decide

def anchorAggregatePartValid2_0098 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 100608
  | _ => True

theorem anchorAggregatePart2_0098 :
    anchorAggregatePartValid2_0098 anchorHistoryChunk0098 := by
  unfold anchorAggregatePartValid2_0098 anchorHistoryChunk0098
  decide

def anchorAggregatePartValid3_0098 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 100736
  | _ => True

theorem anchorAggregatePart3_0098 :
    anchorAggregatePartValid3_0098 anchorHistoryChunk0098 := by
  unfold anchorAggregatePartValid3_0098 anchorHistoryChunk0098
  decide

def anchorAggregatePartValid4_0098 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 100864
  | _ => True

theorem anchorAggregatePart4_0098 :
    anchorAggregatePartValid4_0098 anchorHistoryChunk0098 := by
  unfold anchorAggregatePartValid4_0098 anchorHistoryChunk0098
  decide

def anchorAggregatePartValid5_0098 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 100992
  | _ => True

theorem anchorAggregatePart5_0098 :
    anchorAggregatePartValid5_0098 anchorHistoryChunk0098 := by
  unfold anchorAggregatePartValid5_0098 anchorHistoryChunk0098
  decide

def anchorAggregatePartValid6_0098 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 101120
  | _ => True

theorem anchorAggregatePart6_0098 :
    anchorAggregatePartValid6_0098 anchorHistoryChunk0098 := by
  unfold anchorAggregatePartValid6_0098 anchorHistoryChunk0098
  decide

def anchorAggregatePartValid7_0098 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 101248
  | _ => True

theorem anchorAggregatePart7_0098 :
    anchorAggregatePartValid7_0098 anchorHistoryChunk0098 := by
  unfold anchorAggregatePartValid7_0098 anchorHistoryChunk0098
  decide

theorem anchorRange_0098 :
    anchorHistoryChunk0098.IndexedValid squarefreeOracle 5000000 100352 := by
  have h0 := anchorAggregatePart0_0098
  simp only [anchorAggregatePartValid0_0098, anchorHistoryChunk0098] at h0
  have h1 := anchorAggregatePart1_0098
  simp only [anchorAggregatePartValid1_0098, anchorHistoryChunk0098] at h1
  have h2 := anchorAggregatePart2_0098
  simp only [anchorAggregatePartValid2_0098, anchorHistoryChunk0098] at h2
  have h3 := anchorAggregatePart3_0098
  simp only [anchorAggregatePartValid3_0098, anchorHistoryChunk0098] at h3
  have h4 := anchorAggregatePart4_0098
  simp only [anchorAggregatePartValid4_0098, anchorHistoryChunk0098] at h4
  have h5 := anchorAggregatePart5_0098
  simp only [anchorAggregatePartValid5_0098, anchorHistoryChunk0098] at h5
  have h6 := anchorAggregatePart6_0098
  simp only [anchorAggregatePartValid6_0098, anchorHistoryChunk0098] at h6
  have h7 := anchorAggregatePart7_0098
  simp only [anchorAggregatePartValid7_0098, anchorHistoryChunk0098] at h7
  unfold anchorHistoryChunk0098
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0099 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 101376
  | _ => True

theorem anchorAggregatePart0_0099 :
    anchorAggregatePartValid0_0099 anchorHistoryChunk0099 := by
  unfold anchorAggregatePartValid0_0099 anchorHistoryChunk0099
  decide

def anchorAggregatePartValid1_0099 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 101504
  | _ => True

theorem anchorAggregatePart1_0099 :
    anchorAggregatePartValid1_0099 anchorHistoryChunk0099 := by
  unfold anchorAggregatePartValid1_0099 anchorHistoryChunk0099
  decide

def anchorAggregatePartValid2_0099 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 101632
  | _ => True

theorem anchorAggregatePart2_0099 :
    anchorAggregatePartValid2_0099 anchorHistoryChunk0099 := by
  unfold anchorAggregatePartValid2_0099 anchorHistoryChunk0099
  decide

def anchorAggregatePartValid3_0099 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 101760
  | _ => True

theorem anchorAggregatePart3_0099 :
    anchorAggregatePartValid3_0099 anchorHistoryChunk0099 := by
  unfold anchorAggregatePartValid3_0099 anchorHistoryChunk0099
  decide

def anchorAggregatePartValid4_0099 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 101888
  | _ => True

theorem anchorAggregatePart4_0099 :
    anchorAggregatePartValid4_0099 anchorHistoryChunk0099 := by
  unfold anchorAggregatePartValid4_0099 anchorHistoryChunk0099
  decide

def anchorAggregatePartValid5_0099 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 102016
  | _ => True

theorem anchorAggregatePart5_0099 :
    anchorAggregatePartValid5_0099 anchorHistoryChunk0099 := by
  unfold anchorAggregatePartValid5_0099 anchorHistoryChunk0099
  decide

def anchorAggregatePartValid6_0099 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 102144
  | _ => True

theorem anchorAggregatePart6_0099 :
    anchorAggregatePartValid6_0099 anchorHistoryChunk0099 := by
  unfold anchorAggregatePartValid6_0099 anchorHistoryChunk0099
  decide

def anchorAggregatePartValid7_0099 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 102272
  | _ => True

theorem anchorAggregatePart7_0099 :
    anchorAggregatePartValid7_0099 anchorHistoryChunk0099 := by
  unfold anchorAggregatePartValid7_0099 anchorHistoryChunk0099
  decide

theorem anchorRange_0099 :
    anchorHistoryChunk0099.IndexedValid squarefreeOracle 5000000 101376 := by
  have h0 := anchorAggregatePart0_0099
  simp only [anchorAggregatePartValid0_0099, anchorHistoryChunk0099] at h0
  have h1 := anchorAggregatePart1_0099
  simp only [anchorAggregatePartValid1_0099, anchorHistoryChunk0099] at h1
  have h2 := anchorAggregatePart2_0099
  simp only [anchorAggregatePartValid2_0099, anchorHistoryChunk0099] at h2
  have h3 := anchorAggregatePart3_0099
  simp only [anchorAggregatePartValid3_0099, anchorHistoryChunk0099] at h3
  have h4 := anchorAggregatePart4_0099
  simp only [anchorAggregatePartValid4_0099, anchorHistoryChunk0099] at h4
  have h5 := anchorAggregatePart5_0099
  simp only [anchorAggregatePartValid5_0099, anchorHistoryChunk0099] at h5
  have h6 := anchorAggregatePart6_0099
  simp only [anchorAggregatePartValid6_0099, anchorHistoryChunk0099] at h6
  have h7 := anchorAggregatePart7_0099
  simp only [anchorAggregatePartValid7_0099, anchorHistoryChunk0099] at h7
  unfold anchorHistoryChunk0099
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
