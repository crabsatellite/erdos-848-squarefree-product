import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0124
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0125
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0126
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0127

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0124, 0125, 0126, 0127 -/

def anchorAggregatePartValid0_0124 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 126976
  | _ => True

theorem anchorAggregatePart0_0124 :
    anchorAggregatePartValid0_0124 anchorHistoryChunk0124 := by
  unfold anchorAggregatePartValid0_0124 anchorHistoryChunk0124
  decide

def anchorAggregatePartValid1_0124 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 127104
  | _ => True

theorem anchorAggregatePart1_0124 :
    anchorAggregatePartValid1_0124 anchorHistoryChunk0124 := by
  unfold anchorAggregatePartValid1_0124 anchorHistoryChunk0124
  decide

def anchorAggregatePartValid2_0124 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 127232
  | _ => True

theorem anchorAggregatePart2_0124 :
    anchorAggregatePartValid2_0124 anchorHistoryChunk0124 := by
  unfold anchorAggregatePartValid2_0124 anchorHistoryChunk0124
  decide

def anchorAggregatePartValid3_0124 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 127360
  | _ => True

theorem anchorAggregatePart3_0124 :
    anchorAggregatePartValid3_0124 anchorHistoryChunk0124 := by
  unfold anchorAggregatePartValid3_0124 anchorHistoryChunk0124
  decide

def anchorAggregatePartValid4_0124 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 127488
  | _ => True

theorem anchorAggregatePart4_0124 :
    anchorAggregatePartValid4_0124 anchorHistoryChunk0124 := by
  unfold anchorAggregatePartValid4_0124 anchorHistoryChunk0124
  decide

def anchorAggregatePartValid5_0124 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 127616
  | _ => True

theorem anchorAggregatePart5_0124 :
    anchorAggregatePartValid5_0124 anchorHistoryChunk0124 := by
  unfold anchorAggregatePartValid5_0124 anchorHistoryChunk0124
  decide

def anchorAggregatePartValid6_0124 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 127744
  | _ => True

theorem anchorAggregatePart6_0124 :
    anchorAggregatePartValid6_0124 anchorHistoryChunk0124 := by
  unfold anchorAggregatePartValid6_0124 anchorHistoryChunk0124
  decide

def anchorAggregatePartValid7_0124 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 127872
  | _ => True

theorem anchorAggregatePart7_0124 :
    anchorAggregatePartValid7_0124 anchorHistoryChunk0124 := by
  unfold anchorAggregatePartValid7_0124 anchorHistoryChunk0124
  decide

theorem anchorRange_0124 :
    anchorHistoryChunk0124.IndexedValid squarefreeOracle 5000000 126976 := by
  have h0 := anchorAggregatePart0_0124
  simp only [anchorAggregatePartValid0_0124, anchorHistoryChunk0124] at h0
  have h1 := anchorAggregatePart1_0124
  simp only [anchorAggregatePartValid1_0124, anchorHistoryChunk0124] at h1
  have h2 := anchorAggregatePart2_0124
  simp only [anchorAggregatePartValid2_0124, anchorHistoryChunk0124] at h2
  have h3 := anchorAggregatePart3_0124
  simp only [anchorAggregatePartValid3_0124, anchorHistoryChunk0124] at h3
  have h4 := anchorAggregatePart4_0124
  simp only [anchorAggregatePartValid4_0124, anchorHistoryChunk0124] at h4
  have h5 := anchorAggregatePart5_0124
  simp only [anchorAggregatePartValid5_0124, anchorHistoryChunk0124] at h5
  have h6 := anchorAggregatePart6_0124
  simp only [anchorAggregatePartValid6_0124, anchorHistoryChunk0124] at h6
  have h7 := anchorAggregatePart7_0124
  simp only [anchorAggregatePartValid7_0124, anchorHistoryChunk0124] at h7
  unfold anchorHistoryChunk0124
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0125 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 128000
  | _ => True

theorem anchorAggregatePart0_0125 :
    anchorAggregatePartValid0_0125 anchorHistoryChunk0125 := by
  unfold anchorAggregatePartValid0_0125 anchorHistoryChunk0125
  decide

def anchorAggregatePartValid1_0125 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 128128
  | _ => True

theorem anchorAggregatePart1_0125 :
    anchorAggregatePartValid1_0125 anchorHistoryChunk0125 := by
  unfold anchorAggregatePartValid1_0125 anchorHistoryChunk0125
  decide

def anchorAggregatePartValid2_0125 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 128256
  | _ => True

theorem anchorAggregatePart2_0125 :
    anchorAggregatePartValid2_0125 anchorHistoryChunk0125 := by
  unfold anchorAggregatePartValid2_0125 anchorHistoryChunk0125
  decide

def anchorAggregatePartValid3_0125 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 128384
  | _ => True

theorem anchorAggregatePart3_0125 :
    anchorAggregatePartValid3_0125 anchorHistoryChunk0125 := by
  unfold anchorAggregatePartValid3_0125 anchorHistoryChunk0125
  decide

