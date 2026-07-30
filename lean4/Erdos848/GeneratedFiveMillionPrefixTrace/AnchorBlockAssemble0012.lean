import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0012
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0013
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0014
import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0015

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-! kernel proof group: 0012, 0013, 0014, 0015 -/

def anchorAggregatePartValid0_0012 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 12288
  | _ => True

theorem anchorAggregatePart0_0012 :
    anchorAggregatePartValid0_0012 anchorHistoryChunk0012 := by
  unfold anchorAggregatePartValid0_0012 anchorHistoryChunk0012
  decide

def anchorAggregatePartValid1_0012 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 12416
  | _ => True

theorem anchorAggregatePart1_0012 :
    anchorAggregatePartValid1_0012 anchorHistoryChunk0012 := by
  unfold anchorAggregatePartValid1_0012 anchorHistoryChunk0012
  decide

def anchorAggregatePartValid2_0012 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 12544
  | _ => True

theorem anchorAggregatePart2_0012 :
    anchorAggregatePartValid2_0012 anchorHistoryChunk0012 := by
  unfold anchorAggregatePartValid2_0012 anchorHistoryChunk0012
  decide

def anchorAggregatePartValid3_0012 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 12672
  | _ => True

theorem anchorAggregatePart3_0012 :
    anchorAggregatePartValid3_0012 anchorHistoryChunk0012 := by
  unfold anchorAggregatePartValid3_0012 anchorHistoryChunk0012
  decide

def anchorAggregatePartValid4_0012 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 12800
  | _ => True

theorem anchorAggregatePart4_0012 :
    anchorAggregatePartValid4_0012 anchorHistoryChunk0012 := by
  unfold anchorAggregatePartValid4_0012 anchorHistoryChunk0012
  decide

def anchorAggregatePartValid5_0012 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 12928
  | _ => True

theorem anchorAggregatePart5_0012 :
    anchorAggregatePartValid5_0012 anchorHistoryChunk0012 := by
  unfold anchorAggregatePartValid5_0012 anchorHistoryChunk0012
  decide

def anchorAggregatePartValid6_0012 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 13056
  | _ => True

theorem anchorAggregatePart6_0012 :
    anchorAggregatePartValid6_0012 anchorHistoryChunk0012 := by
  unfold anchorAggregatePartValid6_0012 anchorHistoryChunk0012
  decide

def anchorAggregatePartValid7_0012 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 13184
  | _ => True

theorem anchorAggregatePart7_0012 :
    anchorAggregatePartValid7_0012 anchorHistoryChunk0012 := by
  unfold anchorAggregatePartValid7_0012 anchorHistoryChunk0012
  decide

theorem anchorRange_0012 :
    anchorHistoryChunk0012.IndexedValid squarefreeOracle 5000000 12288 := by
  have h0 := anchorAggregatePart0_0012
  simp only [anchorAggregatePartValid0_0012, anchorHistoryChunk0012] at h0
  have h1 := anchorAggregatePart1_0012
  simp only [anchorAggregatePartValid1_0012, anchorHistoryChunk0012] at h1
  have h2 := anchorAggregatePart2_0012
  simp only [anchorAggregatePartValid2_0012, anchorHistoryChunk0012] at h2
  have h3 := anchorAggregatePart3_0012
  simp only [anchorAggregatePartValid3_0012, anchorHistoryChunk0012] at h3
  have h4 := anchorAggregatePart4_0012
  simp only [anchorAggregatePartValid4_0012, anchorHistoryChunk0012] at h4
  have h5 := anchorAggregatePart5_0012
  simp only [anchorAggregatePartValid5_0012, anchorHistoryChunk0012] at h5
  have h6 := anchorAggregatePart6_0012
  simp only [anchorAggregatePartValid6_0012, anchorHistoryChunk0012] at h6
  have h7 := anchorAggregatePart7_0012
  simp only [anchorAggregatePartValid7_0012, anchorHistoryChunk0012] at h7
  unfold anchorHistoryChunk0012
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0013 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 13312
  | _ => True

