import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0072

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 74240
  | _ => True

theorem oppositePart4_0072 : oppositePartValid4_0072 oppositeHistoryChunk0072 := by
  unfold oppositePartValid4_0072 oppositeHistoryChunk0072
  decide

def oppositePartValid5_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 74368
  | _ => True

theorem oppositePart5_0072 : oppositePartValid5_0072 oppositeHistoryChunk0072 := by
  unfold oppositePartValid5_0072 oppositeHistoryChunk0072
  decide

def oppositePartValid6_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 74496
  | _ => True

theorem oppositePart6_0072 : oppositePartValid6_0072 oppositeHistoryChunk0072 := by
  unfold oppositePartValid6_0072 oppositeHistoryChunk0072
  decide

def oppositePartValid7_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 74624
  | _ => True

theorem oppositePart7_0072 : oppositePartValid7_0072 oppositeHistoryChunk0072 := by
  unfold oppositePartValid7_0072 oppositeHistoryChunk0072
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
