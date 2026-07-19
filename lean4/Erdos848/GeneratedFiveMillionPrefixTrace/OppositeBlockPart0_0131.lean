import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0131

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0131 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 134144
  | _ => True

theorem oppositePart0_0131 : oppositePartValid0_0131 oppositeHistoryChunk0131 := by
  unfold oppositePartValid0_0131 oppositeHistoryChunk0131
  decide

def oppositePartValid1_0131 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 134272
  | _ => True

theorem oppositePart1_0131 : oppositePartValid1_0131 oppositeHistoryChunk0131 := by
  unfold oppositePartValid1_0131 oppositeHistoryChunk0131
  decide

def oppositePartValid2_0131 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 134400
  | _ => True

theorem oppositePart2_0131 : oppositePartValid2_0131 oppositeHistoryChunk0131 := by
  unfold oppositePartValid2_0131 oppositeHistoryChunk0131
  decide

def oppositePartValid3_0131 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 134528
  | _ => True

theorem oppositePart3_0131 : oppositePartValid3_0131 oppositeHistoryChunk0131 := by
  unfold oppositePartValid3_0131 oppositeHistoryChunk0131
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
