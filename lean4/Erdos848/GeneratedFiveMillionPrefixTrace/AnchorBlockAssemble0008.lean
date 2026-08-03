import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0008
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0009
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0010
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0011

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0008, 0009, 0010, 0011 -/

def anchorAggregatePartValid0_0008 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 8192
  | _ => True

theorem anchorAggregatePart0_0008 :
    anchorAggregatePartValid0_0008 anchorHistoryChunk0008 := by
  unfold anchorAggregatePartValid0_0008 anchorHistoryChunk0008
  decide

def anchorAggregatePartValid1_0008 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 8320
  | _ => True

theorem anchorAggregatePart1_0008 :
    anchorAggregatePartValid1_0008 anchorHistoryChunk0008 := by
  unfold anchorAggregatePartValid1_0008 anchorHistoryChunk0008
  decide

def anchorAggregatePartValid2_0008 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 8448
  | _ => True

theorem anchorAggregatePart2_0008 :
    anchorAggregatePartValid2_0008 anchorHistoryChunk0008 := by
  unfold anchorAggregatePartValid2_0008 anchorHistoryChunk0008
  decide

def anchorAggregatePartValid3_0008 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 8576
  | _ => True

theorem anchorAggregatePart3_0008 :
    anchorAggregatePartValid3_0008 anchorHistoryChunk0008 := by
  unfold anchorAggregatePartValid3_0008 anchorHistoryChunk0008
  decide

def anchorAggregatePartValid4_0008 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 8704
  | _ => True

theorem anchorAggregatePart4_0008 :
    anchorAggregatePartValid4_0008 anchorHistoryChunk0008 := by
  unfold anchorAggregatePartValid4_0008 anchorHistoryChunk0008
  decide

def anchorAggregatePartValid5_0008 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 8832
  | _ => True

theorem anchorAggregatePart5_0008 :
    anchorAggregatePartValid5_0008 anchorHistoryChunk0008 := by
  unfold anchorAggregatePartValid5_0008 anchorHistoryChunk0008
  decide

def anchorAggregatePartValid6_0008 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 8960
  | _ => True

theorem anchorAggregatePart6_0008 :
    anchorAggregatePartValid6_0008 anchorHistoryChunk0008 := by
  unfold anchorAggregatePartValid6_0008 anchorHistoryChunk0008
  decide

def anchorAggregatePartValid7_0008 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 9088
  | _ => True

theorem anchorAggregatePart7_0008 :
    anchorAggregatePartValid7_0008 anchorHistoryChunk0008 := by
  unfold anchorAggregatePartValid7_0008 anchorHistoryChunk0008
  decide

theorem anchorRange_0008 :
    anchorHistoryChunk0008.IndexedValid squarefreeOracle 5000000 8192 := by
  have h0 := anchorAggregatePart0_0008
  simp only [anchorAggregatePartValid0_0008, anchorHistoryChunk0008] at h0
  have h1 := anchorAggregatePart1_0008
  simp only [anchorAggregatePartValid1_0008, anchorHistoryChunk0008] at h1
  have h2 := anchorAggregatePart2_0008
  simp only [anchorAggregatePartValid2_0008, anchorHistoryChunk0008] at h2
  have h3 := anchorAggregatePart3_0008
  simp only [anchorAggregatePartValid3_0008, anchorHistoryChunk0008] at h3
  have h4 := anchorAggregatePart4_0008
  simp only [anchorAggregatePartValid4_0008, anchorHistoryChunk0008] at h4
  have h5 := anchorAggregatePart5_0008
  simp only [anchorAggregatePartValid5_0008, anchorHistoryChunk0008] at h5
  have h6 := anchorAggregatePart6_0008
  simp only [anchorAggregatePartValid6_0008, anchorHistoryChunk0008] at h6
  have h7 := anchorAggregatePart7_0008
  simp only [anchorAggregatePartValid7_0008, anchorHistoryChunk0008] at h7
  unfold anchorHistoryChunk0008
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0009 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 9216
  | _ => True

theorem anchorAggregatePart0_0009 :
    anchorAggregatePartValid0_0009 anchorHistoryChunk0009 := by
  unfold anchorAggregatePartValid0_0009 anchorHistoryChunk0009
  decide

def anchorAggregatePartValid1_0009 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 9344
  | _ => True

theorem anchorAggregatePart1_0009 :
    anchorAggregatePartValid1_0009 anchorHistoryChunk0009 := by
  unfold anchorAggregatePartValid1_0009 anchorHistoryChunk0009
  decide

def anchorAggregatePartValid2_0009 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 9472
  | _ => True

theorem anchorAggregatePart2_0009 :
    anchorAggregatePartValid2_0009 anchorHistoryChunk0009 := by
  unfold anchorAggregatePartValid2_0009 anchorHistoryChunk0009
  decide

def anchorAggregatePartValid3_0009 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 9600
  | _ => True

theorem anchorAggregatePart3_0009 :
    anchorAggregatePartValid3_0009 anchorHistoryChunk0009 := by
  unfold anchorAggregatePartValid3_0009 anchorHistoryChunk0009
  decide

