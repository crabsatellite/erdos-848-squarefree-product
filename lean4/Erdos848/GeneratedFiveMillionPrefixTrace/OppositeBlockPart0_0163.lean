import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0163

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0163 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 166912
  | _ => True

theorem oppositePart0_0163 : oppositePartValid0_0163 oppositeHistoryChunk0163 := by
  unfold oppositePartValid0_0163 oppositeHistoryChunk0163
  decide

def oppositePartValid1_0163 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 167040
  | _ => True

theorem oppositePart1_0163 : oppositePartValid1_0163 oppositeHistoryChunk0163 := by
  unfold oppositePartValid1_0163 oppositeHistoryChunk0163
  decide

def oppositePartValid2_0163 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 167168
  | _ => True

theorem oppositePart2_0163 : oppositePartValid2_0163 oppositeHistoryChunk0163 := by
  unfold oppositePartValid2_0163 oppositeHistoryChunk0163
  decide

def oppositePartValid3_0163 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 167296
  | _ => True

theorem oppositePart3_0163 : oppositePartValid3_0163 oppositeHistoryChunk0163 := by
  unfold oppositePartValid3_0163 oppositeHistoryChunk0163
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
