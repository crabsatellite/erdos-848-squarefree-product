import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0036
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0037
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0038
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0039

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0036, 0037, 0038, 0039 -/

def anchorAggregatePartValid0_0036 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 36864
  | _ => True

theorem anchorAggregatePart0_0036 :
    anchorAggregatePartValid0_0036 anchorHistoryChunk0036 := by
  unfold anchorAggregatePartValid0_0036 anchorHistoryChunk0036
  decide

def anchorAggregatePartValid1_0036 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 36992
  | _ => True

theorem anchorAggregatePart1_0036 :
    anchorAggregatePartValid1_0036 anchorHistoryChunk0036 := by
  unfold anchorAggregatePartValid1_0036 anchorHistoryChunk0036
  decide

def anchorAggregatePartValid2_0036 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 37120
  | _ => True

theorem anchorAggregatePart2_0036 :
    anchorAggregatePartValid2_0036 anchorHistoryChunk0036 := by
  unfold anchorAggregatePartValid2_0036 anchorHistoryChunk0036
  decide

def anchorAggregatePartValid3_0036 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 37248
  | _ => True

theorem anchorAggregatePart3_0036 :
    anchorAggregatePartValid3_0036 anchorHistoryChunk0036 := by
  unfold anchorAggregatePartValid3_0036 anchorHistoryChunk0036
  decide

def anchorAggregatePartValid4_0036 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 37376
  | _ => True

theorem anchorAggregatePart4_0036 :
    anchorAggregatePartValid4_0036 anchorHistoryChunk0036 := by
  unfold anchorAggregatePartValid4_0036 anchorHistoryChunk0036
  decide

def anchorAggregatePartValid5_0036 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 37504
  | _ => True

theorem anchorAggregatePart5_0036 :
    anchorAggregatePartValid5_0036 anchorHistoryChunk0036 := by
  unfold anchorAggregatePartValid5_0036 anchorHistoryChunk0036
  decide

def anchorAggregatePartValid6_0036 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 37632
  | _ => True

theorem anchorAggregatePart6_0036 :
    anchorAggregatePartValid6_0036 anchorHistoryChunk0036 := by
  unfold anchorAggregatePartValid6_0036 anchorHistoryChunk0036
  decide

def anchorAggregatePartValid7_0036 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 37760
  | _ => True

theorem anchorAggregatePart7_0036 :
    anchorAggregatePartValid7_0036 anchorHistoryChunk0036 := by
  unfold anchorAggregatePartValid7_0036 anchorHistoryChunk0036
  decide

theorem anchorRange_0036 :
    anchorHistoryChunk0036.IndexedValid squarefreeOracle 5000000 36864 := by
  have h0 := anchorAggregatePart0_0036
  simp only [anchorAggregatePartValid0_0036, anchorHistoryChunk0036] at h0
  have h1 := anchorAggregatePart1_0036
  simp only [anchorAggregatePartValid1_0036, anchorHistoryChunk0036] at h1
  have h2 := anchorAggregatePart2_0036
  simp only [anchorAggregatePartValid2_0036, anchorHistoryChunk0036] at h2
  have h3 := anchorAggregatePart3_0036
  simp only [anchorAggregatePartValid3_0036, anchorHistoryChunk0036] at h3
  have h4 := anchorAggregatePart4_0036
  simp only [anchorAggregatePartValid4_0036, anchorHistoryChunk0036] at h4
  have h5 := anchorAggregatePart5_0036
  simp only [anchorAggregatePartValid5_0036, anchorHistoryChunk0036] at h5
  have h6 := anchorAggregatePart6_0036
  simp only [anchorAggregatePartValid6_0036, anchorHistoryChunk0036] at h6
  have h7 := anchorAggregatePart7_0036
  simp only [anchorAggregatePartValid7_0036, anchorHistoryChunk0036] at h7
  unfold anchorHistoryChunk0036
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0037 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 37888
  | _ => True

theorem anchorAggregatePart0_0037 :
    anchorAggregatePartValid0_0037 anchorHistoryChunk0037 := by
  unfold anchorAggregatePartValid0_0037 anchorHistoryChunk0037
  decide

def anchorAggregatePartValid1_0037 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 38016
  | _ => True

theorem anchorAggregatePart1_0037 :
    anchorAggregatePartValid1_0037 anchorHistoryChunk0037 := by
  unfold anchorAggregatePartValid1_0037 anchorHistoryChunk0037
  decide

def anchorAggregatePartValid2_0037 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 38144
  | _ => True

theorem anchorAggregatePart2_0037 :
    anchorAggregatePartValid2_0037 anchorHistoryChunk0037 := by
  unfold anchorAggregatePartValid2_0037 anchorHistoryChunk0037
  decide

def anchorAggregatePartValid3_0037 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 38272
  | _ => True

theorem anchorAggregatePart3_0037 :
    anchorAggregatePartValid3_0037 anchorHistoryChunk0037 := by
  unfold anchorAggregatePartValid3_0037 anchorHistoryChunk0037
  decide

