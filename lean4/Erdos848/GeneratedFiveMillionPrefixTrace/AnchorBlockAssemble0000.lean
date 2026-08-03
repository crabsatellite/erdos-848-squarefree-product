import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0000
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0001
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0002
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0003

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0000, 0001, 0002, 0003 -/

def anchorAggregatePartValid0_0000 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 0
  | _ => True

theorem anchorAggregatePart0_0000 :
    anchorAggregatePartValid0_0000 anchorHistoryChunk0000 := by
  unfold anchorAggregatePartValid0_0000 anchorHistoryChunk0000
  decide

def anchorAggregatePartValid1_0000 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 128
  | _ => True

theorem anchorAggregatePart1_0000 :
    anchorAggregatePartValid1_0000 anchorHistoryChunk0000 := by
  unfold anchorAggregatePartValid1_0000 anchorHistoryChunk0000
  decide

def anchorAggregatePartValid2_0000 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 256
  | _ => True

theorem anchorAggregatePart2_0000 :
    anchorAggregatePartValid2_0000 anchorHistoryChunk0000 := by
  unfold anchorAggregatePartValid2_0000 anchorHistoryChunk0000
  decide

def anchorAggregatePartValid3_0000 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 384
  | _ => True

theorem anchorAggregatePart3_0000 :
    anchorAggregatePartValid3_0000 anchorHistoryChunk0000 := by
  unfold anchorAggregatePartValid3_0000 anchorHistoryChunk0000
  decide

def anchorAggregatePartValid4_0000 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 512
  | _ => True

theorem anchorAggregatePart4_0000 :
    anchorAggregatePartValid4_0000 anchorHistoryChunk0000 := by
  unfold anchorAggregatePartValid4_0000 anchorHistoryChunk0000
  decide

def anchorAggregatePartValid5_0000 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 640
  | _ => True

theorem anchorAggregatePart5_0000 :
    anchorAggregatePartValid5_0000 anchorHistoryChunk0000 := by
  unfold anchorAggregatePartValid5_0000 anchorHistoryChunk0000
  decide

def anchorAggregatePartValid6_0000 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 768
  | _ => True

theorem anchorAggregatePart6_0000 :
    anchorAggregatePartValid6_0000 anchorHistoryChunk0000 := by
  unfold anchorAggregatePartValid6_0000 anchorHistoryChunk0000
  decide

def anchorAggregatePartValid7_0000 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 896
  | _ => True

theorem anchorAggregatePart7_0000 :
    anchorAggregatePartValid7_0000 anchorHistoryChunk0000 := by
  unfold anchorAggregatePartValid7_0000 anchorHistoryChunk0000
  decide

theorem anchorRange_0000 :
    anchorHistoryChunk0000.IndexedValid squarefreeOracle 5000000 0 := by
  have h0 := anchorAggregatePart0_0000
  simp only [anchorAggregatePartValid0_0000, anchorHistoryChunk0000] at h0
  have h1 := anchorAggregatePart1_0000
  simp only [anchorAggregatePartValid1_0000, anchorHistoryChunk0000] at h1
  have h2 := anchorAggregatePart2_0000
  simp only [anchorAggregatePartValid2_0000, anchorHistoryChunk0000] at h2
  have h3 := anchorAggregatePart3_0000
  simp only [anchorAggregatePartValid3_0000, anchorHistoryChunk0000] at h3
  have h4 := anchorAggregatePart4_0000
  simp only [anchorAggregatePartValid4_0000, anchorHistoryChunk0000] at h4
  have h5 := anchorAggregatePart5_0000
  simp only [anchorAggregatePartValid5_0000, anchorHistoryChunk0000] at h5
  have h6 := anchorAggregatePart6_0000
  simp only [anchorAggregatePartValid6_0000, anchorHistoryChunk0000] at h6
  have h7 := anchorAggregatePart7_0000
  simp only [anchorAggregatePartValid7_0000, anchorHistoryChunk0000] at h7
  unfold anchorHistoryChunk0000
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0001 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 1024
  | _ => True

theorem anchorAggregatePart0_0001 :
    anchorAggregatePartValid0_0001 anchorHistoryChunk0001 := by
  unfold anchorAggregatePartValid0_0001 anchorHistoryChunk0001
  decide

def anchorAggregatePartValid1_0001 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 1152
  | _ => True

theorem anchorAggregatePart1_0001 :
    anchorAggregatePartValid1_0001 anchorHistoryChunk0001 := by
  unfold anchorAggregatePartValid1_0001 anchorHistoryChunk0001
  decide

def anchorAggregatePartValid2_0001 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 1280
  | _ => True

theorem anchorAggregatePart2_0001 :
    anchorAggregatePartValid2_0001 anchorHistoryChunk0001 := by
  unfold anchorAggregatePartValid2_0001 anchorHistoryChunk0001
  decide

def anchorAggregatePartValid3_0001 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 1408
  | _ => True

