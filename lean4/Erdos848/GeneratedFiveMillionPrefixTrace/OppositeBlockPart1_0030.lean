import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0030

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0030 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 31232
  | _ => True

theorem oppositePart4_0030 : oppositePartValid4_0030 oppositeHistoryChunk0030 := by
  unfold oppositePartValid4_0030 oppositeHistoryChunk0030
  decide

def oppositePartValid5_0030 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 31360
  | _ => True

theorem oppositePart5_0030 : oppositePartValid5_0030 oppositeHistoryChunk0030 := by
  unfold oppositePartValid5_0030 oppositeHistoryChunk0030
  decide

def oppositePartValid6_0030 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 31488
  | _ => True

theorem oppositePart6_0030 : oppositePartValid6_0030 oppositeHistoryChunk0030 := by
  unfold oppositePartValid6_0030 oppositeHistoryChunk0030
  decide

def oppositePartValid7_0030 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 31616
  | _ => True

theorem oppositePart7_0030 : oppositePartValid7_0030 oppositeHistoryChunk0030 := by
  unfold oppositePartValid7_0030 oppositeHistoryChunk0030
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
