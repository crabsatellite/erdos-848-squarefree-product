import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0020
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0021
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0022
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0023

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0020, 0021, 0022, 0023 -/

def anchorAggregatePartValid0_0020 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 20480
  | _ => True

theorem anchorAggregatePart0_0020 :
    anchorAggregatePartValid0_0020 anchorHistoryChunk0020 := by
  unfold anchorAggregatePartValid0_0020 anchorHistoryChunk0020
  decide

def anchorAggregatePartValid1_0020 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 20608
  | _ => True

theorem anchorAggregatePart1_0020 :
    anchorAggregatePartValid1_0020 anchorHistoryChunk0020 := by
  unfold anchorAggregatePartValid1_0020 anchorHistoryChunk0020
  decide

def anchorAggregatePartValid2_0020 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 20736
  | _ => True

theorem anchorAggregatePart2_0020 :
    anchorAggregatePartValid2_0020 anchorHistoryChunk0020 := by
  unfold anchorAggregatePartValid2_0020 anchorHistoryChunk0020
  decide

def anchorAggregatePartValid3_0020 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 20864
  | _ => True

theorem anchorAggregatePart3_0020 :
    anchorAggregatePartValid3_0020 anchorHistoryChunk0020 := by
  unfold anchorAggregatePartValid3_0020 anchorHistoryChunk0020
  decide

def anchorAggregatePartValid4_0020 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 20992
  | _ => True

theorem anchorAggregatePart4_0020 :
    anchorAggregatePartValid4_0020 anchorHistoryChunk0020 := by
  unfold anchorAggregatePartValid4_0020 anchorHistoryChunk0020
  decide

def anchorAggregatePartValid5_0020 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 21120
  | _ => True

theorem anchorAggregatePart5_0020 :
    anchorAggregatePartValid5_0020 anchorHistoryChunk0020 := by
  unfold anchorAggregatePartValid5_0020 anchorHistoryChunk0020
  decide

def anchorAggregatePartValid6_0020 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 21248
  | _ => True

theorem anchorAggregatePart6_0020 :
    anchorAggregatePartValid6_0020 anchorHistoryChunk0020 := by
  unfold anchorAggregatePartValid6_0020 anchorHistoryChunk0020
  decide

def anchorAggregatePartValid7_0020 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 21376
  | _ => True

theorem anchorAggregatePart7_0020 :
    anchorAggregatePartValid7_0020 anchorHistoryChunk0020 := by
  unfold anchorAggregatePartValid7_0020 anchorHistoryChunk0020
  decide

theorem anchorRange_0020 :
    anchorHistoryChunk0020.IndexedValid squarefreeOracle 5000000 20480 := by
  have h0 := anchorAggregatePart0_0020
  simp only [anchorAggregatePartValid0_0020, anchorHistoryChunk0020] at h0
  have h1 := anchorAggregatePart1_0020
  simp only [anchorAggregatePartValid1_0020, anchorHistoryChunk0020] at h1
  have h2 := anchorAggregatePart2_0020
  simp only [anchorAggregatePartValid2_0020, anchorHistoryChunk0020] at h2
  have h3 := anchorAggregatePart3_0020
  simp only [anchorAggregatePartValid3_0020, anchorHistoryChunk0020] at h3
  have h4 := anchorAggregatePart4_0020
  simp only [anchorAggregatePartValid4_0020, anchorHistoryChunk0020] at h4
  have h5 := anchorAggregatePart5_0020
  simp only [anchorAggregatePartValid5_0020, anchorHistoryChunk0020] at h5
  have h6 := anchorAggregatePart6_0020
  simp only [anchorAggregatePartValid6_0020, anchorHistoryChunk0020] at h6
  have h7 := anchorAggregatePart7_0020
  simp only [anchorAggregatePartValid7_0020, anchorHistoryChunk0020] at h7
  unfold anchorHistoryChunk0020
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0021 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 21504
  | _ => True

theorem anchorAggregatePart0_0021 :
    anchorAggregatePartValid0_0021 anchorHistoryChunk0021 := by
  unfold anchorAggregatePartValid0_0021 anchorHistoryChunk0021
  decide

def anchorAggregatePartValid1_0021 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 21632
  | _ => True

theorem anchorAggregatePart1_0021 :
    anchorAggregatePartValid1_0021 anchorHistoryChunk0021 := by
  unfold anchorAggregatePartValid1_0021 anchorHistoryChunk0021
  decide

def anchorAggregatePartValid2_0021 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 21760
  | _ => True

theorem anchorAggregatePart2_0021 :
    anchorAggregatePartValid2_0021 anchorHistoryChunk0021 := by
  unfold anchorAggregatePartValid2_0021 anchorHistoryChunk0021
  decide

def anchorAggregatePartValid3_0021 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 21888
  | _ => True

theorem anchorAggregatePart3_0021 :
    anchorAggregatePartValid3_0021 anchorHistoryChunk0021 := by
  unfold anchorAggregatePartValid3_0021 anchorHistoryChunk0021
  decide