theorem anchorAggregatePart3_0001 :
    anchorAggregatePartValid3_0001 anchorHistoryChunk0001 := by
  unfold anchorAggregatePartValid3_0001 anchorHistoryChunk0001
  decide

def anchorAggregatePartValid4_0001 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 1536
  | _ => True

theorem anchorAggregatePart4_0001 :
    anchorAggregatePartValid4_0001 anchorHistoryChunk0001 := by
  unfold anchorAggregatePartValid4_0001 anchorHistoryChunk0001
  decide

def anchorAggregatePartValid5_0001 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 1664
  | _ => True

theorem anchorAggregatePart5_0001 :
    anchorAggregatePartValid5_0001 anchorHistoryChunk0001 := by
  unfold anchorAggregatePartValid5_0001 anchorHistoryChunk0001
  decide

def anchorAggregatePartValid6_0001 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 1792
  | _ => True

theorem anchorAggregatePart6_0001 :
    anchorAggregatePartValid6_0001 anchorHistoryChunk0001 := by
  unfold anchorAggregatePartValid6_0001 anchorHistoryChunk0001
  decide

def anchorAggregatePartValid7_0001 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 1920
  | _ => True

theorem anchorAggregatePart7_0001 :
    anchorAggregatePartValid7_0001 anchorHistoryChunk0001 := by
  unfold anchorAggregatePartValid7_0001 anchorHistoryChunk0001
  decide

theorem anchorRange_0001 :
    anchorHistoryChunk0001.IndexedValid squarefreeOracle 5000000 1024 := by
  have h0 := anchorAggregatePart0_0001
  simp only [anchorAggregatePartValid0_0001, anchorHistoryChunk0001] at h0
  have h1 := anchorAggregatePart1_0001
  simp only [anchorAggregatePartValid1_0001, anchorHistoryChunk0001] at h1
  have h2 := anchorAggregatePart2_0001
  simp only [anchorAggregatePartValid2_0001, anchorHistoryChunk0001] at h2
  have h3 := anchorAggregatePart3_0001
  simp only [anchorAggregatePartValid3_0001, anchorHistoryChunk0001] at h3
  have h4 := anchorAggregatePart4_0001
  simp only [anchorAggregatePartValid4_0001, anchorHistoryChunk0001] at h4
  have h5 := anchorAggregatePart5_0001
  simp only [anchorAggregatePartValid5_0001, anchorHistoryChunk0001] at h5
  have h6 := anchorAggregatePart6_0001
  simp only [anchorAggregatePartValid6_0001, anchorHistoryChunk0001] at h6
  have h7 := anchorAggregatePart7_0001
  simp only [anchorAggregatePartValid7_0001, anchorHistoryChunk0001] at h7
  unfold anchorHistoryChunk0001
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0002 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 2048
  | _ => True

theorem anchorAggregatePart0_0002 :
    anchorAggregatePartValid0_0002 anchorHistoryChunk0002 := by
  unfold anchorAggregatePartValid0_0002 anchorHistoryChunk0002
  decide

def anchorAggregatePartValid1_0002 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 2176
  | _ => True

theorem anchorAggregatePart1_0002 :
    anchorAggregatePartValid1_0002 anchorHistoryChunk0002 := by
  unfold anchorAggregatePartValid1_0002 anchorHistoryChunk0002
  decide

def anchorAggregatePartValid2_0002 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 2304
  | _ => True

theorem anchorAggregatePart2_0002 :
    anchorAggregatePartValid2_0002 anchorHistoryChunk0002 := by
  unfold anchorAggregatePartValid2_0002 anchorHistoryChunk0002
  decide

def anchorAggregatePartValid3_0002 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 2432
  | _ => True

theorem anchorAggregatePart3_0002 :
    anchorAggregatePartValid3_0002 anchorHistoryChunk0002 := by
  unfold anchorAggregatePartValid3_0002 anchorHistoryChunk0002
  decide

def anchorAggregatePartValid4_0002 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 2560
  | _ => True

theorem anchorAggregatePart4_0002 :
    anchorAggregatePartValid4_0002 anchorHistoryChunk0002 := by
  unfold anchorAggregatePartValid4_0002 anchorHistoryChunk0002
  decide

def anchorAggregatePartValid5_0002 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 2688
  | _ => True

theorem anchorAggregatePart5_0002 :
    anchorAggregatePartValid5_0002 anchorHistoryChunk0002 := by
  unfold anchorAggregatePartValid5_0002 anchorHistoryChunk0002
  decide

def anchorAggregatePartValid6_0002 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 2816
  | _ => True

theorem anchorAggregatePart6_0002 :
    anchorAggregatePartValid6_0002 anchorHistoryChunk0002 := by
  unfold anchorAggregatePartValid6_0002 anchorHistoryChunk0002
  decide

def anchorAggregatePartValid7_0002 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 2944
  | _ => True

theorem anchorAggregatePart7_0002 :
    anchorAggregatePartValid7_0002 anchorHistoryChunk0002 := by
  unfold anchorAggregatePartValid7_0002 anchorHistoryChunk0002
  decide

