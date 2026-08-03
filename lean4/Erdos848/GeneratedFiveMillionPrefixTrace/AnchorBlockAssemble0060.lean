import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0060
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0061
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0062
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0063

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0060, 0061, 0062, 0063 -/

def anchorAggregatePartValid0_0060 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 61440
  | _ => True

theorem anchorAggregatePart0_0060 :
    anchorAggregatePartValid0_0060 anchorHistoryChunk0060 := by
  unfold anchorAggregatePartValid0_0060 anchorHistoryChunk0060
  decide

def anchorAggregatePartValid1_0060 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 61568
  | _ => True

theorem anchorAggregatePart1_0060 :
    anchorAggregatePartValid1_0060 anchorHistoryChunk0060 := by
  unfold anchorAggregatePartValid1_0060 anchorHistoryChunk0060
  decide

def anchorAggregatePartValid2_0060 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 61696
  | _ => True

theorem anchorAggregatePart2_0060 :
    anchorAggregatePartValid2_0060 anchorHistoryChunk0060 := by
  unfold anchorAggregatePartValid2_0060 anchorHistoryChunk0060
  decide

def anchorAggregatePartValid3_0060 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 61824
  | _ => True

theorem anchorAggregatePart3_0060 :
    anchorAggregatePartValid3_0060 anchorHistoryChunk0060 := by
  unfold anchorAggregatePartValid3_0060 anchorHistoryChunk0060
  decide

def anchorAggregatePartValid4_0060 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 61952
  | _ => True

theorem anchorAggregatePart4_0060 :
    anchorAggregatePartValid4_0060 anchorHistoryChunk0060 := by
  unfold anchorAggregatePartValid4_0060 anchorHistoryChunk0060
  decide

def anchorAggregatePartValid5_0060 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 62080
  | _ => True

theorem anchorAggregatePart5_0060 :
    anchorAggregatePartValid5_0060 anchorHistoryChunk0060 := by
  unfold anchorAggregatePartValid5_0060 anchorHistoryChunk0060
  decide

def anchorAggregatePartValid6_0060 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 62208
  | _ => True

theorem anchorAggregatePart6_0060 :
    anchorAggregatePartValid6_0060 anchorHistoryChunk0060 := by
  unfold anchorAggregatePartValid6_0060 anchorHistoryChunk0060
  decide

def anchorAggregatePartValid7_0060 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 62336
  | _ => True

theorem anchorAggregatePart7_0060 :
    anchorAggregatePartValid7_0060 anchorHistoryChunk0060 := by
  unfold anchorAggregatePartValid7_0060 anchorHistoryChunk0060
  decide

theorem anchorRange_0060 :
    anchorHistoryChunk0060.IndexedValid squarefreeOracle 5000000 61440 := by
  have h0 := anchorAggregatePart0_0060
  simp only [anchorAggregatePartValid0_0060, anchorHistoryChunk0060] at h0
  have h1 := anchorAggregatePart1_0060
  simp only [anchorAggregatePartValid1_0060, anchorHistoryChunk0060] at h1
  have h2 := anchorAggregatePart2_0060
  simp only [anchorAggregatePartValid2_0060, anchorHistoryChunk0060] at h2
  have h3 := anchorAggregatePart3_0060
  simp only [anchorAggregatePartValid3_0060, anchorHistoryChunk0060] at h3
  have h4 := anchorAggregatePart4_0060
  simp only [anchorAggregatePartValid4_0060, anchorHistoryChunk0060] at h4
  have h5 := anchorAggregatePart5_0060
  simp only [anchorAggregatePartValid5_0060, anchorHistoryChunk0060] at h5
  have h6 := anchorAggregatePart6_0060
  simp only [anchorAggregatePartValid6_0060, anchorHistoryChunk0060] at h6
  have h7 := anchorAggregatePart7_0060
  simp only [anchorAggregatePartValid7_0060, anchorHistoryChunk0060] at h7
  unfold anchorHistoryChunk0060
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0061 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 62464
  | _ => True

theorem anchorAggregatePart0_0061 :
    anchorAggregatePartValid0_0061 anchorHistoryChunk0061 := by
  unfold anchorAggregatePartValid0_0061 anchorHistoryChunk0061
  decide

def anchorAggregatePartValid1_0061 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 62592
  | _ => True

theorem anchorAggregatePart1_0061 :
    anchorAggregatePartValid1_0061 anchorHistoryChunk0061 := by
  unfold anchorAggregatePartValid1_0061 anchorHistoryChunk0061
  decide

def anchorAggregatePartValid2_0061 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 62720
  | _ => True

theorem anchorAggregatePart2_0061 :
    anchorAggregatePartValid2_0061 anchorHistoryChunk0061 := by
  unfold anchorAggregatePartValid2_0061 anchorHistoryChunk0061
  decide

def anchorAggregatePartValid3_0061 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 62848
  | _ => True

theorem anchorAggregatePart3_0061 :
    anchorAggregatePartValid3_0061 anchorHistoryChunk0061 := by
  unfold anchorAggregatePartValid3_0061 anchorHistoryChunk0061
  decide

