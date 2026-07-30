import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0016
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0017
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0018
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0019

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0016, 0017, 0018, 0019 -/

def anchorAggregatePartValid0_0016 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 16384
  | _ => True

theorem anchorAggregatePart0_0016 :
    anchorAggregatePartValid0_0016 anchorHistoryChunk0016 := by
  unfold anchorAggregatePartValid0_0016 anchorHistoryChunk0016
  decide

def anchorAggregatePartValid1_0016 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 16512
  | _ => True

theorem anchorAggregatePart1_0016 :
    anchorAggregatePartValid1_0016 anchorHistoryChunk0016 := by
  unfold anchorAggregatePartValid1_0016 anchorHistoryChunk0016
  decide

def anchorAggregatePartValid2_0016 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 16640
  | _ => True

theorem anchorAggregatePart2_0016 :
    anchorAggregatePartValid2_0016 anchorHistoryChunk0016 := by
  unfold anchorAggregatePartValid2_0016 anchorHistoryChunk0016
  decide

def anchorAggregatePartValid3_0016 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 16768
  | _ => True

theorem anchorAggregatePart3_0016 :
    anchorAggregatePartValid3_0016 anchorHistoryChunk0016 := by
  unfold anchorAggregatePartValid3_0016 anchorHistoryChunk0016
  decide

def anchorAggregatePartValid4_0016 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 16896
  | _ => True

theorem anchorAggregatePart4_0016 :
    anchorAggregatePartValid4_0016 anchorHistoryChunk0016 := by
  unfold anchorAggregatePartValid4_0016 anchorHistoryChunk0016
  decide

def anchorAggregatePartValid5_0016 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 17024
  | _ => True

theorem anchorAggregatePart5_0016 :
    anchorAggregatePartValid5_0016 anchorHistoryChunk0016 := by
  unfold anchorAggregatePartValid5_0016 anchorHistoryChunk0016
  decide

def anchorAggregatePartValid6_0016 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 17152
  | _ => True

theorem anchorAggregatePart6_0016 :
    anchorAggregatePartValid6_0016 anchorHistoryChunk0016 := by
  unfold anchorAggregatePartValid6_0016 anchorHistoryChunk0016
  decide

def anchorAggregatePartValid7_0016 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 17280
  | _ => True

theorem anchorAggregatePart7_0016 :
    anchorAggregatePartValid7_0016 anchorHistoryChunk0016 := by
  unfold anchorAggregatePartValid7_0016 anchorHistoryChunk0016
  decide

theorem anchorRange_0016 :
    anchorHistoryChunk0016.IndexedValid squarefreeOracle 5000000 16384 := by
  have h0 := anchorAggregatePart0_0016
  simp only [anchorAggregatePartValid0_0016, anchorHistoryChunk0016] at h0
  have h1 := anchorAggregatePart1_0016
  simp only [anchorAggregatePartValid1_0016, anchorHistoryChunk0016] at h1
  have h2 := anchorAggregatePart2_0016
  simp only [anchorAggregatePartValid2_0016, anchorHistoryChunk0016] at h2
  have h3 := anchorAggregatePart3_0016
  simp only [anchorAggregatePartValid3_0016, anchorHistoryChunk0016] at h3
  have h4 := anchorAggregatePart4_0016
  simp only [anchorAggregatePartValid4_0016, anchorHistoryChunk0016] at h4
  have h5 := anchorAggregatePart5_0016
  simp only [anchorAggregatePartValid5_0016, anchorHistoryChunk0016] at h5
  have h6 := anchorAggregatePart6_0016
  simp only [anchorAggregatePartValid6_0016, anchorHistoryChunk0016] at h6
  have h7 := anchorAggregatePart7_0016
  simp only [anchorAggregatePartValid7_0016, anchorHistoryChunk0016] at h7
  unfold anchorHistoryChunk0016
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0017 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 17408
  | _ => True

theorem anchorAggregatePart0_0017 :
    anchorAggregatePartValid0_0017 anchorHistoryChunk0017 := by
  unfold anchorAggregatePartValid0_0017 anchorHistoryChunk0017
  decide

def anchorAggregatePartValid1_0017 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 17536
  | _ => True

theorem anchorAggregatePart1_0017 :
    anchorAggregatePartValid1_0017 anchorHistoryChunk0017 := by
  unfold anchorAggregatePartValid1_0017 anchorHistoryChunk0017
  decide

def anchorAggregatePartValid2_0017 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 17664
  | _ => True

theorem anchorAggregatePart2_0017 :
    anchorAggregatePartValid2_0017 anchorHistoryChunk0017 := by
  unfold anchorAggregatePartValid2_0017 anchorHistoryChunk0017
  decide

def anchorAggregatePartValid3_0017 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 17792
  | _ => True

theorem anchorAggregatePart3_0017 :
    anchorAggregatePartValid3_0017 anchorHistoryChunk0017 := by
  unfold anchorAggregatePartValid3_0017 anchorHistoryChunk0017
  decide

