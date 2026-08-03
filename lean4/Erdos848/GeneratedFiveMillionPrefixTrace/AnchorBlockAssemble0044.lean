import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0044
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0045
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0046
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0047

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0044, 0045, 0046, 0047 -/

def anchorAggregatePartValid0_0044 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 45056
  | _ => True

theorem anchorAggregatePart0_0044 :
    anchorAggregatePartValid0_0044 anchorHistoryChunk0044 := by
  unfold anchorAggregatePartValid0_0044 anchorHistoryChunk0044
  decide

def anchorAggregatePartValid1_0044 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 45184
  | _ => True

theorem anchorAggregatePart1_0044 :
    anchorAggregatePartValid1_0044 anchorHistoryChunk0044 := by
  unfold anchorAggregatePartValid1_0044 anchorHistoryChunk0044
  decide

def anchorAggregatePartValid2_0044 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 45312
  | _ => True

theorem anchorAggregatePart2_0044 :
    anchorAggregatePartValid2_0044 anchorHistoryChunk0044 := by
  unfold anchorAggregatePartValid2_0044 anchorHistoryChunk0044
  decide

def anchorAggregatePartValid3_0044 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 45440
  | _ => True

theorem anchorAggregatePart3_0044 :
    anchorAggregatePartValid3_0044 anchorHistoryChunk0044 := by
  unfold anchorAggregatePartValid3_0044 anchorHistoryChunk0044
  decide

def anchorAggregatePartValid4_0044 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 45568
  | _ => True

theorem anchorAggregatePart4_0044 :
    anchorAggregatePartValid4_0044 anchorHistoryChunk0044 := by
  unfold anchorAggregatePartValid4_0044 anchorHistoryChunk0044
  decide

def anchorAggregatePartValid5_0044 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 45696
  | _ => True

theorem anchorAggregatePart5_0044 :
    anchorAggregatePartValid5_0044 anchorHistoryChunk0044 := by
  unfold anchorAggregatePartValid5_0044 anchorHistoryChunk0044
  decide

def anchorAggregatePartValid6_0044 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 45824
  | _ => True

theorem anchorAggregatePart6_0044 :
    anchorAggregatePartValid6_0044 anchorHistoryChunk0044 := by
  unfold anchorAggregatePartValid6_0044 anchorHistoryChunk0044
  decide

def anchorAggregatePartValid7_0044 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 45952
  | _ => True

theorem anchorAggregatePart7_0044 :
    anchorAggregatePartValid7_0044 anchorHistoryChunk0044 := by
  unfold anchorAggregatePartValid7_0044 anchorHistoryChunk0044
  decide

theorem anchorRange_0044 :
    anchorHistoryChunk0044.IndexedValid squarefreeOracle 5000000 45056 := by
  have h0 := anchorAggregatePart0_0044
  simp only [anchorAggregatePartValid0_0044, anchorHistoryChunk0044] at h0
  have h1 := anchorAggregatePart1_0044
  simp only [anchorAggregatePartValid1_0044, anchorHistoryChunk0044] at h1
  have h2 := anchorAggregatePart2_0044
  simp only [anchorAggregatePartValid2_0044, anchorHistoryChunk0044] at h2
  have h3 := anchorAggregatePart3_0044
  simp only [anchorAggregatePartValid3_0044, anchorHistoryChunk0044] at h3
  have h4 := anchorAggregatePart4_0044
  simp only [anchorAggregatePartValid4_0044, anchorHistoryChunk0044] at h4
  have h5 := anchorAggregatePart5_0044
  simp only [anchorAggregatePartValid5_0044, anchorHistoryChunk0044] at h5
  have h6 := anchorAggregatePart6_0044
  simp only [anchorAggregatePartValid6_0044, anchorHistoryChunk0044] at h6
  have h7 := anchorAggregatePart7_0044
  simp only [anchorAggregatePartValid7_0044, anchorHistoryChunk0044] at h7
  unfold anchorHistoryChunk0044
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0045 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 46080
  | _ => True

theorem anchorAggregatePart0_0045 :
    anchorAggregatePartValid0_0045 anchorHistoryChunk0045 := by
  unfold anchorAggregatePartValid0_0045 anchorHistoryChunk0045
  decide

def anchorAggregatePartValid1_0045 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 46208
  | _ => True

theorem anchorAggregatePart1_0045 :
    anchorAggregatePartValid1_0045 anchorHistoryChunk0045 := by
  unfold anchorAggregatePartValid1_0045 anchorHistoryChunk0045
  decide

def anchorAggregatePartValid2_0045 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 46336
  | _ => True

theorem anchorAggregatePart2_0045 :
    anchorAggregatePartValid2_0045 anchorHistoryChunk0045 := by
  unfold anchorAggregatePartValid2_0045 anchorHistoryChunk0045
  decide

def anchorAggregatePartValid3_0045 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 46464
  | _ => True

theorem anchorAggregatePart3_0045 :
    anchorAggregatePartValid3_0045 anchorHistoryChunk0045 := by
  unfold anchorAggregatePartValid3_0045 anchorHistoryChunk0045
  decide

