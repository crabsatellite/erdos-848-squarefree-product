import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0077

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0077 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 78848
  | _ => True

theorem oppositePart0_0077 : oppositePartValid0_0077 oppositeHistoryChunk0077 := by
  unfold oppositePartValid0_0077 oppositeHistoryChunk0077
  decide

def oppositePartValid1_0077 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 78976
  | _ => True

theorem oppositePart1_0077 : oppositePartValid1_0077 oppositeHistoryChunk0077 := by
  unfold oppositePartValid1_0077 oppositeHistoryChunk0077
  decide

def oppositePartValid2_0077 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 79104
  | _ => True

theorem oppositePart2_0077 : oppositePartValid2_0077 oppositeHistoryChunk0077 := by
  unfold oppositePartValid2_0077 oppositeHistoryChunk0077
  decide

def oppositePartValid3_0077 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 79232
  | _ => True

theorem oppositePart3_0077 : oppositePartValid3_0077 oppositeHistoryChunk0077 := by
  unfold oppositePartValid3_0077 oppositeHistoryChunk0077
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
