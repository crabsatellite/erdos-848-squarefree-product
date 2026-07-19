import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0046

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0046 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 47104
  | _ => True

theorem oppositePart0_0046 : oppositePartValid0_0046 oppositeHistoryChunk0046 := by
  unfold oppositePartValid0_0046 oppositeHistoryChunk0046
  decide

def oppositePartValid1_0046 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 47232
  | _ => True

theorem oppositePart1_0046 : oppositePartValid1_0046 oppositeHistoryChunk0046 := by
  unfold oppositePartValid1_0046 oppositeHistoryChunk0046
  decide

def oppositePartValid2_0046 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 47360
  | _ => True

theorem oppositePart2_0046 : oppositePartValid2_0046 oppositeHistoryChunk0046 := by
  unfold oppositePartValid2_0046 oppositeHistoryChunk0046
  decide

def oppositePartValid3_0046 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 47488
  | _ => True

theorem oppositePart3_0046 : oppositePartValid3_0046 oppositeHistoryChunk0046 := by
  unfold oppositePartValid3_0046 oppositeHistoryChunk0046
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
