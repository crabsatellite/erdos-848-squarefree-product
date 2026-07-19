import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0175

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0175 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 179200
  | _ => True

theorem oppositePart0_0175 : oppositePartValid0_0175 oppositeHistoryChunk0175 := by
  unfold oppositePartValid0_0175 oppositeHistoryChunk0175
  decide

def oppositePartValid1_0175 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 179328
  | _ => True

theorem oppositePart1_0175 : oppositePartValid1_0175 oppositeHistoryChunk0175 := by
  unfold oppositePartValid1_0175 oppositeHistoryChunk0175
  decide

def oppositePartValid2_0175 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 179456
  | _ => True

theorem oppositePart2_0175 : oppositePartValid2_0175 oppositeHistoryChunk0175 := by
  unfold oppositePartValid2_0175 oppositeHistoryChunk0175
  decide

def oppositePartValid3_0175 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 179584
  | _ => True

theorem oppositePart3_0175 : oppositePartValid3_0175 oppositeHistoryChunk0175 := by
  unfold oppositePartValid3_0175 oppositeHistoryChunk0175
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
