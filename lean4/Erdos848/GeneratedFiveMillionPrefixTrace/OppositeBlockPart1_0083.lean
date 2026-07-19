import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0083

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0083 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 85504
  | _ => True

theorem oppositePart4_0083 : oppositePartValid4_0083 oppositeHistoryChunk0083 := by
  unfold oppositePartValid4_0083 oppositeHistoryChunk0083
  decide

def oppositePartValid5_0083 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 85632
  | _ => True

theorem oppositePart5_0083 : oppositePartValid5_0083 oppositeHistoryChunk0083 := by
  unfold oppositePartValid5_0083 oppositeHistoryChunk0083
  decide

def oppositePartValid6_0083 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 85760
  | _ => True

theorem oppositePart6_0083 : oppositePartValid6_0083 oppositeHistoryChunk0083 := by
  unfold oppositePartValid6_0083 oppositeHistoryChunk0083
  decide

def oppositePartValid7_0083 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 85888
  | _ => True

theorem oppositePart7_0083 : oppositePartValid7_0083 oppositeHistoryChunk0083 := by
  unfold oppositePartValid7_0083 oppositeHistoryChunk0083
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
