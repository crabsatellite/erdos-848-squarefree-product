import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0097

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0097 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 99840
  | _ => True

theorem oppositePart4_0097 : oppositePartValid4_0097 oppositeHistoryChunk0097 := by
  unfold oppositePartValid4_0097 oppositeHistoryChunk0097
  decide

def oppositePartValid5_0097 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 99968
  | _ => True

theorem oppositePart5_0097 : oppositePartValid5_0097 oppositeHistoryChunk0097 := by
  unfold oppositePartValid5_0097 oppositeHistoryChunk0097
  decide

def oppositePartValid6_0097 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 100096
  | _ => True

theorem oppositePart6_0097 : oppositePartValid6_0097 oppositeHistoryChunk0097 := by
  unfold oppositePartValid6_0097 oppositeHistoryChunk0097
  decide

def oppositePartValid7_0097 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 100224
  | _ => True

theorem oppositePart7_0097 : oppositePartValid7_0097 oppositeHistoryChunk0097 := by
  unfold oppositePartValid7_0097 oppositeHistoryChunk0097
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
