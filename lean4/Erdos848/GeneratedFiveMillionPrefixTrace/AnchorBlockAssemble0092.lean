import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0092
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0093
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0094
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0095

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0092, 0093, 0094, 0095 -/

def anchorAggregatePartValid0_0092 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 94208
  | _ => True

theorem anchorAggregatePart0_0092 :
    anchorAggregatePartValid0_0092 anchorHistoryChunk0092 := by
  unfold anchorAggregatePartValid0_0092 anchorHistoryChunk0092
  decide

def anchorAggregatePartValid1_0092 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 94336
  | _ => True

theorem anchorAggregatePart1_0092 :
    anchorAggregatePartValid1_0092 anchorHistoryChunk0092 := by
  unfold anchorAggregatePartValid1_0092 anchorHistoryChunk0092
  decide

def anchorAggregatePartValid2_0092 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 94464
  | _ => True

theorem anchorAggregatePart2_0092 :
    anchorAggregatePartValid2_0092 anchorHistoryChunk0092 := by
  unfold anchorAggregatePartValid2_0092 anchorHistoryChunk0092
  decide

def anchorAggregatePartValid3_0092 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 94592
  | _ => True

theorem anchorAggregatePart3_0092 :
    anchorAggregatePartValid3_0092 anchorHistoryChunk0092 := by
  unfold anchorAggregatePartValid3_0092 anchorHistoryChunk0092
  decide

def anchorAggregatePartValid4_0092 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 94720
  | _ => True

theorem anchorAggregatePart4_0092 :
    anchorAggregatePartValid4_0092 anchorHistoryChunk0092 := by
  unfold anchorAggregatePartValid4_0092 anchorHistoryChunk0092
  decide

def anchorAggregatePartValid5_0092 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 94848
  | _ => True

theorem anchorAggregatePart5_0092 :
    anchorAggregatePartValid5_0092 anchorHistoryChunk0092 := by
  unfold anchorAggregatePartValid5_0092 anchorHistoryChunk0092
  decide

def anchorAggregatePartValid6_0092 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 94976
  | _ => True

theorem anchorAggregatePart6_0092 :
    anchorAggregatePartValid6_0092 anchorHistoryChunk0092 := by
  unfold anchorAggregatePartValid6_0092 anchorHistoryChunk0092
  decide

def anchorAggregatePartValid7_0092 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 95104
  | _ => True

theorem anchorAggregatePart7_0092 :
    anchorAggregatePartValid7_0092 anchorHistoryChunk0092 := by
  unfold anchorAggregatePartValid7_0092 anchorHistoryChunk0092
  decide

theorem anchorRange_0092 :
    anchorHistoryChunk0092.IndexedValid squarefreeOracle 5000000 94208 := by
  have h0 := anchorAggregatePart0_0092
  simp only [anchorAggregatePartValid0_0092, anchorHistoryChunk0092] at h0
  have h1 := anchorAggregatePart1_0092
  simp only [anchorAggregatePartValid1_0092, anchorHistoryChunk0092] at h1
  have h2 := anchorAggregatePart2_0092
  simp only [anchorAggregatePartValid2_0092, anchorHistoryChunk0092] at h2
  have h3 := anchorAggregatePart3_0092
  simp only [anchorAggregatePartValid3_0092, anchorHistoryChunk0092] at h3
  have h4 := anchorAggregatePart4_0092
  simp only [anchorAggregatePartValid4_0092, anchorHistoryChunk0092] at h4
  have h5 := anchorAggregatePart5_0092
  simp only [anchorAggregatePartValid5_0092, anchorHistoryChunk0092] at h5
  have h6 := anchorAggregatePart6_0092
  simp only [anchorAggregatePartValid6_0092, anchorHistoryChunk0092] at h6
  have h7 := anchorAggregatePart7_0092
  simp only [anchorAggregatePartValid7_0092, anchorHistoryChunk0092] at h7
  unfold anchorHistoryChunk0092
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0093 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 95232
  | _ => True

theorem anchorAggregatePart0_0093 :
    anchorAggregatePartValid0_0093 anchorHistoryChunk0093 := by
  unfold anchorAggregatePartValid0_0093 anchorHistoryChunk0093
  decide

def anchorAggregatePartValid1_0093 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 95360
  | _ => True

theorem anchorAggregatePart1_0093 :
    anchorAggregatePartValid1_0093 anchorHistoryChunk0093 := by
  unfold anchorAggregatePartValid1_0093 anchorHistoryChunk0093
  decide

def anchorAggregatePartValid2_0093 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 95488
  | _ => True

theorem anchorAggregatePart2_0093 :
    anchorAggregatePartValid2_0093 anchorHistoryChunk0093 := by
  unfold anchorAggregatePartValid2_0093 anchorHistoryChunk0093
  decide

def anchorAggregatePartValid3_0093 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 95616
  | _ => True

theorem anchorAggregatePart3_0093 :
    anchorAggregatePartValid3_0093 anchorHistoryChunk0093 := by
  unfold anchorAggregatePartValid3_0093 anchorHistoryChunk0093
  decide

