import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0143

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0143 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 146944
  | _ => True

theorem oppositePart4_0143 : oppositePartValid4_0143 oppositeHistoryChunk0143 := by
  unfold oppositePartValid4_0143 oppositeHistoryChunk0143
  decide

def oppositePartValid5_0143 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 147072
  | _ => True

theorem oppositePart5_0143 : oppositePartValid5_0143 oppositeHistoryChunk0143 := by
  unfold oppositePartValid5_0143 oppositeHistoryChunk0143
  decide

def oppositePartValid6_0143 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 147200
  | _ => True

theorem oppositePart6_0143 : oppositePartValid6_0143 oppositeHistoryChunk0143 := by
  unfold oppositePartValid6_0143 oppositeHistoryChunk0143
  decide

def oppositePartValid7_0143 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 147328
  | _ => True

theorem oppositePart7_0143 : oppositePartValid7_0143 oppositeHistoryChunk0143 := by
  unfold oppositePartValid7_0143 oppositeHistoryChunk0143
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
