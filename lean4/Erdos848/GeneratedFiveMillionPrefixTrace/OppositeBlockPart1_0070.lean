import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0070

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0070 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 72192
  | _ => True

theorem oppositePart4_0070 : oppositePartValid4_0070 oppositeHistoryChunk0070 := by
  unfold oppositePartValid4_0070 oppositeHistoryChunk0070
  decide

def oppositePartValid5_0070 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 72320
  | _ => True

theorem oppositePart5_0070 : oppositePartValid5_0070 oppositeHistoryChunk0070 := by
  unfold oppositePartValid5_0070 oppositeHistoryChunk0070
  decide

def oppositePartValid6_0070 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 72448
  | _ => True

theorem oppositePart6_0070 : oppositePartValid6_0070 oppositeHistoryChunk0070 := by
  unfold oppositePartValid6_0070 oppositeHistoryChunk0070
  decide

def oppositePartValid7_0070 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 72576
  | _ => True

theorem oppositePart7_0070 : oppositePartValid7_0070 oppositeHistoryChunk0070 := by
  unfold oppositePartValid7_0070 oppositeHistoryChunk0070
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
