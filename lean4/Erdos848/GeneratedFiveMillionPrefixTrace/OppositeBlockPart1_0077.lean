import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0077

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0077 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 79360
  | _ => True

theorem oppositePart4_0077 : oppositePartValid4_0077 oppositeHistoryChunk0077 := by
  unfold oppositePartValid4_0077 oppositeHistoryChunk0077
  decide

def oppositePartValid5_0077 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 79488
  | _ => True

theorem oppositePart5_0077 : oppositePartValid5_0077 oppositeHistoryChunk0077 := by
  unfold oppositePartValid5_0077 oppositeHistoryChunk0077
  decide

def oppositePartValid6_0077 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 79616
  | _ => True

theorem oppositePart6_0077 : oppositePartValid6_0077 oppositeHistoryChunk0077 := by
  unfold oppositePartValid6_0077 oppositeHistoryChunk0077
  decide

def oppositePartValid7_0077 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 79744
  | _ => True

theorem oppositePart7_0077 : oppositePartValid7_0077 oppositeHistoryChunk0077 := by
  unfold oppositePartValid7_0077 oppositeHistoryChunk0077
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
