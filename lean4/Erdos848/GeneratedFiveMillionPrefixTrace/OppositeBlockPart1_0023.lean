import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0023

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0023 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 24064
  | _ => True

theorem oppositePart4_0023 : oppositePartValid4_0023 oppositeHistoryChunk0023 := by
  unfold oppositePartValid4_0023 oppositeHistoryChunk0023
  decide

def oppositePartValid5_0023 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 24192
  | _ => True

theorem oppositePart5_0023 : oppositePartValid5_0023 oppositeHistoryChunk0023 := by
  unfold oppositePartValid5_0023 oppositeHistoryChunk0023
  decide

def oppositePartValid6_0023 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 24320
  | _ => True

theorem oppositePart6_0023 : oppositePartValid6_0023 oppositeHistoryChunk0023 := by
  unfold oppositePartValid6_0023 oppositeHistoryChunk0023
  decide

def oppositePartValid7_0023 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 24448
  | _ => True

theorem oppositePart7_0023 : oppositePartValid7_0023 oppositeHistoryChunk0023 := by
  unfold oppositePartValid7_0023 oppositeHistoryChunk0023
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
