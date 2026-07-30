import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0188
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0189
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0190
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0191

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0188, 0189, 0190, 0191 -/

def anchorAggregatePartValid0_0188 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 192512
  | _ => True

theorem anchorAggregatePart0_0188 :
    anchorAggregatePartValid0_0188 anchorHistoryChunk0188 := by
  unfold anchorAggregatePartValid0_0188 anchorHistoryChunk0188
  decide

def anchorAggregatePartValid1_0188 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 192640
  | _ => True

theorem anchorAggregatePart1_0188 :
    anchorAggregatePartValid1_0188 anchorHistoryChunk0188 := by
  unfold anchorAggregatePartValid1_0188 anchorHistoryChunk0188
  decide

def anchorAggregatePartValid2_0188 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 192768
  | _ => True

theorem anchorAggregatePart2_0188 :
    anchorAggregatePartValid2_0188 anchorHistoryChunk0188 := by
  unfold anchorAggregatePartValid2_0188 anchorHistoryChunk0188
  decide

def anchorAggregatePartValid3_0188 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 192896
  | _ => True

theorem anchorAggregatePart3_0188 :
    anchorAggregatePartValid3_0188 anchorHistoryChunk0188 := by
  unfold anchorAggregatePartValid3_0188 anchorHistoryChunk0188
  decide

def anchorAggregatePartValid4_0188 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 193024
  | _ => True

theorem anchorAggregatePart4_0188 :
    anchorAggregatePartValid4_0188 anchorHistoryChunk0188 := by
  unfold anchorAggregatePartValid4_0188 anchorHistoryChunk0188
  decide

def anchorAggregatePartValid5_0188 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 193152
  | _ => True

theorem anchorAggregatePart5_0188 :
    anchorAggregatePartValid5_0188 anchorHistoryChunk0188 := by
  unfold anchorAggregatePartValid5_0188 anchorHistoryChunk0188
  decide

def anchorAggregatePartValid6_0188 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 193280
  | _ => True

theorem anchorAggregatePart6_0188 :
    anchorAggregatePartValid6_0188 anchorHistoryChunk0188 := by
  unfold anchorAggregatePartValid6_0188 anchorHistoryChunk0188
  decide

def anchorAggregatePartValid7_0188 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 193408
  | _ => True

theorem anchorAggregatePart7_0188 :
    anchorAggregatePartValid7_0188 anchorHistoryChunk0188 := by
  unfold anchorAggregatePartValid7_0188 anchorHistoryChunk0188
  decide

theorem anchorRange_0188 :
    anchorHistoryChunk0188.IndexedValid squarefreeOracle 5000000 192512 := by
  have h0 := anchorAggregatePart0_0188
  simp only [anchorAggregatePartValid0_0188, anchorHistoryChunk0188] at h0
  have h1 := anchorAggregatePart1_0188
  simp only [anchorAggregatePartValid1_0188, anchorHistoryChunk0188] at h1
  have h2 := anchorAggregatePart2_0188
  simp only [anchorAggregatePartValid2_0188, anchorHistoryChunk0188] at h2
  have h3 := anchorAggregatePart3_0188
  simp only [anchorAggregatePartValid3_0188, anchorHistoryChunk0188] at h3
  have h4 := anchorAggregatePart4_0188
  simp only [anchorAggregatePartValid4_0188, anchorHistoryChunk0188] at h4
  have h5 := anchorAggregatePart5_0188
  simp only [anchorAggregatePartValid5_0188, anchorHistoryChunk0188] at h5
  have h6 := anchorAggregatePart6_0188
  simp only [anchorAggregatePartValid6_0188, anchorHistoryChunk0188] at h6
  have h7 := anchorAggregatePart7_0188
  simp only [anchorAggregatePartValid7_0188, anchorHistoryChunk0188] at h7
  unfold anchorHistoryChunk0188
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0189 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 193536
  | _ => True

theorem anchorAggregatePart0_0189 :
    anchorAggregatePartValid0_0189 anchorHistoryChunk0189 := by
  unfold anchorAggregatePartValid0_0189 anchorHistoryChunk0189
  decide

def anchorAggregatePartValid1_0189 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 193664
  | _ => True

theorem anchorAggregatePart1_0189 :
    anchorAggregatePartValid1_0189 anchorHistoryChunk0189 := by
  unfold anchorAggregatePartValid1_0189 anchorHistoryChunk0189
  decide

def anchorAggregatePartValid2_0189 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 193792
  | _ => True

theorem anchorAggregatePart2_0189 :
    anchorAggregatePartValid2_0189 anchorHistoryChunk0189 := by
  unfold anchorAggregatePartValid2_0189 anchorHistoryChunk0189
  decide

def anchorAggregatePartValid3_0189 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 193920
  | _ => True

theorem anchorAggregatePart3_0189 :
    anchorAggregatePartValid3_0189 anchorHistoryChunk0189 := by
  unfold anchorAggregatePartValid3_0189 anchorHistoryChunk0189
  decide

