import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0106

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0106 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 108544
  | _ => True

theorem oppositePart0_0106 : oppositePartValid0_0106 oppositeHistoryChunk0106 := by
  unfold oppositePartValid0_0106 oppositeHistoryChunk0106
  decide

def oppositePartValid1_0106 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 108672
  | _ => True

theorem oppositePart1_0106 : oppositePartValid1_0106 oppositeHistoryChunk0106 := by
  unfold oppositePartValid1_0106 oppositeHistoryChunk0106
  decide

def oppositePartValid2_0106 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 108800
  | _ => True

theorem oppositePart2_0106 : oppositePartValid2_0106 oppositeHistoryChunk0106 := by
  unfold oppositePartValid2_0106 oppositeHistoryChunk0106
  decide

def oppositePartValid3_0106 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 108928
  | _ => True

theorem oppositePart3_0106 : oppositePartValid3_0106 oppositeHistoryChunk0106 := by
  unfold oppositePartValid3_0106 oppositeHistoryChunk0106
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
