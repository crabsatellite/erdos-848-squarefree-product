import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0144
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0145
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0146
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0147

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0144, 0145, 0146, 0147 -/

def anchorAggregatePartValid0_0144 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 147456
  | _ => True

theorem anchorAggregatePart0_0144 :
    anchorAggregatePartValid0_0144 anchorHistoryChunk0144 := by
  unfold anchorAggregatePartValid0_0144 anchorHistoryChunk0144
  decide

def anchorAggregatePartValid1_0144 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 147584
  | _ => True

theorem anchorAggregatePart1_0144 :
    anchorAggregatePartValid1_0144 anchorHistoryChunk0144 := by
  unfold anchorAggregatePartValid1_0144 anchorHistoryChunk0144
  decide

def anchorAggregatePartValid2_0144 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 147712
  | _ => True

theorem anchorAggregatePart2_0144 :
    anchorAggregatePartValid2_0144 anchorHistoryChunk0144 := by
  unfold anchorAggregatePartValid2_0144 anchorHistoryChunk0144
  decide

def anchorAggregatePartValid3_0144 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 147840
  | _ => True

theorem anchorAggregatePart3_0144 :
    anchorAggregatePartValid3_0144 anchorHistoryChunk0144 := by
  unfold anchorAggregatePartValid3_0144 anchorHistoryChunk0144
  decide

def anchorAggregatePartValid4_0144 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 147968
  | _ => True

theorem anchorAggregatePart4_0144 :
    anchorAggregatePartValid4_0144 anchorHistoryChunk0144 := by
  unfold anchorAggregatePartValid4_0144 anchorHistoryChunk0144
  decide

def anchorAggregatePartValid5_0144 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 148096
  | _ => True

theorem anchorAggregatePart5_0144 :
    anchorAggregatePartValid5_0144 anchorHistoryChunk0144 := by
  unfold anchorAggregatePartValid5_0144 anchorHistoryChunk0144
  decide

def anchorAggregatePartValid6_0144 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 148224
  | _ => True

theorem anchorAggregatePart6_0144 :
    anchorAggregatePartValid6_0144 anchorHistoryChunk0144 := by
  unfold anchorAggregatePartValid6_0144 anchorHistoryChunk0144
  decide

def anchorAggregatePartValid7_0144 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 148352
  | _ => True

theorem anchorAggregatePart7_0144 :
    anchorAggregatePartValid7_0144 anchorHistoryChunk0144 := by
  unfold anchorAggregatePartValid7_0144 anchorHistoryChunk0144
  decide

theorem anchorRange_0144 :
    anchorHistoryChunk0144.IndexedValid squarefreeOracle 5000000 147456 := by
  have h0 := anchorAggregatePart0_0144
  simp only [anchorAggregatePartValid0_0144, anchorHistoryChunk0144] at h0
  have h1 := anchorAggregatePart1_0144
  simp only [anchorAggregatePartValid1_0144, anchorHistoryChunk0144] at h1
  have h2 := anchorAggregatePart2_0144
  simp only [anchorAggregatePartValid2_0144, anchorHistoryChunk0144] at h2
  have h3 := anchorAggregatePart3_0144
  simp only [anchorAggregatePartValid3_0144, anchorHistoryChunk0144] at h3
  have h4 := anchorAggregatePart4_0144
  simp only [anchorAggregatePartValid4_0144, anchorHistoryChunk0144] at h4
  have h5 := anchorAggregatePart5_0144
  simp only [anchorAggregatePartValid5_0144, anchorHistoryChunk0144] at h5
  have h6 := anchorAggregatePart6_0144
  simp only [anchorAggregatePartValid6_0144, anchorHistoryChunk0144] at h6
  have h7 := anchorAggregatePart7_0144
  simp only [anchorAggregatePartValid7_0144, anchorHistoryChunk0144] at h7
  unfold anchorHistoryChunk0144
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0145 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 148480
  | _ => True

theorem anchorAggregatePart0_0145 :
    anchorAggregatePartValid0_0145 anchorHistoryChunk0145 := by
  unfold anchorAggregatePartValid0_0145 anchorHistoryChunk0145
  decide

def anchorAggregatePartValid1_0145 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 148608
  | _ => True

theorem anchorAggregatePart1_0145 :
    anchorAggregatePartValid1_0145 anchorHistoryChunk0145 := by
  unfold anchorAggregatePartValid1_0145 anchorHistoryChunk0145
  decide

def anchorAggregatePartValid2_0145 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 148736
  | _ => True

theorem anchorAggregatePart2_0145 :
    anchorAggregatePartValid2_0145 anchorHistoryChunk0145 := by
  unfold anchorAggregatePartValid2_0145 anchorHistoryChunk0145
  decide

def anchorAggregatePartValid3_0145 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 148864
  | _ => True

theorem anchorAggregatePart3_0145 :
    anchorAggregatePartValid3_0145 anchorHistoryChunk0145 := by
  unfold anchorAggregatePartValid3_0145 anchorHistoryChunk0145
  decide

