import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0119

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0119 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 121856
  | _ => True

theorem oppositePart0_0119 : oppositePartValid0_0119 oppositeHistoryChunk0119 := by
  unfold oppositePartValid0_0119 oppositeHistoryChunk0119
  decide

def oppositePartValid1_0119 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 121984
  | _ => True

theorem oppositePart1_0119 : oppositePartValid1_0119 oppositeHistoryChunk0119 := by
  unfold oppositePartValid1_0119 oppositeHistoryChunk0119
  decide

def oppositePartValid2_0119 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 122112
  | _ => True

theorem oppositePart2_0119 : oppositePartValid2_0119 oppositeHistoryChunk0119 := by
  unfold oppositePartValid2_0119 oppositeHistoryChunk0119
  decide

def oppositePartValid3_0119 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 122240
  | _ => True

theorem oppositePart3_0119 : oppositePartValid3_0119 oppositeHistoryChunk0119 := by
  unfold oppositePartValid3_0119 oppositeHistoryChunk0119
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
