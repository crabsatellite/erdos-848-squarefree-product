import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0066

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0066 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 67584
  | _ => True

theorem oppositePart0_0066 : oppositePartValid0_0066 oppositeHistoryChunk0066 := by
  unfold oppositePartValid0_0066 oppositeHistoryChunk0066
  decide

def oppositePartValid1_0066 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 67712
  | _ => True

theorem oppositePart1_0066 : oppositePartValid1_0066 oppositeHistoryChunk0066 := by
  unfold oppositePartValid1_0066 oppositeHistoryChunk0066
  decide

def oppositePartValid2_0066 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 67840
  | _ => True

theorem oppositePart2_0066 : oppositePartValid2_0066 oppositeHistoryChunk0066 := by
  unfold oppositePartValid2_0066 oppositeHistoryChunk0066
  decide

def oppositePartValid3_0066 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 67968
  | _ => True

theorem oppositePart3_0066 : oppositePartValid3_0066 oppositeHistoryChunk0066 := by
  unfold oppositePartValid3_0066 oppositeHistoryChunk0066
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
