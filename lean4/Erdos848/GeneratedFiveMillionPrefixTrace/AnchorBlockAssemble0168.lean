import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0168
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0169
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0170
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0171

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0168, 0169, 0170, 0171 -/

def anchorAggregatePartValid0_0168 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 172032
  | _ => True

theorem anchorAggregatePart0_0168 :
    anchorAggregatePartValid0_0168 anchorHistoryChunk0168 := by
  unfold anchorAggregatePartValid0_0168 anchorHistoryChunk0168
  decide

def anchorAggregatePartValid1_0168 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 172160
  | _ => True

theorem anchorAggregatePart1_0168 :
    anchorAggregatePartValid1_0168 anchorHistoryChunk0168 := by
  unfold anchorAggregatePartValid1_0168 anchorHistoryChunk0168
  decide

def anchorAggregatePartValid2_0168 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 172288
  | _ => True

theorem anchorAggregatePart2_0168 :
    anchorAggregatePartValid2_0168 anchorHistoryChunk0168 := by
  unfold anchorAggregatePartValid2_0168 anchorHistoryChunk0168
  decide

def anchorAggregatePartValid3_0168 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 172416
  | _ => True

theorem anchorAggregatePart3_0168 :
    anchorAggregatePartValid3_0168 anchorHistoryChunk0168 := by
  unfold anchorAggregatePartValid3_0168 anchorHistoryChunk0168
  decide

def anchorAggregatePartValid4_0168 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 172544
  | _ => True

theorem anchorAggregatePart4_0168 :
    anchorAggregatePartValid4_0168 anchorHistoryChunk0168 := by
  unfold anchorAggregatePartValid4_0168 anchorHistoryChunk0168
  decide

def anchorAggregatePartValid5_0168 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 172672
  | _ => True

theorem anchorAggregatePart5_0168 :
    anchorAggregatePartValid5_0168 anchorHistoryChunk0168 := by
  unfold anchorAggregatePartValid5_0168 anchorHistoryChunk0168
  decide

def anchorAggregatePartValid6_0168 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 172800
  | _ => True

theorem anchorAggregatePart6_0168 :
    anchorAggregatePartValid6_0168 anchorHistoryChunk0168 := by
  unfold anchorAggregatePartValid6_0168 anchorHistoryChunk0168
  decide

def anchorAggregatePartValid7_0168 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 172928
  | _ => True

theorem anchorAggregatePart7_0168 :
    anchorAggregatePartValid7_0168 anchorHistoryChunk0168 := by
  unfold anchorAggregatePartValid7_0168 anchorHistoryChunk0168
  decide

theorem anchorRange_0168 :
    anchorHistoryChunk0168.IndexedValid squarefreeOracle 5000000 172032 := by
  have h0 := anchorAggregatePart0_0168
  simp only [anchorAggregatePartValid0_0168, anchorHistoryChunk0168] at h0
  have h1 := anchorAggregatePart1_0168
  simp only [anchorAggregatePartValid1_0168, anchorHistoryChunk0168] at h1
  have h2 := anchorAggregatePart2_0168
  simp only [anchorAggregatePartValid2_0168, anchorHistoryChunk0168] at h2
  have h3 := anchorAggregatePart3_0168
  simp only [anchorAggregatePartValid3_0168, anchorHistoryChunk0168] at h3
  have h4 := anchorAggregatePart4_0168
  simp only [anchorAggregatePartValid4_0168, anchorHistoryChunk0168] at h4
  have h5 := anchorAggregatePart5_0168
  simp only [anchorAggregatePartValid5_0168, anchorHistoryChunk0168] at h5
  have h6 := anchorAggregatePart6_0168
  simp only [anchorAggregatePartValid6_0168, anchorHistoryChunk0168] at h6
  have h7 := anchorAggregatePart7_0168
  simp only [anchorAggregatePartValid7_0168, anchorHistoryChunk0168] at h7
  unfold anchorHistoryChunk0168
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0169 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 173056
  | _ => True

theorem anchorAggregatePart0_0169 :
    anchorAggregatePartValid0_0169 anchorHistoryChunk0169 := by
  unfold anchorAggregatePartValid0_0169 anchorHistoryChunk0169
  decide

def anchorAggregatePartValid1_0169 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 173184
  | _ => True

theorem anchorAggregatePart1_0169 :
    anchorAggregatePartValid1_0169 anchorHistoryChunk0169 := by
  unfold anchorAggregatePartValid1_0169 anchorHistoryChunk0169
  decide

def anchorAggregatePartValid2_0169 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 173312
  | _ => True

theorem anchorAggregatePart2_0169 :
    anchorAggregatePartValid2_0169 anchorHistoryChunk0169 := by
  unfold anchorAggregatePartValid2_0169 anchorHistoryChunk0169
  decide

def anchorAggregatePartValid3_0169 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 173440
  | _ => True

theorem anchorAggregatePart3_0169 :
    anchorAggregatePartValid3_0169 anchorHistoryChunk0169 := by
  unfold anchorAggregatePartValid3_0169 anchorHistoryChunk0169
  decide

