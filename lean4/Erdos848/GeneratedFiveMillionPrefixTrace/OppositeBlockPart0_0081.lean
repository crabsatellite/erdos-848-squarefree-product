import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0081

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0081 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 82944
  | _ => True

theorem oppositePart0_0081 : oppositePartValid0_0081 oppositeHistoryChunk0081 := by
  unfold oppositePartValid0_0081 oppositeHistoryChunk0081
  decide

def oppositePartValid1_0081 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 83072
  | _ => True

theorem oppositePart1_0081 : oppositePartValid1_0081 oppositeHistoryChunk0081 := by
  unfold oppositePartValid1_0081 oppositeHistoryChunk0081
  decide

def oppositePartValid2_0081 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 83200
  | _ => True

theorem oppositePart2_0081 : oppositePartValid2_0081 oppositeHistoryChunk0081 := by
  unfold oppositePartValid2_0081 oppositeHistoryChunk0081
  decide

def oppositePartValid3_0081 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 83328
  | _ => True

theorem oppositePart3_0081 : oppositePartValid3_0081 oppositeHistoryChunk0081 := by
  unfold oppositePartValid3_0081 oppositeHistoryChunk0081
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