def anchorAggregatePartValid4_0017 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 17920
  | _ => True

theorem anchorAggregatePart4_0017 :
    anchorAggregatePartValid4_0017 anchorHistoryChunk0017 := by
  unfold anchorAggregatePartValid4_0017 anchorHistoryChunk0017
  decide

def anchorAggregatePartValid5_0017 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 18048
  | _ => True

theorem anchorAggregatePart5_0017 :
    anchorAggregatePartValid5_0017 anchorHistoryChunk0017 := by
  unfold anchorAggregatePartValid5_0017 anchorHistoryChunk0017
  decide

def anchorAggregatePartValid6_0017 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 18176
  | _ => True

theorem anchorAggregatePart6_0017 :
    anchorAggregatePartValid6_0017 anchorHistoryChunk0017 := by
  unfold anchorAggregatePartValid6_0017 anchorHistoryChunk0017
  decide

def anchorAggregatePartValid7_0017 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 18304
  | _ => True

theorem anchorAggregatePart7_0017 :
    anchorAggregatePartValid7_0017 anchorHistoryChunk0017 := by
  unfold anchorAggregatePartValid7_0017 anchorHistoryChunk0017
  decide

theorem anchorRange_0017 :
    anchorHistoryChunk0017.IndexedValid squarefreeOracle 5000000 17408 := by
  have h0 := anchorAggregatePart0_0017
  simp only [anchorAggregatePartValid0_0017, anchorHistoryChunk0017] at h0
  have h1 := anchorAggregatePart1_0017
  simp only [anchorAggregatePartValid1_0017, anchorHistoryChunk0017] at h1
  have h2 := anchorAggregatePart2_0017
  simp only [anchorAggregatePartValid2_0017, anchorHistoryChunk0017] at h2
  have h3 := anchorAggregatePart3_0017
  simp only [anchorAggregatePartValid3_0017, anchorHistoryChunk0017] at h3
  have h4 := anchorAggregatePart4_0017
  simp only [anchorAggregatePartValid4_0017, anchorHistoryChunk0017] at h4
  have h5 := anchorAggregatePart5_0017
  simp only [anchorAggregatePartValid5_0017, anchorHistoryChunk0017] at h5
  have h6 := anchorAggregatePart6_0017
  simp only [anchorAggregatePartValid6_0017, anchorHistoryChunk0017] at h6
  have h7 := anchorAggregatePart7_0017
  simp only [anchorAggregatePartValid7_0017, anchorHistoryChunk0017] at h7
  unfold anchorHistoryChunk0017
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0018 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 18432
  | _ => True

theorem anchorAggregatePart0_0018 :
    anchorAggregatePartValid0_0018 anchorHistoryChunk0018 := by
  unfold anchorAggregatePartValid0_0018 anchorHistoryChunk0018
  decide

def anchorAggregatePartValid1_0018 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 18560
  | _ => True

theorem anchorAggregatePart1_0018 :
    anchorAggregatePartValid1_0018 anchorHistoryChunk0018 := by
  unfold anchorAggregatePartValid1_0018 anchorHistoryChunk0018
  decide

def anchorAggregatePartValid2_0018 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 18688
  | _ => True

theorem anchorAggregatePart2_0018 :
    anchorAggregatePartValid2_0018 anchorHistoryChunk0018 := by
  unfold anchorAggregatePartValid2_0018 anchorHistoryChunk0018
  decide

def anchorAggregatePartValid3_0018 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 18816
  | _ => True

theorem anchorAggregatePart3_0018 :
    anchorAggregatePartValid3_0018 anchorHistoryChunk0018 := by
  unfold anchorAggregatePartValid3_0018 anchorHistoryChunk0018
  decide

def anchorAggregatePartValid4_0018 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 18944
  | _ => True

theorem anchorAggregatePart4_0018 :
    anchorAggregatePartValid4_0018 anchorHistoryChunk0018 := by
  unfold anchorAggregatePartValid4_0018 anchorHistoryChunk0018
  decide

def anchorAggregatePartValid5_0018 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 19072
  | _ => True

theorem anchorAggregatePart5_0018 :
    anchorAggregatePartValid5_0018 anchorHistoryChunk0018 := by
  unfold anchorAggregatePartValid5_0018 anchorHistoryChunk0018
  decide

def anchorAggregatePartValid6_0018 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 19200
  | _ => True

theorem anchorAggregatePart6_0018 :
    anchorAggregatePartValid6_0018 anchorHistoryChunk0018 := by
  unfold anchorAggregatePartValid6_0018 anchorHistoryChunk0018
  decide

def anchorAggregatePartValid7_0018 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 19328
  | _ => True

theorem anchorAggregatePart7_0018 :
    anchorAggregatePartValid7_0018 anchorHistoryChunk0018 := by
  unfold anchorAggregatePartValid7_0018 anchorHistoryChunk0018
  decide