def anchorAggregatePartValid4_0169 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 173568
  | _ => True

theorem anchorAggregatePart4_0169 :
    anchorAggregatePartValid4_0169 anchorHistoryChunk0169 := by
  unfold anchorAggregatePartValid4_0169 anchorHistoryChunk0169
  decide

def anchorAggregatePartValid5_0169 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 173696
  | _ => True

theorem anchorAggregatePart5_0169 :
    anchorAggregatePartValid5_0169 anchorHistoryChunk0169 := by
  unfold anchorAggregatePartValid5_0169 anchorHistoryChunk0169
  decide

def anchorAggregatePartValid6_0169 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 173824
  | _ => True

theorem anchorAggregatePart6_0169 :
    anchorAggregatePartValid6_0169 anchorHistoryChunk0169 := by
  unfold anchorAggregatePartValid6_0169 anchorHistoryChunk0169
  decide

def anchorAggregatePartValid7_0169 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 173952
  | _ => True

theorem anchorAggregatePart7_0169 :
    anchorAggregatePartValid7_0169 anchorHistoryChunk0169 := by
  unfold anchorAggregatePartValid7_0169 anchorHistoryChunk0169
  decide

theorem anchorRange_0169 :
    anchorHistoryChunk0169.IndexedValid squarefreeOracle 5000000 173056 := by
  have h0 := anchorAggregatePart0_0169
  simp only [anchorAggregatePartValid0_0169, anchorHistoryChunk0169] at h0
  have h1 := anchorAggregatePart1_0169
  simp only [anchorAggregatePartValid1_0169, anchorHistoryChunk0169] at h1
  have h2 := anchorAggregatePart2_0169
  simp only [anchorAggregatePartValid2_0169, anchorHistoryChunk0169] at h2
  have h3 := anchorAggregatePart3_0169
  simp only [anchorAggregatePartValid3_0169, anchorHistoryChunk0169] at h3
  have h4 := anchorAggregatePart4_0169
  simp only [anchorAggregatePartValid4_0169, anchorHistoryChunk0169] at h4
  have h5 := anchorAggregatePart5_0169
  simp only [anchorAggregatePartValid5_0169, anchorHistoryChunk0169] at h5
  have h6 := anchorAggregatePart6_0169
  simp only [anchorAggregatePartValid6_0169, anchorHistoryChunk0169] at h6
  have h7 := anchorAggregatePart7_0169
  simp only [anchorAggregatePartValid7_0169, anchorHistoryChunk0169] at h7
  unfold anchorHistoryChunk0169
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0170 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 174080
  | _ => True

theorem anchorAggregatePart0_0170 :
    anchorAggregatePartValid0_0170 anchorHistoryChunk0170 := by
  unfold anchorAggregatePartValid0_0170 anchorHistoryChunk0170
  decide

def anchorAggregatePartValid1_0170 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 174208
  | _ => True

theorem anchorAggregatePart1_0170 :
    anchorAggregatePartValid1_0170 anchorHistoryChunk0170 := by
  unfold anchorAggregatePartValid1_0170 anchorHistoryChunk0170
  decide

def anchorAggregatePartValid2_0170 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 174336
  | _ => True

theorem anchorAggregatePart2_0170 :
    anchorAggregatePartValid2_0170 anchorHistoryChunk0170 := by
  unfold anchorAggregatePartValid2_0170 anchorHistoryChunk0170
  decide

def anchorAggregatePartValid3_0170 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 174464
  | _ => True

theorem anchorAggregatePart3_0170 :
    anchorAggregatePartValid3_0170 anchorHistoryChunk0170 := by
  unfold anchorAggregatePartValid3_0170 anchorHistoryChunk0170
  decide

def anchorAggregatePartValid4_0170 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 174592
  | _ => True

theorem anchorAggregatePart4_0170 :
    anchorAggregatePartValid4_0170 anchorHistoryChunk0170 := by
  unfold anchorAggregatePartValid4_0170 anchorHistoryChunk0170
  decide

def anchorAggregatePartValid5_0170 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 174720
  | _ => True

theorem anchorAggregatePart5_0170 :
    anchorAggregatePartValid5_0170 anchorHistoryChunk0170 := by
  unfold anchorAggregatePartValid5_0170 anchorHistoryChunk0170
  decide

def anchorAggregatePartValid6_0170 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 174848
  | _ => True

theorem anchorAggregatePart6_0170 :
    anchorAggregatePartValid6_0170 anchorHistoryChunk0170 := by
  unfold anchorAggregatePartValid6_0170 anchorHistoryChunk0170
  decide

def anchorAggregatePartValid7_0170 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 174976
  | _ => True

theorem anchorAggregatePart7_0170 :
    anchorAggregatePartValid7_0170 anchorHistoryChunk0170 := by
  unfold anchorAggregatePartValid7_0170 anchorHistoryChunk0170
  decide

