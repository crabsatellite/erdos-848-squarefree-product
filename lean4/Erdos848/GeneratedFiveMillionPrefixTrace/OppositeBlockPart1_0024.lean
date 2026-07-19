import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0024

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0024 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 25088
  | _ => True

theorem oppositePart4_0024 : oppositePartValid4_0024 oppositeHistoryChunk0024 := by
  unfold oppositePartValid4_0024 oppositeHistoryChunk0024
  decide

def oppositePartValid5_0024 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 25216
  | _ => True

theorem oppositePart5_0024 : oppositePartValid5_0024 oppositeHistoryChunk0024 := by
  unfold oppositePartValid5_0024 oppositeHistoryChunk0024
  decide

def oppositePartValid6_0024 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 25344
  | _ => True

theorem oppositePart6_0024 : oppositePartValid6_0024 oppositeHistoryChunk0024 := by
  unfold oppositePartValid6_0024 oppositeHistoryChunk0024
  decide

def oppositePartValid7_0024 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 25472
  | _ => True

theorem oppositePart7_0024 : oppositePartValid7_0024 oppositeHistoryChunk0024 := by
  unfold oppositePartValid7_0024 oppositeHistoryChunk0024
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
