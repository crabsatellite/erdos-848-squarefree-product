import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0058

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0058 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 59392
  | _ => True

theorem oppositePart0_0058 : oppositePartValid0_0058 oppositeHistoryChunk0058 := by
  unfold oppositePartValid0_0058 oppositeHistoryChunk0058
  decide

def oppositePartValid1_0058 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 59520
  | _ => True

theorem oppositePart1_0058 : oppositePartValid1_0058 oppositeHistoryChunk0058 := by
  unfold oppositePartValid1_0058 oppositeHistoryChunk0058
  decide

def oppositePartValid2_0058 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 59648
  | _ => True

theorem oppositePart2_0058 : oppositePartValid2_0058 oppositeHistoryChunk0058 := by
  unfold oppositePartValid2_0058 oppositeHistoryChunk0058
  decide

def oppositePartValid3_0058 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 59776
  | _ => True

theorem oppositePart3_0058 : oppositePartValid3_0058 oppositeHistoryChunk0058 := by
  unfold oppositePartValid3_0058 oppositeHistoryChunk0058
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
