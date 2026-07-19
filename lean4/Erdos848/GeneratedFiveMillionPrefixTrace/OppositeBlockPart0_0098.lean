import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0098

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0098 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 100352
  | _ => True

theorem oppositePart0_0098 : oppositePartValid0_0098 oppositeHistoryChunk0098 := by
  unfold oppositePartValid0_0098 oppositeHistoryChunk0098
  decide

def oppositePartValid1_0098 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 100480
  | _ => True

theorem oppositePart1_0098 : oppositePartValid1_0098 oppositeHistoryChunk0098 := by
  unfold oppositePartValid1_0098 oppositeHistoryChunk0098
  decide

def oppositePartValid2_0098 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 100608
  | _ => True

theorem oppositePart2_0098 : oppositePartValid2_0098 oppositeHistoryChunk0098 := by
  unfold oppositePartValid2_0098 oppositeHistoryChunk0098
  decide

def oppositePartValid3_0098 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 100736
  | _ => True

theorem oppositePart3_0098 : oppositePartValid3_0098 oppositeHistoryChunk0098 := by
  unfold oppositePartValid3_0098 oppositeHistoryChunk0098
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
