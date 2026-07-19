import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0176

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0176 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 180736
  | _ => True

theorem oppositePart4_0176 : oppositePartValid4_0176 oppositeHistoryChunk0176 := by
  unfold oppositePartValid4_0176 oppositeHistoryChunk0176
  decide

def oppositePartValid5_0176 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 180864
  | _ => True

theorem oppositePart5_0176 : oppositePartValid5_0176 oppositeHistoryChunk0176 := by
  unfold oppositePartValid5_0176 oppositeHistoryChunk0176
  decide

def oppositePartValid6_0176 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 180992
  | _ => True

theorem oppositePart6_0176 : oppositePartValid6_0176 oppositeHistoryChunk0176 := by
  unfold oppositePartValid6_0176 oppositeHistoryChunk0176
  decide

def oppositePartValid7_0176 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 181120
  | _ => True

theorem oppositePart7_0176 : oppositePartValid7_0176 oppositeHistoryChunk0176 := by
  unfold oppositePartValid7_0176 oppositeHistoryChunk0176
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
