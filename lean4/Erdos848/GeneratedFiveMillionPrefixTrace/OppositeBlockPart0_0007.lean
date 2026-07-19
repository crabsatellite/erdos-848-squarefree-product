import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0007

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0007 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 7168
  | _ => True

theorem oppositePart0_0007 : oppositePartValid0_0007 oppositeHistoryChunk0007 := by
  unfold oppositePartValid0_0007 oppositeHistoryChunk0007
  decide

def oppositePartValid1_0007 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 7296
  | _ => True

theorem oppositePart1_0007 : oppositePartValid1_0007 oppositeHistoryChunk0007 := by
  unfold oppositePartValid1_0007 oppositeHistoryChunk0007
  decide

def oppositePartValid2_0007 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 7424
  | _ => True

theorem oppositePart2_0007 : oppositePartValid2_0007 oppositeHistoryChunk0007 := by
  unfold oppositePartValid2_0007 oppositeHistoryChunk0007
  decide

def oppositePartValid3_0007 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 7552
  | _ => True

theorem oppositePart3_0007 : oppositePartValid3_0007 oppositeHistoryChunk0007 := by
  unfold oppositePartValid3_0007 oppositeHistoryChunk0007
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
