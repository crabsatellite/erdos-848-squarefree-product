import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0127

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0127 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 130560
  | _ => True

theorem oppositePart4_0127 : oppositePartValid4_0127 oppositeHistoryChunk0127 := by
  unfold oppositePartValid4_0127 oppositeHistoryChunk0127
  decide

def oppositePartValid5_0127 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 130688
  | _ => True

theorem oppositePart5_0127 : oppositePartValid5_0127 oppositeHistoryChunk0127 := by
  unfold oppositePartValid5_0127 oppositeHistoryChunk0127
  decide

def oppositePartValid6_0127 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 130816
  | _ => True

theorem oppositePart6_0127 : oppositePartValid6_0127 oppositeHistoryChunk0127 := by
  unfold oppositePartValid6_0127 oppositeHistoryChunk0127
  decide

def oppositePartValid7_0127 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 130944
  | _ => True

theorem oppositePart7_0127 : oppositePartValid7_0127 oppositeHistoryChunk0127 := by
  unfold oppositePartValid7_0127 oppositeHistoryChunk0127
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
