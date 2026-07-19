import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0068

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0068 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 70144
  | _ => True

theorem oppositePart4_0068 : oppositePartValid4_0068 oppositeHistoryChunk0068 := by
  unfold oppositePartValid4_0068 oppositeHistoryChunk0068
  decide

def oppositePartValid5_0068 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 70272
  | _ => True

theorem oppositePart5_0068 : oppositePartValid5_0068 oppositeHistoryChunk0068 := by
  unfold oppositePartValid5_0068 oppositeHistoryChunk0068
  decide

def oppositePartValid6_0068 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 70400
  | _ => True

theorem oppositePart6_0068 : oppositePartValid6_0068 oppositeHistoryChunk0068 := by
  unfold oppositePartValid6_0068 oppositeHistoryChunk0068
  decide

def oppositePartValid7_0068 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 70528
  | _ => True

theorem oppositePart7_0068 : oppositePartValid7_0068 oppositeHistoryChunk0068 := by
  unfold oppositePartValid7_0068 oppositeHistoryChunk0068
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
