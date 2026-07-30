import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0172
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0173
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0174
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0175

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0172, 0173, 0174, 0175 -/

def anchorAggregatePartValid0_0172 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 176128
  | _ => True

theorem anchorAggregatePart0_0172 :
    anchorAggregatePartValid0_0172 anchorHistoryChunk0172 := by
  unfold anchorAggregatePartValid0_0172 anchorHistoryChunk0172
  decide

def anchorAggregatePartValid1_0172 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 176256
  | _ => True

theorem anchorAggregatePart1_0172 :
    anchorAggregatePartValid1_0172 anchorHistoryChunk0172 := by
  unfold anchorAggregatePartValid1_0172 anchorHistoryChunk0172
  decide

def anchorAggregatePartValid2_0172 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 176384
  | _ => True

theorem anchorAggregatePart2_0172 :
    anchorAggregatePartValid2_0172 anchorHistoryChunk0172 := by
  unfold anchorAggregatePartValid2_0172 anchorHistoryChunk0172
  decide

def anchorAggregatePartValid3_0172 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 176512
  | _ => True

theorem anchorAggregatePart3_0172 :
    anchorAggregatePartValid3_0172 anchorHistoryChunk0172 := by
  unfold anchorAggregatePartValid3_0172 anchorHistoryChunk0172
  decide

def anchorAggregatePartValid4_0172 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 176640
  | _ => True

theorem anchorAggregatePart4_0172 :
    anchorAggregatePartValid4_0172 anchorHistoryChunk0172 := by
  unfold anchorAggregatePartValid4_0172 anchorHistoryChunk0172
  decide

def anchorAggregatePartValid5_0172 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 176768
  | _ => True

theorem anchorAggregatePart5_0172 :
    anchorAggregatePartValid5_0172 anchorHistoryChunk0172 := by
  unfold anchorAggregatePartValid5_0172 anchorHistoryChunk0172
  decide

def anchorAggregatePartValid6_0172 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 176896
  | _ => True

theorem anchorAggregatePart6_0172 :
    anchorAggregatePartValid6_0172 anchorHistoryChunk0172 := by
  unfold anchorAggregatePartValid6_0172 anchorHistoryChunk0172
  decide

def anchorAggregatePartValid7_0172 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 177024
  | _ => True

theorem anchorAggregatePart7_0172 :
    anchorAggregatePartValid7_0172 anchorHistoryChunk0172 := by
  unfold anchorAggregatePartValid7_0172 anchorHistoryChunk0172
  decide

theorem anchorRange_0172 :
    anchorHistoryChunk0172.IndexedValid squarefreeOracle 5000000 176128 := by
  have h0 := anchorAggregatePart0_0172
  simp only [anchorAggregatePartValid0_0172, anchorHistoryChunk0172] at h0
  have h1 := anchorAggregatePart1_0172
  simp only [anchorAggregatePartValid1_0172, anchorHistoryChunk0172] at h1
  have h2 := anchorAggregatePart2_0172
  simp only [anchorAggregatePartValid2_0172, anchorHistoryChunk0172] at h2
  have h3 := anchorAggregatePart3_0172
  simp only [anchorAggregatePartValid3_0172, anchorHistoryChunk0172] at h3
  have h4 := anchorAggregatePart4_0172
  simp only [anchorAggregatePartValid4_0172, anchorHistoryChunk0172] at h4
  have h5 := anchorAggregatePart5_0172
  simp only [anchorAggregatePartValid5_0172, anchorHistoryChunk0172] at h5
  have h6 := anchorAggregatePart6_0172
  simp only [anchorAggregatePartValid6_0172, anchorHistoryChunk0172] at h6
  have h7 := anchorAggregatePart7_0172
  simp only [anchorAggregatePartValid7_0172, anchorHistoryChunk0172] at h7
  unfold anchorHistoryChunk0172
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0173 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 177152
  | _ => True

theorem anchorAggregatePart0_0173 :
    anchorAggregatePartValid0_0173 anchorHistoryChunk0173 := by
  unfold anchorAggregatePartValid0_0173 anchorHistoryChunk0173
  decide

def anchorAggregatePartValid1_0173 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 177280
  | _ => True

theorem anchorAggregatePart1_0173 :
    anchorAggregatePartValid1_0173 anchorHistoryChunk0173 := by
  unfold anchorAggregatePartValid1_0173 anchorHistoryChunk0173
  decide

def anchorAggregatePartValid2_0173 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 177408
  | _ => True

theorem anchorAggregatePart2_0173 :
    anchorAggregatePartValid2_0173 anchorHistoryChunk0173 := by
  unfold anchorAggregatePartValid2_0173 anchorHistoryChunk0173
  decide

def anchorAggregatePartValid3_0173 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 177536
  | _ => True

theorem anchorAggregatePart3_0173 :
    anchorAggregatePartValid3_0173 anchorHistoryChunk0173 := by
  unfold anchorAggregatePartValid3_0173 anchorHistoryChunk0173
  decide

