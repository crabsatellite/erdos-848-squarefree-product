import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0194

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0194 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 199168
  | _ => True

theorem oppositePart4_0194 : oppositePartValid4_0194 oppositeHistoryChunk0194 := by
  unfold oppositePartValid4_0194 oppositeHistoryChunk0194
  decide

def oppositePartValid5_0194 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 199296
  | _ => True

theorem oppositePart5_0194 : oppositePartValid5_0194 oppositeHistoryChunk0194 := by
  unfold oppositePartValid5_0194 oppositeHistoryChunk0194
  decide

def oppositePartValid6_0194 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 199424
  | _ => True

theorem oppositePart6_0194 : oppositePartValid6_0194 oppositeHistoryChunk0194 := by
  unfold oppositePartValid6_0194 oppositeHistoryChunk0194
  decide

def oppositePartValid7_0194 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 199552
  | _ => True

theorem oppositePart7_0194 : oppositePartValid7_0194 oppositeHistoryChunk0194 := by
  unfold oppositePartValid7_0194 oppositeHistoryChunk0194
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
