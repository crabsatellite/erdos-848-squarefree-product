import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0130

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0130 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 133120
  | _ => True

theorem oppositePart0_0130 : oppositePartValid0_0130 oppositeHistoryChunk0130 := by
  unfold oppositePartValid0_0130 oppositeHistoryChunk0130
  decide

def oppositePartValid1_0130 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 133248
  | _ => True

theorem oppositePart1_0130 : oppositePartValid1_0130 oppositeHistoryChunk0130 := by
  unfold oppositePartValid1_0130 oppositeHistoryChunk0130
  decide

def oppositePartValid2_0130 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 133376
  | _ => True

theorem oppositePart2_0130 : oppositePartValid2_0130 oppositeHistoryChunk0130 := by
  unfold oppositePartValid2_0130 oppositeHistoryChunk0130
  decide

def oppositePartValid3_0130 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 133504
  | _ => True

theorem oppositePart3_0130 : oppositePartValid3_0130 oppositeHistoryChunk0130 := by
  unfold oppositePartValid3_0130 oppositeHistoryChunk0130
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
