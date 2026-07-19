import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0185

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0185 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 189440
  | _ => True

theorem oppositePart0_0185 : oppositePartValid0_0185 oppositeHistoryChunk0185 := by
  unfold oppositePartValid0_0185 oppositeHistoryChunk0185
  decide

def oppositePartValid1_0185 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 189568
  | _ => True

theorem oppositePart1_0185 : oppositePartValid1_0185 oppositeHistoryChunk0185 := by
  unfold oppositePartValid1_0185 oppositeHistoryChunk0185
  decide

def oppositePartValid2_0185 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 189696
  | _ => True

theorem oppositePart2_0185 : oppositePartValid2_0185 oppositeHistoryChunk0185 := by
  unfold oppositePartValid2_0185 oppositeHistoryChunk0185
  decide

def oppositePartValid3_0185 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 189824
  | _ => True

theorem oppositePart3_0185 : oppositePartValid3_0185 oppositeHistoryChunk0185 := by
  unfold oppositePartValid3_0185 oppositeHistoryChunk0185
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
