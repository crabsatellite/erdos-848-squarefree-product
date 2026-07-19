import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0013

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0013 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 13312
  | _ => True

theorem oppositePart0_0013 : oppositePartValid0_0013 oppositeHistoryChunk0013 := by
  unfold oppositePartValid0_0013 oppositeHistoryChunk0013
  decide

def oppositePartValid1_0013 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 13440
  | _ => True

theorem oppositePart1_0013 : oppositePartValid1_0013 oppositeHistoryChunk0013 := by
  unfold oppositePartValid1_0013 oppositeHistoryChunk0013
  decide

def oppositePartValid2_0013 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 13568
  | _ => True

theorem oppositePart2_0013 : oppositePartValid2_0013 oppositeHistoryChunk0013 := by
  unfold oppositePartValid2_0013 oppositeHistoryChunk0013
  decide

def oppositePartValid3_0013 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 13696
  | _ => True

theorem oppositePart3_0013 : oppositePartValid3_0013 oppositeHistoryChunk0013 := by
  unfold oppositePartValid3_0013 oppositeHistoryChunk0013
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
