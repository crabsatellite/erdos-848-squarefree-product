import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0061

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0061 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 62464
  | _ => True

theorem oppositePart0_0061 : oppositePartValid0_0061 oppositeHistoryChunk0061 := by
  unfold oppositePartValid0_0061 oppositeHistoryChunk0061
  decide

def oppositePartValid1_0061 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 62592
  | _ => True

theorem oppositePart1_0061 : oppositePartValid1_0061 oppositeHistoryChunk0061 := by
  unfold oppositePartValid1_0061 oppositeHistoryChunk0061
  decide

def oppositePartValid2_0061 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 62720
  | _ => True

theorem oppositePart2_0061 : oppositePartValid2_0061 oppositeHistoryChunk0061 := by
  unfold oppositePartValid2_0061 oppositeHistoryChunk0061
  decide

def oppositePartValid3_0061 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 62848
  | _ => True

theorem oppositePart3_0061 : oppositePartValid3_0061 oppositeHistoryChunk0061 := by
  unfold oppositePartValid3_0061 oppositeHistoryChunk0061
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
