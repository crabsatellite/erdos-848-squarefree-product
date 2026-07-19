import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0135

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0135 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 138240
  | _ => True

theorem oppositePart0_0135 : oppositePartValid0_0135 oppositeHistoryChunk0135 := by
  unfold oppositePartValid0_0135 oppositeHistoryChunk0135
  decide

def oppositePartValid1_0135 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 138368
  | _ => True

theorem oppositePart1_0135 : oppositePartValid1_0135 oppositeHistoryChunk0135 := by
  unfold oppositePartValid1_0135 oppositeHistoryChunk0135
  decide

def oppositePartValid2_0135 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 138496
  | _ => True

theorem oppositePart2_0135 : oppositePartValid2_0135 oppositeHistoryChunk0135 := by
  unfold oppositePartValid2_0135 oppositeHistoryChunk0135
  decide

def oppositePartValid3_0135 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 138624
  | _ => True

theorem oppositePart3_0135 : oppositePartValid3_0135 oppositeHistoryChunk0135 := by
  unfold oppositePartValid3_0135 oppositeHistoryChunk0135
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
