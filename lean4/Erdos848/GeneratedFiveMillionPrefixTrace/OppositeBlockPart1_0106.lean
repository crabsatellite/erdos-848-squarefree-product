import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0106

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0106 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 109056
  | _ => True

theorem oppositePart4_0106 : oppositePartValid4_0106 oppositeHistoryChunk0106 := by
  unfold oppositePartValid4_0106 oppositeHistoryChunk0106
  decide

def oppositePartValid5_0106 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 109184
  | _ => True

theorem oppositePart5_0106 : oppositePartValid5_0106 oppositeHistoryChunk0106 := by
  unfold oppositePartValid5_0106 oppositeHistoryChunk0106
  decide

def oppositePartValid6_0106 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 109312
  | _ => True

theorem oppositePart6_0106 : oppositePartValid6_0106 oppositeHistoryChunk0106 := by
  unfold oppositePartValid6_0106 oppositeHistoryChunk0106
  decide

def oppositePartValid7_0106 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 109440
  | _ => True

theorem oppositePart7_0106 : oppositePartValid7_0106 oppositeHistoryChunk0106 := by
  unfold oppositePartValid7_0106 oppositeHistoryChunk0106
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