theorem anchorRange_0170 :
    anchorHistoryChunk0170.IndexedValid squarefreeOracle 5000000 174080 := by
  have h0 := anchorAggregatePart0_0170
  simp only [anchorAggregatePartValid0_0170, anchorHistoryChunk0170] at h0
  have h1 := anchorAggregatePart1_0170
  simp only [anchorAggregatePartValid1_0170, anchorHistoryChunk0170] at h1
  have h2 := anchorAggregatePart2_0170
  simp only [anchorAggregatePartValid2_0170, anchorHistoryChunk0170] at h2
  have h3 := anchorAggregatePart3_0170
  simp only [anchorAggregatePartValid3_0170, anchorHistoryChunk0170] at h3
  have h4 := anchorAggregatePart4_0170
  simp only [anchorAggregatePartValid4_0170, anchorHistoryChunk0170] at h4
  have h5 := anchorAggregatePart5_0170
  simp only [anchorAggregatePartValid5_0170, anchorHistoryChunk0170] at h5
  have h6 := anchorAggregatePart6_0170
  simp only [anchorAggregatePartValid6_0170, anchorHistoryChunk0170] at h6
  have h7 := anchorAggregatePart7_0170
  simp only [anchorAggregatePartValid7_0170, anchorHistoryChunk0170] at h7
  unfold anchorHistoryChunk0170
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0171 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 175104
  | _ => True

theorem anchorAggregatePart0_0171 :
    anchorAggregatePartValid0_0171 anchorHistoryChunk0171 := by
  unfold anchorAggregatePartValid0_0171 anchorHistoryChunk0171
  decide

def anchorAggregatePartValid1_0171 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 175232
  | _ => True

theorem anchorAggregatePart1_0171 :
    anchorAggregatePartValid1_0171 anchorHistoryChunk0171 := by
  unfold anchorAggregatePartValid1_0171 anchorHistoryChunk0171
  decide

def anchorAggregatePartValid2_0171 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 175360
  | _ => True

theorem anchorAggregatePart2_0171 :
    anchorAggregatePartValid2_0171 anchorHistoryChunk0171 := by
  unfold anchorAggregatePartValid2_0171 anchorHistoryChunk0171
  decide

def anchorAggregatePartValid3_0171 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 175488
  | _ => True

theorem anchorAggregatePart3_0171 :
    anchorAggregatePartValid3_0171 anchorHistoryChunk0171 := by
  unfold anchorAggregatePartValid3_0171 anchorHistoryChunk0171
  decide

def anchorAggregatePartValid4_0171 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 175616
  | _ => True

theorem anchorAggregatePart4_0171 :
    anchorAggregatePartValid4_0171 anchorHistoryChunk0171 := by
  unfold anchorAggregatePartValid4_0171 anchorHistoryChunk0171
  decide

def anchorAggregatePartValid5_0171 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 175744
  | _ => True

theorem anchorAggregatePart5_0171 :
    anchorAggregatePartValid5_0171 anchorHistoryChunk0171 := by
  unfold anchorAggregatePartValid5_0171 anchorHistoryChunk0171
  decide

def anchorAggregatePartValid6_0171 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 175872
  | _ => True

theorem anchorAggregatePart6_0171 :
    anchorAggregatePartValid6_0171 anchorHistoryChunk0171 := by
  unfold anchorAggregatePartValid6_0171 anchorHistoryChunk0171
  decide

def anchorAggregatePartValid7_0171 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 176000
  | _ => True

theorem anchorAggregatePart7_0171 :
    anchorAggregatePartValid7_0171 anchorHistoryChunk0171 := by
  unfold anchorAggregatePartValid7_0171 anchorHistoryChunk0171
  decide

theorem anchorRange_0171 :
    anchorHistoryChunk0171.IndexedValid squarefreeOracle 5000000 175104 := by
  have h0 := anchorAggregatePart0_0171
  simp only [anchorAggregatePartValid0_0171, anchorHistoryChunk0171] at h0
  have h1 := anchorAggregatePart1_0171
  simp only [anchorAggregatePartValid1_0171, anchorHistoryChunk0171] at h1
  have h2 := anchorAggregatePart2_0171
  simp only [anchorAggregatePartValid2_0171, anchorHistoryChunk0171] at h2
  have h3 := anchorAggregatePart3_0171
  simp only [anchorAggregatePartValid3_0171, anchorHistoryChunk0171] at h3
  have h4 := anchorAggregatePart4_0171
  simp only [anchorAggregatePartValid4_0171, anchorHistoryChunk0171] at h4
  have h5 := anchorAggregatePart5_0171
  simp only [anchorAggregatePartValid5_0171, anchorHistoryChunk0171] at h5
  have h6 := anchorAggregatePart6_0171
  simp only [anchorAggregatePartValid6_0171, anchorHistoryChunk0171] at h6
  have h7 := anchorAggregatePart7_0171
  simp only [anchorAggregatePartValid7_0171, anchorHistoryChunk0171] at h7
  unfold anchorHistoryChunk0171
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
