import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0101

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0101 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 103936
  | _ => True

theorem oppositePart4_0101 : oppositePartValid4_0101 oppositeHistoryChunk0101 := by
  unfold oppositePartValid4_0101 oppositeHistoryChunk0101
  decide

def oppositePartValid5_0101 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 104064
  | _ => True

theorem oppositePart5_0101 : oppositePartValid5_0101 oppositeHistoryChunk0101 := by
  unfold oppositePartValid5_0101 oppositeHistoryChunk0101
  decide

def oppositePartValid6_0101 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 104192
  | _ => True

theorem oppositePart6_0101 : oppositePartValid6_0101 oppositeHistoryChunk0101 := by
  unfold oppositePartValid6_0101 oppositeHistoryChunk0101
  decide

def oppositePartValid7_0101 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 104320
  | _ => True

theorem oppositePart7_0101 : oppositePartValid7_0101 oppositeHistoryChunk0101 := by
  unfold oppositePartValid7_0101 oppositeHistoryChunk0101
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
