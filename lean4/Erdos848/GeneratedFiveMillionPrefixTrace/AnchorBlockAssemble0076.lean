import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0076
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0077
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0078
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0079

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0076, 0077, 0078, 0079 -/

def anchorAggregatePartValid0_0076 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 77824
  | _ => True

theorem anchorAggregatePart0_0076 :
    anchorAggregatePartValid0_0076 anchorHistoryChunk0076 := by
  unfold anchorAggregatePartValid0_0076 anchorHistoryChunk0076
  decide

def anchorAggregatePartValid1_0076 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 77952
  | _ => True

theorem anchorAggregatePart1_0076 :
    anchorAggregatePartValid1_0076 anchorHistoryChunk0076 := by
  unfold anchorAggregatePartValid1_0076 anchorHistoryChunk0076
  decide

def anchorAggregatePartValid2_0076 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 78080
  | _ => True

theorem anchorAggregatePart2_0076 :
    anchorAggregatePartValid2_0076 anchorHistoryChunk0076 := by
  unfold anchorAggregatePartValid2_0076 anchorHistoryChunk0076
  decide

def anchorAggregatePartValid3_0076 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 78208
  | _ => True

theorem anchorAggregatePart3_0076 :
    anchorAggregatePartValid3_0076 anchorHistoryChunk0076 := by
  unfold anchorAggregatePartValid3_0076 anchorHistoryChunk0076
  decide

def anchorAggregatePartValid4_0076 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 78336
  | _ => True

theorem anchorAggregatePart4_0076 :
    anchorAggregatePartValid4_0076 anchorHistoryChunk0076 := by
  unfold anchorAggregatePartValid4_0076 anchorHistoryChunk0076
  decide

def anchorAggregatePartValid5_0076 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 78464
  | _ => True

theorem anchorAggregatePart5_0076 :
    anchorAggregatePartValid5_0076 anchorHistoryChunk0076 := by
  unfold anchorAggregatePartValid5_0076 anchorHistoryChunk0076
  decide

def anchorAggregatePartValid6_0076 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 78592
  | _ => True

theorem anchorAggregatePart6_0076 :
    anchorAggregatePartValid6_0076 anchorHistoryChunk0076 := by
  unfold anchorAggregatePartValid6_0076 anchorHistoryChunk0076
  decide

def anchorAggregatePartValid7_0076 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 78720
  | _ => True

theorem anchorAggregatePart7_0076 :
    anchorAggregatePartValid7_0076 anchorHistoryChunk0076 := by
  unfold anchorAggregatePartValid7_0076 anchorHistoryChunk0076
  decide

theorem anchorRange_0076 :
    anchorHistoryChunk0076.IndexedValid squarefreeOracle 5000000 77824 := by
  have h0 := anchorAggregatePart0_0076
  simp only [anchorAggregatePartValid0_0076, anchorHistoryChunk0076] at h0
  have h1 := anchorAggregatePart1_0076
  simp only [anchorAggregatePartValid1_0076, anchorHistoryChunk0076] at h1
  have h2 := anchorAggregatePart2_0076
  simp only [anchorAggregatePartValid2_0076, anchorHistoryChunk0076] at h2
  have h3 := anchorAggregatePart3_0076
  simp only [anchorAggregatePartValid3_0076, anchorHistoryChunk0076] at h3
  have h4 := anchorAggregatePart4_0076
  simp only [anchorAggregatePartValid4_0076, anchorHistoryChunk0076] at h4
  have h5 := anchorAggregatePart5_0076
  simp only [anchorAggregatePartValid5_0076, anchorHistoryChunk0076] at h5
  have h6 := anchorAggregatePart6_0076
  simp only [anchorAggregatePartValid6_0076, anchorHistoryChunk0076] at h6
  have h7 := anchorAggregatePart7_0076
  simp only [anchorAggregatePartValid7_0076, anchorHistoryChunk0076] at h7
  unfold anchorHistoryChunk0076
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0077 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 78848
  | _ => True

theorem anchorAggregatePart0_0077 :
    anchorAggregatePartValid0_0077 anchorHistoryChunk0077 := by
  unfold anchorAggregatePartValid0_0077 anchorHistoryChunk0077
  decide

def anchorAggregatePartValid1_0077 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 78976
  | _ => True

theorem anchorAggregatePart1_0077 :
    anchorAggregatePartValid1_0077 anchorHistoryChunk0077 := by
  unfold anchorAggregatePartValid1_0077 anchorHistoryChunk0077
  decide

def anchorAggregatePartValid2_0077 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 79104
  | _ => True

theorem anchorAggregatePart2_0077 :
    anchorAggregatePartValid2_0077 anchorHistoryChunk0077 := by
  unfold anchorAggregatePartValid2_0077 anchorHistoryChunk0077
  decide

def anchorAggregatePartValid3_0077 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 79232
  | _ => True

theorem anchorAggregatePart3_0077 :
    anchorAggregatePartValid3_0077 anchorHistoryChunk0077 := by
  unfold anchorAggregatePartValid3_0077 anchorHistoryChunk0077
  decide

