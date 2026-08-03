import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0080
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0081
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0082
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0083

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0080, 0081, 0082, 0083 -/

def anchorAggregatePartValid0_0080 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 81920
  | _ => True

theorem anchorAggregatePart0_0080 :
    anchorAggregatePartValid0_0080 anchorHistoryChunk0080 := by
  unfold anchorAggregatePartValid0_0080 anchorHistoryChunk0080
  decide

def anchorAggregatePartValid1_0080 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 82048
  | _ => True

theorem anchorAggregatePart1_0080 :
    anchorAggregatePartValid1_0080 anchorHistoryChunk0080 := by
  unfold anchorAggregatePartValid1_0080 anchorHistoryChunk0080
  decide

def anchorAggregatePartValid2_0080 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 82176
  | _ => True

theorem anchorAggregatePart2_0080 :
    anchorAggregatePartValid2_0080 anchorHistoryChunk0080 := by
  unfold anchorAggregatePartValid2_0080 anchorHistoryChunk0080
  decide

def anchorAggregatePartValid3_0080 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 82304
  | _ => True

theorem anchorAggregatePart3_0080 :
    anchorAggregatePartValid3_0080 anchorHistoryChunk0080 := by
  unfold anchorAggregatePartValid3_0080 anchorHistoryChunk0080
  decide

def anchorAggregatePartValid4_0080 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 82432
  | _ => True

theorem anchorAggregatePart4_0080 :
    anchorAggregatePartValid4_0080 anchorHistoryChunk0080 := by
  unfold anchorAggregatePartValid4_0080 anchorHistoryChunk0080
  decide

def anchorAggregatePartValid5_0080 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 82560
  | _ => True

theorem anchorAggregatePart5_0080 :
    anchorAggregatePartValid5_0080 anchorHistoryChunk0080 := by
  unfold anchorAggregatePartValid5_0080 anchorHistoryChunk0080
  decide

def anchorAggregatePartValid6_0080 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 82688
  | _ => True

theorem anchorAggregatePart6_0080 :
    anchorAggregatePartValid6_0080 anchorHistoryChunk0080 := by
  unfold anchorAggregatePartValid6_0080 anchorHistoryChunk0080
  decide

def anchorAggregatePartValid7_0080 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 82816
  | _ => True

theorem anchorAggregatePart7_0080 :
    anchorAggregatePartValid7_0080 anchorHistoryChunk0080 := by
  unfold anchorAggregatePartValid7_0080 anchorHistoryChunk0080
  decide

theorem anchorRange_0080 :
    anchorHistoryChunk0080.IndexedValid squarefreeOracle 5000000 81920 := by
  have h0 := anchorAggregatePart0_0080
  simp only [anchorAggregatePartValid0_0080, anchorHistoryChunk0080] at h0
  have h1 := anchorAggregatePart1_0080
  simp only [anchorAggregatePartValid1_0080, anchorHistoryChunk0080] at h1
  have h2 := anchorAggregatePart2_0080
  simp only [anchorAggregatePartValid2_0080, anchorHistoryChunk0080] at h2
  have h3 := anchorAggregatePart3_0080
  simp only [anchorAggregatePartValid3_0080, anchorHistoryChunk0080] at h3
  have h4 := anchorAggregatePart4_0080
  simp only [anchorAggregatePartValid4_0080, anchorHistoryChunk0080] at h4
  have h5 := anchorAggregatePart5_0080
  simp only [anchorAggregatePartValid5_0080, anchorHistoryChunk0080] at h5
  have h6 := anchorAggregatePart6_0080
  simp only [anchorAggregatePartValid6_0080, anchorHistoryChunk0080] at h6
  have h7 := anchorAggregatePart7_0080
  simp only [anchorAggregatePartValid7_0080, anchorHistoryChunk0080] at h7
  unfold anchorHistoryChunk0080
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0081 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 82944
  | _ => True

theorem anchorAggregatePart0_0081 :
    anchorAggregatePartValid0_0081 anchorHistoryChunk0081 := by
  unfold anchorAggregatePartValid0_0081 anchorHistoryChunk0081
  decide

def anchorAggregatePartValid1_0081 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 83072
  | _ => True

theorem anchorAggregatePart1_0081 :
    anchorAggregatePartValid1_0081 anchorHistoryChunk0081 := by
  unfold anchorAggregatePartValid1_0081 anchorHistoryChunk0081
  decide

def anchorAggregatePartValid2_0081 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 83200
  | _ => True

theorem anchorAggregatePart2_0081 :
    anchorAggregatePartValid2_0081 anchorHistoryChunk0081 := by
  unfold anchorAggregatePartValid2_0081 anchorHistoryChunk0081
  decide

def anchorAggregatePartValid3_0081 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 83328
  | _ => True

theorem anchorAggregatePart3_0081 :
    anchorAggregatePartValid3_0081 anchorHistoryChunk0081 := by
  unfold anchorAggregatePartValid3_0081 anchorHistoryChunk0081
  decide

