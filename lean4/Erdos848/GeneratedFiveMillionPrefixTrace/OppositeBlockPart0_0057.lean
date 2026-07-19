import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0057

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0057 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 58368
  | _ => True

theorem oppositePart0_0057 : oppositePartValid0_0057 oppositeHistoryChunk0057 := by
  unfold oppositePartValid0_0057 oppositeHistoryChunk0057
  decide

def oppositePartValid1_0057 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 58496
  | _ => True

theorem oppositePart1_0057 : oppositePartValid1_0057 oppositeHistoryChunk0057 := by
  unfold oppositePartValid1_0057 oppositeHistoryChunk0057
  decide

def oppositePartValid2_0057 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 58624
  | _ => True

theorem oppositePart2_0057 : oppositePartValid2_0057 oppositeHistoryChunk0057 := by
  unfold oppositePartValid2_0057 oppositeHistoryChunk0057
  decide

def oppositePartValid3_0057 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 58752
  | _ => True

theorem oppositePart3_0057 : oppositePartValid3_0057 oppositeHistoryChunk0057 := by
  unfold oppositePartValid3_0057 oppositeHistoryChunk0057
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