def anchorAggregatePartValid4_0061 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 62976
  | _ => True

theorem anchorAggregatePart4_0061 :
    anchorAggregatePartValid4_0061 anchorHistoryChunk0061 := by
  unfold anchorAggregatePartValid4_0061 anchorHistoryChunk0061
  decide

def anchorAggregatePartValid5_0061 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 63104
  | _ => True

theorem anchorAggregatePart5_0061 :
    anchorAggregatePartValid5_0061 anchorHistoryChunk0061 := by
  unfold anchorAggregatePartValid5_0061 anchorHistoryChunk0061
  decide

def anchorAggregatePartValid6_0061 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 63232
  | _ => True

theorem anchorAggregatePart6_0061 :
    anchorAggregatePartValid6_0061 anchorHistoryChunk0061 := by
  unfold anchorAggregatePartValid6_0061 anchorHistoryChunk0061
  decide

def anchorAggregatePartValid7_0061 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 63360
  | _ => True

theorem anchorAggregatePart7_0061 :
    anchorAggregatePartValid7_0061 anchorHistoryChunk0061 := by
  unfold anchorAggregatePartValid7_0061 anchorHistoryChunk0061
  decide

theorem anchorRange_0061 :
    anchorHistoryChunk0061.IndexedValid squarefreeOracle 5000000 62464 := by
  have h0 := anchorAggregatePart0_0061
  simp only [anchorAggregatePartValid0_0061, anchorHistoryChunk0061] at h0
  have h1 := anchorAggregatePart1_0061
  simp only [anchorAggregatePartValid1_0061, anchorHistoryChunk0061] at h1
  have h2 := anchorAggregatePart2_0061
  simp only [anchorAggregatePartValid2_0061, anchorHistoryChunk0061] at h2
  have h3 := anchorAggregatePart3_0061
  simp only [anchorAggregatePartValid3_0061, anchorHistoryChunk0061] at h3
  have h4 := anchorAggregatePart4_0061
  simp only [anchorAggregatePartValid4_0061, anchorHistoryChunk0061] at h4
  have h5 := anchorAggregatePart5_0061
  simp only [anchorAggregatePartValid5_0061, anchorHistoryChunk0061] at h5
  have h6 := anchorAggregatePart6_0061
  simp only [anchorAggregatePartValid6_0061, anchorHistoryChunk0061] at h6
  have h7 := anchorAggregatePart7_0061
  simp only [anchorAggregatePartValid7_0061, anchorHistoryChunk0061] at h7
  unfold anchorHistoryChunk0061
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0062 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 63488
  | _ => True

theorem anchorAggregatePart0_0062 :
    anchorAggregatePartValid0_0062 anchorHistoryChunk0062 := by
  unfold anchorAggregatePartValid0_0062 anchorHistoryChunk0062
  decide

def anchorAggregatePartValid1_0062 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 63616
  | _ => True

theorem anchorAggregatePart1_0062 :
    anchorAggregatePartValid1_0062 anchorHistoryChunk0062 := by
  unfold anchorAggregatePartValid1_0062 anchorHistoryChunk0062
  decide

def anchorAggregatePartValid2_0062 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 63744
  | _ => True

theorem anchorAggregatePart2_0062 :
    anchorAggregatePartValid2_0062 anchorHistoryChunk0062 := by
  unfold anchorAggregatePartValid2_0062 anchorHistoryChunk0062
  decide

def anchorAggregatePartValid3_0062 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 63872
  | _ => True

theorem anchorAggregatePart3_0062 :
    anchorAggregatePartValid3_0062 anchorHistoryChunk0062 := by
  unfold anchorAggregatePartValid3_0062 anchorHistoryChunk0062
  decide

def anchorAggregatePartValid4_0062 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 64000
  | _ => True

theorem anchorAggregatePart4_0062 :
    anchorAggregatePartValid4_0062 anchorHistoryChunk0062 := by
  unfold anchorAggregatePartValid4_0062 anchorHistoryChunk0062
  decide

def anchorAggregatePartValid5_0062 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 64128
  | _ => True

theorem anchorAggregatePart5_0062 :
    anchorAggregatePartValid5_0062 anchorHistoryChunk0062 := by
  unfold anchorAggregatePartValid5_0062 anchorHistoryChunk0062
  decide

def anchorAggregatePartValid6_0062 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 64256
  | _ => True

theorem anchorAggregatePart6_0062 :
    anchorAggregatePartValid6_0062 anchorHistoryChunk0062 := by
  unfold anchorAggregatePartValid6_0062 anchorHistoryChunk0062
  decide

def anchorAggregatePartValid7_0062 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 64384
  | _ => True

theorem anchorAggregatePart7_0062 :
    anchorAggregatePartValid7_0062 anchorHistoryChunk0062 := by
  unfold anchorAggregatePartValid7_0062 anchorHistoryChunk0062
  decide