def anchorAggregatePartValid4_0189 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 194048
  | _ => True

theorem anchorAggregatePart4_0189 :
    anchorAggregatePartValid4_0189 anchorHistoryChunk0189 := by
  unfold anchorAggregatePartValid4_0189 anchorHistoryChunk0189
  decide

def anchorAggregatePartValid5_0189 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 194176
  | _ => True

theorem anchorAggregatePart5_0189 :
    anchorAggregatePartValid5_0189 anchorHistoryChunk0189 := by
  unfold anchorAggregatePartValid5_0189 anchorHistoryChunk0189
  decide

def anchorAggregatePartValid6_0189 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 194304
  | _ => True

theorem anchorAggregatePart6_0189 :
    anchorAggregatePartValid6_0189 anchorHistoryChunk0189 := by
  unfold anchorAggregatePartValid6_0189 anchorHistoryChunk0189
  decide

def anchorAggregatePartValid7_0189 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 194432
  | _ => True

theorem anchorAggregatePart7_0189 :
    anchorAggregatePartValid7_0189 anchorHistoryChunk0189 := by
  unfold anchorAggregatePartValid7_0189 anchorHistoryChunk0189
  decide

theorem anchorRange_0189 :
    anchorHistoryChunk0189.IndexedValid squarefreeOracle 5000000 193536 := by
  have h0 := anchorAggregatePart0_0189
  simp only [anchorAggregatePartValid0_0189, anchorHistoryChunk0189] at h0
  have h1 := anchorAggregatePart1_0189
  simp only [anchorAggregatePartValid1_0189, anchorHistoryChunk0189] at h1
  have h2 := anchorAggregatePart2_0189
  simp only [anchorAggregatePartValid2_0189, anchorHistoryChunk0189] at h2
  have h3 := anchorAggregatePart3_0189
  simp only [anchorAggregatePartValid3_0189, anchorHistoryChunk0189] at h3
  have h4 := anchorAggregatePart4_0189
  simp only [anchorAggregatePartValid4_0189, anchorHistoryChunk0189] at h4
  have h5 := anchorAggregatePart5_0189
  simp only [anchorAggregatePartValid5_0189, anchorHistoryChunk0189] at h5
  have h6 := anchorAggregatePart6_0189
  simp only [anchorAggregatePartValid6_0189, anchorHistoryChunk0189] at h6
  have h7 := anchorAggregatePart7_0189
  simp only [anchorAggregatePartValid7_0189, anchorHistoryChunk0189] at h7
  unfold anchorHistoryChunk0189
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0190 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 194560
  | _ => True

theorem anchorAggregatePart0_0190 :
    anchorAggregatePartValid0_0190 anchorHistoryChunk0190 := by
  unfold anchorAggregatePartValid0_0190 anchorHistoryChunk0190
  decide

def anchorAggregatePartValid1_0190 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 194688
  | _ => True

theorem anchorAggregatePart1_0190 :
    anchorAggregatePartValid1_0190 anchorHistoryChunk0190 := by
  unfold anchorAggregatePartValid1_0190 anchorHistoryChunk0190
  decide

def anchorAggregatePartValid2_0190 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 194816
  | _ => True

theorem anchorAggregatePart2_0190 :
    anchorAggregatePartValid2_0190 anchorHistoryChunk0190 := by
  unfold anchorAggregatePartValid2_0190 anchorHistoryChunk0190
  decide

def anchorAggregatePartValid3_0190 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 194944
  | _ => True

theorem anchorAggregatePart3_0190 :
    anchorAggregatePartValid3_0190 anchorHistoryChunk0190 := by
  unfold anchorAggregatePartValid3_0190 anchorHistoryChunk0190
  decide

def anchorAggregatePartValid4_0190 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 195072
  | _ => True

theorem anchorAggregatePart4_0190 :
    anchorAggregatePartValid4_0190 anchorHistoryChunk0190 := by
  unfold anchorAggregatePartValid4_0190 anchorHistoryChunk0190
  decide

def anchorAggregatePartValid5_0190 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 195200
  | _ => True

theorem anchorAggregatePart5_0190 :
    anchorAggregatePartValid5_0190 anchorHistoryChunk0190 := by
  unfold anchorAggregatePartValid5_0190 anchorHistoryChunk0190
  decide

def anchorAggregatePartValid6_0190 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 195328
  | _ => True

theorem anchorAggregatePart6_0190 :
    anchorAggregatePartValid6_0190 anchorHistoryChunk0190 := by
  unfold anchorAggregatePartValid6_0190 anchorHistoryChunk0190
  decide

def anchorAggregatePartValid7_0190 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 195456
  | _ => True

theorem anchorAggregatePart7_0190 :
    anchorAggregatePartValid7_0190 anchorHistoryChunk0190 := by
  unfold anchorAggregatePartValid7_0190 anchorHistoryChunk0190
  decide

