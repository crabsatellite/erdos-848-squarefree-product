import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0158

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0158 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 161792
  | _ => True

theorem oppositePart0_0158 : oppositePartValid0_0158 oppositeHistoryChunk0158 := by
  unfold oppositePartValid0_0158 oppositeHistoryChunk0158
  decide

def oppositePartValid1_0158 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 161920
  | _ => True

theorem oppositePart1_0158 : oppositePartValid1_0158 oppositeHistoryChunk0158 := by
  unfold oppositePartValid1_0158 oppositeHistoryChunk0158
  decide

def oppositePartValid2_0158 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 162048
  | _ => True

theorem oppositePart2_0158 : oppositePartValid2_0158 oppositeHistoryChunk0158 := by
  unfold oppositePartValid2_0158 oppositeHistoryChunk0158
  decide

def oppositePartValid3_0158 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 162176
  | _ => True

theorem oppositePart3_0158 : oppositePartValid3_0158 oppositeHistoryChunk0158 := by
  unfold oppositePartValid3_0158 oppositeHistoryChunk0158
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