def anchorAggregatePartValid4_0093 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 95744
  | _ => True

theorem anchorAggregatePart4_0093 :
    anchorAggregatePartValid4_0093 anchorHistoryChunk0093 := by
  unfold anchorAggregatePartValid4_0093 anchorHistoryChunk0093
  decide

def anchorAggregatePartValid5_0093 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 95872
  | _ => True

theorem anchorAggregatePart5_0093 :
    anchorAggregatePartValid5_0093 anchorHistoryChunk0093 := by
  unfold anchorAggregatePartValid5_0093 anchorHistoryChunk0093
  decide

def anchorAggregatePartValid6_0093 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 96000
  | _ => True

theorem anchorAggregatePart6_0093 :
    anchorAggregatePartValid6_0093 anchorHistoryChunk0093 := by
  unfold anchorAggregatePartValid6_0093 anchorHistoryChunk0093
  decide

def anchorAggregatePartValid7_0093 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 96128
  | _ => True

theorem anchorAggregatePart7_0093 :
    anchorAggregatePartValid7_0093 anchorHistoryChunk0093 := by
  unfold anchorAggregatePartValid7_0093 anchorHistoryChunk0093
  decide

theorem anchorRange_0093 :
    anchorHistoryChunk0093.IndexedValid squarefreeOracle 5000000 95232 := by
  have h0 := anchorAggregatePart0_0093
  simp only [anchorAggregatePartValid0_0093, anchorHistoryChunk0093] at h0
  have h1 := anchorAggregatePart1_0093
  simp only [anchorAggregatePartValid1_0093, anchorHistoryChunk0093] at h1
  have h2 := anchorAggregatePart2_0093
  simp only [anchorAggregatePartValid2_0093, anchorHistoryChunk0093] at h2
  have h3 := anchorAggregatePart3_0093
  simp only [anchorAggregatePartValid3_0093, anchorHistoryChunk0093] at h3
  have h4 := anchorAggregatePart4_0093
  simp only [anchorAggregatePartValid4_0093, anchorHistoryChunk0093] at h4
  have h5 := anchorAggregatePart5_0093
  simp only [anchorAggregatePartValid5_0093, anchorHistoryChunk0093] at h5
  have h6 := anchorAggregatePart6_0093
  simp only [anchorAggregatePartValid6_0093, anchorHistoryChunk0093] at h6
  have h7 := anchorAggregatePart7_0093
  simp only [anchorAggregatePartValid7_0093, anchorHistoryChunk0093] at h7
  unfold anchorHistoryChunk0093
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0094 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 96256
  | _ => True

theorem anchorAggregatePart0_0094 :
    anchorAggregatePartValid0_0094 anchorHistoryChunk0094 := by
  unfold anchorAggregatePartValid0_0094 anchorHistoryChunk0094
  decide

def anchorAggregatePartValid1_0094 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 96384
  | _ => True

theorem anchorAggregatePart1_0094 :
    anchorAggregatePartValid1_0094 anchorHistoryChunk0094 := by
  unfold anchorAggregatePartValid1_0094 anchorHistoryChunk0094
  decide

def anchorAggregatePartValid2_0094 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 96512
  | _ => True

theorem anchorAggregatePart2_0094 :
    anchorAggregatePartValid2_0094 anchorHistoryChunk0094 := by
  unfold anchorAggregatePartValid2_0094 anchorHistoryChunk0094
  decide

def anchorAggregatePartValid3_0094 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 96640
  | _ => True

theorem anchorAggregatePart3_0094 :
    anchorAggregatePartValid3_0094 anchorHistoryChunk0094 := by
  unfold anchorAggregatePartValid3_0094 anchorHistoryChunk0094
  decide

def anchorAggregatePartValid4_0094 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 96768
  | _ => True

theorem anchorAggregatePart4_0094 :
    anchorAggregatePartValid4_0094 anchorHistoryChunk0094 := by
  unfold anchorAggregatePartValid4_0094 anchorHistoryChunk0094
  decide

def anchorAggregatePartValid5_0094 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 96896
  | _ => True

theorem anchorAggregatePart5_0094 :
    anchorAggregatePartValid5_0094 anchorHistoryChunk0094 := by
  unfold anchorAggregatePartValid5_0094 anchorHistoryChunk0094
  decide

def anchorAggregatePartValid6_0094 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 97024
  | _ => True

theorem anchorAggregatePart6_0094 :
    anchorAggregatePartValid6_0094 anchorHistoryChunk0094 := by
  unfold anchorAggregatePartValid6_0094 anchorHistoryChunk0094
  decide

def anchorAggregatePartValid7_0094 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 97152
  | _ => True

theorem anchorAggregatePart7_0094 :
    anchorAggregatePartValid7_0094 anchorHistoryChunk0094 := by
  unfold anchorAggregatePartValid7_0094 anchorHistoryChunk0094
  decide