theorem anchorAggregatePart0_0013 :
    anchorAggregatePartValid0_0013 anchorHistoryChunk0013 := by
  unfold anchorAggregatePartValid0_0013 anchorHistoryChunk0013
  decide

def anchorAggregatePartValid1_0013 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 13440
  | _ => True

theorem anchorAggregatePart1_0013 :
    anchorAggregatePartValid1_0013 anchorHistoryChunk0013 := by
  unfold anchorAggregatePartValid1_0013 anchorHistoryChunk0013
  decide

def anchorAggregatePartValid2_0013 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 13568
  | _ => True

theorem anchorAggregatePart2_0013 :
    anchorAggregatePartValid2_0013 anchorHistoryChunk0013 := by
  unfold anchorAggregatePartValid2_0013 anchorHistoryChunk0013
  decide

def anchorAggregatePartValid3_0013 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 13696
  | _ => True

theorem anchorAggregatePart3_0013 :
    anchorAggregatePartValid3_0013 anchorHistoryChunk0013 := by
  unfold anchorAggregatePartValid3_0013 anchorHistoryChunk0013
  decide

def anchorAggregatePartValid4_0013 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 13824
  | _ => True

theorem anchorAggregatePart4_0013 :
    anchorAggregatePartValid4_0013 anchorHistoryChunk0013 := by
  unfold anchorAggregatePartValid4_0013 anchorHistoryChunk0013
  decide

def anchorAggregatePartValid5_0013 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 13952
  | _ => True

theorem anchorAggregatePart5_0013 :
    anchorAggregatePartValid5_0013 anchorHistoryChunk0013 := by
  unfold anchorAggregatePartValid5_0013 anchorHistoryChunk0013
  decide

def anchorAggregatePartValid6_0013 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 14080
  | _ => True

theorem anchorAggregatePart6_0013 :
    anchorAggregatePartValid6_0013 anchorHistoryChunk0013 := by
  unfold anchorAggregatePartValid6_0013 anchorHistoryChunk0013
  decide

def anchorAggregatePartValid7_0013 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 14208
  | _ => True

theorem anchorAggregatePart7_0013 :
    anchorAggregatePartValid7_0013 anchorHistoryChunk0013 := by
  unfold anchorAggregatePartValid7_0013 anchorHistoryChunk0013
  decide

theorem anchorRange_0013 :
    anchorHistoryChunk0013.IndexedValid squarefreeOracle 5000000 13312 := by
  have h0 := anchorAggregatePart0_0013
  simp only [anchorAggregatePartValid0_0013, anchorHistoryChunk0013] at h0
  have h1 := anchorAggregatePart1_0013
  simp only [anchorAggregatePartValid1_0013, anchorHistoryChunk0013] at h1
  have h2 := anchorAggregatePart2_0013
  simp only [anchorAggregatePartValid2_0013, anchorHistoryChunk0013] at h2
  have h3 := anchorAggregatePart3_0013
  simp only [anchorAggregatePartValid3_0013, anchorHistoryChunk0013] at h3
  have h4 := anchorAggregatePart4_0013
  simp only [anchorAggregatePartValid4_0013, anchorHistoryChunk0013] at h4
  have h5 := anchorAggregatePart5_0013
  simp only [anchorAggregatePartValid5_0013, anchorHistoryChunk0013] at h5
  have h6 := anchorAggregatePart6_0013
  simp only [anchorAggregatePartValid6_0013, anchorHistoryChunk0013] at h6
  have h7 := anchorAggregatePart7_0013
  simp only [anchorAggregatePartValid7_0013, anchorHistoryChunk0013] at h7
  unfold anchorHistoryChunk0013
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0014 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 14336
  | _ => True

theorem anchorAggregatePart0_0014 :
    anchorAggregatePartValid0_0014 anchorHistoryChunk0014 := by
  unfold anchorAggregatePartValid0_0014 anchorHistoryChunk0014
  decide

def anchorAggregatePartValid1_0014 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 14464
  | _ => True

