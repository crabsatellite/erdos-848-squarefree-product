import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0052
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0053
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0054
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0055

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0052, 0053, 0054, 0055 -/

def anchorAggregatePartValid0_0052 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 53248
  | _ => True

theorem anchorAggregatePart0_0052 :
    anchorAggregatePartValid0_0052 anchorHistoryChunk0052 := by
  unfold anchorAggregatePartValid0_0052 anchorHistoryChunk0052
  decide

def anchorAggregatePartValid1_0052 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 53376
  | _ => True

theorem anchorAggregatePart1_0052 :
    anchorAggregatePartValid1_0052 anchorHistoryChunk0052 := by
  unfold anchorAggregatePartValid1_0052 anchorHistoryChunk0052
  decide

def anchorAggregatePartValid2_0052 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 53504
  | _ => True

theorem anchorAggregatePart2_0052 :
    anchorAggregatePartValid2_0052 anchorHistoryChunk0052 := by
  unfold anchorAggregatePartValid2_0052 anchorHistoryChunk0052
  decide

def anchorAggregatePartValid3_0052 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 53632
  | _ => True

theorem anchorAggregatePart3_0052 :
    anchorAggregatePartValid3_0052 anchorHistoryChunk0052 := by
  unfold anchorAggregatePartValid3_0052 anchorHistoryChunk0052
  decide

def anchorAggregatePartValid4_0052 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 53760
  | _ => True

theorem anchorAggregatePart4_0052 :
    anchorAggregatePartValid4_0052 anchorHistoryChunk0052 := by
  unfold anchorAggregatePartValid4_0052 anchorHistoryChunk0052
  decide

def anchorAggregatePartValid5_0052 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 53888
  | _ => True

theorem anchorAggregatePart5_0052 :
    anchorAggregatePartValid5_0052 anchorHistoryChunk0052 := by
  unfold anchorAggregatePartValid5_0052 anchorHistoryChunk0052
  decide

def anchorAggregatePartValid6_0052 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 54016
  | _ => True

theorem anchorAggregatePart6_0052 :
    anchorAggregatePartValid6_0052 anchorHistoryChunk0052 := by
  unfold anchorAggregatePartValid6_0052 anchorHistoryChunk0052
  decide

def anchorAggregatePartValid7_0052 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 54144
  | _ => True

theorem anchorAggregatePart7_0052 :
    anchorAggregatePartValid7_0052 anchorHistoryChunk0052 := by
  unfold anchorAggregatePartValid7_0052 anchorHistoryChunk0052
  decide

theorem anchorRange_0052 :
    anchorHistoryChunk0052.IndexedValid squarefreeOracle 5000000 53248 := by
  have h0 := anchorAggregatePart0_0052
  simp only [anchorAggregatePartValid0_0052, anchorHistoryChunk0052] at h0
  have h1 := anchorAggregatePart1_0052
  simp only [anchorAggregatePartValid1_0052, anchorHistoryChunk0052] at h1
  have h2 := anchorAggregatePart2_0052
  simp only [anchorAggregatePartValid2_0052, anchorHistoryChunk0052] at h2
  have h3 := anchorAggregatePart3_0052
  simp only [anchorAggregatePartValid3_0052, anchorHistoryChunk0052] at h3
  have h4 := anchorAggregatePart4_0052
  simp only [anchorAggregatePartValid4_0052, anchorHistoryChunk0052] at h4
  have h5 := anchorAggregatePart5_0052
  simp only [anchorAggregatePartValid5_0052, anchorHistoryChunk0052] at h5
  have h6 := anchorAggregatePart6_0052
  simp only [anchorAggregatePartValid6_0052, anchorHistoryChunk0052] at h6
  have h7 := anchorAggregatePart7_0052
  simp only [anchorAggregatePartValid7_0052, anchorHistoryChunk0052] at h7
  unfold anchorHistoryChunk0052
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0053 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 54272
  | _ => True

theorem anchorAggregatePart0_0053 :
    anchorAggregatePartValid0_0053 anchorHistoryChunk0053 := by
  unfold anchorAggregatePartValid0_0053 anchorHistoryChunk0053
  decide

def anchorAggregatePartValid1_0053 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 54400
  | _ => True

theorem anchorAggregatePart1_0053 :
    anchorAggregatePartValid1_0053 anchorHistoryChunk0053 := by
  unfold anchorAggregatePartValid1_0053 anchorHistoryChunk0053
  decide

def anchorAggregatePartValid2_0053 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 54528
  | _ => True

theorem anchorAggregatePart2_0053 :
    anchorAggregatePartValid2_0053 anchorHistoryChunk0053 := by
  unfold anchorAggregatePartValid2_0053 anchorHistoryChunk0053
  decide

def anchorAggregatePartValid3_0053 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 54656
  | _ => True

theorem anchorAggregatePart3_0053 :
    anchorAggregatePartValid3_0053 anchorHistoryChunk0053 := by
  unfold anchorAggregatePartValid3_0053 anchorHistoryChunk0053
  decide

