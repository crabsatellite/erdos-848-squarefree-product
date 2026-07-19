import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0084

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0084 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 86528
  | _ => True

theorem oppositePart4_0084 : oppositePartValid4_0084 oppositeHistoryChunk0084 := by
  unfold oppositePartValid4_0084 oppositeHistoryChunk0084
  decide

def oppositePartValid5_0084 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 86656
  | _ => True

theorem oppositePart5_0084 : oppositePartValid5_0084 oppositeHistoryChunk0084 := by
  unfold oppositePartValid5_0084 oppositeHistoryChunk0084
  decide

def oppositePartValid6_0084 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 86784
  | _ => True

theorem oppositePart6_0084 : oppositePartValid6_0084 oppositeHistoryChunk0084 := by
  unfold oppositePartValid6_0084 oppositeHistoryChunk0084
  decide

def oppositePartValid7_0084 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 86912
  | _ => True

theorem oppositePart7_0084 : oppositePartValid7_0084 oppositeHistoryChunk0084 := by
  unfold oppositePartValid7_0084 oppositeHistoryChunk0084
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