theorem anchorRange_0094 :
    anchorHistoryChunk0094.IndexedValid squarefreeOracle 5000000 96256 := by
  have h0 := anchorAggregatePart0_0094
  simp only [anchorAggregatePartValid0_0094, anchorHistoryChunk0094] at h0
  have h1 := anchorAggregatePart1_0094
  simp only [anchorAggregatePartValid1_0094, anchorHistoryChunk0094] at h1
  have h2 := anchorAggregatePart2_0094
  simp only [anchorAggregatePartValid2_0094, anchorHistoryChunk0094] at h2
  have h3 := anchorAggregatePart3_0094
  simp only [anchorAggregatePartValid3_0094, anchorHistoryChunk0094] at h3
  have h4 := anchorAggregatePart4_0094
  simp only [anchorAggregatePartValid4_0094, anchorHistoryChunk0094] at h4
  have h5 := anchorAggregatePart5_0094
  simp only [anchorAggregatePartValid5_0094, anchorHistoryChunk0094] at h5
  have h6 := anchorAggregatePart6_0094
  simp only [anchorAggregatePartValid6_0094, anchorHistoryChunk0094] at h6
  have h7 := anchorAggregatePart7_0094
  simp only [anchorAggregatePartValid7_0094, anchorHistoryChunk0094] at h7
  unfold anchorHistoryChunk0094
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0095 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 97280
  | _ => True

theorem anchorAggregatePart0_0095 :
    anchorAggregatePartValid0_0095 anchorHistoryChunk0095 := by
  unfold anchorAggregatePartValid0_0095 anchorHistoryChunk0095
  decide

def anchorAggregatePartValid1_0095 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 97408
  | _ => True

theorem anchorAggregatePart1_0095 :
    anchorAggregatePartValid1_0095 anchorHistoryChunk0095 := by
  unfold anchorAggregatePartValid1_0095 anchorHistoryChunk0095
  decide

def anchorAggregatePartValid2_0095 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 97536
  | _ => True

theorem anchorAggregatePart2_0095 :
    anchorAggregatePartValid2_0095 anchorHistoryChunk0095 := by
  unfold anchorAggregatePartValid2_0095 anchorHistoryChunk0095
  decide

def anchorAggregatePartValid3_0095 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 97664
  | _ => True

theorem anchorAggregatePart3_0095 :
    anchorAggregatePartValid3_0095 anchorHistoryChunk0095 := by
  unfold anchorAggregatePartValid3_0095 anchorHistoryChunk0095
  decide

def anchorAggregatePartValid4_0095 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 97792
  | _ => True

theorem anchorAggregatePart4_0095 :
    anchorAggregatePartValid4_0095 anchorHistoryChunk0095 := by
  unfold anchorAggregatePartValid4_0095 anchorHistoryChunk0095
  decide

def anchorAggregatePartValid5_0095 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 97920
  | _ => True

theorem anchorAggregatePart5_0095 :
    anchorAggregatePartValid5_0095 anchorHistoryChunk0095 := by
  unfold anchorAggregatePartValid5_0095 anchorHistoryChunk0095
  decide

def anchorAggregatePartValid6_0095 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 98048
  | _ => True

theorem anchorAggregatePart6_0095 :
    anchorAggregatePartValid6_0095 anchorHistoryChunk0095 := by
  unfold anchorAggregatePartValid6_0095 anchorHistoryChunk0095
  decide

def anchorAggregatePartValid7_0095 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 98176
  | _ => True

theorem anchorAggregatePart7_0095 :
    anchorAggregatePartValid7_0095 anchorHistoryChunk0095 := by
  unfold anchorAggregatePartValid7_0095 anchorHistoryChunk0095
  decide

theorem anchorRange_0095 :
    anchorHistoryChunk0095.IndexedValid squarefreeOracle 5000000 97280 := by
  have h0 := anchorAggregatePart0_0095
  simp only [anchorAggregatePartValid0_0095, anchorHistoryChunk0095] at h0
  have h1 := anchorAggregatePart1_0095
  simp only [anchorAggregatePartValid1_0095, anchorHistoryChunk0095] at h1
  have h2 := anchorAggregatePart2_0095
  simp only [anchorAggregatePartValid2_0095, anchorHistoryChunk0095] at h2
  have h3 := anchorAggregatePart3_0095
  simp only [anchorAggregatePartValid3_0095, anchorHistoryChunk0095] at h3
  have h4 := anchorAggregatePart4_0095
  simp only [anchorAggregatePartValid4_0095, anchorHistoryChunk0095] at h4
  have h5 := anchorAggregatePart5_0095
  simp only [anchorAggregatePartValid5_0095, anchorHistoryChunk0095] at h5
  have h6 := anchorAggregatePart6_0095
  simp only [anchorAggregatePartValid6_0095, anchorHistoryChunk0095] at h6
  have h7 := anchorAggregatePart7_0095
  simp only [anchorAggregatePartValid7_0095, anchorHistoryChunk0095] at h7
  unfold anchorHistoryChunk0095
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
