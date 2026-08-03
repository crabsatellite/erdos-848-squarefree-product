import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0056
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0057
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0058
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0059

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0056, 0057, 0058, 0059 -/

def anchorAggregatePartValid0_0056 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 57344
  | _ => True

theorem anchorAggregatePart0_0056 :
    anchorAggregatePartValid0_0056 anchorHistoryChunk0056 := by
  unfold anchorAggregatePartValid0_0056 anchorHistoryChunk0056
  decide

def anchorAggregatePartValid1_0056 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 57472
  | _ => True

theorem anchorAggregatePart1_0056 :
    anchorAggregatePartValid1_0056 anchorHistoryChunk0056 := by
  unfold anchorAggregatePartValid1_0056 anchorHistoryChunk0056
  decide

def anchorAggregatePartValid2_0056 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 57600
  | _ => True

theorem anchorAggregatePart2_0056 :
    anchorAggregatePartValid2_0056 anchorHistoryChunk0056 := by
  unfold anchorAggregatePartValid2_0056 anchorHistoryChunk0056
  decide

def anchorAggregatePartValid3_0056 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 57728
  | _ => True

theorem anchorAggregatePart3_0056 :
    anchorAggregatePartValid3_0056 anchorHistoryChunk0056 := by
  unfold anchorAggregatePartValid3_0056 anchorHistoryChunk0056
  decide

def anchorAggregatePartValid4_0056 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 57856
  | _ => True

theorem anchorAggregatePart4_0056 :
    anchorAggregatePartValid4_0056 anchorHistoryChunk0056 := by
  unfold anchorAggregatePartValid4_0056 anchorHistoryChunk0056
  decide

def anchorAggregatePartValid5_0056 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 57984
  | _ => True

theorem anchorAggregatePart5_0056 :
    anchorAggregatePartValid5_0056 anchorHistoryChunk0056 := by
  unfold anchorAggregatePartValid5_0056 anchorHistoryChunk0056
  decide

def anchorAggregatePartValid6_0056 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 58112
  | _ => True

theorem anchorAggregatePart6_0056 :
    anchorAggregatePartValid6_0056 anchorHistoryChunk0056 := by
  unfold anchorAggregatePartValid6_0056 anchorHistoryChunk0056
  decide

def anchorAggregatePartValid7_0056 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 58240
  | _ => True

theorem anchorAggregatePart7_0056 :
    anchorAggregatePartValid7_0056 anchorHistoryChunk0056 := by
  unfold anchorAggregatePartValid7_0056 anchorHistoryChunk0056
  decide

theorem anchorRange_0056 :
    anchorHistoryChunk0056.IndexedValid squarefreeOracle 5000000 57344 := by
  have h0 := anchorAggregatePart0_0056
  simp only [anchorAggregatePartValid0_0056, anchorHistoryChunk0056] at h0
  have h1 := anchorAggregatePart1_0056
  simp only [anchorAggregatePartValid1_0056, anchorHistoryChunk0056] at h1
  have h2 := anchorAggregatePart2_0056
  simp only [anchorAggregatePartValid2_0056, anchorHistoryChunk0056] at h2
  have h3 := anchorAggregatePart3_0056
  simp only [anchorAggregatePartValid3_0056, anchorHistoryChunk0056] at h3
  have h4 := anchorAggregatePart4_0056
  simp only [anchorAggregatePartValid4_0056, anchorHistoryChunk0056] at h4
  have h5 := anchorAggregatePart5_0056
  simp only [anchorAggregatePartValid5_0056, anchorHistoryChunk0056] at h5
  have h6 := anchorAggregatePart6_0056
  simp only [anchorAggregatePartValid6_0056, anchorHistoryChunk0056] at h6
  have h7 := anchorAggregatePart7_0056
  simp only [anchorAggregatePartValid7_0056, anchorHistoryChunk0056] at h7
  unfold anchorHistoryChunk0056
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0057 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 58368
  | _ => True

theorem anchorAggregatePart0_0057 :
    anchorAggregatePartValid0_0057 anchorHistoryChunk0057 := by
  unfold anchorAggregatePartValid0_0057 anchorHistoryChunk0057
  decide

def anchorAggregatePartValid1_0057 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 58496
  | _ => True

theorem anchorAggregatePart1_0057 :
    anchorAggregatePartValid1_0057 anchorHistoryChunk0057 := by
  unfold anchorAggregatePartValid1_0057 anchorHistoryChunk0057
  decide

def anchorAggregatePartValid2_0057 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 58624
  | _ => True

theorem anchorAggregatePart2_0057 :
    anchorAggregatePartValid2_0057 anchorHistoryChunk0057 := by
  unfold anchorAggregatePartValid2_0057 anchorHistoryChunk0057
  decide

def anchorAggregatePartValid3_0057 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 58752
  | _ => True

theorem anchorAggregatePart3_0057 :
    anchorAggregatePartValid3_0057 anchorHistoryChunk0057 := by
  unfold anchorAggregatePartValid3_0057 anchorHistoryChunk0057
  decide