theorem anchorAggregatePart1_0014 :
    anchorAggregatePartValid1_0014 anchorHistoryChunk0014 := by
  unfold anchorAggregatePartValid1_0014 anchorHistoryChunk0014
  decide

def anchorAggregatePartValid2_0014 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 14592
  | _ => True

theorem anchorAggregatePart2_0014 :
    anchorAggregatePartValid2_0014 anchorHistoryChunk0014 := by
  unfold anchorAggregatePartValid2_0014 anchorHistoryChunk0014
  decide

def anchorAggregatePartValid3_0014 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 14720
  | _ => True

theorem anchorAggregatePart3_0014 :
    anchorAggregatePartValid3_0014 anchorHistoryChunk0014 := by
  unfold anchorAggregatePartValid3_0014 anchorHistoryChunk0014
  decide

def anchorAggregatePartValid4_0014 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 14848
  | _ => True

theorem anchorAggregatePart4_0014 :
    anchorAggregatePartValid4_0014 anchorHistoryChunk0014 := by
  unfold anchorAggregatePartValid4_0014 anchorHistoryChunk0014
  decide

def anchorAggregatePartValid5_0014 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 14976
  | _ => True

theorem anchorAggregatePart5_0014 :
    anchorAggregatePartValid5_0014 anchorHistoryChunk0014 := by
  unfold anchorAggregatePartValid5_0014 anchorHistoryChunk0014
  decide

def anchorAggregatePartValid6_0014 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 15104
  | _ => True

theorem anchorAggregatePart6_0014 :
    anchorAggregatePartValid6_0014 anchorHistoryChunk0014 := by
  unfold anchorAggregatePartValid6_0014 anchorHistoryChunk0014
  decide

def anchorAggregatePartValid7_0014 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 15232
  | _ => True

theorem anchorAggregatePart7_0014 :
    anchorAggregatePartValid7_0014 anchorHistoryChunk0014 := by
  unfold anchorAggregatePartValid7_0014 anchorHistoryChunk0014
  decide

theorem anchorRange_0014 :
    anchorHistoryChunk0014.IndexedValid squarefreeOracle 5000000 14336 := by
  have h0 := anchorAggregatePart0_0014
  simp only [anchorAggregatePartValid0_0014, anchorHistoryChunk0014] at h0
  have h1 := anchorAggregatePart1_0014
  simp only [anchorAggregatePartValid1_0014, anchorHistoryChunk0014] at h1
  have h2 := anchorAggregatePart2_0014
  simp only [anchorAggregatePartValid2_0014, anchorHistoryChunk0014] at h2
  have h3 := anchorAggregatePart3_0014
  simp only [anchorAggregatePartValid3_0014, anchorHistoryChunk0014] at h3
  have h4 := anchorAggregatePart4_0014
  simp only [anchorAggregatePartValid4_0014, anchorHistoryChunk0014] at h4
  have h5 := anchorAggregatePart5_0014
  simp only [anchorAggregatePartValid5_0014, anchorHistoryChunk0014] at h5
  have h6 := anchorAggregatePart6_0014
  simp only [anchorAggregatePartValid6_0014, anchorHistoryChunk0014] at h6
  have h7 := anchorAggregatePart7_0014
  simp only [anchorAggregatePartValid7_0014, anchorHistoryChunk0014] at h7
  unfold anchorHistoryChunk0014
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

def anchorAggregatePartValid0_0015 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ part _) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 15360
  | _ => True

theorem anchorAggregatePart0_0015 :
    anchorAggregatePartValid0_0015 anchorHistoryChunk0015 := by
  unfold anchorAggregatePartValid0_0015 anchorHistoryChunk0015
  decide

def anchorAggregatePartValid1_0015 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ (.node _ _ part) _) _) =>
      part.IndexedValid squarefreeOracle 5000000 15488
  | _ => True

theorem anchorAggregatePart1_0015 :
    anchorAggregatePartValid1_0015 anchorHistoryChunk0015 := by
  unfold anchorAggregatePartValid1_0015 anchorHistoryChunk0015
  decide

