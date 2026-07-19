import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0176

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0176 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 180224
  | _ => True

theorem oppositePart0_0176 : oppositePartValid0_0176 oppositeHistoryChunk0176 := by
  unfold oppositePartValid0_0176 oppositeHistoryChunk0176
  decide

def oppositePartValid1_0176 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 180352
  | _ => True

theorem oppositePart1_0176 : oppositePartValid1_0176 oppositeHistoryChunk0176 := by
  unfold oppositePartValid1_0176 oppositeHistoryChunk0176
  decide

def oppositePartValid2_0176 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 180480
  | _ => True

theorem oppositePart2_0176 : oppositePartValid2_0176 oppositeHistoryChunk0176 := by
  unfold oppositePartValid2_0176 oppositeHistoryChunk0176
  decide

def oppositePartValid3_0176 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 180608
  | _ => True

theorem oppositePart3_0176 : oppositePartValid3_0176 oppositeHistoryChunk0176 := by
  unfold oppositePartValid3_0176 oppositeHistoryChunk0176
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
