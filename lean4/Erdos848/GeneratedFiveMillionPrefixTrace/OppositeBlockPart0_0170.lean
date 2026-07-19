import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0170

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0170 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 174080
  | _ => True

theorem oppositePart0_0170 : oppositePartValid0_0170 oppositeHistoryChunk0170 := by
  unfold oppositePartValid0_0170 oppositeHistoryChunk0170
  decide

def oppositePartValid1_0170 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 174208
  | _ => True

theorem oppositePart1_0170 : oppositePartValid1_0170 oppositeHistoryChunk0170 := by
  unfold oppositePartValid1_0170 oppositeHistoryChunk0170
  decide

def oppositePartValid2_0170 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 174336
  | _ => True

theorem oppositePart2_0170 : oppositePartValid2_0170 oppositeHistoryChunk0170 := by
  unfold oppositePartValid2_0170 oppositeHistoryChunk0170
  decide

def oppositePartValid3_0170 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 174464
  | _ => True

theorem oppositePart3_0170 : oppositePartValid3_0170 oppositeHistoryChunk0170 := by
  unfold oppositePartValid3_0170 oppositeHistoryChunk0170
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
