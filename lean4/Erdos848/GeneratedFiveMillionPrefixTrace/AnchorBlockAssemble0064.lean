import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0064
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0065
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0066
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0067

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0064, 0065, 0066, 0067 -/

def anchorAggregatePartValid0_0064 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 65536
  | _ => True

theorem anchorAggregatePart0_0064 :
    anchorAggregatePartValid0_0064 anchorHistoryChunk0064 := by
  unfold anchorAggregatePartValid0_0064 anchorHistoryChunk0064
  decide

def anchorAggregatePartValid1_0064 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 65664
  | _ => True

theorem anchorAggregatePart1_0064 :
    anchorAggregatePartValid1_0064 anchorHistoryChunk0064 := by
  unfold anchorAggregatePartValid1_0064 anchorHistoryChunk0064
  decide

def anchorAggregatePartValid2_0064 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 65792
  | _ => True

theorem anchorAggregatePart2_0064 :
    anchorAggregatePartValid2_0064 anchorHistoryChunk0064 := by
  unfold anchorAggregatePartValid2_0064 anchorHistoryChunk0064
  decide

def anchorAggregatePartValid3_0064 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 65920
  | _ => True

theorem anchorAggregatePart3_0064 :
    anchorAggregatePartValid3_0064 anchorHistoryChunk0064 := by
  unfold anchorAggregatePartValid3_0064 anchorHistoryChunk0064
  decide

def anchorAggregatePartValid4_0064 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 66048
  | _ => True

theorem anchorAggregatePart4_0064 :
    anchorAggregatePartValid4_0064 anchorHistoryChunk0064 := by
  unfold anchorAggregatePartValid4_0064 anchorHistoryChunk0064
  decide

def anchorAggregatePartValid5_0064 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 66176
  | _ => True

theorem anchorAggregatePart5_0064 :
    anchorAggregatePartValid5_0064 anchorHistoryChunk0064 := by
  unfold anchorAggregatePartValid5_0064 anchorHistoryChunk0064
  decide

def anchorAggregatePartValid6_0064 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 66304
  | _ => True

theorem anchorAggregatePart6_0064 :
    anchorAggregatePartValid6_0064 anchorHistoryChunk0064 := by
  unfold anchorAggregatePartValid6_0064 anchorHistoryChunk0064
  decide

def anchorAggregatePartValid7_0064 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 66432
  | _ => True

theorem anchorAggregatePart7_0064 :
    anchorAggregatePartValid7_0064 anchorHistoryChunk0064 := by
  unfold anchorAggregatePartValid7_0064 anchorHistoryChunk0064
  decide

theorem anchorRange_0064 :
    anchorHistoryChunk0064.IndexedValid squarefreeOracle 5000000 65536 := by
  have h0 := anchorAggregatePart0_0064
  simp only [anchorAggregatePartValid0_0064, anchorHistoryChunk0064] at h0
  have h1 := anchorAggregatePart1_0064
  simp only [anchorAggregatePartValid1_0064, anchorHistoryChunk0064] at h1
  have h2 := anchorAggregatePart2_0064
  simp only [anchorAggregatePartValid2_0064, anchorHistoryChunk0064] at h2
  have h3 := anchorAggregatePart3_0064
  simp only [anchorAggregatePartValid3_0064, anchorHistoryChunk0064] at h3
  have h4 := anchorAggregatePart4_0064
  simp only [anchorAggregatePartValid4_0064, anchorHistoryChunk0064] at h4
  have h5 := anchorAggregatePart5_0064
  simp only [anchorAggregatePartValid5_0064, anchorHistoryChunk0064] at h5
  have h6 := anchorAggregatePart6_0064
  simp only [anchorAggregatePartValid6_0064, anchorHistoryChunk0064] at h6
  have h7 := anchorAggregatePart7_0064
  simp only [anchorAggregatePartValid7_0064, anchorHistoryChunk0064] at h7
  unfold anchorHistoryChunk0064
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0065 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 66560
  | _ => True

theorem anchorAggregatePart0_0065 :
    anchorAggregatePartValid0_0065 anchorHistoryChunk0065 := by
  unfold anchorAggregatePartValid0_0065 anchorHistoryChunk0065
  decide

def anchorAggregatePartValid1_0065 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 66688
  | _ => True

theorem anchorAggregatePart1_0065 :
    anchorAggregatePartValid1_0065 anchorHistoryChunk0065 := by
  unfold anchorAggregatePartValid1_0065 anchorHistoryChunk0065
  decide

def anchorAggregatePartValid2_0065 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 66816
  | _ => True

theorem anchorAggregatePart2_0065 :
    anchorAggregatePartValid2_0065 anchorHistoryChunk0065 := by
  unfold anchorAggregatePartValid2_0065 anchorHistoryChunk0065
  decide

def anchorAggregatePartValid3_0065 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 66944
  | _ => True

theorem anchorAggregatePart3_0065 :
    anchorAggregatePartValid3_0065 anchorHistoryChunk0065 := by
  unfold anchorAggregatePartValid3_0065 anchorHistoryChunk0065
  decide

