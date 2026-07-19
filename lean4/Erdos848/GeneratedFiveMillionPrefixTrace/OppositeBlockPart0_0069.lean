import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0069

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0069 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 70656
  | _ => True

theorem oppositePart0_0069 : oppositePartValid0_0069 oppositeHistoryChunk0069 := by
  unfold oppositePartValid0_0069 oppositeHistoryChunk0069
  decide

def oppositePartValid1_0069 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 70784
  | _ => True

theorem oppositePart1_0069 : oppositePartValid1_0069 oppositeHistoryChunk0069 := by
  unfold oppositePartValid1_0069 oppositeHistoryChunk0069
  decide

def oppositePartValid2_0069 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 70912
  | _ => True

theorem oppositePart2_0069 : oppositePartValid2_0069 oppositeHistoryChunk0069 := by
  unfold oppositePartValid2_0069 oppositeHistoryChunk0069
  decide

def oppositePartValid3_0069 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 71040
  | _ => True

theorem oppositePart3_0069 : oppositePartValid3_0069 oppositeHistoryChunk0069 := by
  unfold oppositePartValid3_0069 oppositeHistoryChunk0069
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
