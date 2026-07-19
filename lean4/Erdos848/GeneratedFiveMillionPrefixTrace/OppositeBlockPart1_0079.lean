import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0079

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0079 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 81408
  | _ => True

theorem oppositePart4_0079 : oppositePartValid4_0079 oppositeHistoryChunk0079 := by
  unfold oppositePartValid4_0079 oppositeHistoryChunk0079
  decide

def oppositePartValid5_0079 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 81536
  | _ => True

theorem oppositePart5_0079 : oppositePartValid5_0079 oppositeHistoryChunk0079 := by
  unfold oppositePartValid5_0079 oppositeHistoryChunk0079
  decide

def oppositePartValid6_0079 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 81664
  | _ => True

theorem oppositePart6_0079 : oppositePartValid6_0079 oppositeHistoryChunk0079 := by
  unfold oppositePartValid6_0079 oppositeHistoryChunk0079
  decide

def oppositePartValid7_0079 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 81792
  | _ => True

theorem oppositePart7_0079 : oppositePartValid7_0079 oppositeHistoryChunk0079 := by
  unfold oppositePartValid7_0079 oppositeHistoryChunk0079
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
