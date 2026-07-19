import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0051

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0051 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 52736
  | _ => True

theorem oppositePart4_0051 : oppositePartValid4_0051 oppositeHistoryChunk0051 := by
  unfold oppositePartValid4_0051 oppositeHistoryChunk0051
  decide

def oppositePartValid5_0051 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 52864
  | _ => True

theorem oppositePart5_0051 : oppositePartValid5_0051 oppositeHistoryChunk0051 := by
  unfold oppositePartValid5_0051 oppositeHistoryChunk0051
  decide

def oppositePartValid6_0051 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 52992
  | _ => True

theorem oppositePart6_0051 : oppositePartValid6_0051 oppositeHistoryChunk0051 := by
  unfold oppositePartValid6_0051 oppositeHistoryChunk0051
  decide

def oppositePartValid7_0051 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 53120
  | _ => True

theorem oppositePart7_0051 : oppositePartValid7_0051 oppositeHistoryChunk0051 := by
  unfold oppositePartValid7_0051 oppositeHistoryChunk0051
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