def anchorAggregatePartValid4_0081 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 83456
  | _ => True

theorem anchorAggregatePart4_0081 :
    anchorAggregatePartValid4_0081 anchorHistoryChunk0081 := by
  unfold anchorAggregatePartValid4_0081 anchorHistoryChunk0081
  decide

def anchorAggregatePartValid5_0081 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 83584
  | _ => True

theorem anchorAggregatePart5_0081 :
    anchorAggregatePartValid5_0081 anchorHistoryChunk0081 := by
  unfold anchorAggregatePartValid5_0081 anchorHistoryChunk0081
  decide

def anchorAggregatePartValid6_0081 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 83712
  | _ => True

theorem anchorAggregatePart6_0081 :
    anchorAggregatePartValid6_0081 anchorHistoryChunk0081 := by
  unfold anchorAggregatePartValid6_0081 anchorHistoryChunk0081
  decide

def anchorAggregatePartValid7_0081 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 83840
  | _ => True

theorem anchorAggregatePart7_0081 :
    anchorAggregatePartValid7_0081 anchorHistoryChunk0081 := by
  unfold anchorAggregatePartValid7_0081 anchorHistoryChunk0081
  decide

theorem anchorRange_0081 :
    anchorHistoryChunk0081.IndexedValid squarefreeOracle 5000000 82944 := by
  have h0 := anchorAggregatePart0_0081
  simp only [anchorAggregatePartValid0_0081, anchorHistoryChunk0081] at h0
  have h1 := anchorAggregatePart1_0081
  simp only [anchorAggregatePartValid1_0081, anchorHistoryChunk0081] at h1
  have h2 := anchorAggregatePart2_0081
  simp only [anchorAggregatePartValid2_0081, anchorHistoryChunk0081] at h2
  have h3 := anchorAggregatePart3_0081
  simp only [anchorAggregatePartValid3_0081, anchorHistoryChunk0081] at h3
  have h4 := anchorAggregatePart4_0081
  simp only [anchorAggregatePartValid4_0081, anchorHistoryChunk0081] at h4
  have h5 := anchorAggregatePart5_0081
  simp only [anchorAggregatePartValid5_0081, anchorHistoryChunk0081] at h5
  have h6 := anchorAggregatePart6_0081
  simp only [anchorAggregatePartValid6_0081, anchorHistoryChunk0081] at h6
  have h7 := anchorAggregatePart7_0081
  simp only [anchorAggregatePartValid7_0081, anchorHistoryChunk0081] at h7
  unfold anchorHistoryChunk0081
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0082 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 83968
  | _ => True

theorem anchorAggregatePart0_0082 :
    anchorAggregatePartValid0_0082 anchorHistoryChunk0082 := by
  unfold anchorAggregatePartValid0_0082 anchorHistoryChunk0082
  decide

def anchorAggregatePartValid1_0082 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 84096
  | _ => True

theorem anchorAggregatePart1_0082 :
    anchorAggregatePartValid1_0082 anchorHistoryChunk0082 := by
  unfold anchorAggregatePartValid1_0082 anchorHistoryChunk0082
  decide

def anchorAggregatePartValid2_0082 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 84224
  | _ => True

theorem anchorAggregatePart2_0082 :
    anchorAggregatePartValid2_0082 anchorHistoryChunk0082 := by
  unfold anchorAggregatePartValid2_0082 anchorHistoryChunk0082
  decide

def anchorAggregatePartValid3_0082 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 84352
  | _ => True

theorem anchorAggregatePart3_0082 :
    anchorAggregatePartValid3_0082 anchorHistoryChunk0082 := by
  unfold anchorAggregatePartValid3_0082 anchorHistoryChunk0082
  decide

def anchorAggregatePartValid4_0082 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 84480
  | _ => True

theorem anchorAggregatePart4_0082 :
    anchorAggregatePartValid4_0082 anchorHistoryChunk0082 := by
  unfold anchorAggregatePartValid4_0082 anchorHistoryChunk0082
  decide

def anchorAggregatePartValid5_0082 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 84608
  | _ => True

theorem anchorAggregatePart5_0082 :
    anchorAggregatePartValid5_0082 anchorHistoryChunk0082 := by
  unfold anchorAggregatePartValid5_0082 anchorHistoryChunk0082
  decide

def anchorAggregatePartValid6_0082 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 84736
  | _ => True

theorem anchorAggregatePart6_0082 :
    anchorAggregatePartValid6_0082 anchorHistoryChunk0082 := by
  unfold anchorAggregatePartValid6_0082 anchorHistoryChunk0082
  decide

def anchorAggregatePartValid7_0082 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 84864
  | _ => True

theorem anchorAggregatePart7_0082 :
    anchorAggregatePartValid7_0082 anchorHistoryChunk0082 := by
  unfold anchorAggregatePartValid7_0082 anchorHistoryChunk0082
  decide

