import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0178

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0178 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 182272
  | _ => True

theorem oppositePart0_0178 : oppositePartValid0_0178 oppositeHistoryChunk0178 := by
  unfold oppositePartValid0_0178 oppositeHistoryChunk0178
  decide

def oppositePartValid1_0178 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 182400
  | _ => True

theorem oppositePart1_0178 : oppositePartValid1_0178 oppositeHistoryChunk0178 := by
  unfold oppositePartValid1_0178 oppositeHistoryChunk0178
  decide

def oppositePartValid2_0178 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 182528
  | _ => True

theorem oppositePart2_0178 : oppositePartValid2_0178 oppositeHistoryChunk0178 := by
  unfold oppositePartValid2_0178 oppositeHistoryChunk0178
  decide

def oppositePartValid3_0178 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 182656
  | _ => True

theorem oppositePart3_0178 : oppositePartValid3_0178 oppositeHistoryChunk0178 := by
  unfold oppositePartValid3_0178 oppositeHistoryChunk0178
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