def anchorAggregatePartValid4_0021 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 22016
  | _ => True

theorem anchorAggregatePart4_0021 :
    anchorAggregatePartValid4_0021 anchorHistoryChunk0021 := by
  unfold anchorAggregatePartValid4_0021 anchorHistoryChunk0021
  decide

def anchorAggregatePartValid5_0021 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 22144
  | _ => True

theorem anchorAggregatePart5_0021 :
    anchorAggregatePartValid5_0021 anchorHistoryChunk0021 := by
  unfold anchorAggregatePartValid5_0021 anchorHistoryChunk0021
  decide

def anchorAggregatePartValid6_0021 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 22272
  | _ => True

theorem anchorAggregatePart6_0021 :
    anchorAggregatePartValid6_0021 anchorHistoryChunk0021 := by
  unfold anchorAggregatePartValid6_0021 anchorHistoryChunk0021
  decide

def anchorAggregatePartValid7_0021 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 22400
  | _ => True

theorem anchorAggregatePart7_0021 :
    anchorAggregatePartValid7_0021 anchorHistoryChunk0021 := by
  unfold anchorAggregatePartValid7_0021 anchorHistoryChunk0021
  decide

theorem anchorRange_0021 :
    anchorHistoryChunk0021.IndexedValid squarefreeOracle 5000000 21504 := by
  have h0 := anchorAggregatePart0_0021
  simp only [anchorAggregatePartValid0_0021, anchorHistoryChunk0021] at h0
  have h1 := anchorAggregatePart1_0021
  simp only [anchorAggregatePartValid1_0021, anchorHistoryChunk0021] at h1
  have h2 := anchorAggregatePart2_0021
  simp only [anchorAggregatePartValid2_0021, anchorHistoryChunk0021] at h2
  have h3 := anchorAggregatePart3_0021
  simp only [anchorAggregatePartValid3_0021, anchorHistoryChunk0021] at h3
  have h4 := anchorAggregatePart4_0021
  simp only [anchorAggregatePartValid4_0021, anchorHistoryChunk0021] at h4
  have h5 := anchorAggregatePart5_0021
  simp only [anchorAggregatePartValid5_0021, anchorHistoryChunk0021] at h5
  have h6 := anchorAggregatePart6_0021
  simp only [anchorAggregatePartValid6_0021, anchorHistoryChunk0021] at h6
  have h7 := anchorAggregatePart7_0021
  simp only [anchorAggregatePartValid7_0021, anchorHistoryChunk0021] at h7
  unfold anchorHistoryChunk0021
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0022 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 22528
  | _ => True

theorem anchorAggregatePart0_0022 :
    anchorAggregatePartValid0_0022 anchorHistoryChunk0022 := by
  unfold anchorAggregatePartValid0_0022 anchorHistoryChunk0022
  decide

def anchorAggregatePartValid1_0022 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 22656
  | _ => True

theorem anchorAggregatePart1_0022 :
    anchorAggregatePartValid1_0022 anchorHistoryChunk0022 := by
  unfold anchorAggregatePartValid1_0022 anchorHistoryChunk0022
  decide

def anchorAggregatePartValid2_0022 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 22784
  | _ => True

theorem anchorAggregatePart2_0022 :
    anchorAggregatePartValid2_0022 anchorHistoryChunk0022 := by
  unfold anchorAggregatePartValid2_0022 anchorHistoryChunk0022
  decide

def anchorAggregatePartValid3_0022 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 22912
  | _ => True

theorem anchorAggregatePart3_0022 :
    anchorAggregatePartValid3_0022 anchorHistoryChunk0022 := by
  unfold anchorAggregatePartValid3_0022 anchorHistoryChunk0022
  decide

def anchorAggregatePartValid4_0022 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 23040
  | _ => True

theorem anchorAggregatePart4_0022 :
    anchorAggregatePartValid4_0022 anchorHistoryChunk0022 := by
  unfold anchorAggregatePartValid4_0022 anchorHistoryChunk0022
  decide

def anchorAggregatePartValid5_0022 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 23168
  | _ => True

theorem anchorAggregatePart5_0022 :
    anchorAggregatePartValid5_0022 anchorHistoryChunk0022 := by
  unfold anchorAggregatePartValid5_0022 anchorHistoryChunk0022
  decide

def anchorAggregatePartValid6_0022 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 23296
  | _ => True

theorem anchorAggregatePart6_0022 :
    anchorAggregatePartValid6_0022 anchorHistoryChunk0022 := by
  unfold anchorAggregatePartValid6_0022 anchorHistoryChunk0022
  decide

def anchorAggregatePartValid7_0022 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 23424
  | _ => True

theorem anchorAggregatePart7_0022 :
    anchorAggregatePartValid7_0022 anchorHistoryChunk0022 := by
  unfold anchorAggregatePartValid7_0022 anchorHistoryChunk0022
  decide