def anchorAggregatePartValid4_0173 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 177664
  | _ => True

theorem anchorAggregatePart4_0173 :
    anchorAggregatePartValid4_0173 anchorHistoryChunk0173 := by
  unfold anchorAggregatePartValid4_0173 anchorHistoryChunk0173
  decide

def anchorAggregatePartValid5_0173 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 177792
  | _ => True

theorem anchorAggregatePart5_0173 :
    anchorAggregatePartValid5_0173 anchorHistoryChunk0173 := by
  unfold anchorAggregatePartValid5_0173 anchorHistoryChunk0173
  decide

def anchorAggregatePartValid6_0173 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 177920
  | _ => True

theorem anchorAggregatePart6_0173 :
    anchorAggregatePartValid6_0173 anchorHistoryChunk0173 := by
  unfold anchorAggregatePartValid6_0173 anchorHistoryChunk0173
  decide

def anchorAggregatePartValid7_0173 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 178048
  | _ => True

theorem anchorAggregatePart7_0173 :
    anchorAggregatePartValid7_0173 anchorHistoryChunk0173 := by
  unfold anchorAggregatePartValid7_0173 anchorHistoryChunk0173
  decide

theorem anchorRange_0173 :
    anchorHistoryChunk0173.IndexedValid squarefreeOracle 5000000 177152 := by
  have h0 := anchorAggregatePart0_0173
  simp only [anchorAggregatePartValid0_0173, anchorHistoryChunk0173] at h0
  have h1 := anchorAggregatePart1_0173
  simp only [anchorAggregatePartValid1_0173, anchorHistoryChunk0173] at h1
  have h2 := anchorAggregatePart2_0173
  simp only [anchorAggregatePartValid2_0173, anchorHistoryChunk0173] at h2
  have h3 := anchorAggregatePart3_0173
  simp only [anchorAggregatePartValid3_0173, anchorHistoryChunk0173] at h3
  have h4 := anchorAggregatePart4_0173
  simp only [anchorAggregatePartValid4_0173, anchorHistoryChunk0173] at h4
  have h5 := anchorAggregatePart5_0173
  simp only [anchorAggregatePartValid5_0173, anchorHistoryChunk0173] at h5
  have h6 := anchorAggregatePart6_0173
  simp only [anchorAggregatePartValid6_0173, anchorHistoryChunk0173] at h6
  have h7 := anchorAggregatePart7_0173
  simp only [anchorAggregatePartValid7_0173, anchorHistoryChunk0173] at h7
  unfold anchorHistoryChunk0173
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0174 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 178176
  | _ => True

theorem anchorAggregatePart0_0174 :
    anchorAggregatePartValid0_0174 anchorHistoryChunk0174 := by
  unfold anchorAggregatePartValid0_0174 anchorHistoryChunk0174
  decide

def anchorAggregatePartValid1_0174 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 178304
  | _ => True

theorem anchorAggregatePart1_0174 :
    anchorAggregatePartValid1_0174 anchorHistoryChunk0174 := by
  unfold anchorAggregatePartValid1_0174 anchorHistoryChunk0174
  decide

def anchorAggregatePartValid2_0174 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 178432
  | _ => True

theorem anchorAggregatePart2_0174 :
    anchorAggregatePartValid2_0174 anchorHistoryChunk0174 := by
  unfold anchorAggregatePartValid2_0174 anchorHistoryChunk0174
  decide

def anchorAggregatePartValid3_0174 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 178560
  | _ => True

theorem anchorAggregatePart3_0174 :
    anchorAggregatePartValid3_0174 anchorHistoryChunk0174 := by
  unfold anchorAggregatePartValid3_0174 anchorHistoryChunk0174
  decide

def anchorAggregatePartValid4_0174 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 178688
  | _ => True

theorem anchorAggregatePart4_0174 :
    anchorAggregatePartValid4_0174 anchorHistoryChunk0174 := by
  unfold anchorAggregatePartValid4_0174 anchorHistoryChunk0174
  decide

def anchorAggregatePartValid5_0174 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 178816
  | _ => True

theorem anchorAggregatePart5_0174 :
    anchorAggregatePartValid5_0174 anchorHistoryChunk0174 := by
  unfold anchorAggregatePartValid5_0174 anchorHistoryChunk0174
  decide

def anchorAggregatePartValid6_0174 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 178944
  | _ => True

theorem anchorAggregatePart6_0174 :
    anchorAggregatePartValid6_0174 anchorHistoryChunk0174 := by
  unfold anchorAggregatePartValid6_0174 anchorHistoryChunk0174
  decide

def anchorAggregatePartValid7_0174 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 179072
  | _ => True

theorem anchorAggregatePart7_0174 :
    anchorAggregatePartValid7_0174 anchorHistoryChunk0174 := by
  unfold anchorAggregatePartValid7_0174 anchorHistoryChunk0174
  decide

