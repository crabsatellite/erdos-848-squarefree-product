import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0104

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0104 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 107008
  | _ => True

theorem oppositePart4_0104 : oppositePartValid4_0104 oppositeHistoryChunk0104 := by
  unfold oppositePartValid4_0104 oppositeHistoryChunk0104
  decide

def oppositePartValid5_0104 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 107136
  | _ => True

theorem oppositePart5_0104 : oppositePartValid5_0104 oppositeHistoryChunk0104 := by
  unfold oppositePartValid5_0104 oppositeHistoryChunk0104
  decide

def oppositePartValid6_0104 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 107264
  | _ => True

theorem oppositePart6_0104 : oppositePartValid6_0104 oppositeHistoryChunk0104 := by
  unfold oppositePartValid6_0104 oppositeHistoryChunk0104
  decide

def oppositePartValid7_0104 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 107392
  | _ => True

theorem oppositePart7_0104 : oppositePartValid7_0104 oppositeHistoryChunk0104 := by
  unfold oppositePartValid7_0104 oppositeHistoryChunk0104
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
