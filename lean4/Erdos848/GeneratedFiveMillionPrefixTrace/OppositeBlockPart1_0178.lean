import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0178

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0178 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 182784
  | _ => True

theorem oppositePart4_0178 : oppositePartValid4_0178 oppositeHistoryChunk0178 := by
  unfold oppositePartValid4_0178 oppositeHistoryChunk0178
  decide

def oppositePartValid5_0178 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 182912
  | _ => True

theorem oppositePart5_0178 : oppositePartValid5_0178 oppositeHistoryChunk0178 := by
  unfold oppositePartValid5_0178 oppositeHistoryChunk0178
  decide

def oppositePartValid6_0178 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 183040
  | _ => True

theorem oppositePart6_0178 : oppositePartValid6_0178 oppositeHistoryChunk0178 := by
  unfold oppositePartValid6_0178 oppositeHistoryChunk0178
  decide

def oppositePartValid7_0178 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 183168
  | _ => True

theorem oppositePart7_0178 : oppositePartValid7_0178 oppositeHistoryChunk0178 := by
  unfold oppositePartValid7_0178 oppositeHistoryChunk0178
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
