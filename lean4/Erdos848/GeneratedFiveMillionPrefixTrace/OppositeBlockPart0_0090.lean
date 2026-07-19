import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0090

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 92160
  | _ => True

theorem oppositePart0_0090 : oppositePartValid0_0090 oppositeHistoryChunk0090 := by
  unfold oppositePartValid0_0090 oppositeHistoryChunk0090
  decide

def oppositePartValid1_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 92288
  | _ => True

theorem oppositePart1_0090 : oppositePartValid1_0090 oppositeHistoryChunk0090 := by
  unfold oppositePartValid1_0090 oppositeHistoryChunk0090
  decide

def oppositePartValid2_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 92416
  | _ => True

theorem oppositePart2_0090 : oppositePartValid2_0090 oppositeHistoryChunk0090 := by
  unfold oppositePartValid2_0090 oppositeHistoryChunk0090
  decide

def oppositePartValid3_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 92544
  | _ => True

theorem oppositePart3_0090 : oppositePartValid3_0090 oppositeHistoryChunk0090 := by
  unfold oppositePartValid3_0090 oppositeHistoryChunk0090
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
