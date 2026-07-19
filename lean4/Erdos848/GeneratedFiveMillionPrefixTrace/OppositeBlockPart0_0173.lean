import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0173

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0173 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 177152
  | _ => True

theorem oppositePart0_0173 : oppositePartValid0_0173 oppositeHistoryChunk0173 := by
  unfold oppositePartValid0_0173 oppositeHistoryChunk0173
  decide

def oppositePartValid1_0173 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 177280
  | _ => True

theorem oppositePart1_0173 : oppositePartValid1_0173 oppositeHistoryChunk0173 := by
  unfold oppositePartValid1_0173 oppositeHistoryChunk0173
  decide

def oppositePartValid2_0173 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 177408
  | _ => True

theorem oppositePart2_0173 : oppositePartValid2_0173 oppositeHistoryChunk0173 := by
  unfold oppositePartValid2_0173 oppositeHistoryChunk0173
  decide

def oppositePartValid3_0173 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 177536
  | _ => True

theorem oppositePart3_0173 : oppositePartValid3_0173 oppositeHistoryChunk0173 := by
  unfold oppositePartValid3_0173 oppositeHistoryChunk0173
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