def anchorAggregatePartValid4_0145 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 148992
  | _ => True

theorem anchorAggregatePart4_0145 :
    anchorAggregatePartValid4_0145 anchorHistoryChunk0145 := by
  unfold anchorAggregatePartValid4_0145 anchorHistoryChunk0145
  decide

def anchorAggregatePartValid5_0145 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 149120
  | _ => True

theorem anchorAggregatePart5_0145 :
    anchorAggregatePartValid5_0145 anchorHistoryChunk0145 := by
  unfold anchorAggregatePartValid5_0145 anchorHistoryChunk0145
  decide

def anchorAggregatePartValid6_0145 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 149248
  | _ => True

theorem anchorAggregatePart6_0145 :
    anchorAggregatePartValid6_0145 anchorHistoryChunk0145 := by
  unfold anchorAggregatePartValid6_0145 anchorHistoryChunk0145
  decide

def anchorAggregatePartValid7_0145 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 149376
  | _ => True

theorem anchorAggregatePart7_0145 :
    anchorAggregatePartValid7_0145 anchorHistoryChunk0145 := by
  unfold anchorAggregatePartValid7_0145 anchorHistoryChunk0145
  decide

theorem anchorRange_0145 :
    anchorHistoryChunk0145.IndexedValid squarefreeOracle 5000000 148480 := by
  have h0 := anchorAggregatePart0_0145
  simp only [anchorAggregatePartValid0_0145, anchorHistoryChunk0145] at h0
  have h1 := anchorAggregatePart1_0145
  simp only [anchorAggregatePartValid1_0145, anchorHistoryChunk0145] at h1
  have h2 := anchorAggregatePart2_0145
  simp only [anchorAggregatePartValid2_0145, anchorHistoryChunk0145] at h2
  have h3 := anchorAggregatePart3_0145
  simp only [anchorAggregatePartValid3_0145, anchorHistoryChunk0145] at h3
  have h4 := anchorAggregatePart4_0145
  simp only [anchorAggregatePartValid4_0145, anchorHistoryChunk0145] at h4
  have h5 := anchorAggregatePart5_0145
  simp only [anchorAggregatePartValid5_0145, anchorHistoryChunk0145] at h5
  have h6 := anchorAggregatePart6_0145
  simp only [anchorAggregatePartValid6_0145, anchorHistoryChunk0145] at h6
  have h7 := anchorAggregatePart7_0145
  simp only [anchorAggregatePartValid7_0145, anchorHistoryChunk0145] at h7
  unfold anchorHistoryChunk0145
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0146 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 149504
  | _ => True

theorem anchorAggregatePart0_0146 :
    anchorAggregatePartValid0_0146 anchorHistoryChunk0146 := by
  unfold anchorAggregatePartValid0_0146 anchorHistoryChunk0146
  decide

def anchorAggregatePartValid1_0146 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 149632
  | _ => True

theorem anchorAggregatePart1_0146 :
    anchorAggregatePartValid1_0146 anchorHistoryChunk0146 := by
  unfold anchorAggregatePartValid1_0146 anchorHistoryChunk0146
  decide

def anchorAggregatePartValid2_0146 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 149760
  | _ => True

theorem anchorAggregatePart2_0146 :
    anchorAggregatePartValid2_0146 anchorHistoryChunk0146 := by
  unfold anchorAggregatePartValid2_0146 anchorHistoryChunk0146
  decide

def anchorAggregatePartValid3_0146 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 149888
  | _ => True

theorem anchorAggregatePart3_0146 :
    anchorAggregatePartValid3_0146 anchorHistoryChunk0146 := by
  unfold anchorAggregatePartValid3_0146 anchorHistoryChunk0146
  decide

def anchorAggregatePartValid4_0146 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 150016
  | _ => True

theorem anchorAggregatePart4_0146 :
    anchorAggregatePartValid4_0146 anchorHistoryChunk0146 := by
  unfold anchorAggregatePartValid4_0146 anchorHistoryChunk0146
  decide

def anchorAggregatePartValid5_0146 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 150144
  | _ => True

theorem anchorAggregatePart5_0146 :
    anchorAggregatePartValid5_0146 anchorHistoryChunk0146 := by
  unfold anchorAggregatePartValid5_0146 anchorHistoryChunk0146
  decide

def anchorAggregatePartValid6_0146 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 150272
  | _ => True

theorem anchorAggregatePart6_0146 :
    anchorAggregatePartValid6_0146 anchorHistoryChunk0146 := by
  unfold anchorAggregatePartValid6_0146 anchorHistoryChunk0146
  decide

def anchorAggregatePartValid7_0146 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 150400
  | _ => True

theorem anchorAggregatePart7_0146 :
    anchorAggregatePartValid7_0146 anchorHistoryChunk0146 := by
  unfold anchorAggregatePartValid7_0146 anchorHistoryChunk0146
  decide