def anchorAggregatePartValid4_0125 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 128512
  | _ => True

theorem anchorAggregatePart4_0125 :
    anchorAggregatePartValid4_0125 anchorHistoryChunk0125 := by
  unfold anchorAggregatePartValid4_0125 anchorHistoryChunk0125
  decide

def anchorAggregatePartValid5_0125 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 128640
  | _ => True

theorem anchorAggregatePart5_0125 :
    anchorAggregatePartValid5_0125 anchorHistoryChunk0125 := by
  unfold anchorAggregatePartValid5_0125 anchorHistoryChunk0125
  decide

def anchorAggregatePartValid6_0125 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 128768
  | _ => True

theorem anchorAggregatePart6_0125 :
    anchorAggregatePartValid6_0125 anchorHistoryChunk0125 := by
  unfold anchorAggregatePartValid6_0125 anchorHistoryChunk0125
  decide

def anchorAggregatePartValid7_0125 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 128896
  | _ => True

theorem anchorAggregatePart7_0125 :
    anchorAggregatePartValid7_0125 anchorHistoryChunk0125 := by
  unfold anchorAggregatePartValid7_0125 anchorHistoryChunk0125
  decide

theorem anchorRange_0125 :
    anchorHistoryChunk0125.IndexedValid squarefreeOracle 5000000 128000 := by
  have h0 := anchorAggregatePart0_0125
  simp only [anchorAggregatePartValid0_0125, anchorHistoryChunk0125] at h0
  have h1 := anchorAggregatePart1_0125
  simp only [anchorAggregatePartValid1_0125, anchorHistoryChunk0125] at h1
  have h2 := anchorAggregatePart2_0125
  simp only [anchorAggregatePartValid2_0125, anchorHistoryChunk0125] at h2
  have h3 := anchorAggregatePart3_0125
  simp only [anchorAggregatePartValid3_0125, anchorHistoryChunk0125] at h3
  have h4 := anchorAggregatePart4_0125
  simp only [anchorAggregatePartValid4_0125, anchorHistoryChunk0125] at h4
  have h5 := anchorAggregatePart5_0125
  simp only [anchorAggregatePartValid5_0125, anchorHistoryChunk0125] at h5
  have h6 := anchorAggregatePart6_0125
  simp only [anchorAggregatePartValid6_0125, anchorHistoryChunk0125] at h6
  have h7 := anchorAggregatePart7_0125
  simp only [anchorAggregatePartValid7_0125, anchorHistoryChunk0125] at h7
  unfold anchorHistoryChunk0125
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0126 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 129024
  | _ => True

theorem anchorAggregatePart0_0126 :
    anchorAggregatePartValid0_0126 anchorHistoryChunk0126 := by
  unfold anchorAggregatePartValid0_0126 anchorHistoryChunk0126
  decide

def anchorAggregatePartValid1_0126 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 129152
  | _ => True

theorem anchorAggregatePart1_0126 :
    anchorAggregatePartValid1_0126 anchorHistoryChunk0126 := by
  unfold anchorAggregatePartValid1_0126 anchorHistoryChunk0126
  decide

def anchorAggregatePartValid2_0126 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 129280
  | _ => True

theorem anchorAggregatePart2_0126 :
    anchorAggregatePartValid2_0126 anchorHistoryChunk0126 := by
  unfold anchorAggregatePartValid2_0126 anchorHistoryChunk0126
  decide

def anchorAggregatePartValid3_0126 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 129408
  | _ => True

theorem anchorAggregatePart3_0126 :
    anchorAggregatePartValid3_0126 anchorHistoryChunk0126 := by
  unfold anchorAggregatePartValid3_0126 anchorHistoryChunk0126
  decide

def anchorAggregatePartValid4_0126 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 129536
  | _ => True

theorem anchorAggregatePart4_0126 :
    anchorAggregatePartValid4_0126 anchorHistoryChunk0126 := by
  unfold anchorAggregatePartValid4_0126 anchorHistoryChunk0126
  decide

def anchorAggregatePartValid5_0126 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 129664
  | _ => True

theorem anchorAggregatePart5_0126 :
    anchorAggregatePartValid5_0126 anchorHistoryChunk0126 := by
  unfold anchorAggregatePartValid5_0126 anchorHistoryChunk0126
  decide

def anchorAggregatePartValid6_0126 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 129792
  | _ => True

theorem anchorAggregatePart6_0126 :
    anchorAggregatePartValid6_0126 anchorHistoryChunk0126 := by
  unfold anchorAggregatePartValid6_0126 anchorHistoryChunk0126
  decide

def anchorAggregatePartValid7_0126 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 129920
  | _ => True

theorem anchorAggregatePart7_0126 :
    anchorAggregatePartValid7_0126 anchorHistoryChunk0126 := by
  unfold anchorAggregatePartValid7_0126 anchorHistoryChunk0126
  decide

