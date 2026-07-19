import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0154

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0154 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 158208
  | _ => True

theorem oppositePart4_0154 : oppositePartValid4_0154 oppositeHistoryChunk0154 := by
  unfold oppositePartValid4_0154 oppositeHistoryChunk0154
  decide

def oppositePartValid5_0154 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 158336
  | _ => True

theorem oppositePart5_0154 : oppositePartValid5_0154 oppositeHistoryChunk0154 := by
  unfold oppositePartValid5_0154 oppositeHistoryChunk0154
  decide

def oppositePartValid6_0154 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 158464
  | _ => True

theorem oppositePart6_0154 : oppositePartValid6_0154 oppositeHistoryChunk0154 := by
  unfold oppositePartValid6_0154 oppositeHistoryChunk0154
  decide

def oppositePartValid7_0154 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 158592
  | _ => True

theorem oppositePart7_0154 : oppositePartValid7_0154 oppositeHistoryChunk0154 := by
  unfold oppositePartValid7_0154 oppositeHistoryChunk0154
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
