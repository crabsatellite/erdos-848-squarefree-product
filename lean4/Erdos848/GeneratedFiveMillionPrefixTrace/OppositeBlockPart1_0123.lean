import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0123

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0123 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 126464
  | _ => True

theorem oppositePart4_0123 : oppositePartValid4_0123 oppositeHistoryChunk0123 := by
  unfold oppositePartValid4_0123 oppositeHistoryChunk0123
  decide

def oppositePartValid5_0123 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 126592
  | _ => True

theorem oppositePart5_0123 : oppositePartValid5_0123 oppositeHistoryChunk0123 := by
  unfold oppositePartValid5_0123 oppositeHistoryChunk0123
  decide

def oppositePartValid6_0123 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 126720
  | _ => True

theorem oppositePart6_0123 : oppositePartValid6_0123 oppositeHistoryChunk0123 := by
  unfold oppositePartValid6_0123 oppositeHistoryChunk0123
  decide

def oppositePartValid7_0123 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 126848
  | _ => True

theorem oppositePart7_0123 : oppositePartValid7_0123 oppositeHistoryChunk0123 := by
  unfold oppositePartValid7_0123 oppositeHistoryChunk0123
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