theorem anchorRange_0174 :
    anchorHistoryChunk0174.IndexedValid squarefreeOracle 5000000 178176 := by
  have h0 := anchorAggregatePart0_0174
  simp only [anchorAggregatePartValid0_0174, anchorHistoryChunk0174] at h0
  have h1 := anchorAggregatePart1_0174
  simp only [anchorAggregatePartValid1_0174, anchorHistoryChunk0174] at h1
  have h2 := anchorAggregatePart2_0174
  simp only [anchorAggregatePartValid2_0174, anchorHistoryChunk0174] at h2
  have h3 := anchorAggregatePart3_0174
  simp only [anchorAggregatePartValid3_0174, anchorHistoryChunk0174] at h3
  have h4 := anchorAggregatePart4_0174
  simp only [anchorAggregatePartValid4_0174, anchorHistoryChunk0174] at h4
  have h5 := anchorAggregatePart5_0174
  simp only [anchorAggregatePartValid5_0174, anchorHistoryChunk0174] at h5
  have h6 := anchorAggregatePart6_0174
  simp only [anchorAggregatePartValid6_0174, anchorHistoryChunk0174] at h6
  have h7 := anchorAggregatePart7_0174
  simp only [anchorAggregatePartValid7_0174, anchorHistoryChunk0174] at h7
  unfold anchorHistoryChunk0174
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0175 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 179200
  | _ => True

theorem anchorAggregatePart0_0175 :
    anchorAggregatePartValid0_0175 anchorHistoryChunk0175 := by
  unfold anchorAggregatePartValid0_0175 anchorHistoryChunk0175
  decide

def anchorAggregatePartValid1_0175 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 179328
  | _ => True

theorem anchorAggregatePart1_0175 :
    anchorAggregatePartValid1_0175 anchorHistoryChunk0175 := by
  unfold anchorAggregatePartValid1_0175 anchorHistoryChunk0175
  decide

def anchorAggregatePartValid2_0175 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 179456
  | _ => True

theorem anchorAggregatePart2_0175 :
    anchorAggregatePartValid2_0175 anchorHistoryChunk0175 := by
  unfold anchorAggregatePartValid2_0175 anchorHistoryChunk0175
  decide

def anchorAggregatePartValid3_0175 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 179584
  | _ => True

theorem anchorAggregatePart3_0175 :
    anchorAggregatePartValid3_0175 anchorHistoryChunk0175 := by
  unfold anchorAggregatePartValid3_0175 anchorHistoryChunk0175
  decide

def anchorAggregatePartValid4_0175 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 179712
  | _ => True

theorem anchorAggregatePart4_0175 :
    anchorAggregatePartValid4_0175 anchorHistoryChunk0175 := by
  unfold anchorAggregatePartValid4_0175 anchorHistoryChunk0175
  decide

def anchorAggregatePartValid5_0175 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 179840
  | _ => True

theorem anchorAggregatePart5_0175 :
    anchorAggregatePartValid5_0175 anchorHistoryChunk0175 := by
  unfold anchorAggregatePartValid5_0175 anchorHistoryChunk0175
  decide

def anchorAggregatePartValid6_0175 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 179968
  | _ => True

theorem anchorAggregatePart6_0175 :
    anchorAggregatePartValid6_0175 anchorHistoryChunk0175 := by
  unfold anchorAggregatePartValid6_0175 anchorHistoryChunk0175
  decide

def anchorAggregatePartValid7_0175 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 180096
  | _ => True

theorem anchorAggregatePart7_0175 :
    anchorAggregatePartValid7_0175 anchorHistoryChunk0175 := by
  unfold anchorAggregatePartValid7_0175 anchorHistoryChunk0175
  decide

theorem anchorRange_0175 :
    anchorHistoryChunk0175.IndexedValid squarefreeOracle 5000000 179200 := by
  have h0 := anchorAggregatePart0_0175
  simp only [anchorAggregatePartValid0_0175, anchorHistoryChunk0175] at h0
  have h1 := anchorAggregatePart1_0175
  simp only [anchorAggregatePartValid1_0175, anchorHistoryChunk0175] at h1
  have h2 := anchorAggregatePart2_0175
  simp only [anchorAggregatePartValid2_0175, anchorHistoryChunk0175] at h2
  have h3 := anchorAggregatePart3_0175
  simp only [anchorAggregatePartValid3_0175, anchorHistoryChunk0175] at h3
  have h4 := anchorAggregatePart4_0175
  simp only [anchorAggregatePartValid4_0175, anchorHistoryChunk0175] at h4
  have h5 := anchorAggregatePart5_0175
  simp only [anchorAggregatePartValid5_0175, anchorHistoryChunk0175] at h5
  have h6 := anchorAggregatePart6_0175
  simp only [anchorAggregatePartValid6_0175, anchorHistoryChunk0175] at h6
  have h7 := anchorAggregatePart7_0175
  simp only [anchorAggregatePartValid7_0175, anchorHistoryChunk0175] at h7
  unfold anchorHistoryChunk0175
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
