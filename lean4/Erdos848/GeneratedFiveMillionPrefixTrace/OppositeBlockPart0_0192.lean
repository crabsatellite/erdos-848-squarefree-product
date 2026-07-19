import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0192

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0192 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 196608
  | _ => True

theorem oppositePart0_0192 : oppositePartValid0_0192 oppositeHistoryChunk0192 := by
  unfold oppositePartValid0_0192 oppositeHistoryChunk0192
  decide

def oppositePartValid1_0192 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 196736
  | _ => True

theorem oppositePart1_0192 : oppositePartValid1_0192 oppositeHistoryChunk0192 := by
  unfold oppositePartValid1_0192 oppositeHistoryChunk0192
  decide

def oppositePartValid2_0192 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 196864
  | _ => True

theorem oppositePart2_0192 : oppositePartValid2_0192 oppositeHistoryChunk0192 := by
  unfold oppositePartValid2_0192 oppositeHistoryChunk0192
  decide

def oppositePartValid3_0192 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 196992
  | _ => True

theorem oppositePart3_0192 : oppositePartValid3_0192 oppositeHistoryChunk0192 := by
  unfold oppositePartValid3_0192 oppositeHistoryChunk0192
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