def anchorAggregatePartValid4_0077 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 79360
  | _ => True

theorem anchorAggregatePart4_0077 :
    anchorAggregatePartValid4_0077 anchorHistoryChunk0077 := by
  unfold anchorAggregatePartValid4_0077 anchorHistoryChunk0077
  decide

def anchorAggregatePartValid5_0077 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 79488
  | _ => True

theorem anchorAggregatePart5_0077 :
    anchorAggregatePartValid5_0077 anchorHistoryChunk0077 := by
  unfold anchorAggregatePartValid5_0077 anchorHistoryChunk0077
  decide

def anchorAggregatePartValid6_0077 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 79616
  | _ => True

theorem anchorAggregatePart6_0077 :
    anchorAggregatePartValid6_0077 anchorHistoryChunk0077 := by
  unfold anchorAggregatePartValid6_0077 anchorHistoryChunk0077
  decide

def anchorAggregatePartValid7_0077 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 79744
  | _ => True

theorem anchorAggregatePart7_0077 :
    anchorAggregatePartValid7_0077 anchorHistoryChunk0077 := by
  unfold anchorAggregatePartValid7_0077 anchorHistoryChunk0077
  decide

theorem anchorRange_0077 :
    anchorHistoryChunk0077.IndexedValid squarefreeOracle 5000000 78848 := by
  have h0 := anchorAggregatePart0_0077
  simp only [anchorAggregatePartValid0_0077, anchorHistoryChunk0077] at h0
  have h1 := anchorAggregatePart1_0077
  simp only [anchorAggregatePartValid1_0077, anchorHistoryChunk0077] at h1
  have h2 := anchorAggregatePart2_0077
  simp only [anchorAggregatePartValid2_0077, anchorHistoryChunk0077] at h2
  have h3 := anchorAggregatePart3_0077
  simp only [anchorAggregatePartValid3_0077, anchorHistoryChunk0077] at h3
  have h4 := anchorAggregatePart4_0077
  simp only [anchorAggregatePartValid4_0077, anchorHistoryChunk0077] at h4
  have h5 := anchorAggregatePart5_0077
  simp only [anchorAggregatePartValid5_0077, anchorHistoryChunk0077] at h5
  have h6 := anchorAggregatePart6_0077
  simp only [anchorAggregatePartValid6_0077, anchorHistoryChunk0077] at h6
  have h7 := anchorAggregatePart7_0077
  simp only [anchorAggregatePartValid7_0077, anchorHistoryChunk0077] at h7
  unfold anchorHistoryChunk0077
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0078 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 79872
  | _ => True

theorem anchorAggregatePart0_0078 :
    anchorAggregatePartValid0_0078 anchorHistoryChunk0078 := by
  unfold anchorAggregatePartValid0_0078 anchorHistoryChunk0078
  decide

def anchorAggregatePartValid1_0078 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 80000
  | _ => True

theorem anchorAggregatePart1_0078 :
    anchorAggregatePartValid1_0078 anchorHistoryChunk0078 := by
  unfold anchorAggregatePartValid1_0078 anchorHistoryChunk0078
  decide

def anchorAggregatePartValid2_0078 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 80128
  | _ => True

theorem anchorAggregatePart2_0078 :
    anchorAggregatePartValid2_0078 anchorHistoryChunk0078 := by
  unfold anchorAggregatePartValid2_0078 anchorHistoryChunk0078
  decide

def anchorAggregatePartValid3_0078 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 80256
  | _ => True

theorem anchorAggregatePart3_0078 :
    anchorAggregatePartValid3_0078 anchorHistoryChunk0078 := by
  unfold anchorAggregatePartValid3_0078 anchorHistoryChunk0078
  decide

def anchorAggregatePartValid4_0078 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 80384
  | _ => True

theorem anchorAggregatePart4_0078 :
    anchorAggregatePartValid4_0078 anchorHistoryChunk0078 := by
  unfold anchorAggregatePartValid4_0078 anchorHistoryChunk0078
  decide

def anchorAggregatePartValid5_0078 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 80512
  | _ => True

theorem anchorAggregatePart5_0078 :
    anchorAggregatePartValid5_0078 anchorHistoryChunk0078 := by
  unfold anchorAggregatePartValid5_0078 anchorHistoryChunk0078
  decide

def anchorAggregatePartValid6_0078 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 80640
  | _ => True

theorem anchorAggregatePart6_0078 :
    anchorAggregatePartValid6_0078 anchorHistoryChunk0078 := by
  unfold anchorAggregatePartValid6_0078 anchorHistoryChunk0078
  decide

def anchorAggregatePartValid7_0078 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 80768
  | _ => True

theorem anchorAggregatePart7_0078 :
    anchorAggregatePartValid7_0078 anchorHistoryChunk0078 := by
  unfold anchorAggregatePartValid7_0078 anchorHistoryChunk0078
  decide

