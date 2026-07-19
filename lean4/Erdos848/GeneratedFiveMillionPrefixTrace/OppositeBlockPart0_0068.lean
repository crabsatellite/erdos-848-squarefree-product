import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0068

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0068 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 69632
  | _ => True

theorem oppositePart0_0068 : oppositePartValid0_0068 oppositeHistoryChunk0068 := by
  unfold oppositePartValid0_0068 oppositeHistoryChunk0068
  decide

def oppositePartValid1_0068 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 69760
  | _ => True

theorem oppositePart1_0068 : oppositePartValid1_0068 oppositeHistoryChunk0068 := by
  unfold oppositePartValid1_0068 oppositeHistoryChunk0068
  decide

def oppositePartValid2_0068 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 69888
  | _ => True

theorem oppositePart2_0068 : oppositePartValid2_0068 oppositeHistoryChunk0068 := by
  unfold oppositePartValid2_0068 oppositeHistoryChunk0068
  decide

def oppositePartValid3_0068 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 70016
  | _ => True

theorem oppositePart3_0068 : oppositePartValid3_0068 oppositeHistoryChunk0068 := by
  unfold oppositePartValid3_0068 oppositeHistoryChunk0068
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
