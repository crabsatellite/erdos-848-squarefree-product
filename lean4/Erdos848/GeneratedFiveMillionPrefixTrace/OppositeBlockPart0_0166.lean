import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0166

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0166 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 169984
  | _ => True

theorem oppositePart0_0166 : oppositePartValid0_0166 oppositeHistoryChunk0166 := by
  unfold oppositePartValid0_0166 oppositeHistoryChunk0166
  decide

def oppositePartValid1_0166 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 170112
  | _ => True

theorem oppositePart1_0166 : oppositePartValid1_0166 oppositeHistoryChunk0166 := by
  unfold oppositePartValid1_0166 oppositeHistoryChunk0166
  decide

def oppositePartValid2_0166 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 170240
  | _ => True

theorem oppositePart2_0166 : oppositePartValid2_0166 oppositeHistoryChunk0166 := by
  unfold oppositePartValid2_0166 oppositeHistoryChunk0166
  decide

def oppositePartValid3_0166 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 170368
  | _ => True

theorem oppositePart3_0166 : oppositePartValid3_0166 oppositeHistoryChunk0166 := by
  unfold oppositePartValid3_0166 oppositeHistoryChunk0166
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