theorem anchorRange_0078 :
    anchorHistoryChunk0078.IndexedValid squarefreeOracle 5000000 79872 := by
  have h0 := anchorAggregatePart0_0078
  simp only [anchorAggregatePartValid0_0078, anchorHistoryChunk0078] at h0
  have h1 := anchorAggregatePart1_0078
  simp only [anchorAggregatePartValid1_0078, anchorHistoryChunk0078] at h1
  have h2 := anchorAggregatePart2_0078
  simp only [anchorAggregatePartValid2_0078, anchorHistoryChunk0078] at h2
  have h3 := anchorAggregatePart3_0078
  simp only [anchorAggregatePartValid3_0078, anchorHistoryChunk0078] at h3
  have h4 := anchorAggregatePart4_0078
  simp only [anchorAggregatePartValid4_0078, anchorHistoryChunk0078] at h4
  have h5 := anchorAggregatePart5_0078
  simp only [anchorAggregatePartValid5_0078, anchorHistoryChunk0078] at h5
  have h6 := anchorAggregatePart6_0078
  simp only [anchorAggregatePartValid6_0078, anchorHistoryChunk0078] at h6
  have h7 := anchorAggregatePart7_0078
  simp only [anchorAggregatePartValid7_0078, anchorHistoryChunk0078] at h7
  unfold anchorHistoryChunk0078
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0079 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 80896
  | _ => True

theorem anchorAggregatePart0_0079 :
    anchorAggregatePartValid0_0079 anchorHistoryChunk0079 := by
  unfold anchorAggregatePartValid0_0079 anchorHistoryChunk0079
  decide

def anchorAggregatePartValid1_0079 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 81024
  | _ => True

theorem anchorAggregatePart1_0079 :
    anchorAggregatePartValid1_0079 anchorHistoryChunk0079 := by
  unfold anchorAggregatePartValid1_0079 anchorHistoryChunk0079
  decide

def anchorAggregatePartValid2_0079 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 81152
  | _ => True

theorem anchorAggregatePart2_0079 :
    anchorAggregatePartValid2_0079 anchorHistoryChunk0079 := by
  unfold anchorAggregatePartValid2_0079 anchorHistoryChunk0079
  decide

def anchorAggregatePartValid3_0079 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 81280
  | _ => True

theorem anchorAggregatePart3_0079 :
    anchorAggregatePartValid3_0079 anchorHistoryChunk0079 := by
  unfold anchorAggregatePartValid3_0079 anchorHistoryChunk0079
  decide

def anchorAggregatePartValid4_0079 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 81408
  | _ => True

theorem anchorAggregatePart4_0079 :
    anchorAggregatePartValid4_0079 anchorHistoryChunk0079 := by
  unfold anchorAggregatePartValid4_0079 anchorHistoryChunk0079
  decide

def anchorAggregatePartValid5_0079 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 81536
  | _ => True

theorem anchorAggregatePart5_0079 :
    anchorAggregatePartValid5_0079 anchorHistoryChunk0079 := by
  unfold anchorAggregatePartValid5_0079 anchorHistoryChunk0079
  decide

def anchorAggregatePartValid6_0079 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 81664
  | _ => True

theorem anchorAggregatePart6_0079 :
    anchorAggregatePartValid6_0079 anchorHistoryChunk0079 := by
  unfold anchorAggregatePartValid6_0079 anchorHistoryChunk0079
  decide

def anchorAggregatePartValid7_0079 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 81792
  | _ => True

theorem anchorAggregatePart7_0079 :
    anchorAggregatePartValid7_0079 anchorHistoryChunk0079 := by
  unfold anchorAggregatePartValid7_0079 anchorHistoryChunk0079
  decide

theorem anchorRange_0079 :
    anchorHistoryChunk0079.IndexedValid squarefreeOracle 5000000 80896 := by
  have h0 := anchorAggregatePart0_0079
  simp only [anchorAggregatePartValid0_0079, anchorHistoryChunk0079] at h0
  have h1 := anchorAggregatePart1_0079
  simp only [anchorAggregatePartValid1_0079, anchorHistoryChunk0079] at h1
  have h2 := anchorAggregatePart2_0079
  simp only [anchorAggregatePartValid2_0079, anchorHistoryChunk0079] at h2
  have h3 := anchorAggregatePart3_0079
  simp only [anchorAggregatePartValid3_0079, anchorHistoryChunk0079] at h3
  have h4 := anchorAggregatePart4_0079
  simp only [anchorAggregatePartValid4_0079, anchorHistoryChunk0079] at h4
  have h5 := anchorAggregatePart5_0079
  simp only [anchorAggregatePartValid5_0079, anchorHistoryChunk0079] at h5
  have h6 := anchorAggregatePart6_0079
  simp only [anchorAggregatePartValid6_0079, anchorHistoryChunk0079] at h6
  have h7 := anchorAggregatePart7_0079
  simp only [anchorAggregatePartValid7_0079, anchorHistoryChunk0079] at h7
  unfold anchorHistoryChunk0079
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
