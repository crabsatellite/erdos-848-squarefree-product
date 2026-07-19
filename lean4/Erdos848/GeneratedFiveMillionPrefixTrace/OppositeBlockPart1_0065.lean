import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0065

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0065 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 67072
  | _ => True

theorem oppositePart4_0065 : oppositePartValid4_0065 oppositeHistoryChunk0065 := by
  unfold oppositePartValid4_0065 oppositeHistoryChunk0065
  decide

def oppositePartValid5_0065 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 67200
  | _ => True

theorem oppositePart5_0065 : oppositePartValid5_0065 oppositeHistoryChunk0065 := by
  unfold oppositePartValid5_0065 oppositeHistoryChunk0065
  decide

def oppositePartValid6_0065 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 67328
  | _ => True

theorem oppositePart6_0065 : oppositePartValid6_0065 oppositeHistoryChunk0065 := by
  unfold oppositePartValid6_0065 oppositeHistoryChunk0065
  decide

def oppositePartValid7_0065 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 67456
  | _ => True

theorem oppositePart7_0065 : oppositePartValid7_0065 oppositeHistoryChunk0065 := by
  unfold oppositePartValid7_0065 oppositeHistoryChunk0065
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