theorem anchorRange_0018 :
    anchorHistoryChunk0018.IndexedValid squarefreeOracle 5000000 18432 := by
  have h0 := anchorAggregatePart0_0018
  simp only [anchorAggregatePartValid0_0018, anchorHistoryChunk0018] at h0
  have h1 := anchorAggregatePart1_0018
  simp only [anchorAggregatePartValid1_0018, anchorHistoryChunk0018] at h1
  have h2 := anchorAggregatePart2_0018
  simp only [anchorAggregatePartValid2_0018, anchorHistoryChunk0018] at h2
  have h3 := anchorAggregatePart3_0018
  simp only [anchorAggregatePartValid3_0018, anchorHistoryChunk0018] at h3
  have h4 := anchorAggregatePart4_0018
  simp only [anchorAggregatePartValid4_0018, anchorHistoryChunk0018] at h4
  have h5 := anchorAggregatePart5_0018
  simp only [anchorAggregatePartValid5_0018, anchorHistoryChunk0018] at h5
  have h6 := anchorAggregatePart6_0018
  simp only [anchorAggregatePartValid6_0018, anchorHistoryChunk0018] at h6
  have h7 := anchorAggregatePart7_0018
  simp only [anchorAggregatePartValid7_0018, anchorHistoryChunk0018] at h7
  unfold anchorHistoryChunk0018
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0019 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 19456
  | _ => True

theorem anchorAggregatePart0_0019 :
    anchorAggregatePartValid0_0019 anchorHistoryChunk0019 := by
  unfold anchorAggregatePartValid0_0019 anchorHistoryChunk0019
  decide

def anchorAggregatePartValid1_0019 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 19584
  | _ => True

theorem anchorAggregatePart1_0019 :
    anchorAggregatePartValid1_0019 anchorHistoryChunk0019 := by
  unfold anchorAggregatePartValid1_0019 anchorHistoryChunk0019
  decide

def anchorAggregatePartValid2_0019 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 19712
  | _ => True

theorem anchorAggregatePart2_0019 :
    anchorAggregatePartValid2_0019 anchorHistoryChunk0019 := by
  unfold anchorAggregatePartValid2_0019 anchorHistoryChunk0019
  decide

def anchorAggregatePartValid3_0019 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 19840
  | _ => True

theorem anchorAggregatePart3_0019 :
    anchorAggregatePartValid3_0019 anchorHistoryChunk0019 := by
  unfold anchorAggregatePartValid3_0019 anchorHistoryChunk0019
  decide

def anchorAggregatePartValid4_0019 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 19968
  | _ => True

theorem anchorAggregatePart4_0019 :
    anchorAggregatePartValid4_0019 anchorHistoryChunk0019 := by
  unfold anchorAggregatePartValid4_0019 anchorHistoryChunk0019
  decide

def anchorAggregatePartValid5_0019 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 20096
  | _ => True

theorem anchorAggregatePart5_0019 :
    anchorAggregatePartValid5_0019 anchorHistoryChunk0019 := by
  unfold anchorAggregatePartValid5_0019 anchorHistoryChunk0019
  decide

def anchorAggregatePartValid6_0019 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 20224
  | _ => True

theorem anchorAggregatePart6_0019 :
    anchorAggregatePartValid6_0019 anchorHistoryChunk0019 := by
  unfold anchorAggregatePartValid6_0019 anchorHistoryChunk0019
  decide

def anchorAggregatePartValid7_0019 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 20352
  | _ => True

theorem anchorAggregatePart7_0019 :
    anchorAggregatePartValid7_0019 anchorHistoryChunk0019 := by
  unfold anchorAggregatePartValid7_0019 anchorHistoryChunk0019
  decide

theorem anchorRange_0019 :
    anchorHistoryChunk0019.IndexedValid squarefreeOracle 5000000 19456 := by
  have h0 := anchorAggregatePart0_0019
  simp only [anchorAggregatePartValid0_0019, anchorHistoryChunk0019] at h0
  have h1 := anchorAggregatePart1_0019
  simp only [anchorAggregatePartValid1_0019, anchorHistoryChunk0019] at h1
  have h2 := anchorAggregatePart2_0019
  simp only [anchorAggregatePartValid2_0019, anchorHistoryChunk0019] at h2
  have h3 := anchorAggregatePart3_0019
  simp only [anchorAggregatePartValid3_0019, anchorHistoryChunk0019] at h3
  have h4 := anchorAggregatePart4_0019
  simp only [anchorAggregatePartValid4_0019, anchorHistoryChunk0019] at h4
  have h5 := anchorAggregatePart5_0019
  simp only [anchorAggregatePartValid5_0019, anchorHistoryChunk0019] at h5
  have h6 := anchorAggregatePart6_0019
  simp only [anchorAggregatePartValid6_0019, anchorHistoryChunk0019] at h6
  have h7 := anchorAggregatePart7_0019
  simp only [anchorAggregatePartValid7_0019, anchorHistoryChunk0019] at h7
  unfold anchorHistoryChunk0019
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
