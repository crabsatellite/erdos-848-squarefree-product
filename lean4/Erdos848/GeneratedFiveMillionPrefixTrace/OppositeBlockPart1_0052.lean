import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0052

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0052 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 53760
  | _ => True

theorem oppositePart4_0052 : oppositePartValid4_0052 oppositeHistoryChunk0052 := by
  unfold oppositePartValid4_0052 oppositeHistoryChunk0052
  decide

def oppositePartValid5_0052 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 53888
  | _ => True

theorem oppositePart5_0052 : oppositePartValid5_0052 oppositeHistoryChunk0052 := by
  unfold oppositePartValid5_0052 oppositeHistoryChunk0052
  decide

def oppositePartValid6_0052 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 54016
  | _ => True

theorem oppositePart6_0052 : oppositePartValid6_0052 oppositeHistoryChunk0052 := by
  unfold oppositePartValid6_0052 oppositeHistoryChunk0052
  decide

def oppositePartValid7_0052 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 54144
  | _ => True

theorem oppositePart7_0052 : oppositePartValid7_0052 oppositeHistoryChunk0052 := by
  unfold oppositePartValid7_0052 oppositeHistoryChunk0052
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
