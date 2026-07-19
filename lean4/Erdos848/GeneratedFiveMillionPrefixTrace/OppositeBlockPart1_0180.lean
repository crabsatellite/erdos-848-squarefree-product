import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0180

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0180 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 184832
  | _ => True

theorem oppositePart4_0180 : oppositePartValid4_0180 oppositeHistoryChunk0180 := by
  unfold oppositePartValid4_0180 oppositeHistoryChunk0180
  decide

def oppositePartValid5_0180 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 184960
  | _ => True

theorem oppositePart5_0180 : oppositePartValid5_0180 oppositeHistoryChunk0180 := by
  unfold oppositePartValid5_0180 oppositeHistoryChunk0180
  decide

def oppositePartValid6_0180 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 185088
  | _ => True

theorem oppositePart6_0180 : oppositePartValid6_0180 oppositeHistoryChunk0180 := by
  unfold oppositePartValid6_0180 oppositeHistoryChunk0180
  decide

def oppositePartValid7_0180 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 185216
  | _ => True

theorem oppositePart7_0180 : oppositePartValid7_0180 oppositeHistoryChunk0180 := by
  unfold oppositePartValid7_0180 oppositeHistoryChunk0180
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
