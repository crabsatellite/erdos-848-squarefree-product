import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0130

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0130 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 133632
  | _ => True

theorem oppositePart4_0130 : oppositePartValid4_0130 oppositeHistoryChunk0130 := by
  unfold oppositePartValid4_0130 oppositeHistoryChunk0130
  decide

def oppositePartValid5_0130 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 133760
  | _ => True

theorem oppositePart5_0130 : oppositePartValid5_0130 oppositeHistoryChunk0130 := by
  unfold oppositePartValid5_0130 oppositeHistoryChunk0130
  decide

def oppositePartValid6_0130 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 133888
  | _ => True

theorem oppositePart6_0130 : oppositePartValid6_0130 oppositeHistoryChunk0130 := by
  unfold oppositePartValid6_0130 oppositeHistoryChunk0130
  decide

def oppositePartValid7_0130 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 134016
  | _ => True

theorem oppositePart7_0130 : oppositePartValid7_0130 oppositeHistoryChunk0130 := by
  unfold oppositePartValid7_0130 oppositeHistoryChunk0130
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
