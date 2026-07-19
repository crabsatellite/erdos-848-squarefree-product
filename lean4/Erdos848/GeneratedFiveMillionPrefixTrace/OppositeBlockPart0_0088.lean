import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0088

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0088 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 90112
  | _ => True

theorem oppositePart0_0088 : oppositePartValid0_0088 oppositeHistoryChunk0088 := by
  unfold oppositePartValid0_0088 oppositeHistoryChunk0088
  decide

def oppositePartValid1_0088 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 90240
  | _ => True

theorem oppositePart1_0088 : oppositePartValid1_0088 oppositeHistoryChunk0088 := by
  unfold oppositePartValid1_0088 oppositeHistoryChunk0088
  decide

def oppositePartValid2_0088 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 90368
  | _ => True

theorem oppositePart2_0088 : oppositePartValid2_0088 oppositeHistoryChunk0088 := by
  unfold oppositePartValid2_0088 oppositeHistoryChunk0088
  decide

def oppositePartValid3_0088 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 90496
  | _ => True

theorem oppositePart3_0088 : oppositePartValid3_0088 oppositeHistoryChunk0088 := by
  unfold oppositePartValid3_0088 oppositeHistoryChunk0088
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
