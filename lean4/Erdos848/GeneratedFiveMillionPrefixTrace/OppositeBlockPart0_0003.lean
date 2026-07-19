import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0003

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0003 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 3072
  | _ => True

theorem oppositePart0_0003 : oppositePartValid0_0003 oppositeHistoryChunk0003 := by
  unfold oppositePartValid0_0003 oppositeHistoryChunk0003
  decide

def oppositePartValid1_0003 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 3200
  | _ => True

theorem oppositePart1_0003 : oppositePartValid1_0003 oppositeHistoryChunk0003 := by
  unfold oppositePartValid1_0003 oppositeHistoryChunk0003
  decide

def oppositePartValid2_0003 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 3328
  | _ => True

theorem oppositePart2_0003 : oppositePartValid2_0003 oppositeHistoryChunk0003 := by
  unfold oppositePartValid2_0003 oppositeHistoryChunk0003
  decide

def oppositePartValid3_0003 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 3456
  | _ => True

theorem oppositePart3_0003 : oppositePartValid3_0003 oppositeHistoryChunk0003 := by
  unfold oppositePartValid3_0003 oppositeHistoryChunk0003
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
