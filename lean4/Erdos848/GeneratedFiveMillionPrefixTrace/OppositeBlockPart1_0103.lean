import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0103

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0103 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 105984
  | _ => True

theorem oppositePart4_0103 : oppositePartValid4_0103 oppositeHistoryChunk0103 := by
  unfold oppositePartValid4_0103 oppositeHistoryChunk0103
  decide

def oppositePartValid5_0103 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 106112
  | _ => True

theorem oppositePart5_0103 : oppositePartValid5_0103 oppositeHistoryChunk0103 := by
  unfold oppositePartValid5_0103 oppositeHistoryChunk0103
  decide

def oppositePartValid6_0103 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 106240
  | _ => True

theorem oppositePart6_0103 : oppositePartValid6_0103 oppositeHistoryChunk0103 := by
  unfold oppositePartValid6_0103 oppositeHistoryChunk0103
  decide

def oppositePartValid7_0103 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 106368
  | _ => True

theorem oppositePart7_0103 : oppositePartValid7_0103 oppositeHistoryChunk0103 := by
  unfold oppositePartValid7_0103 oppositeHistoryChunk0103
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