def anchorAggregatePartValid4_0037 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 38400
  | _ => True

theorem anchorAggregatePart4_0037 :
    anchorAggregatePartValid4_0037 anchorHistoryChunk0037 := by
  unfold anchorAggregatePartValid4_0037 anchorHistoryChunk0037
  decide

def anchorAggregatePartValid5_0037 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 38528
  | _ => True

theorem anchorAggregatePart5_0037 :
    anchorAggregatePartValid5_0037 anchorHistoryChunk0037 := by
  unfold anchorAggregatePartValid5_0037 anchorHistoryChunk0037
  decide

def anchorAggregatePartValid6_0037 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 38656
  | _ => True

theorem anchorAggregatePart6_0037 :
    anchorAggregatePartValid6_0037 anchorHistoryChunk0037 := by
  unfold anchorAggregatePartValid6_0037 anchorHistoryChunk0037
  decide

def anchorAggregatePartValid7_0037 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 38784
  | _ => True

theorem anchorAggregatePart7_0037 :
    anchorAggregatePartValid7_0037 anchorHistoryChunk0037 := by
  unfold anchorAggregatePartValid7_0037 anchorHistoryChunk0037
  decide

theorem anchorRange_0037 :
    anchorHistoryChunk0037.IndexedValid squarefreeOracle 5000000 37888 := by
  have h0 := anchorAggregatePart0_0037
  simp only [anchorAggregatePartValid0_0037, anchorHistoryChunk0037] at h0
  have h1 := anchorAggregatePart1_0037
  simp only [anchorAggregatePartValid1_0037, anchorHistoryChunk0037] at h1
  have h2 := anchorAggregatePart2_0037
  simp only [anchorAggregatePartValid2_0037, anchorHistoryChunk0037] at h2
  have h3 := anchorAggregatePart3_0037
  simp only [anchorAggregatePartValid3_0037, anchorHistoryChunk0037] at h3
  have h4 := anchorAggregatePart4_0037
  simp only [anchorAggregatePartValid4_0037, anchorHistoryChunk0037] at h4
  have h5 := anchorAggregatePart5_0037
  simp only [anchorAggregatePartValid5_0037, anchorHistoryChunk0037] at h5
  have h6 := anchorAggregatePart6_0037
  simp only [anchorAggregatePartValid6_0037, anchorHistoryChunk0037] at h6
  have h7 := anchorAggregatePart7_0037
  simp only [anchorAggregatePartValid7_0037, anchorHistoryChunk0037] at h7
  unfold anchorHistoryChunk0037
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0038 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 38912
  | _ => True

theorem anchorAggregatePart0_0038 :
    anchorAggregatePartValid0_0038 anchorHistoryChunk0038 := by
  unfold anchorAggregatePartValid0_0038 anchorHistoryChunk0038
  decide

def anchorAggregatePartValid1_0038 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 39040
  | _ => True

theorem anchorAggregatePart1_0038 :
    anchorAggregatePartValid1_0038 anchorHistoryChunk0038 := by
  unfold anchorAggregatePartValid1_0038 anchorHistoryChunk0038
  decide

def anchorAggregatePartValid2_0038 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 39168
  | _ => True

theorem anchorAggregatePart2_0038 :
    anchorAggregatePartValid2_0038 anchorHistoryChunk0038 := by
  unfold anchorAggregatePartValid2_0038 anchorHistoryChunk0038
  decide

def anchorAggregatePartValid3_0038 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 39296
  | _ => True

theorem anchorAggregatePart3_0038 :
    anchorAggregatePartValid3_0038 anchorHistoryChunk0038 := by
  unfold anchorAggregatePartValid3_0038 anchorHistoryChunk0038
  decide

def anchorAggregatePartValid4_0038 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 39424
  | _ => True

theorem anchorAggregatePart4_0038 :
    anchorAggregatePartValid4_0038 anchorHistoryChunk0038 := by
  unfold anchorAggregatePartValid4_0038 anchorHistoryChunk0038
  decide

def anchorAggregatePartValid5_0038 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 39552
  | _ => True

theorem anchorAggregatePart5_0038 :
    anchorAggregatePartValid5_0038 anchorHistoryChunk0038 := by
  unfold anchorAggregatePartValid5_0038 anchorHistoryChunk0038
  decide

def anchorAggregatePartValid6_0038 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 39680
  | _ => True

theorem anchorAggregatePart6_0038 :
    anchorAggregatePartValid6_0038 anchorHistoryChunk0038 := by
  unfold anchorAggregatePartValid6_0038 anchorHistoryChunk0038
  decide

def anchorAggregatePartValid7_0038 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 39808
  | _ => True

theorem anchorAggregatePart7_0038 :
    anchorAggregatePartValid7_0038 anchorHistoryChunk0038 := by
  unfold anchorAggregatePartValid7_0038 anchorHistoryChunk0038
  decide