def anchorAggregatePartValid2_0015 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ part _)) _) =>
      part.IndexedValid squarefreeOracle 5000000 15616
  | _ => True

theorem anchorAggregatePart2_0015 :
    anchorAggregatePartValid2_0015 anchorHistoryChunk0015 := by
  unfold anchorAggregatePartValid2_0015 anchorHistoryChunk0015
  decide

def anchorAggregatePartValid3_0015 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) =>
      part.IndexedValid squarefreeOracle 5000000 15744
  | _ => True

theorem anchorAggregatePart3_0015 :
    anchorAggregatePartValid3_0015 anchorHistoryChunk0015 := by
  unfold anchorAggregatePartValid3_0015 anchorHistoryChunk0015
  decide

def anchorAggregatePartValid4_0015 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ part _) _)) =>
      part.IndexedValid squarefreeOracle 5000000 15872
  | _ => True

theorem anchorAggregatePart4_0015 :
    anchorAggregatePartValid4_0015 anchorHistoryChunk0015 := by
  unfold anchorAggregatePartValid4_0015 anchorHistoryChunk0015
  decide

def anchorAggregatePartValid5_0015 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) =>
      part.IndexedValid squarefreeOracle 5000000 16000
  | _ => True

theorem anchorAggregatePart5_0015 :
    anchorAggregatePartValid5_0015 anchorHistoryChunk0015 := by
  unfold anchorAggregatePartValid5_0015 anchorHistoryChunk0015
  decide

def anchorAggregatePartValid6_0015 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ part _))) =>
      part.IndexedValid squarefreeOracle 5000000 16128
  | _ => True

theorem anchorAggregatePart6_0015 :
    anchorAggregatePartValid6_0015 anchorHistoryChunk0015 := by
  unfold anchorAggregatePartValid6_0015 anchorHistoryChunk0015
  decide

def anchorAggregatePartValid7_0015 : Erdos848.AnchorHistoryTree → Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) =>
      part.IndexedValid squarefreeOracle 5000000 16256
  | _ => True

theorem anchorAggregatePart7_0015 :
    anchorAggregatePartValid7_0015 anchorHistoryChunk0015 := by
  unfold anchorAggregatePartValid7_0015 anchorHistoryChunk0015
  decide

theorem anchorRange_0015 :
    anchorHistoryChunk0015.IndexedValid squarefreeOracle 5000000 15360 := by
  have h0 := anchorAggregatePart0_0015
  simp only [anchorAggregatePartValid0_0015, anchorHistoryChunk0015] at h0
  have h1 := anchorAggregatePart1_0015
  simp only [anchorAggregatePartValid1_0015, anchorHistoryChunk0015] at h1
  have h2 := anchorAggregatePart2_0015
  simp only [anchorAggregatePartValid2_0015, anchorHistoryChunk0015] at h2
  have h3 := anchorAggregatePart3_0015
  simp only [anchorAggregatePartValid3_0015, anchorHistoryChunk0015] at h3
  have h4 := anchorAggregatePart4_0015
  simp only [anchorAggregatePartValid4_0015, anchorHistoryChunk0015] at h4
  have h5 := anchorAggregatePart5_0015
  simp only [anchorAggregatePartValid5_0015, anchorHistoryChunk0015] at h5
  have h6 := anchorAggregatePart6_0015
  simp only [anchorAggregatePartValid6_0015, anchorHistoryChunk0015] at h6
  have h7 := anchorAggregatePart7_0015
  simp only [anchorAggregatePartValid7_0015, anchorHistoryChunk0015] at h7
  unfold anchorHistoryChunk0015
  exact ⟨rfl, ⟨rfl, ⟨rfl, h0, h1⟩, ⟨rfl, h2, h3⟩⟩, ⟨rfl, ⟨rfl, h4, h5⟩, ⟨rfl, h6, h7⟩⟩⟩

end Erdos848.GeneratedFiveMillionPrefixTrace