theorem anchorRange_0190 :
    anchorHistoryChunk0190.IndexedValid squarefreeOracle 5000000 194560 := by
  have h0 := anchorAggregatePart0_0190
  simp only [anchorAggregatePartValid0_0190, anchorHistoryChunk0190] at h0
  have h1 := anchorAggregatePart1_0190
  simp only [anchorAggregatePartValid1_0190, anchorHistoryChunk0190] at h1
  have h2 := anchorAggregatePart2_0190
  simp only [anchorAggregatePartValid2_0190, anchorHistoryChunk0190] at h2
  have h3 := anchorAggregatePart3_0190
  simp only [anchorAggregatePartValid3_0190, anchorHistoryChunk0190] at h3
  have h4 := anchorAggregatePart4_0190
  simp only [anchorAggregatePartValid4_0190, anchorHistoryChunk0190] at h4
  have h5 := anchorAggregatePart5_0190
  simp only [anchorAggregatePartValid5_0190, anchorHistoryChunk0190] at h5
  have h6 := anchorAggregatePart6_0190
  simp only [anchorAggregatePartValid6_0190, anchorHistoryChunk0190] at h6
  have h7 := anchorAggregatePart7_0190
  simp only [anchorAggregatePartValid7_0190, anchorHistoryChunk0190] at h7
  unfold anchorHistoryChunk0190
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0191 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 195584
  | _ => True

theorem anchorAggregatePart0_0191 :
    anchorAggregatePartValid0_0191 anchorHistoryChunk0191 := by
  unfold anchorAggregatePartValid0_0191 anchorHistoryChunk0191
  decide

def anchorAggregatePartValid1_0191 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 195712
  | _ => True

theorem anchorAggregatePart1_0191 :
    anchorAggregatePartValid1_0191 anchorHistoryChunk0191 := by
  unfold anchorAggregatePartValid1_0191 anchorHistoryChunk0191
  decide

def anchorAggregatePartValid2_0191 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 195840
  | _ => True

theorem anchorAggregatePart2_0191 :
    anchorAggregatePartValid2_0191 anchorHistoryChunk0191 := by
  unfold anchorAggregatePartValid2_0191 anchorHistoryChunk0191
  decide

def anchorAggregatePartValid3_0191 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 195968
  | _ => True

theorem anchorAggregatePart3_0191 :
    anchorAggregatePartValid3_0191 anchorHistoryChunk0191 := by
  unfold anchorAggregatePartValid3_0191 anchorHistoryChunk0191
  decide

def anchorAggregatePartValid4_0191 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 196096
  | _ => True

theorem anchorAggregatePart4_0191 :
    anchorAggregatePartValid4_0191 anchorHistoryChunk0191 := by
  unfold anchorAggregatePartValid4_0191 anchorHistoryChunk0191
  decide

def anchorAggregatePartValid5_0191 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 196224
  | _ => True

theorem anchorAggregatePart5_0191 :
    anchorAggregatePartValid5_0191 anchorHistoryChunk0191 := by
  unfold anchorAggregatePartValid5_0191 anchorHistoryChunk0191
  decide

def anchorAggregatePartValid6_0191 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 196352
  | _ => True

theorem anchorAggregatePart6_0191 :
    anchorAggregatePartValid6_0191 anchorHistoryChunk0191 := by
  unfold anchorAggregatePartValid6_0191 anchorHistoryChunk0191
  decide

def anchorAggregatePartValid7_0191 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 196480
  | _ => True

theorem anchorAggregatePart7_0191 :
    anchorAggregatePartValid7_0191 anchorHistoryChunk0191 := by
  unfold anchorAggregatePartValid7_0191 anchorHistoryChunk0191
  decide

theorem anchorRange_0191 :
    anchorHistoryChunk0191.IndexedValid squarefreeOracle 5000000 195584 := by
  have h0 := anchorAggregatePart0_0191
  simp only [anchorAggregatePartValid0_0191, anchorHistoryChunk0191] at h0
  have h1 := anchorAggregatePart1_0191
  simp only [anchorAggregatePartValid1_0191, anchorHistoryChunk0191] at h1
  have h2 := anchorAggregatePart2_0191
  simp only [anchorAggregatePartValid2_0191, anchorHistoryChunk0191] at h2
  have h3 := anchorAggregatePart3_0191
  simp only [anchorAggregatePartValid3_0191, anchorHistoryChunk0191] at h3
  have h4 := anchorAggregatePart4_0191
  simp only [anchorAggregatePartValid4_0191, anchorHistoryChunk0191] at h4
  have h5 := anchorAggregatePart5_0191
  simp only [anchorAggregatePartValid5_0191, anchorHistoryChunk0191] at h5
  have h6 := anchorAggregatePart6_0191
  simp only [anchorAggregatePartValid6_0191, anchorHistoryChunk0191] at h6
  have h7 := anchorAggregatePart7_0191
  simp only [anchorAggregatePartValid7_0191, anchorHistoryChunk0191] at h7
  unfold anchorHistoryChunk0191
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
