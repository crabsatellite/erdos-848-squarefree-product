import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0048

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0048 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 49152
  | _ => True

theorem oppositePart0_0048 : oppositePartValid0_0048 oppositeHistoryChunk0048 := by
  unfold oppositePartValid0_0048 oppositeHistoryChunk0048
  decide

def oppositePartValid1_0048 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 49280
  | _ => True

theorem oppositePart1_0048 : oppositePartValid1_0048 oppositeHistoryChunk0048 := by
  unfold oppositePartValid1_0048 oppositeHistoryChunk0048
  decide

def oppositePartValid2_0048 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 49408
  | _ => True

theorem oppositePart2_0048 : oppositePartValid2_0048 oppositeHistoryChunk0048 := by
  unfold oppositePartValid2_0048 oppositeHistoryChunk0048
  decide

def oppositePartValid3_0048 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 49536
  | _ => True

theorem oppositePart3_0048 : oppositePartValid3_0048 oppositeHistoryChunk0048 := by
  unfold oppositePartValid3_0048 oppositeHistoryChunk0048
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
