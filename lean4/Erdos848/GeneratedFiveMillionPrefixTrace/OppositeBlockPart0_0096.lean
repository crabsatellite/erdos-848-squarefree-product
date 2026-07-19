import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0096

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0096 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 98304
  | _ => True

theorem oppositePart0_0096 : oppositePartValid0_0096 oppositeHistoryChunk0096 := by
  unfold oppositePartValid0_0096 oppositeHistoryChunk0096
  decide

def oppositePartValid1_0096 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 98432
  | _ => True

theorem oppositePart1_0096 : oppositePartValid1_0096 oppositeHistoryChunk0096 := by
  unfold oppositePartValid1_0096 oppositeHistoryChunk0096
  decide

def oppositePartValid2_0096 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 98560
  | _ => True

theorem oppositePart2_0096 : oppositePartValid2_0096 oppositeHistoryChunk0096 := by
  unfold oppositePartValid2_0096 oppositeHistoryChunk0096
  decide

def oppositePartValid3_0096 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 98688
  | _ => True

theorem oppositePart3_0096 : oppositePartValid3_0096 oppositeHistoryChunk0096 := by
  unfold oppositePartValid3_0096 oppositeHistoryChunk0096
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