def anchorAggregatePartValid4_0045 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 46592
  | _ => True

theorem anchorAggregatePart4_0045 :
    anchorAggregatePartValid4_0045 anchorHistoryChunk0045 := by
  unfold anchorAggregatePartValid4_0045 anchorHistoryChunk0045
  decide

def anchorAggregatePartValid5_0045 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 46720
  | _ => True

theorem anchorAggregatePart5_0045 :
    anchorAggregatePartValid5_0045 anchorHistoryChunk0045 := by
  unfold anchorAggregatePartValid5_0045 anchorHistoryChunk0045
  decide

def anchorAggregatePartValid6_0045 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 46848
  | _ => True

theorem anchorAggregatePart6_0045 :
    anchorAggregatePartValid6_0045 anchorHistoryChunk0045 := by
  unfold anchorAggregatePartValid6_0045 anchorHistoryChunk0045
  decide

def anchorAggregatePartValid7_0045 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 46976
  | _ => True

theorem anchorAggregatePart7_0045 :
    anchorAggregatePartValid7_0045 anchorHistoryChunk0045 := by
  unfold anchorAggregatePartValid7_0045 anchorHistoryChunk0045
  decide

theorem anchorRange_0045 :
    anchorHistoryChunk0045.IndexedValid squarefreeOracle 5000000 46080 := by
  have h0 := anchorAggregatePart0_0045
  simp only [anchorAggregatePartValid0_0045, anchorHistoryChunk0045] at h0
  have h1 := anchorAggregatePart1_0045
  simp only [anchorAggregatePartValid1_0045, anchorHistoryChunk0045] at h1
  have h2 := anchorAggregatePart2_0045
  simp only [anchorAggregatePartValid2_0045, anchorHistoryChunk0045] at h2
  have h3 := anchorAggregatePart3_0045
  simp only [anchorAggregatePartValid3_0045, anchorHistoryChunk0045] at h3
  have h4 := anchorAggregatePart4_0045
  simp only [anchorAggregatePartValid4_0045, anchorHistoryChunk0045] at h4
  have h5 := anchorAggregatePart5_0045
  simp only [anchorAggregatePartValid5_0045, anchorHistoryChunk0045] at h5
  have h6 := anchorAggregatePart6_0045
  simp only [anchorAggregatePartValid6_0045, anchorHistoryChunk0045] at h6
  have h7 := anchorAggregatePart7_0045
  simp only [anchorAggregatePartValid7_0045, anchorHistoryChunk0045] at h7
  unfold anchorHistoryChunk0045
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0046 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 47104
  | _ => True

theorem anchorAggregatePart0_0046 :
    anchorAggregatePartValid0_0046 anchorHistoryChunk0046 := by
  unfold anchorAggregatePartValid0_0046 anchorHistoryChunk0046
  decide

def anchorAggregatePartValid1_0046 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 47232
  | _ => True

theorem anchorAggregatePart1_0046 :
    anchorAggregatePartValid1_0046 anchorHistoryChunk0046 := by
  unfold anchorAggregatePartValid1_0046 anchorHistoryChunk0046
  decide

def anchorAggregatePartValid2_0046 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 47360
  | _ => True

theorem anchorAggregatePart2_0046 :
    anchorAggregatePartValid2_0046 anchorHistoryChunk0046 := by
  unfold anchorAggregatePartValid2_0046 anchorHistoryChunk0046
  decide

def anchorAggregatePartValid3_0046 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 47488
  | _ => True

theorem anchorAggregatePart3_0046 :
    anchorAggregatePartValid3_0046 anchorHistoryChunk0046 := by
  unfold anchorAggregatePartValid3_0046 anchorHistoryChunk0046
  decide

def anchorAggregatePartValid4_0046 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 47616
  | _ => True

theorem anchorAggregatePart4_0046 :
    anchorAggregatePartValid4_0046 anchorHistoryChunk0046 := by
  unfold anchorAggregatePartValid4_0046 anchorHistoryChunk0046
  decide

def anchorAggregatePartValid5_0046 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 47744
  | _ => True

theorem anchorAggregatePart5_0046 :
    anchorAggregatePartValid5_0046 anchorHistoryChunk0046 := by
  unfold anchorAggregatePartValid5_0046 anchorHistoryChunk0046
  decide

def anchorAggregatePartValid6_0046 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 47872
  | _ => True

theorem anchorAggregatePart6_0046 :
    anchorAggregatePartValid6_0046 anchorHistoryChunk0046 := by
  unfold anchorAggregatePartValid6_0046 anchorHistoryChunk0046
  decide

def anchorAggregatePartValid7_0046 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 48000
  | _ => True

theorem anchorAggregatePart7_0046 :
    anchorAggregatePartValid7_0046 anchorHistoryChunk0046 := by
  unfold anchorAggregatePartValid7_0046 anchorHistoryChunk0046
  decide

