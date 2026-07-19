import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0121

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0121 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 124416
  | _ => True

theorem oppositePart4_0121 : oppositePartValid4_0121 oppositeHistoryChunk0121 := by
  unfold oppositePartValid4_0121 oppositeHistoryChunk0121
  decide

def oppositePartValid5_0121 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 124544
  | _ => True

theorem oppositePart5_0121 : oppositePartValid5_0121 oppositeHistoryChunk0121 := by
  unfold oppositePartValid5_0121 oppositeHistoryChunk0121
  decide

def oppositePartValid6_0121 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 124672
  | _ => True

theorem oppositePart6_0121 : oppositePartValid6_0121 oppositeHistoryChunk0121 := by
  unfold oppositePartValid6_0121 oppositeHistoryChunk0121
  decide

def oppositePartValid7_0121 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 124800
  | _ => True

theorem oppositePart7_0121 : oppositePartValid7_0121 oppositeHistoryChunk0121 := by
  unfold oppositePartValid7_0121 oppositeHistoryChunk0121
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
