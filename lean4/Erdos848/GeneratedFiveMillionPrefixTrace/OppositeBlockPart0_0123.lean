import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0123

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0123 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 125952
  | _ => True

theorem oppositePart0_0123 : oppositePartValid0_0123 oppositeHistoryChunk0123 := by
  unfold oppositePartValid0_0123 oppositeHistoryChunk0123
  decide

def oppositePartValid1_0123 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 126080
  | _ => True

theorem oppositePart1_0123 : oppositePartValid1_0123 oppositeHistoryChunk0123 := by
  unfold oppositePartValid1_0123 oppositeHistoryChunk0123
  decide

def oppositePartValid2_0123 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 126208
  | _ => True

theorem oppositePart2_0123 : oppositePartValid2_0123 oppositeHistoryChunk0123 := by
  unfold oppositePartValid2_0123 oppositeHistoryChunk0123
  decide

def oppositePartValid3_0123 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 126336
  | _ => True

theorem oppositePart3_0123 : oppositePartValid3_0123 oppositeHistoryChunk0123 := by
  unfold oppositePartValid3_0123 oppositeHistoryChunk0123
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
