import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0192

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0192 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 197120
  | _ => True

theorem oppositePart4_0192 : oppositePartValid4_0192 oppositeHistoryChunk0192 := by
  unfold oppositePartValid4_0192 oppositeHistoryChunk0192
  decide

def oppositePartValid5_0192 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 197248
  | _ => True

theorem oppositePart5_0192 : oppositePartValid5_0192 oppositeHistoryChunk0192 := by
  unfold oppositePartValid5_0192 oppositeHistoryChunk0192
  decide

def oppositePartValid6_0192 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 197376
  | _ => True

theorem oppositePart6_0192 : oppositePartValid6_0192 oppositeHistoryChunk0192 := by
  unfold oppositePartValid6_0192 oppositeHistoryChunk0192
  decide

def oppositePartValid7_0192 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 197504
  | _ => True

theorem oppositePart7_0192 : oppositePartValid7_0192 oppositeHistoryChunk0192 := by
  unfold oppositePartValid7_0192 oppositeHistoryChunk0192
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
