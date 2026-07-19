import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0002

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0002 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 2048
  | _ => True

theorem oppositePart0_0002 : oppositePartValid0_0002 oppositeHistoryChunk0002 := by
  unfold oppositePartValid0_0002 oppositeHistoryChunk0002
  decide

def oppositePartValid1_0002 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 2176
  | _ => True

theorem oppositePart1_0002 : oppositePartValid1_0002 oppositeHistoryChunk0002 := by
  unfold oppositePartValid1_0002 oppositeHistoryChunk0002
  decide

def oppositePartValid2_0002 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 2304
  | _ => True

theorem oppositePart2_0002 : oppositePartValid2_0002 oppositeHistoryChunk0002 := by
  unfold oppositePartValid2_0002 oppositeHistoryChunk0002
  decide

def oppositePartValid3_0002 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 2432
  | _ => True

theorem oppositePart3_0002 : oppositePartValid3_0002 oppositeHistoryChunk0002 := by
  unfold oppositePartValid3_0002 oppositeHistoryChunk0002
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
