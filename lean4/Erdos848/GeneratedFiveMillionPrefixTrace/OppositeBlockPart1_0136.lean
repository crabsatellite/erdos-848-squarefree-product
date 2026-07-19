import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0136

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0136 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 139776
  | _ => True

theorem oppositePart4_0136 : oppositePartValid4_0136 oppositeHistoryChunk0136 := by
  unfold oppositePartValid4_0136 oppositeHistoryChunk0136
  decide

def oppositePartValid5_0136 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 139904
  | _ => True

theorem oppositePart5_0136 : oppositePartValid5_0136 oppositeHistoryChunk0136 := by
  unfold oppositePartValid5_0136 oppositeHistoryChunk0136
  decide

def oppositePartValid6_0136 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 140032
  | _ => True

theorem oppositePart6_0136 : oppositePartValid6_0136 oppositeHistoryChunk0136 := by
  unfold oppositePartValid6_0136 oppositeHistoryChunk0136
  decide

def oppositePartValid7_0136 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 140160
  | _ => True

theorem oppositePart7_0136 : oppositePartValid7_0136 oppositeHistoryChunk0136 := by
  unfold oppositePartValid7_0136 oppositeHistoryChunk0136
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