def anchorAggregatePartValid4_0065 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 67072
  | _ => True

theorem anchorAggregatePart4_0065 :
    anchorAggregatePartValid4_0065 anchorHistoryChunk0065 := by
  unfold anchorAggregatePartValid4_0065 anchorHistoryChunk0065
  decide

def anchorAggregatePartValid5_0065 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 67200
  | _ => True

theorem anchorAggregatePart5_0065 :
    anchorAggregatePartValid5_0065 anchorHistoryChunk0065 := by
  unfold anchorAggregatePartValid5_0065 anchorHistoryChunk0065
  decide

def anchorAggregatePartValid6_0065 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 67328
  | _ => True

theorem anchorAggregatePart6_0065 :
    anchorAggregatePartValid6_0065 anchorHistoryChunk0065 := by
  unfold anchorAggregatePartValid6_0065 anchorHistoryChunk0065
  decide

def anchorAggregatePartValid7_0065 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 67456
  | _ => True

theorem anchorAggregatePart7_0065 :
    anchorAggregatePartValid7_0065 anchorHistoryChunk0065 := by
  unfold anchorAggregatePartValid7_0065 anchorHistoryChunk0065
  decide

theorem anchorRange_0065 :
    anchorHistoryChunk0065.IndexedValid squarefreeOracle 5000000 66560 := by
  have h0 := anchorAggregatePart0_0065
  simp only [anchorAggregatePartValid0_0065, anchorHistoryChunk0065] at h0
  have h1 := anchorAggregatePart1_0065
  simp only [anchorAggregatePartValid1_0065, anchorHistoryChunk0065] at h1
  have h2 := anchorAggregatePart2_0065
  simp only [anchorAggregatePartValid2_0065, anchorHistoryChunk0065] at h2
  have h3 := anchorAggregatePart3_0065
  simp only [anchorAggregatePartValid3_0065, anchorHistoryChunk0065] at h3
  have h4 := anchorAggregatePart4_0065
  simp only [anchorAggregatePartValid4_0065, anchorHistoryChunk0065] at h4
  have h5 := anchorAggregatePart5_0065
  simp only [anchorAggregatePartValid5_0065, anchorHistoryChunk0065] at h5
  have h6 := anchorAggregatePart6_0065
  simp only [anchorAggregatePartValid6_0065, anchorHistoryChunk0065] at h6
  have h7 := anchorAggregatePart7_0065
  simp only [anchorAggregatePartValid7_0065, anchorHistoryChunk0065] at h7
  unfold anchorHistoryChunk0065
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0066 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 67584
  | _ => True

theorem anchorAggregatePart0_0066 :
    anchorAggregatePartValid0_0066 anchorHistoryChunk0066 := by
  unfold anchorAggregatePartValid0_0066 anchorHistoryChunk0066
  decide

def anchorAggregatePartValid1_0066 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 67712
  | _ => True

theorem anchorAggregatePart1_0066 :
    anchorAggregatePartValid1_0066 anchorHistoryChunk0066 := by
  unfold anchorAggregatePartValid1_0066 anchorHistoryChunk0066
  decide

def anchorAggregatePartValid2_0066 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 67840
  | _ => True

theorem anchorAggregatePart2_0066 :
    anchorAggregatePartValid2_0066 anchorHistoryChunk0066 := by
  unfold anchorAggregatePartValid2_0066 anchorHistoryChunk0066
  decide

def anchorAggregatePartValid3_0066 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 67968
  | _ => True

theorem anchorAggregatePart3_0066 :
    anchorAggregatePartValid3_0066 anchorHistoryChunk0066 := by
  unfold anchorAggregatePartValid3_0066 anchorHistoryChunk0066
  decide

def anchorAggregatePartValid4_0066 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 68096
  | _ => True

theorem anchorAggregatePart4_0066 :
    anchorAggregatePartValid4_0066 anchorHistoryChunk0066 := by
  unfold anchorAggregatePartValid4_0066 anchorHistoryChunk0066
  decide

def anchorAggregatePartValid5_0066 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 68224
  | _ => True

theorem anchorAggregatePart5_0066 :
    anchorAggregatePartValid5_0066 anchorHistoryChunk0066 := by
  unfold anchorAggregatePartValid5_0066 anchorHistoryChunk0066
  decide

def anchorAggregatePartValid6_0066 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 68352
  | _ => True

theorem anchorAggregatePart6_0066 :
    anchorAggregatePartValid6_0066 anchorHistoryChunk0066 := by
  unfold anchorAggregatePartValid6_0066 anchorHistoryChunk0066
  decide

def anchorAggregatePartValid7_0066 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 68480
  | _ => True

theorem anchorAggregatePart7_0066 :
    anchorAggregatePartValid7_0066 anchorHistoryChunk0066 := by
  unfold anchorAggregatePartValid7_0066 anchorHistoryChunk0066
  decide