def anchorAggregatePartValid4_0057 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 58880
  | _ => True

theorem anchorAggregatePart4_0057 :
    anchorAggregatePartValid4_0057 anchorHistoryChunk0057 := by
  unfold anchorAggregatePartValid4_0057 anchorHistoryChunk0057
  decide

def anchorAggregatePartValid5_0057 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 59008
  | _ => True

theorem anchorAggregatePart5_0057 :
    anchorAggregatePartValid5_0057 anchorHistoryChunk0057 := by
  unfold anchorAggregatePartValid5_0057 anchorHistoryChunk0057
  decide

def anchorAggregatePartValid6_0057 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 59136
  | _ => True

theorem anchorAggregatePart6_0057 :
    anchorAggregatePartValid6_0057 anchorHistoryChunk0057 := by
  unfold anchorAggregatePartValid6_0057 anchorHistoryChunk0057
  decide

def anchorAggregatePartValid7_0057 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 59264
  | _ => True

theorem anchorAggregatePart7_0057 :
    anchorAggregatePartValid7_0057 anchorHistoryChunk0057 := by
  unfold anchorAggregatePartValid7_0057 anchorHistoryChunk0057
  decide

theorem anchorRange_0057 :
    anchorHistoryChunk0057.IndexedValid squarefreeOracle 5000000 58368 := by
  have h0 := anchorAggregatePart0_0057
  simp only [anchorAggregatePartValid0_0057, anchorHistoryChunk0057] at h0
  have h1 := anchorAggregatePart1_0057
  simp only [anchorAggregatePartValid1_0057, anchorHistoryChunk0057] at h1
  have h2 := anchorAggregatePart2_0057
  simp only [anchorAggregatePartValid2_0057, anchorHistoryChunk0057] at h2
  have h3 := anchorAggregatePart3_0057
  simp only [anchorAggregatePartValid3_0057, anchorHistoryChunk0057] at h3
  have h4 := anchorAggregatePart4_0057
  simp only [anchorAggregatePartValid4_0057, anchorHistoryChunk0057] at h4
  have h5 := anchorAggregatePart5_0057
  simp only [anchorAggregatePartValid5_0057, anchorHistoryChunk0057] at h5
  have h6 := anchorAggregatePart6_0057
  simp only [anchorAggregatePartValid6_0057, anchorHistoryChunk0057] at h6
  have h7 := anchorAggregatePart7_0057
  simp only [anchorAggregatePartValid7_0057, anchorHistoryChunk0057] at h7
  unfold anchorHistoryChunk0057
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0058 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 59392
  | _ => True

theorem anchorAggregatePart0_0058 :
    anchorAggregatePartValid0_0058 anchorHistoryChunk0058 := by
  unfold anchorAggregatePartValid0_0058 anchorHistoryChunk0058
  decide

def anchorAggregatePartValid1_0058 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 59520
  | _ => True

theorem anchorAggregatePart1_0058 :
    anchorAggregatePartValid1_0058 anchorHistoryChunk0058 := by
  unfold anchorAggregatePartValid1_0058 anchorHistoryChunk0058
  decide

def anchorAggregatePartValid2_0058 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 59648
  | _ => True

theorem anchorAggregatePart2_0058 :
    anchorAggregatePartValid2_0058 anchorHistoryChunk0058 := by
  unfold anchorAggregatePartValid2_0058 anchorHistoryChunk0058
  decide

def anchorAggregatePartValid3_0058 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 59776
  | _ => True

theorem anchorAggregatePart3_0058 :
    anchorAggregatePartValid3_0058 anchorHistoryChunk0058 := by
  unfold anchorAggregatePartValid3_0058 anchorHistoryChunk0058
  decide

def anchorAggregatePartValid4_0058 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 59904
  | _ => True

theorem anchorAggregatePart4_0058 :
    anchorAggregatePartValid4_0058 anchorHistoryChunk0058 := by
  unfold anchorAggregatePartValid4_0058 anchorHistoryChunk0058
  decide

def anchorAggregatePartValid5_0058 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 60032
  | _ => True

theorem anchorAggregatePart5_0058 :
    anchorAggregatePartValid5_0058 anchorHistoryChunk0058 := by
  unfold anchorAggregatePartValid5_0058 anchorHistoryChunk0058
  decide

def anchorAggregatePartValid6_0058 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 60160
  | _ => True

theorem anchorAggregatePart6_0058 :
    anchorAggregatePartValid6_0058 anchorHistoryChunk0058 := by
  unfold anchorAggregatePartValid6_0058 anchorHistoryChunk0058
  decide

def anchorAggregatePartValid7_0058 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 60288
  | _ => True

theorem anchorAggregatePart7_0058 :
    anchorAggregatePartValid7_0058 anchorHistoryChunk0058 := by
  unfold anchorAggregatePartValid7_0058 anchorHistoryChunk0058
  decide