theorem anchorRange_0146 :
    anchorHistoryChunk0146.IndexedValid squarefreeOracle 5000000 149504 := by
  have h0 := anchorAggregatePart0_0146
  simp only [anchorAggregatePartValid0_0146, anchorHistoryChunk0146] at h0
  have h1 := anchorAggregatePart1_0146
  simp only [anchorAggregatePartValid1_0146, anchorHistoryChunk0146] at h1
  have h2 := anchorAggregatePart2_0146
  simp only [anchorAggregatePartValid2_0146, anchorHistoryChunk0146] at h2
  have h3 := anchorAggregatePart3_0146
  simp only [anchorAggregatePartValid3_0146, anchorHistoryChunk0146] at h3
  have h4 := anchorAggregatePart4_0146
  simp only [anchorAggregatePartValid4_0146, anchorHistoryChunk0146] at h4
  have h5 := anchorAggregatePart5_0146
  simp only [anchorAggregatePartValid5_0146, anchorHistoryChunk0146] at h5
  have h6 := anchorAggregatePart6_0146
  simp only [anchorAggregatePartValid6_0146, anchorHistoryChunk0146] at h6
  have h7 := anchorAggregatePart7_0146
  simp only [anchorAggregatePartValid7_0146, anchorHistoryChunk0146] at h7
  unfold anchorHistoryChunk0146
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0147 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 150528
  | _ => True

theorem anchorAggregatePart0_0147 :
    anchorAggregatePartValid0_0147 anchorHistoryChunk0147 := by
  unfold anchorAggregatePartValid0_0147 anchorHistoryChunk0147
  decide

def anchorAggregatePartValid1_0147 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 150656
  | _ => True

theorem anchorAggregatePart1_0147 :
    anchorAggregatePartValid1_0147 anchorHistoryChunk0147 := by
  unfold anchorAggregatePartValid1_0147 anchorHistoryChunk0147
  decide

def anchorAggregatePartValid2_0147 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 150784
  | _ => True

theorem anchorAggregatePart2_0147 :
    anchorAggregatePartValid2_0147 anchorHistoryChunk0147 := by
  unfold anchorAggregatePartValid2_0147 anchorHistoryChunk0147
  decide

def anchorAggregatePartValid3_0147 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 150912
  | _ => True

theorem anchorAggregatePart3_0147 :
    anchorAggregatePartValid3_0147 anchorHistoryChunk0147 := by
  unfold anchorAggregatePartValid3_0147 anchorHistoryChunk0147
  decide

def anchorAggregatePartValid4_0147 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 151040
  | _ => True

theorem anchorAggregatePart4_0147 :
    anchorAggregatePartValid4_0147 anchorHistoryChunk0147 := by
  unfold anchorAggregatePartValid4_0147 anchorHistoryChunk0147
  decide

def anchorAggregatePartValid5_0147 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 151168
  | _ => True

theorem anchorAggregatePart5_0147 :
    anchorAggregatePartValid5_0147 anchorHistoryChunk0147 := by
  unfold anchorAggregatePartValid5_0147 anchorHistoryChunk0147
  decide

def anchorAggregatePartValid6_0147 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 151296
  | _ => True

theorem anchorAggregatePart6_0147 :
    anchorAggregatePartValid6_0147 anchorHistoryChunk0147 := by
  unfold anchorAggregatePartValid6_0147 anchorHistoryChunk0147
  decide

def anchorAggregatePartValid7_0147 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 151424
  | _ => True

theorem anchorAggregatePart7_0147 :
    anchorAggregatePartValid7_0147 anchorHistoryChunk0147 := by
  unfold anchorAggregatePartValid7_0147 anchorHistoryChunk0147
  decide

theorem anchorRange_0147 :
    anchorHistoryChunk0147.IndexedValid squarefreeOracle 5000000 150528 := by
  have h0 := anchorAggregatePart0_0147
  simp only [anchorAggregatePartValid0_0147, anchorHistoryChunk0147] at h0
  have h1 := anchorAggregatePart1_0147
  simp only [anchorAggregatePartValid1_0147, anchorHistoryChunk0147] at h1
  have h2 := anchorAggregatePart2_0147
  simp only [anchorAggregatePartValid2_0147, anchorHistoryChunk0147] at h2
  have h3 := anchorAggregatePart3_0147
  simp only [anchorAggregatePartValid3_0147, anchorHistoryChunk0147] at h3
  have h4 := anchorAggregatePart4_0147
  simp only [anchorAggregatePartValid4_0147, anchorHistoryChunk0147] at h4
  have h5 := anchorAggregatePart5_0147
  simp only [anchorAggregatePartValid5_0147, anchorHistoryChunk0147] at h5
  have h6 := anchorAggregatePart6_0147
  simp only [anchorAggregatePartValid6_0147, anchorHistoryChunk0147] at h6
  have h7 := anchorAggregatePart7_0147
  simp only [anchorAggregatePartValid7_0147, anchorHistoryChunk0147] at h7
  unfold anchorHistoryChunk0147
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
