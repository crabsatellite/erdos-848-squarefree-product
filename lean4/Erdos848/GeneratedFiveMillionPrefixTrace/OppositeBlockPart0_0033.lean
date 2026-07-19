import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0033

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0033 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 33792
  | _ => True

theorem oppositePart0_0033 : oppositePartValid0_0033 oppositeHistoryChunk0033 := by
  unfold oppositePartValid0_0033 oppositeHistoryChunk0033
  decide

def oppositePartValid1_0033 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 33920
  | _ => True

theorem oppositePart1_0033 : oppositePartValid1_0033 oppositeHistoryChunk0033 := by
  unfold oppositePartValid1_0033 oppositeHistoryChunk0033
  decide

def oppositePartValid2_0033 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 34048
  | _ => True

theorem oppositePart2_0033 : oppositePartValid2_0033 oppositeHistoryChunk0033 := by
  unfold oppositePartValid2_0033 oppositeHistoryChunk0033
  decide

def oppositePartValid3_0033 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 34176
  | _ => True

theorem oppositePart3_0033 : oppositePartValid3_0033 oppositeHistoryChunk0033 := by
  unfold oppositePartValid3_0033 oppositeHistoryChunk0033
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
