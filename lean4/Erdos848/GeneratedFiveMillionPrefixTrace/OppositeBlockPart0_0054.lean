import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0054

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0054 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 55296
  | _ => True

theorem oppositePart0_0054 : oppositePartValid0_0054 oppositeHistoryChunk0054 := by
  unfold oppositePartValid0_0054 oppositeHistoryChunk0054
  decide

def oppositePartValid1_0054 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 55424
  | _ => True

theorem oppositePart1_0054 : oppositePartValid1_0054 oppositeHistoryChunk0054 := by
  unfold oppositePartValid1_0054 oppositeHistoryChunk0054
  decide

def oppositePartValid2_0054 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 55552
  | _ => True

theorem oppositePart2_0054 : oppositePartValid2_0054 oppositeHistoryChunk0054 := by
  unfold oppositePartValid2_0054 oppositeHistoryChunk0054
  decide

def oppositePartValid3_0054 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 55680
  | _ => True

theorem oppositePart3_0054 : oppositePartValid3_0054 oppositeHistoryChunk0054 := by
  unfold oppositePartValid3_0054 oppositeHistoryChunk0054
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