theorem anchorRange_0046 :
    anchorHistoryChunk0046.IndexedValid squarefreeOracle 5000000 47104 := by
  have h0 := anchorAggregatePart0_0046
  simp only [anchorAggregatePartValid0_0046, anchorHistoryChunk0046] at h0
  have h1 := anchorAggregatePart1_0046
  simp only [anchorAggregatePartValid1_0046, anchorHistoryChunk0046] at h1
  have h2 := anchorAggregatePart2_0046
  simp only [anchorAggregatePartValid2_0046, anchorHistoryChunk0046] at h2
  have h3 := anchorAggregatePart3_0046
  simp only [anchorAggregatePartValid3_0046, anchorHistoryChunk0046] at h3
  have h4 := anchorAggregatePart4_0046
  simp only [anchorAggregatePartValid4_0046, anchorHistoryChunk0046] at h4
  have h5 := anchorAggregatePart5_0046
  simp only [anchorAggregatePartValid5_0046, anchorHistoryChunk0046] at h5
  have h6 := anchorAggregatePart6_0046
  simp only [anchorAggregatePartValid6_0046, anchorHistoryChunk0046] at h6
  have h7 := anchorAggregatePart7_0046
  simp only [anchorAggregatePartValid7_0046, anchorHistoryChunk0046] at h7
  unfold anchorHistoryChunk0046
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0047 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 48128
  | _ => True

theorem anchorAggregatePart0_0047 :
    anchorAggregatePartValid0_0047 anchorHistoryChunk0047 := by
  unfold anchorAggregatePartValid0_0047 anchorHistoryChunk0047
  decide

def anchorAggregatePartValid1_0047 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 48256
  | _ => True

theorem anchorAggregatePart1_0047 :
    anchorAggregatePartValid1_0047 anchorHistoryChunk0047 := by
  unfold anchorAggregatePartValid1_0047 anchorHistoryChunk0047
  decide

def anchorAggregatePartValid2_0047 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 48384
  | _ => True

theorem anchorAggregatePart2_0047 :
    anchorAggregatePartValid2_0047 anchorHistoryChunk0047 := by
  unfold anchorAggregatePartValid2_0047 anchorHistoryChunk0047
  decide

def anchorAggregatePartValid3_0047 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 48512
  | _ => True

theorem anchorAggregatePart3_0047 :
    anchorAggregatePartValid3_0047 anchorHistoryChunk0047 := by
  unfold anchorAggregatePartValid3_0047 anchorHistoryChunk0047
  decide

def anchorAggregatePartValid4_0047 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 48640
  | _ => True

theorem anchorAggregatePart4_0047 :
    anchorAggregatePartValid4_0047 anchorHistoryChunk0047 := by
  unfold anchorAggregatePartValid4_0047 anchorHistoryChunk0047
  decide

def anchorAggregatePartValid5_0047 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 48768
  | _ => True

theorem anchorAggregatePart5_0047 :
    anchorAggregatePartValid5_0047 anchorHistoryChunk0047 := by
  unfold anchorAggregatePartValid5_0047 anchorHistoryChunk0047
  decide

def anchorAggregatePartValid6_0047 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 48896
  | _ => True

theorem anchorAggregatePart6_0047 :
    anchorAggregatePartValid6_0047 anchorHistoryChunk0047 := by
  unfold anchorAggregatePartValid6_0047 anchorHistoryChunk0047
  decide

def anchorAggregatePartValid7_0047 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 49024
  | _ => True

theorem anchorAggregatePart7_0047 :
    anchorAggregatePartValid7_0047 anchorHistoryChunk0047 := by
  unfold anchorAggregatePartValid7_0047 anchorHistoryChunk0047
  decide

theorem anchorRange_0047 :
    anchorHistoryChunk0047.IndexedValid squarefreeOracle 5000000 48128 := by
  have h0 := anchorAggregatePart0_0047
  simp only [anchorAggregatePartValid0_0047, anchorHistoryChunk0047] at h0
  have h1 := anchorAggregatePart1_0047
  simp only [anchorAggregatePartValid1_0047, anchorHistoryChunk0047] at h1
  have h2 := anchorAggregatePart2_0047
  simp only [anchorAggregatePartValid2_0047, anchorHistoryChunk0047] at h2
  have h3 := anchorAggregatePart3_0047
  simp only [anchorAggregatePartValid3_0047, anchorHistoryChunk0047] at h3
  have h4 := anchorAggregatePart4_0047
  simp only [anchorAggregatePartValid4_0047, anchorHistoryChunk0047] at h4
  have h5 := anchorAggregatePart5_0047
  simp only [anchorAggregatePartValid5_0047, anchorHistoryChunk0047] at h5
  have h6 := anchorAggregatePart6_0047
  simp only [anchorAggregatePartValid6_0047, anchorHistoryChunk0047] at h6
  have h7 := anchorAggregatePart7_0047
  simp only [anchorAggregatePartValid7_0047, anchorHistoryChunk0047] at h7
  unfold anchorHistoryChunk0047
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
