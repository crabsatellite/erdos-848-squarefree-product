import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0185

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0185 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 189952
  | _ => True

theorem oppositePart4_0185 : oppositePartValid4_0185 oppositeHistoryChunk0185 := by
  unfold oppositePartValid4_0185 oppositeHistoryChunk0185
  decide

def oppositePartValid5_0185 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 190080
  | _ => True

theorem oppositePart5_0185 : oppositePartValid5_0185 oppositeHistoryChunk0185 := by
  unfold oppositePartValid5_0185 oppositeHistoryChunk0185
  decide

def oppositePartValid6_0185 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 190208
  | _ => True

theorem oppositePart6_0185 : oppositePartValid6_0185 oppositeHistoryChunk0185 := by
  unfold oppositePartValid6_0185 oppositeHistoryChunk0185
  decide

def oppositePartValid7_0185 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 190336
  | _ => True

theorem oppositePart7_0185 : oppositePartValid7_0185 oppositeHistoryChunk0185 := by
  unfold oppositePartValid7_0185 oppositeHistoryChunk0185
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
