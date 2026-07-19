import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0135

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0135 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 138752
  | _ => True

theorem oppositePart4_0135 : oppositePartValid4_0135 oppositeHistoryChunk0135 := by
  unfold oppositePartValid4_0135 oppositeHistoryChunk0135
  decide

def oppositePartValid5_0135 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 138880
  | _ => True

theorem oppositePart5_0135 : oppositePartValid5_0135 oppositeHistoryChunk0135 := by
  unfold oppositePartValid5_0135 oppositeHistoryChunk0135
  decide

def oppositePartValid6_0135 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 139008
  | _ => True

theorem oppositePart6_0135 : oppositePartValid6_0135 oppositeHistoryChunk0135 := by
  unfold oppositePartValid6_0135 oppositeHistoryChunk0135
  decide

def oppositePartValid7_0135 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 139136
  | _ => True

theorem oppositePart7_0135 : oppositePartValid7_0135 oppositeHistoryChunk0135 := by
  unfold oppositePartValid7_0135 oppositeHistoryChunk0135
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