theorem anchorRange_0062 :
    anchorHistoryChunk0062.IndexedValid squarefreeOracle 5000000 63488 := by
  have h0 := anchorAggregatePart0_0062
  simp only [anchorAggregatePartValid0_0062, anchorHistoryChunk0062] at h0
  have h1 := anchorAggregatePart1_0062
  simp only [anchorAggregatePartValid1_0062, anchorHistoryChunk0062] at h1
  have h2 := anchorAggregatePart2_0062
  simp only [anchorAggregatePartValid2_0062, anchorHistoryChunk0062] at h2
  have h3 := anchorAggregatePart3_0062
  simp only [anchorAggregatePartValid3_0062, anchorHistoryChunk0062] at h3
  have h4 := anchorAggregatePart4_0062
  simp only [anchorAggregatePartValid4_0062, anchorHistoryChunk0062] at h4
  have h5 := anchorAggregatePart5_0062
  simp only [anchorAggregatePartValid5_0062, anchorHistoryChunk0062] at h5
  have h6 := anchorAggregatePart6_0062
  simp only [anchorAggregatePartValid6_0062, anchorHistoryChunk0062] at h6
  have h7 := anchorAggregatePart7_0062
  simp only [anchorAggregatePartValid7_0062, anchorHistoryChunk0062] at h7
  unfold anchorHistoryChunk0062
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0063 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 64512
  | _ => True

theorem anchorAggregatePart0_0063 :
    anchorAggregatePartValid0_0063 anchorHistoryChunk0063 := by
  unfold anchorAggregatePartValid0_0063 anchorHistoryChunk0063
  decide

def anchorAggregatePartValid1_0063 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 64640
  | _ => True

theorem anchorAggregatePart1_0063 :
    anchorAggregatePartValid1_0063 anchorHistoryChunk0063 := by
  unfold anchorAggregatePartValid1_0063 anchorHistoryChunk0063
  decide

def anchorAggregatePartValid2_0063 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 64768
  | _ => True

theorem anchorAggregatePart2_0063 :
    anchorAggregatePartValid2_0063 anchorHistoryChunk0063 := by
  unfold anchorAggregatePartValid2_0063 anchorHistoryChunk0063
  decide

def anchorAggregatePartValid3_0063 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 64896
  | _ => True

theorem anchorAggregatePart3_0063 :
    anchorAggregatePartValid3_0063 anchorHistoryChunk0063 := by
  unfold anchorAggregatePartValid3_0063 anchorHistoryChunk0063
  decide

def anchorAggregatePartValid4_0063 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 65024
  | _ => True

theorem anchorAggregatePart4_0063 :
    anchorAggregatePartValid4_0063 anchorHistoryChunk0063 := by
  unfold anchorAggregatePartValid4_0063 anchorHistoryChunk0063
  decide

def anchorAggregatePartValid5_0063 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 65152
  | _ => True

theorem anchorAggregatePart5_0063 :
    anchorAggregatePartValid5_0063 anchorHistoryChunk0063 := by
  unfold anchorAggregatePartValid5_0063 anchorHistoryChunk0063
  decide

def anchorAggregatePartValid6_0063 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 65280
  | _ => True

theorem anchorAggregatePart6_0063 :
    anchorAggregatePartValid6_0063 anchorHistoryChunk0063 := by
  unfold anchorAggregatePartValid6_0063 anchorHistoryChunk0063
  decide

def anchorAggregatePartValid7_0063 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 65408
  | _ => True

theorem anchorAggregatePart7_0063 :
    anchorAggregatePartValid7_0063 anchorHistoryChunk0063 := by
  unfold anchorAggregatePartValid7_0063 anchorHistoryChunk0063
  decide

theorem anchorRange_0063 :
    anchorHistoryChunk0063.IndexedValid squarefreeOracle 5000000 64512 := by
  have h0 := anchorAggregatePart0_0063
  simp only [anchorAggregatePartValid0_0063, anchorHistoryChunk0063] at h0
  have h1 := anchorAggregatePart1_0063
  simp only [anchorAggregatePartValid1_0063, anchorHistoryChunk0063] at h1
  have h2 := anchorAggregatePart2_0063
  simp only [anchorAggregatePartValid2_0063, anchorHistoryChunk0063] at h2
  have h3 := anchorAggregatePart3_0063
  simp only [anchorAggregatePartValid3_0063, anchorHistoryChunk0063] at h3
  have h4 := anchorAggregatePart4_0063
  simp only [anchorAggregatePartValid4_0063, anchorHistoryChunk0063] at h4
  have h5 := anchorAggregatePart5_0063
  simp only [anchorAggregatePartValid5_0063, anchorHistoryChunk0063] at h5
  have h6 := anchorAggregatePart6_0063
  simp only [anchorAggregatePartValid6_0063, anchorHistoryChunk0063] at h6
  have h7 := anchorAggregatePart7_0063
  simp only [anchorAggregatePartValid7_0063, anchorHistoryChunk0063] at h7
  unfold anchorHistoryChunk0063
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