theorem anchorRange_0058 :
    anchorHistoryChunk0058.IndexedValid squarefreeOracle 5000000 59392 := by
  have h0 := anchorAggregatePart0_0058
  simp only [anchorAggregatePartValid0_0058, anchorHistoryChunk0058] at h0
  have h1 := anchorAggregatePart1_0058
  simp only [anchorAggregatePartValid1_0058, anchorHistoryChunk0058] at h1
  have h2 := anchorAggregatePart2_0058
  simp only [anchorAggregatePartValid2_0058, anchorHistoryChunk0058] at h2
  have h3 := anchorAggregatePart3_0058
  simp only [anchorAggregatePartValid3_0058, anchorHistoryChunk0058] at h3
  have h4 := anchorAggregatePart4_0058
  simp only [anchorAggregatePartValid4_0058, anchorHistoryChunk0058] at h4
  have h5 := anchorAggregatePart5_0058
  simp only [anchorAggregatePartValid5_0058, anchorHistoryChunk0058] at h5
  have h6 := anchorAggregatePart6_0058
  simp only [anchorAggregatePartValid6_0058, anchorHistoryChunk0058] at h6
  have h7 := anchorAggregatePart7_0058
  simp only [anchorAggregatePartValid7_0058, anchorHistoryChunk0058] at h7
  unfold anchorHistoryChunk0058
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0059 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 60416
  | _ => True

theorem anchorAggregatePart0_0059 :
    anchorAggregatePartValid0_0059 anchorHistoryChunk0059 := by
  unfold anchorAggregatePartValid0_0059 anchorHistoryChunk0059
  decide

def anchorAggregatePartValid1_0059 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 60544
  | _ => True

theorem anchorAggregatePart1_0059 :
    anchorAggregatePartValid1_0059 anchorHistoryChunk0059 := by
  unfold anchorAggregatePartValid1_0059 anchorHistoryChunk0059
  decide

def anchorAggregatePartValid2_0059 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 60672
  | _ => True

theorem anchorAggregatePart2_0059 :
    anchorAggregatePartValid2_0059 anchorHistoryChunk0059 := by
  unfold anchorAggregatePartValid2_0059 anchorHistoryChunk0059
  decide

def anchorAggregatePartValid3_0059 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 60800
  | _ => True

theorem anchorAggregatePart3_0059 :
    anchorAggregatePartValid3_0059 anchorHistoryChunk0059 := by
  unfold anchorAggregatePartValid3_0059 anchorHistoryChunk0059
  decide

def anchorAggregatePartValid4_0059 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 60928
  | _ => True

theorem anchorAggregatePart4_0059 :
    anchorAggregatePartValid4_0059 anchorHistoryChunk0059 := by
  unfold anchorAggregatePartValid4_0059 anchorHistoryChunk0059
  decide

def anchorAggregatePartValid5_0059 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 61056
  | _ => True

theorem anchorAggregatePart5_0059 :
    anchorAggregatePartValid5_0059 anchorHistoryChunk0059 := by
  unfold anchorAggregatePartValid5_0059 anchorHistoryChunk0059
  decide

def anchorAggregatePartValid6_0059 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 61184
  | _ => True

theorem anchorAggregatePart6_0059 :
    anchorAggregatePartValid6_0059 anchorHistoryChunk0059 := by
  unfold anchorAggregatePartValid6_0059 anchorHistoryChunk0059
  decide

def anchorAggregatePartValid7_0059 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 61312
  | _ => True

theorem anchorAggregatePart7_0059 :
    anchorAggregatePartValid7_0059 anchorHistoryChunk0059 := by
  unfold anchorAggregatePartValid7_0059 anchorHistoryChunk0059
  decide

theorem anchorRange_0059 :
    anchorHistoryChunk0059.IndexedValid squarefreeOracle 5000000 60416 := by
  have h0 := anchorAggregatePart0_0059
  simp only [anchorAggregatePartValid0_0059, anchorHistoryChunk0059] at h0
  have h1 := anchorAggregatePart1_0059
  simp only [anchorAggregatePartValid1_0059, anchorHistoryChunk0059] at h1
  have h2 := anchorAggregatePart2_0059
  simp only [anchorAggregatePartValid2_0059, anchorHistoryChunk0059] at h2
  have h3 := anchorAggregatePart3_0059
  simp only [anchorAggregatePartValid3_0059, anchorHistoryChunk0059] at h3
  have h4 := anchorAggregatePart4_0059
  simp only [anchorAggregatePartValid4_0059, anchorHistoryChunk0059] at h4
  have h5 := anchorAggregatePart5_0059
  simp only [anchorAggregatePartValid5_0059, anchorHistoryChunk0059] at h5
  have h6 := anchorAggregatePart6_0059
  simp only [anchorAggregatePartValid6_0059, anchorHistoryChunk0059] at h6
  have h7 := anchorAggregatePart7_0059
  simp only [anchorAggregatePartValid7_0059, anchorHistoryChunk0059] at h7
  unfold anchorHistoryChunk0059
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