theorem anchorRange_0022 :
    anchorHistoryChunk0022.IndexedValid squarefreeOracle 5000000 22528 := by
  have h0 := anchorAggregatePart0_0022
  simp only [anchorAggregatePartValid0_0022, anchorHistoryChunk0022] at h0
  have h1 := anchorAggregatePart1_0022
  simp only [anchorAggregatePartValid1_0022, anchorHistoryChunk0022] at h1
  have h2 := anchorAggregatePart2_0022
  simp only [anchorAggregatePartValid2_0022, anchorHistoryChunk0022] at h2
  have h3 := anchorAggregatePart3_0022
  simp only [anchorAggregatePartValid3_0022, anchorHistoryChunk0022] at h3
  have h4 := anchorAggregatePart4_0022
  simp only [anchorAggregatePartValid4_0022, anchorHistoryChunk0022] at h4
  have h5 := anchorAggregatePart5_0022
  simp only [anchorAggregatePartValid5_0022, anchorHistoryChunk0022] at h5
  have h6 := anchorAggregatePart6_0022
  simp only [anchorAggregatePartValid6_0022, anchorHistoryChunk0022] at h6
  have h7 := anchorAggregatePart7_0022
  simp only [anchorAggregatePartValid7_0022, anchorHistoryChunk0022] at h7
  unfold anchorHistoryChunk0022
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0023 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 23552
  | _ => True

theorem anchorAggregatePart0_0023 :
    anchorAggregatePartValid0_0023 anchorHistoryChunk0023 := by
  unfold anchorAggregatePartValid0_0023 anchorHistoryChunk0023
  decide

def anchorAggregatePartValid1_0023 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 23680
  | _ => True

theorem anchorAggregatePart1_0023 :
    anchorAggregatePartValid1_0023 anchorHistoryChunk0023 := by
  unfold anchorAggregatePartValid1_0023 anchorHistoryChunk0023
  decide

def anchorAggregatePartValid2_0023 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 23808
  | _ => True

theorem anchorAggregatePart2_0023 :
    anchorAggregatePartValid2_0023 anchorHistoryChunk0023 := by
  unfold anchorAggregatePartValid2_0023 anchorHistoryChunk0023
  decide

def anchorAggregatePartValid3_0023 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 23936
  | _ => True

theorem anchorAggregatePart3_0023 :
    anchorAggregatePartValid3_0023 anchorHistoryChunk0023 := by
  unfold anchorAggregatePartValid3_0023 anchorHistoryChunk0023
  decide

def anchorAggregatePartValid4_0023 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 24064
  | _ => True

theorem anchorAggregatePart4_0023 :
    anchorAggregatePartValid4_0023 anchorHistoryChunk0023 := by
  unfold anchorAggregatePartValid4_0023 anchorHistoryChunk0023
  decide

def anchorAggregatePartValid5_0023 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 24192
  | _ => True

theorem anchorAggregatePart5_0023 :
    anchorAggregatePartValid5_0023 anchorHistoryChunk0023 := by
  unfold anchorAggregatePartValid5_0023 anchorHistoryChunk0023
  decide

def anchorAggregatePartValid6_0023 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 24320
  | _ => True

theorem anchorAggregatePart6_0023 :
    anchorAggregatePartValid6_0023 anchorHistoryChunk0023 := by
  unfold anchorAggregatePartValid6_0023 anchorHistoryChunk0023
  decide

def anchorAggregatePartValid7_0023 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 24448
  | _ => True

theorem anchorAggregatePart7_0023 :
    anchorAggregatePartValid7_0023 anchorHistoryChunk0023 := by
  unfold anchorAggregatePartValid7_0023 anchorHistoryChunk0023
  decide

theorem anchorRange_0023 :
    anchorHistoryChunk0023.IndexedValid squarefreeOracle 5000000 23552 := by
  have h0 := anchorAggregatePart0_0023
  simp only [anchorAggregatePartValid0_0023, anchorHistoryChunk0023] at h0
  have h1 := anchorAggregatePart1_0023
  simp only [anchorAggregatePartValid1_0023, anchorHistoryChunk0023] at h1
  have h2 := anchorAggregatePart2_0023
  simp only [anchorAggregatePartValid2_0023, anchorHistoryChunk0023] at h2
  have h3 := anchorAggregatePart3_0023
  simp only [anchorAggregatePartValid3_0023, anchorHistoryChunk0023] at h3
  have h4 := anchorAggregatePart4_0023
  simp only [anchorAggregatePartValid4_0023, anchorHistoryChunk0023] at h4
  have h5 := anchorAggregatePart5_0023
  simp only [anchorAggregatePartValid5_0023, anchorHistoryChunk0023] at h5
  have h6 := anchorAggregatePart6_0023
  simp only [anchorAggregatePartValid6_0023, anchorHistoryChunk0023] at h6
  have h7 := anchorAggregatePart7_0023
  simp only [anchorAggregatePartValid7_0023, anchorHistoryChunk0023] at h7
  unfold anchorHistoryChunk0023
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
