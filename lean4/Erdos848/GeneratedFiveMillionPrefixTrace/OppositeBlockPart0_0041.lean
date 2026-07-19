import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0041

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0041 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 41984
  | _ => True

theorem oppositePart0_0041 : oppositePartValid0_0041 oppositeHistoryChunk0041 := by
  unfold oppositePartValid0_0041 oppositeHistoryChunk0041
  decide

def oppositePartValid1_0041 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 42112
  | _ => True

theorem oppositePart1_0041 : oppositePartValid1_0041 oppositeHistoryChunk0041 := by
  unfold oppositePartValid1_0041 oppositeHistoryChunk0041
  decide

def oppositePartValid2_0041 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 42240
  | _ => True

theorem oppositePart2_0041 : oppositePartValid2_0041 oppositeHistoryChunk0041 := by
  unfold oppositePartValid2_0041 oppositeHistoryChunk0041
  decide

def oppositePartValid3_0041 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 42368
  | _ => True

theorem oppositePart3_0041 : oppositePartValid3_0041 oppositeHistoryChunk0041 := by
  unfold oppositePartValid3_0041 oppositeHistoryChunk0041
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