theorem anchorRange_0066 :
    anchorHistoryChunk0066.IndexedValid squarefreeOracle 5000000 67584 := by
  have h0 := anchorAggregatePart0_0066
  simp only [anchorAggregatePartValid0_0066, anchorHistoryChunk0066] at h0
  have h1 := anchorAggregatePart1_0066
  simp only [anchorAggregatePartValid1_0066, anchorHistoryChunk0066] at h1
  have h2 := anchorAggregatePart2_0066
  simp only [anchorAggregatePartValid2_0066, anchorHistoryChunk0066] at h2
  have h3 := anchorAggregatePart3_0066
  simp only [anchorAggregatePartValid3_0066, anchorHistoryChunk0066] at h3
  have h4 := anchorAggregatePart4_0066
  simp only [anchorAggregatePartValid4_0066, anchorHistoryChunk0066] at h4
  have h5 := anchorAggregatePart5_0066
  simp only [anchorAggregatePartValid5_0066, anchorHistoryChunk0066] at h5
  have h6 := anchorAggregatePart6_0066
  simp only [anchorAggregatePartValid6_0066, anchorHistoryChunk0066] at h6
  have h7 := anchorAggregatePart7_0066
  simp only [anchorAggregatePartValid7_0066, anchorHistoryChunk0066] at h7
  unfold anchorHistoryChunk0066
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0067 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 68608
  | _ => True

theorem anchorAggregatePart0_0067 :
    anchorAggregatePartValid0_0067 anchorHistoryChunk0067 := by
  unfold anchorAggregatePartValid0_0067 anchorHistoryChunk0067
  decide

def anchorAggregatePartValid1_0067 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 68736
  | _ => True

theorem anchorAggregatePart1_0067 :
    anchorAggregatePartValid1_0067 anchorHistoryChunk0067 := by
  unfold anchorAggregatePartValid1_0067 anchorHistoryChunk0067
  decide

def anchorAggregatePartValid2_0067 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 68864
  | _ => True

theorem anchorAggregatePart2_0067 :
    anchorAggregatePartValid2_0067 anchorHistoryChunk0067 := by
  unfold anchorAggregatePartValid2_0067 anchorHistoryChunk0067
  decide

def anchorAggregatePartValid3_0067 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 68992
  | _ => True

theorem anchorAggregatePart3_0067 :
    anchorAggregatePartValid3_0067 anchorHistoryChunk0067 := by
  unfold anchorAggregatePartValid3_0067 anchorHistoryChunk0067
  decide

def anchorAggregatePartValid4_0067 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 69120
  | _ => True

theorem anchorAggregatePart4_0067 :
    anchorAggregatePartValid4_0067 anchorHistoryChunk0067 := by
  unfold anchorAggregatePartValid4_0067 anchorHistoryChunk0067
  decide

def anchorAggregatePartValid5_0067 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 69248
  | _ => True

theorem anchorAggregatePart5_0067 :
    anchorAggregatePartValid5_0067 anchorHistoryChunk0067 := by
  unfold anchorAggregatePartValid5_0067 anchorHistoryChunk0067
  decide

def anchorAggregatePartValid6_0067 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 69376
  | _ => True

theorem anchorAggregatePart6_0067 :
    anchorAggregatePartValid6_0067 anchorHistoryChunk0067 := by
  unfold anchorAggregatePartValid6_0067 anchorHistoryChunk0067
  decide

def anchorAggregatePartValid7_0067 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 69504
  | _ => True

theorem anchorAggregatePart7_0067 :
    anchorAggregatePartValid7_0067 anchorHistoryChunk0067 := by
  unfold anchorAggregatePartValid7_0067 anchorHistoryChunk0067
  decide

theorem anchorRange_0067 :
    anchorHistoryChunk0067.IndexedValid squarefreeOracle 5000000 68608 := by
  have h0 := anchorAggregatePart0_0067
  simp only [anchorAggregatePartValid0_0067, anchorHistoryChunk0067] at h0
  have h1 := anchorAggregatePart1_0067
  simp only [anchorAggregatePartValid1_0067, anchorHistoryChunk0067] at h1
  have h2 := anchorAggregatePart2_0067
  simp only [anchorAggregatePartValid2_0067, anchorHistoryChunk0067] at h2
  have h3 := anchorAggregatePart3_0067
  simp only [anchorAggregatePartValid3_0067, anchorHistoryChunk0067] at h3
  have h4 := anchorAggregatePart4_0067
  simp only [anchorAggregatePartValid4_0067, anchorHistoryChunk0067] at h4
  have h5 := anchorAggregatePart5_0067
  simp only [anchorAggregatePartValid5_0067, anchorHistoryChunk0067] at h5
  have h6 := anchorAggregatePart6_0067
  simp only [anchorAggregatePartValid6_0067, anchorHistoryChunk0067] at h6
  have h7 := anchorAggregatePart7_0067
  simp only [anchorAggregatePartValid7_0067, anchorHistoryChunk0067] at h7
  unfold anchorHistoryChunk0067
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