theorem anchorRange_0082 :
    anchorHistoryChunk0082.IndexedValid squarefreeOracle 5000000 83968 := by
  have h0 := anchorAggregatePart0_0082
  simp only [anchorAggregatePartValid0_0082, anchorHistoryChunk0082] at h0
  have h1 := anchorAggregatePart1_0082
  simp only [anchorAggregatePartValid1_0082, anchorHistoryChunk0082] at h1
  have h2 := anchorAggregatePart2_0082
  simp only [anchorAggregatePartValid2_0082, anchorHistoryChunk0082] at h2
  have h3 := anchorAggregatePart3_0082
  simp only [anchorAggregatePartValid3_0082, anchorHistoryChunk0082] at h3
  have h4 := anchorAggregatePart4_0082
  simp only [anchorAggregatePartValid4_0082, anchorHistoryChunk0082] at h4
  have h5 := anchorAggregatePart5_0082
  simp only [anchorAggregatePartValid5_0082, anchorHistoryChunk0082] at h5
  have h6 := anchorAggregatePart6_0082
  simp only [anchorAggregatePartValid6_0082, anchorHistoryChunk0082] at h6
  have h7 := anchorAggregatePart7_0082
  simp only [anchorAggregatePartValid7_0082, anchorHistoryChunk0082] at h7
  unfold anchorHistoryChunk0082
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0083 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 84992
  | _ => True

theorem anchorAggregatePart0_0083 :
    anchorAggregatePartValid0_0083 anchorHistoryChunk0083 := by
  unfold anchorAggregatePartValid0_0083 anchorHistoryChunk0083
  decide

def anchorAggregatePartValid1_0083 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 85120
  | _ => True

theorem anchorAggregatePart1_0083 :
    anchorAggregatePartValid1_0083 anchorHistoryChunk0083 := by
  unfold anchorAggregatePartValid1_0083 anchorHistoryChunk0083
  decide

def anchorAggregatePartValid2_0083 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 85248
  | _ => True

theorem anchorAggregatePart2_0083 :
    anchorAggregatePartValid2_0083 anchorHistoryChunk0083 := by
  unfold anchorAggregatePartValid2_0083 anchorHistoryChunk0083
  decide

def anchorAggregatePartValid3_0083 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 85376
  | _ => True

theorem anchorAggregatePart3_0083 :
    anchorAggregatePartValid3_0083 anchorHistoryChunk0083 := by
  unfold anchorAggregatePartValid3_0083 anchorHistoryChunk0083
  decide

def anchorAggregatePartValid4_0083 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 85504
  | _ => True

theorem anchorAggregatePart4_0083 :
    anchorAggregatePartValid4_0083 anchorHistoryChunk0083 := by
  unfold anchorAggregatePartValid4_0083 anchorHistoryChunk0083
  decide

def anchorAggregatePartValid5_0083 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 85632
  | _ => True

theorem anchorAggregatePart5_0083 :
    anchorAggregatePartValid5_0083 anchorHistoryChunk0083 := by
  unfold anchorAggregatePartValid5_0083 anchorHistoryChunk0083
  decide

def anchorAggregatePartValid6_0083 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 85760
  | _ => True

theorem anchorAggregatePart6_0083 :
    anchorAggregatePartValid6_0083 anchorHistoryChunk0083 := by
  unfold anchorAggregatePartValid6_0083 anchorHistoryChunk0083
  decide

def anchorAggregatePartValid7_0083 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 85888
  | _ => True

theorem anchorAggregatePart7_0083 :
    anchorAggregatePartValid7_0083 anchorHistoryChunk0083 := by
  unfold anchorAggregatePartValid7_0083 anchorHistoryChunk0083
  decide

theorem anchorRange_0083 :
    anchorHistoryChunk0083.IndexedValid squarefreeOracle 5000000 84992 := by
  have h0 := anchorAggregatePart0_0083
  simp only [anchorAggregatePartValid0_0083, anchorHistoryChunk0083] at h0
  have h1 := anchorAggregatePart1_0083
  simp only [anchorAggregatePartValid1_0083, anchorHistoryChunk0083] at h1
  have h2 := anchorAggregatePart2_0083
  simp only [anchorAggregatePartValid2_0083, anchorHistoryChunk0083] at h2
  have h3 := anchorAggregatePart3_0083
  simp only [anchorAggregatePartValid3_0083, anchorHistoryChunk0083] at h3
  have h4 := anchorAggregatePart4_0083
  simp only [anchorAggregatePartValid4_0083, anchorHistoryChunk0083] at h4
  have h5 := anchorAggregatePart5_0083
  simp only [anchorAggregatePartValid5_0083, anchorHistoryChunk0083] at h5
  have h6 := anchorAggregatePart6_0083
  simp only [anchorAggregatePartValid6_0083, anchorHistoryChunk0083] at h6
  have h7 := anchorAggregatePart7_0083
  simp only [anchorAggregatePartValid7_0083, anchorHistoryChunk0083] at h7
  unfold anchorHistoryChunk0083
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
