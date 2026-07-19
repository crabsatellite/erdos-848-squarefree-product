import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0131

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0131 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 134656
  | _ => True

theorem oppositePart4_0131 : oppositePartValid4_0131 oppositeHistoryChunk0131 := by
  unfold oppositePartValid4_0131 oppositeHistoryChunk0131
  decide

def oppositePartValid5_0131 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 134784
  | _ => True

theorem oppositePart5_0131 : oppositePartValid5_0131 oppositeHistoryChunk0131 := by
  unfold oppositePartValid5_0131 oppositeHistoryChunk0131
  decide

def oppositePartValid6_0131 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 134912
  | _ => True

theorem oppositePart6_0131 : oppositePartValid6_0131 oppositeHistoryChunk0131 := by
  unfold oppositePartValid6_0131 oppositeHistoryChunk0131
  decide

def oppositePartValid7_0131 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 135040
  | _ => True

theorem oppositePart7_0131 : oppositePartValid7_0131 oppositeHistoryChunk0131 := by
  unfold oppositePartValid7_0131 oppositeHistoryChunk0131
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