def anchorAggregatePartValid4_0009 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 9728
  | _ => True

theorem anchorAggregatePart4_0009 :
    anchorAggregatePartValid4_0009 anchorHistoryChunk0009 := by
  unfold anchorAggregatePartValid4_0009 anchorHistoryChunk0009
  decide

def anchorAggregatePartValid5_0009 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 9856
  | _ => True

theorem anchorAggregatePart5_0009 :
    anchorAggregatePartValid5_0009 anchorHistoryChunk0009 := by
  unfold anchorAggregatePartValid5_0009 anchorHistoryChunk0009
  decide

def anchorAggregatePartValid6_0009 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 9984
  | _ => True

theorem anchorAggregatePart6_0009 :
    anchorAggregatePartValid6_0009 anchorHistoryChunk0009 := by
  unfold anchorAggregatePartValid6_0009 anchorHistoryChunk0009
  decide

def anchorAggregatePartValid7_0009 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 10112
  | _ => True

theorem anchorAggregatePart7_0009 :
    anchorAggregatePartValid7_0009 anchorHistoryChunk0009 := by
  unfold anchorAggregatePartValid7_0009 anchorHistoryChunk0009
  decide

theorem anchorRange_0009 :
    anchorHistoryChunk0009.IndexedValid squarefreeOracle 5000000 9216 := by
  have h0 := anchorAggregatePart0_0009
  simp only [anchorAggregatePartValid0_0009, anchorHistoryChunk0009] at h0
  have h1 := anchorAggregatePart1_0009
  simp only [anchorAggregatePartValid1_0009, anchorHistoryChunk0009] at h1
  have h2 := anchorAggregatePart2_0009
  simp only [anchorAggregatePartValid2_0009, anchorHistoryChunk0009] at h2
  have h3 := anchorAggregatePart3_0009
  simp only [anchorAggregatePartValid3_0009, anchorHistoryChunk0009] at h3
  have h4 := anchorAggregatePart4_0009
  simp only [anchorAggregatePartValid4_0009, anchorHistoryChunk0009] at h4
  have h5 := anchorAggregatePart5_0009
  simp only [anchorAggregatePartValid5_0009, anchorHistoryChunk0009] at h5
  have h6 := anchorAggregatePart6_0009
  simp only [anchorAggregatePartValid6_0009, anchorHistoryChunk0009] at h6
  have h7 := anchorAggregatePart7_0009
  simp only [anchorAggregatePartValid7_0009, anchorHistoryChunk0009] at h7
  unfold anchorHistoryChunk0009
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0010 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 10240
  | _ => True

theorem anchorAggregatePart0_0010 :
    anchorAggregatePartValid0_0010 anchorHistoryChunk0010 := by
  unfold anchorAggregatePartValid0_0010 anchorHistoryChunk0010
  decide

def anchorAggregatePartValid1_0010 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 10368
  | _ => True

theorem anchorAggregatePart1_0010 :
    anchorAggregatePartValid1_0010 anchorHistoryChunk0010 := by
  unfold anchorAggregatePartValid1_0010 anchorHistoryChunk0010
  decide

def anchorAggregatePartValid2_0010 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 10496
  | _ => True

theorem anchorAggregatePart2_0010 :
    anchorAggregatePartValid2_0010 anchorHistoryChunk0010 := by
  unfold anchorAggregatePartValid2_0010 anchorHistoryChunk0010
  decide

def anchorAggregatePartValid3_0010 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 10624
  | _ => True

theorem anchorAggregatePart3_0010 :
    anchorAggregatePartValid3_0010 anchorHistoryChunk0010 := by
  unfold anchorAggregatePartValid3_0010 anchorHistoryChunk0010
  decide

def anchorAggregatePartValid4_0010 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 10752
  | _ => True

theorem anchorAggregatePart4_0010 :
    anchorAggregatePartValid4_0010 anchorHistoryChunk0010 := by
  unfold anchorAggregatePartValid4_0010 anchorHistoryChunk0010
  decide

def anchorAggregatePartValid5_0010 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 10880
  | _ => True

theorem anchorAggregatePart5_0010 :
    anchorAggregatePartValid5_0010 anchorHistoryChunk0010 := by
  unfold anchorAggregatePartValid5_0010 anchorHistoryChunk0010
  decide

def anchorAggregatePartValid6_0010 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 11008
  | _ => True

theorem anchorAggregatePart6_0010 :
    anchorAggregatePartValid6_0010 anchorHistoryChunk0010 := by
  unfold anchorAggregatePartValid6_0010 anchorHistoryChunk0010
  decide

def anchorAggregatePartValid7_0010 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 11136
  | _ => True

theorem anchorAggregatePart7_0010 :
    anchorAggregatePartValid7_0010 anchorHistoryChunk0010 := by
  unfold anchorAggregatePartValid7_0010 anchorHistoryChunk0010
  decide

