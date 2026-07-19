import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0119

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0119 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 122368
  | _ => True

theorem oppositePart4_0119 : oppositePartValid4_0119 oppositeHistoryChunk0119 := by
  unfold oppositePartValid4_0119 oppositeHistoryChunk0119
  decide

def oppositePartValid5_0119 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 122496
  | _ => True

theorem oppositePart5_0119 : oppositePartValid5_0119 oppositeHistoryChunk0119 := by
  unfold oppositePartValid5_0119 oppositeHistoryChunk0119
  decide

def oppositePartValid6_0119 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 122624
  | _ => True

theorem oppositePart6_0119 : oppositePartValid6_0119 oppositeHistoryChunk0119 := by
  unfold oppositePartValid6_0119 oppositeHistoryChunk0119
  decide

def oppositePartValid7_0119 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 122752
  | _ => True

theorem oppositePart7_0119 : oppositePartValid7_0119 oppositeHistoryChunk0119 := by
  unfold oppositePartValid7_0119 oppositeHistoryChunk0119
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
