import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0053

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0053 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 54784
  | _ => True

theorem oppositePart4_0053 : oppositePartValid4_0053 oppositeHistoryChunk0053 := by
  unfold oppositePartValid4_0053 oppositeHistoryChunk0053
  decide

def oppositePartValid5_0053 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 54912
  | _ => True

theorem oppositePart5_0053 : oppositePartValid5_0053 oppositeHistoryChunk0053 := by
  unfold oppositePartValid5_0053 oppositeHistoryChunk0053
  decide

def oppositePartValid6_0053 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 55040
  | _ => True

theorem oppositePart6_0053 : oppositePartValid6_0053 oppositeHistoryChunk0053 := by
  unfold oppositePartValid6_0053 oppositeHistoryChunk0053
  decide

def oppositePartValid7_0053 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 55168
  | _ => True

theorem oppositePart7_0053 : oppositePartValid7_0053 oppositeHistoryChunk0053 := by
  unfold oppositePartValid7_0053 oppositeHistoryChunk0053
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
