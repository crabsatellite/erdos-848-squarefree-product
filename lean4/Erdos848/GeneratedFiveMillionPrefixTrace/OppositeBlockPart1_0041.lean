import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0041

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0041 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 42496
  | _ => True

theorem oppositePart4_0041 : oppositePartValid4_0041 oppositeHistoryChunk0041 := by
  unfold oppositePartValid4_0041 oppositeHistoryChunk0041
  decide

def oppositePartValid5_0041 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 42624
  | _ => True

theorem oppositePart5_0041 : oppositePartValid5_0041 oppositeHistoryChunk0041 := by
  unfold oppositePartValid5_0041 oppositeHistoryChunk0041
  decide

def oppositePartValid6_0041 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 42752
  | _ => True

theorem oppositePart6_0041 : oppositePartValid6_0041 oppositeHistoryChunk0041 := by
  unfold oppositePartValid6_0041 oppositeHistoryChunk0041
  decide

def oppositePartValid7_0041 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 42880
  | _ => True

theorem oppositePart7_0041 : oppositePartValid7_0041 oppositeHistoryChunk0041 := by
  unfold oppositePartValid7_0041 oppositeHistoryChunk0041
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
