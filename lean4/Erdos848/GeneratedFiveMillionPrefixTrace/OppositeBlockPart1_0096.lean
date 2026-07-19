import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0096

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0096 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 98816
  | _ => True

theorem oppositePart4_0096 : oppositePartValid4_0096 oppositeHistoryChunk0096 := by
  unfold oppositePartValid4_0096 oppositeHistoryChunk0096
  decide

def oppositePartValid5_0096 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 98944
  | _ => True

theorem oppositePart5_0096 : oppositePartValid5_0096 oppositeHistoryChunk0096 := by
  unfold oppositePartValid5_0096 oppositeHistoryChunk0096
  decide

def oppositePartValid6_0096 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 99072
  | _ => True

theorem oppositePart6_0096 : oppositePartValid6_0096 oppositeHistoryChunk0096 := by
  unfold oppositePartValid6_0096 oppositeHistoryChunk0096
  decide

def oppositePartValid7_0096 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 99200
  | _ => True

theorem oppositePart7_0096 : oppositePartValid7_0096 oppositeHistoryChunk0096 := by
  unfold oppositePartValid7_0096 oppositeHistoryChunk0096
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
