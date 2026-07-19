import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0072

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 73728
  | _ => True

theorem oppositePart0_0072 : oppositePartValid0_0072 oppositeHistoryChunk0072 := by
  unfold oppositePartValid0_0072 oppositeHistoryChunk0072
  decide

def oppositePartValid1_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 73856
  | _ => True

theorem oppositePart1_0072 : oppositePartValid1_0072 oppositeHistoryChunk0072 := by
  unfold oppositePartValid1_0072 oppositeHistoryChunk0072
  decide

def oppositePartValid2_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 73984
  | _ => True

theorem oppositePart2_0072 : oppositePartValid2_0072 oppositeHistoryChunk0072 := by
  unfold oppositePartValid2_0072 oppositeHistoryChunk0072
  decide

def oppositePartValid3_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 74112
  | _ => True

theorem oppositePart3_0072 : oppositePartValid3_0072 oppositeHistoryChunk0072 := by
  unfold oppositePartValid3_0072 oppositeHistoryChunk0072
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
