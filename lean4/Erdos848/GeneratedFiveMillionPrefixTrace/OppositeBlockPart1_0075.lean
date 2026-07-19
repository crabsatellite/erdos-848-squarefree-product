import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0075

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0075 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 77312
  | _ => True

theorem oppositePart4_0075 : oppositePartValid4_0075 oppositeHistoryChunk0075 := by
  unfold oppositePartValid4_0075 oppositeHistoryChunk0075
  decide

def oppositePartValid5_0075 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 77440
  | _ => True

theorem oppositePart5_0075 : oppositePartValid5_0075 oppositeHistoryChunk0075 := by
  unfold oppositePartValid5_0075 oppositeHistoryChunk0075
  decide

def oppositePartValid6_0075 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 77568
  | _ => True

theorem oppositePart6_0075 : oppositePartValid6_0075 oppositeHistoryChunk0075 := by
  unfold oppositePartValid6_0075 oppositeHistoryChunk0075
  decide

def oppositePartValid7_0075 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 77696
  | _ => True

theorem oppositePart7_0075 : oppositePartValid7_0075 oppositeHistoryChunk0075 := by
  unfold oppositePartValid7_0075 oppositeHistoryChunk0075
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