def anchorAggregatePartValid4_0053 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 54784
  | _ => True

theorem anchorAggregatePart4_0053 :
    anchorAggregatePartValid4_0053 anchorHistoryChunk0053 := by
  unfold anchorAggregatePartValid4_0053 anchorHistoryChunk0053
  decide

def anchorAggregatePartValid5_0053 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 54912
  | _ => True

theorem anchorAggregatePart5_0053 :
    anchorAggregatePartValid5_0053 anchorHistoryChunk0053 := by
  unfold anchorAggregatePartValid5_0053 anchorHistoryChunk0053
  decide

def anchorAggregatePartValid6_0053 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 55040
  | _ => True

theorem anchorAggregatePart6_0053 :
    anchorAggregatePartValid6_0053 anchorHistoryChunk0053 := by
  unfold anchorAggregatePartValid6_0053 anchorHistoryChunk0053
  decide

def anchorAggregatePartValid7_0053 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 55168
  | _ => True

theorem anchorAggregatePart7_0053 :
    anchorAggregatePartValid7_0053 anchorHistoryChunk0053 := by
  unfold anchorAggregatePartValid7_0053 anchorHistoryChunk0053
  decide

theorem anchorRange_0053 :
    anchorHistoryChunk0053.IndexedValid squarefreeOracle 5000000 54272 := by
  have h0 := anchorAggregatePart0_0053
  simp only [anchorAggregatePartValid0_0053, anchorHistoryChunk0053] at h0
  have h1 := anchorAggregatePart1_0053
  simp only [anchorAggregatePartValid1_0053, anchorHistoryChunk0053] at h1
  have h2 := anchorAggregatePart2_0053
  simp only [anchorAggregatePartValid2_0053, anchorHistoryChunk0053] at h2
  have h3 := anchorAggregatePart3_0053
  simp only [anchorAggregatePartValid3_0053, anchorHistoryChunk0053] at h3
  have h4 := anchorAggregatePart4_0053
  simp only [anchorAggregatePartValid4_0053, anchorHistoryChunk0053] at h4
  have h5 := anchorAggregatePart5_0053
  simp only [anchorAggregatePartValid5_0053, anchorHistoryChunk0053] at h5
  have h6 := anchorAggregatePart6_0053
  simp only [anchorAggregatePartValid6_0053, anchorHistoryChunk0053] at h6
  have h7 := anchorAggregatePart7_0053
  simp only [anchorAggregatePartValid7_0053, anchorHistoryChunk0053] at h7
  unfold anchorHistoryChunk0053
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0054 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 55296
  | _ => True

theorem anchorAggregatePart0_0054 :
    anchorAggregatePartValid0_0054 anchorHistoryChunk0054 := by
  unfold anchorAggregatePartValid0_0054 anchorHistoryChunk0054
  decide

def anchorAggregatePartValid1_0054 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 55424
  | _ => True

theorem anchorAggregatePart1_0054 :
    anchorAggregatePartValid1_0054 anchorHistoryChunk0054 := by
  unfold anchorAggregatePartValid1_0054 anchorHistoryChunk0054
  decide

def anchorAggregatePartValid2_0054 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 55552
  | _ => True

theorem anchorAggregatePart2_0054 :
    anchorAggregatePartValid2_0054 anchorHistoryChunk0054 := by
  unfold anchorAggregatePartValid2_0054 anchorHistoryChunk0054
  decide

def anchorAggregatePartValid3_0054 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 55680
  | _ => True

theorem anchorAggregatePart3_0054 :
    anchorAggregatePartValid3_0054 anchorHistoryChunk0054 := by
  unfold anchorAggregatePartValid3_0054 anchorHistoryChunk0054
  decide

def anchorAggregatePartValid4_0054 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 55808
  | _ => True

theorem anchorAggregatePart4_0054 :
    anchorAggregatePartValid4_0054 anchorHistoryChunk0054 := by
  unfold anchorAggregatePartValid4_0054 anchorHistoryChunk0054
  decide

def anchorAggregatePartValid5_0054 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 55936
  | _ => True

theorem anchorAggregatePart5_0054 :
    anchorAggregatePartValid5_0054 anchorHistoryChunk0054 := by
  unfold anchorAggregatePartValid5_0054 anchorHistoryChunk0054
  decide

def anchorAggregatePartValid6_0054 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 56064
  | _ => True

theorem anchorAggregatePart6_0054 :
    anchorAggregatePartValid6_0054 anchorHistoryChunk0054 := by
  unfold anchorAggregatePartValid6_0054 anchorHistoryChunk0054
  decide

def anchorAggregatePartValid7_0054 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 56192
  | _ => True

theorem anchorAggregatePart7_0054 :
    anchorAggregatePartValid7_0054 anchorHistoryChunk0054 := by
  unfold anchorAggregatePartValid7_0054 anchorHistoryChunk0054
  decide