theorem anchorRange_0038 :
    anchorHistoryChunk0038.IndexedValid squarefreeOracle 5000000 38912 := by
  have h0 := anchorAggregatePart0_0038
  simp only [anchorAggregatePartValid0_0038, anchorHistoryChunk0038] at h0
  have h1 := anchorAggregatePart1_0038
  simp only [anchorAggregatePartValid1_0038, anchorHistoryChunk0038] at h1
  have h2 := anchorAggregatePart2_0038
  simp only [anchorAggregatePartValid2_0038, anchorHistoryChunk0038] at h2
  have h3 := anchorAggregatePart3_0038
  simp only [anchorAggregatePartValid3_0038, anchorHistoryChunk0038] at h3
  have h4 := anchorAggregatePart4_0038
  simp only [anchorAggregatePartValid4_0038, anchorHistoryChunk0038] at h4
  have h5 := anchorAggregatePart5_0038
  simp only [anchorAggregatePartValid5_0038, anchorHistoryChunk0038] at h5
  have h6 := anchorAggregatePart6_0038
  simp only [anchorAggregatePartValid6_0038, anchorHistoryChunk0038] at h6
  have h7 := anchorAggregatePart7_0038
  simp only [anchorAggregatePartValid7_0038, anchorHistoryChunk0038] at h7
  unfold anchorHistoryChunk0038
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0039 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 39936
  | _ => True

theorem anchorAggregatePart0_0039 :
    anchorAggregatePartValid0_0039 anchorHistoryChunk0039 := by
  unfold anchorAggregatePartValid0_0039 anchorHistoryChunk0039
  decide

def anchorAggregatePartValid1_0039 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 40064
  | _ => True

theorem anchorAggregatePart1_0039 :
    anchorAggregatePartValid1_0039 anchorHistoryChunk0039 := by
  unfold anchorAggregatePartValid1_0039 anchorHistoryChunk0039
  decide

def anchorAggregatePartValid2_0039 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 40192
  | _ => True

theorem anchorAggregatePart2_0039 :
    anchorAggregatePartValid2_0039 anchorHistoryChunk0039 := by
  unfold anchorAggregatePartValid2_0039 anchorHistoryChunk0039
  decide

def anchorAggregatePartValid3_0039 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 40320
  | _ => True

theorem anchorAggregatePart3_0039 :
    anchorAggregatePartValid3_0039 anchorHistoryChunk0039 := by
  unfold anchorAggregatePartValid3_0039 anchorHistoryChunk0039
  decide

def anchorAggregatePartValid4_0039 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 40448
  | _ => True

theorem anchorAggregatePart4_0039 :
    anchorAggregatePartValid4_0039 anchorHistoryChunk0039 := by
  unfold anchorAggregatePartValid4_0039 anchorHistoryChunk0039
  decide

def anchorAggregatePartValid5_0039 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 40576
  | _ => True

theorem anchorAggregatePart5_0039 :
    anchorAggregatePartValid5_0039 anchorHistoryChunk0039 := by
  unfold anchorAggregatePartValid5_0039 anchorHistoryChunk0039
  decide

def anchorAggregatePartValid6_0039 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 40704
  | _ => True

theorem anchorAggregatePart6_0039 :
    anchorAggregatePartValid6_0039 anchorHistoryChunk0039 := by
  unfold anchorAggregatePartValid6_0039 anchorHistoryChunk0039
  decide

def anchorAggregatePartValid7_0039 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 40832
  | _ => True

theorem anchorAggregatePart7_0039 :
    anchorAggregatePartValid7_0039 anchorHistoryChunk0039 := by
  unfold anchorAggregatePartValid7_0039 anchorHistoryChunk0039
  decide

theorem anchorRange_0039 :
    anchorHistoryChunk0039.IndexedValid squarefreeOracle 5000000 39936 := by
  have h0 := anchorAggregatePart0_0039
  simp only [anchorAggregatePartValid0_0039, anchorHistoryChunk0039] at h0
  have h1 := anchorAggregatePart1_0039
  simp only [anchorAggregatePartValid1_0039, anchorHistoryChunk0039] at h1
  have h2 := anchorAggregatePart2_0039
  simp only [anchorAggregatePartValid2_0039, anchorHistoryChunk0039] at h2
  have h3 := anchorAggregatePart3_0039
  simp only [anchorAggregatePartValid3_0039, anchorHistoryChunk0039] at h3
  have h4 := anchorAggregatePart4_0039
  simp only [anchorAggregatePartValid4_0039, anchorHistoryChunk0039] at h4
  have h5 := anchorAggregatePart5_0039
  simp only [anchorAggregatePartValid5_0039, anchorHistoryChunk0039] at h5
  have h6 := anchorAggregatePart6_0039
  simp only [anchorAggregatePartValid6_0039, anchorHistoryChunk0039] at h6
  have h7 := anchorAggregatePart7_0039
  simp only [anchorAggregatePartValid7_0039, anchorHistoryChunk0039] at h7
  unfold anchorHistoryChunk0039
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