theorem anchorRange_0002 :
    anchorHistoryChunk0002.IndexedValid squarefreeOracle 5000000 2048 := by
  have h0 := anchorAggregatePart0_0002
  simp only [anchorAggregatePartValid0_0002, anchorHistoryChunk0002] at h0
  have h1 := anchorAggregatePart1_0002
  simp only [anchorAggregatePartValid1_0002, anchorHistoryChunk0002] at h1
  have h2 := anchorAggregatePart2_0002
  simp only [anchorAggregatePartValid2_0002, anchorHistoryChunk0002] at h2
  have h3 := anchorAggregatePart3_0002
  simp only [anchorAggregatePartValid3_0002, anchorHistoryChunk0002] at h3
  have h4 := anchorAggregatePart4_0002
  simp only [anchorAggregatePartValid4_0002, anchorHistoryChunk0002] at h4
  have h5 := anchorAggregatePart5_0002
  simp only [anchorAggregatePartValid5_0002, anchorHistoryChunk0002] at h5
  have h6 := anchorAggregatePart6_0002
  simp only [anchorAggregatePartValid6_0002, anchorHistoryChunk0002] at h6
  have h7 := anchorAggregatePart7_0002
  simp only [anchorAggregatePartValid7_0002, anchorHistoryChunk0002] at h7
  unfold anchorHistoryChunk0002
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0003 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 3072
  | _ => True

theorem anchorAggregatePart0_0003 :
    anchorAggregatePartValid0_0003 anchorHistoryChunk0003 := by
  unfold anchorAggregatePartValid0_0003 anchorHistoryChunk0003
  decide

def anchorAggregatePartValid1_0003 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 3200
  | _ => True

theorem anchorAggregatePart1_0003 :
    anchorAggregatePartValid1_0003 anchorHistoryChunk0003 := by
  unfold anchorAggregatePartValid1_0003 anchorHistoryChunk0003
  decide

def anchorAggregatePartValid2_0003 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 3328
  | _ => True

theorem anchorAggregatePart2_0003 :
    anchorAggregatePartValid2_0003 anchorHistoryChunk0003 := by
  unfold anchorAggregatePartValid2_0003 anchorHistoryChunk0003
  decide

def anchorAggregatePartValid3_0003 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 3456
  | _ => True

theorem anchorAggregatePart3_0003 :
    anchorAggregatePartValid3_0003 anchorHistoryChunk0003 := by
  unfold anchorAggregatePartValid3_0003 anchorHistoryChunk0003
  decide

def anchorAggregatePartValid4_0003 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 3584
  | _ => True

theorem anchorAggregatePart4_0003 :
    anchorAggregatePartValid4_0003 anchorHistoryChunk0003 := by
  unfold anchorAggregatePartValid4_0003 anchorHistoryChunk0003
  decide

def anchorAggregatePartValid5_0003 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 3712
  | _ => True

theorem anchorAggregatePart5_0003 :
    anchorAggregatePartValid5_0003 anchorHistoryChunk0003 := by
  unfold anchorAggregatePartValid5_0003 anchorHistoryChunk0003
  decide

def anchorAggregatePartValid6_0003 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 3840
  | _ => True

theorem anchorAggregatePart6_0003 :
    anchorAggregatePartValid6_0003 anchorHistoryChunk0003 := by
  unfold anchorAggregatePartValid6_0003 anchorHistoryChunk0003
  decide

def anchorAggregatePartValid7_0003 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 3968
  | _ => True

theorem anchorAggregatePart7_0003 :
    anchorAggregatePartValid7_0003 anchorHistoryChunk0003 := by
  unfold anchorAggregatePartValid7_0003 anchorHistoryChunk0003
  decide

theorem anchorRange_0003 :
    anchorHistoryChunk0003.IndexedValid squarefreeOracle 5000000 3072 := by
  have h0 := anchorAggregatePart0_0003
  simp only [anchorAggregatePartValid0_0003, anchorHistoryChunk0003] at h0
  have h1 := anchorAggregatePart1_0003
  simp only [anchorAggregatePartValid1_0003, anchorHistoryChunk0003] at h1
  have h2 := anchorAggregatePart2_0003
  simp only [anchorAggregatePartValid2_0003, anchorHistoryChunk0003] at h2
  have h3 := anchorAggregatePart3_0003
  simp only [anchorAggregatePartValid3_0003, anchorHistoryChunk0003] at h3
  have h4 := anchorAggregatePart4_0003
  simp only [anchorAggregatePartValid4_0003, anchorHistoryChunk0003] at h4
  have h5 := anchorAggregatePart5_0003
  simp only [anchorAggregatePartValid5_0003, anchorHistoryChunk0003] at h5
  have h6 := anchorAggregatePart6_0003
  simp only [anchorAggregatePartValid6_0003, anchorHistoryChunk0003] at h6
  have h7 := anchorAggregatePart7_0003
  simp only [anchorAggregatePartValid7_0003, anchorHistoryChunk0003] at h7
  unfold anchorHistoryChunk0003
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
