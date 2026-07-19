import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0029

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0029 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 30208
  | _ => True

theorem oppositePart4_0029 : oppositePartValid4_0029 oppositeHistoryChunk0029 := by
  unfold oppositePartValid4_0029 oppositeHistoryChunk0029
  decide

def oppositePartValid5_0029 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 30336
  | _ => True

theorem oppositePart5_0029 : oppositePartValid5_0029 oppositeHistoryChunk0029 := by
  unfold oppositePartValid5_0029 oppositeHistoryChunk0029
  decide

def oppositePartValid6_0029 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 30464
  | _ => True

theorem oppositePart6_0029 : oppositePartValid6_0029 oppositeHistoryChunk0029 := by
  unfold oppositePartValid6_0029 oppositeHistoryChunk0029
  decide

def oppositePartValid7_0029 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 30592
  | _ => True

theorem oppositePart7_0029 : oppositePartValid7_0029 oppositeHistoryChunk0029 := by
  unfold oppositePartValid7_0029 oppositeHistoryChunk0029
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
