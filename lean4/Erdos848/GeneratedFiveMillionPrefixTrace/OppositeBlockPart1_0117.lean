import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0117

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0117 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 120320
  | _ => True

theorem oppositePart4_0117 : oppositePartValid4_0117 oppositeHistoryChunk0117 := by
  unfold oppositePartValid4_0117 oppositeHistoryChunk0117
  decide

def oppositePartValid5_0117 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 120448
  | _ => True

theorem oppositePart5_0117 : oppositePartValid5_0117 oppositeHistoryChunk0117 := by
  unfold oppositePartValid5_0117 oppositeHistoryChunk0117
  decide

def oppositePartValid6_0117 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 120576
  | _ => True

theorem oppositePart6_0117 : oppositePartValid6_0117 oppositeHistoryChunk0117 := by
  unfold oppositePartValid6_0117 oppositeHistoryChunk0117
  decide

def oppositePartValid7_0117 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 120704
  | _ => True

theorem oppositePart7_0117 : oppositePartValid7_0117 oppositeHistoryChunk0117 := by
  unfold oppositePartValid7_0117 oppositeHistoryChunk0117
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
