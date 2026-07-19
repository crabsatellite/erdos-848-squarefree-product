import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0103

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0103 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 105472
  | _ => True

theorem oppositePart0_0103 : oppositePartValid0_0103 oppositeHistoryChunk0103 := by
  unfold oppositePartValid0_0103 oppositeHistoryChunk0103
  decide

def oppositePartValid1_0103 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 105600
  | _ => True

theorem oppositePart1_0103 : oppositePartValid1_0103 oppositeHistoryChunk0103 := by
  unfold oppositePartValid1_0103 oppositeHistoryChunk0103
  decide

def oppositePartValid2_0103 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 105728
  | _ => True

theorem oppositePart2_0103 : oppositePartValid2_0103 oppositeHistoryChunk0103 := by
  unfold oppositePartValid2_0103 oppositeHistoryChunk0103
  decide

def oppositePartValid3_0103 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 105856
  | _ => True

theorem oppositePart3_0103 : oppositePartValid3_0103 oppositeHistoryChunk0103 := by
  unfold oppositePartValid3_0103 oppositeHistoryChunk0103
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