theorem anchorRange_0126 :
    anchorHistoryChunk0126.IndexedValid squarefreeOracle 5000000 129024 := by
  have h0 := anchorAggregatePart0_0126
  simp only [anchorAggregatePartValid0_0126, anchorHistoryChunk0126] at h0
  have h1 := anchorAggregatePart1_0126
  simp only [anchorAggregatePartValid1_0126, anchorHistoryChunk0126] at h1
  have h2 := anchorAggregatePart2_0126
  simp only [anchorAggregatePartValid2_0126, anchorHistoryChunk0126] at h2
  have h3 := anchorAggregatePart3_0126
  simp only [anchorAggregatePartValid3_0126, anchorHistoryChunk0126] at h3
  have h4 := anchorAggregatePart4_0126
  simp only [anchorAggregatePartValid4_0126, anchorHistoryChunk0126] at h4
  have h5 := anchorAggregatePart5_0126
  simp only [anchorAggregatePartValid5_0126, anchorHistoryChunk0126] at h5
  have h6 := anchorAggregatePart6_0126
  simp only [anchorAggregatePartValid6_0126, anchorHistoryChunk0126] at h6
  have h7 := anchorAggregatePart7_0126
  simp only [anchorAggregatePartValid7_0126, anchorHistoryChunk0126] at h7
  unfold anchorHistoryChunk0126
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0127 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 130048
  | _ => True

theorem anchorAggregatePart0_0127 :
    anchorAggregatePartValid0_0127 anchorHistoryChunk0127 := by
  unfold anchorAggregatePartValid0_0127 anchorHistoryChunk0127
  decide

def anchorAggregatePartValid1_0127 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 130176
  | _ => True

theorem anchorAggregatePart1_0127 :
    anchorAggregatePartValid1_0127 anchorHistoryChunk0127 := by
  unfold anchorAggregatePartValid1_0127 anchorHistoryChunk0127
  decide

def anchorAggregatePartValid2_0127 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 130304
  | _ => True

theorem anchorAggregatePart2_0127 :
    anchorAggregatePartValid2_0127 anchorHistoryChunk0127 := by
  unfold anchorAggregatePartValid2_0127 anchorHistoryChunk0127
  decide

def anchorAggregatePartValid3_0127 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 130432
  | _ => True

theorem anchorAggregatePart3_0127 :
    anchorAggregatePartValid3_0127 anchorHistoryChunk0127 := by
  unfold anchorAggregatePartValid3_0127 anchorHistoryChunk0127
  decide

def anchorAggregatePartValid4_0127 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 130560
  | _ => True

theorem anchorAggregatePart4_0127 :
    anchorAggregatePartValid4_0127 anchorHistoryChunk0127 := by
  unfold anchorAggregatePartValid4_0127 anchorHistoryChunk0127
  decide

def anchorAggregatePartValid5_0127 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 130688
  | _ => True

theorem anchorAggregatePart5_0127 :
    anchorAggregatePartValid5_0127 anchorHistoryChunk0127 := by
  unfold anchorAggregatePartValid5_0127 anchorHistoryChunk0127
  decide

def anchorAggregatePartValid6_0127 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 130816
  | _ => True

theorem anchorAggregatePart6_0127 :
    anchorAggregatePartValid6_0127 anchorHistoryChunk0127 := by
  unfold anchorAggregatePartValid6_0127 anchorHistoryChunk0127
  decide

def anchorAggregatePartValid7_0127 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 130944
  | _ => True

theorem anchorAggregatePart7_0127 :
    anchorAggregatePartValid7_0127 anchorHistoryChunk0127 := by
  unfold anchorAggregatePartValid7_0127 anchorHistoryChunk0127
  decide

theorem anchorRange_0127 :
    anchorHistoryChunk0127.IndexedValid squarefreeOracle 5000000 130048 := by
  have h0 := anchorAggregatePart0_0127
  simp only [anchorAggregatePartValid0_0127, anchorHistoryChunk0127] at h0
  have h1 := anchorAggregatePart1_0127
  simp only [anchorAggregatePartValid1_0127, anchorHistoryChunk0127] at h1
  have h2 := anchorAggregatePart2_0127
  simp only [anchorAggregatePartValid2_0127, anchorHistoryChunk0127] at h2
  have h3 := anchorAggregatePart3_0127
  simp only [anchorAggregatePartValid3_0127, anchorHistoryChunk0127] at h3
  have h4 := anchorAggregatePart4_0127
  simp only [anchorAggregatePartValid4_0127, anchorHistoryChunk0127] at h4
  have h5 := anchorAggregatePart5_0127
  simp only [anchorAggregatePartValid5_0127, anchorHistoryChunk0127] at h5
  have h6 := anchorAggregatePart6_0127
  simp only [anchorAggregatePartValid6_0127, anchorHistoryChunk0127] at h6
  have h7 := anchorAggregatePart7_0127
  simp only [anchorAggregatePartValid7_0127, anchorHistoryChunk0127] at h7
  unfold anchorHistoryChunk0127
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