theorem anchorRange_0054 :
    anchorHistoryChunk0054.IndexedValid squarefreeOracle 5000000 55296 := by
  have h0 := anchorAggregatePart0_0054
  simp only [anchorAggregatePartValid0_0054, anchorHistoryChunk0054] at h0
  have h1 := anchorAggregatePart1_0054
  simp only [anchorAggregatePartValid1_0054, anchorHistoryChunk0054] at h1
  have h2 := anchorAggregatePart2_0054
  simp only [anchorAggregatePartValid2_0054, anchorHistoryChunk0054] at h2
  have h3 := anchorAggregatePart3_0054
  simp only [anchorAggregatePartValid3_0054, anchorHistoryChunk0054] at h3
  have h4 := anchorAggregatePart4_0054
  simp only [anchorAggregatePartValid4_0054, anchorHistoryChunk0054] at h4
  have h5 := anchorAggregatePart5_0054
  simp only [anchorAggregatePartValid5_0054, anchorHistoryChunk0054] at h5
  have h6 := anchorAggregatePart6_0054
  simp only [anchorAggregatePartValid6_0054, anchorHistoryChunk0054] at h6
  have h7 := anchorAggregatePart7_0054
  simp only [anchorAggregatePartValid7_0054, anchorHistoryChunk0054] at h7
  unfold anchorHistoryChunk0054
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0055 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 56320
  | _ => True

theorem anchorAggregatePart0_0055 :
    anchorAggregatePartValid0_0055 anchorHistoryChunk0055 := by
  unfold anchorAggregatePartValid0_0055 anchorHistoryChunk0055
  decide

def anchorAggregatePartValid1_0055 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 56448
  | _ => True

theorem anchorAggregatePart1_0055 :
    anchorAggregatePartValid1_0055 anchorHistoryChunk0055 := by
  unfold anchorAggregatePartValid1_0055 anchorHistoryChunk0055
  decide

def anchorAggregatePartValid2_0055 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 56576
  | _ => True

theorem anchorAggregatePart2_0055 :
    anchorAggregatePartValid2_0055 anchorHistoryChunk0055 := by
  unfold anchorAggregatePartValid2_0055 anchorHistoryChunk0055
  decide

def anchorAggregatePartValid3_0055 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 56704
  | _ => True

theorem anchorAggregatePart3_0055 :
    anchorAggregatePartValid3_0055 anchorHistoryChunk0055 := by
  unfold anchorAggregatePartValid3_0055 anchorHistoryChunk0055
  decide

def anchorAggregatePartValid4_0055 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 56832
  | _ => True

theorem anchorAggregatePart4_0055 :
    anchorAggregatePartValid4_0055 anchorHistoryChunk0055 := by
  unfold anchorAggregatePartValid4_0055 anchorHistoryChunk0055
  decide

def anchorAggregatePartValid5_0055 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 56960
  | _ => True

theorem anchorAggregatePart5_0055 :
    anchorAggregatePartValid5_0055 anchorHistoryChunk0055 := by
  unfold anchorAggregatePartValid5_0055 anchorHistoryChunk0055
  decide

def anchorAggregatePartValid6_0055 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 57088
  | _ => True

theorem anchorAggregatePart6_0055 :
    anchorAggregatePartValid6_0055 anchorHistoryChunk0055 := by
  unfold anchorAggregatePartValid6_0055 anchorHistoryChunk0055
  decide

def anchorAggregatePartValid7_0055 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 57216
  | _ => True

theorem anchorAggregatePart7_0055 :
    anchorAggregatePartValid7_0055 anchorHistoryChunk0055 := by
  unfold anchorAggregatePartValid7_0055 anchorHistoryChunk0055
  decide

theorem anchorRange_0055 :
    anchorHistoryChunk0055.IndexedValid squarefreeOracle 5000000 56320 := by
  have h0 := anchorAggregatePart0_0055
  simp only [anchorAggregatePartValid0_0055, anchorHistoryChunk0055] at h0
  have h1 := anchorAggregatePart1_0055
  simp only [anchorAggregatePartValid1_0055, anchorHistoryChunk0055] at h1
  have h2 := anchorAggregatePart2_0055
  simp only [anchorAggregatePartValid2_0055, anchorHistoryChunk0055] at h2
  have h3 := anchorAggregatePart3_0055
  simp only [anchorAggregatePartValid3_0055, anchorHistoryChunk0055] at h3
  have h4 := anchorAggregatePart4_0055
  simp only [anchorAggregatePartValid4_0055, anchorHistoryChunk0055] at h4
  have h5 := anchorAggregatePart5_0055
  simp only [anchorAggregatePartValid5_0055, anchorHistoryChunk0055] at h5
  have h6 := anchorAggregatePart6_0055
  simp only [anchorAggregatePartValid6_0055, anchorHistoryChunk0055] at h6
  have h7 := anchorAggregatePart7_0055
  simp only [anchorAggregatePartValid7_0055, anchorHistoryChunk0055] at h7
  unfold anchorHistoryChunk0055
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
