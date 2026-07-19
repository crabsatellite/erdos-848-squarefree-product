import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0022

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0022 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 23040
  | _ => True

theorem oppositePart4_0022 : oppositePartValid4_0022 oppositeHistoryChunk0022 := by
  unfold oppositePartValid4_0022 oppositeHistoryChunk0022
  decide

def oppositePartValid5_0022 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 23168
  | _ => True

theorem oppositePart5_0022 : oppositePartValid5_0022 oppositeHistoryChunk0022 := by
  unfold oppositePartValid5_0022 oppositeHistoryChunk0022
  decide

def oppositePartValid6_0022 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 23296
  | _ => True

theorem oppositePart6_0022 : oppositePartValid6_0022 oppositeHistoryChunk0022 := by
  unfold oppositePartValid6_0022 oppositeHistoryChunk0022
  decide

def oppositePartValid7_0022 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 23424
  | _ => True

theorem oppositePart7_0022 : oppositePartValid7_0022 oppositeHistoryChunk0022 := by
  unfold oppositePartValid7_0022 oppositeHistoryChunk0022
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
