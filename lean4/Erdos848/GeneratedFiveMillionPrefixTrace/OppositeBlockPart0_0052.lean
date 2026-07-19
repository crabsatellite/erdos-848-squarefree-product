import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0052

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0052 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 53248
  | _ => True

theorem oppositePart0_0052 : oppositePartValid0_0052 oppositeHistoryChunk0052 := by
  unfold oppositePartValid0_0052 oppositeHistoryChunk0052
  decide

def oppositePartValid1_0052 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 53376
  | _ => True

theorem oppositePart1_0052 : oppositePartValid1_0052 oppositeHistoryChunk0052 := by
  unfold oppositePartValid1_0052 oppositeHistoryChunk0052
  decide

def oppositePartValid2_0052 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 53504
  | _ => True

theorem oppositePart2_0052 : oppositePartValid2_0052 oppositeHistoryChunk0052 := by
  unfold oppositePartValid2_0052 oppositeHistoryChunk0052
  decide

def oppositePartValid3_0052 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 53632
  | _ => True

theorem oppositePart3_0052 : oppositePartValid3_0052 oppositeHistoryChunk0052 := by
  unfold oppositePartValid3_0052 oppositeHistoryChunk0052
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