theorem anchorRange_0010 :
    anchorHistoryChunk0010.IndexedValid squarefreeOracle 5000000 10240 := by
  have h0 := anchorAggregatePart0_0010
  simp only [anchorAggregatePartValid0_0010, anchorHistoryChunk0010] at h0
  have h1 := anchorAggregatePart1_0010
  simp only [anchorAggregatePartValid1_0010, anchorHistoryChunk0010] at h1
  have h2 := anchorAggregatePart2_0010
  simp only [anchorAggregatePartValid2_0010, anchorHistoryChunk0010] at h2
  have h3 := anchorAggregatePart3_0010
  simp only [anchorAggregatePartValid3_0010, anchorHistoryChunk0010] at h3
  have h4 := anchorAggregatePart4_0010
  simp only [anchorAggregatePartValid4_0010, anchorHistoryChunk0010] at h4
  have h5 := anchorAggregatePart5_0010
  simp only [anchorAggregatePartValid5_0010, anchorHistoryChunk0010] at h5
  have h6 := anchorAggregatePart6_0010
  simp only [anchorAggregatePartValid6_0010, anchorHistoryChunk0010] at h6
  have h7 := anchorAggregatePart7_0010
  simp only [anchorAggregatePartValid7_0010, anchorHistoryChunk0010] at h7
  unfold anchorHistoryChunk0010
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0011 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 11264
  | _ => True

theorem anchorAggregatePart0_0011 :
    anchorAggregatePartValid0_0011 anchorHistoryChunk0011 := by
  unfold anchorAggregatePartValid0_0011 anchorHistoryChunk0011
  decide

def anchorAggregatePartValid1_0011 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 11392
  | _ => True

theorem anchorAggregatePart1_0011 :
    anchorAggregatePartValid1_0011 anchorHistoryChunk0011 := by
  unfold anchorAggregatePartValid1_0011 anchorHistoryChunk0011
  decide

def anchorAggregatePartValid2_0011 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 11520
  | _ => True

theorem anchorAggregatePart2_0011 :
    anchorAggregatePartValid2_0011 anchorHistoryChunk0011 := by
  unfold anchorAggregatePartValid2_0011 anchorHistoryChunk0011
  decide

def anchorAggregatePartValid3_0011 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 11648
  | _ => True

theorem anchorAggregatePart3_0011 :
    anchorAggregatePartValid3_0011 anchorHistoryChunk0011 := by
  unfold anchorAggregatePartValid3_0011 anchorHistoryChunk0011
  decide

def anchorAggregatePartValid4_0011 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 11776
  | _ => True

theorem anchorAggregatePart4_0011 :
    anchorAggregatePartValid4_0011 anchorHistoryChunk0011 := by
  unfold anchorAggregatePartValid4_0011 anchorHistoryChunk0011
  decide

def anchorAggregatePartValid5_0011 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 11904
  | _ => True

theorem anchorAggregatePart5_0011 :
    anchorAggregatePartValid5_0011 anchorHistoryChunk0011 := by
  unfold anchorAggregatePartValid5_0011 anchorHistoryChunk0011
  decide

def anchorAggregatePartValid6_0011 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 12032
  | _ => True

theorem anchorAggregatePart6_0011 :
    anchorAggregatePartValid6_0011 anchorHistoryChunk0011 := by
  unfold anchorAggregatePartValid6_0011 anchorHistoryChunk0011
  decide

def anchorAggregatePartValid7_0011 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 12160
  | _ => True

theorem anchorAggregatePart7_0011 :
    anchorAggregatePartValid7_0011 anchorHistoryChunk0011 := by
  unfold anchorAggregatePartValid7_0011 anchorHistoryChunk0011
  decide

theorem anchorRange_0011 :
    anchorHistoryChunk0011.IndexedValid squarefreeOracle 5000000 11264 := by
  have h0 := anchorAggregatePart0_0011
  simp only [anchorAggregatePartValid0_0011, anchorHistoryChunk0011] at h0
  have h1 := anchorAggregatePart1_0011
  simp only [anchorAggregatePartValid1_0011, anchorHistoryChunk0011] at h1
  have h2 := anchorAggregatePart2_0011
  simp only [anchorAggregatePartValid2_0011, anchorHistoryChunk0011] at h2
  have h3 := anchorAggregatePart3_0011
  simp only [anchorAggregatePartValid3_0011, anchorHistoryChunk0011] at h3
  have h4 := anchorAggregatePart4_0011
  simp only [anchorAggregatePartValid4_0011, anchorHistoryChunk0011] at h4
  have h5 := anchorAggregatePart5_0011
  simp only [anchorAggregatePartValid5_0011, anchorHistoryChunk0011] at h5
  have h6 := anchorAggregatePart6_0011
  simp only [anchorAggregatePartValid6_0011, anchorHistoryChunk0011] at h6
  have h7 := anchorAggregatePart7_0011
  simp only [anchorAggregatePartValid7_0011, anchorHistoryChunk0011] at h7
  unfold anchorHistoryChunk0011
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
