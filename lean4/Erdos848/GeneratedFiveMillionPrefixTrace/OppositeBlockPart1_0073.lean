import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0073

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0073 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 75264
  | _ => True

theorem oppositePart4_0073 : oppositePartValid4_0073 oppositeHistoryChunk0073 := by
  unfold oppositePartValid4_0073 oppositeHistoryChunk0073
  decide

def oppositePartValid5_0073 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 75392
  | _ => True

theorem oppositePart5_0073 : oppositePartValid5_0073 oppositeHistoryChunk0073 := by
  unfold oppositePartValid5_0073 oppositeHistoryChunk0073
  decide

def oppositePartValid6_0073 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 75520
  | _ => True

theorem oppositePart6_0073 : oppositePartValid6_0073 oppositeHistoryChunk0073 := by
  unfold oppositePartValid6_0073 oppositeHistoryChunk0073
  decide

def oppositePartValid7_0073 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 75648
  | _ => True

theorem oppositePart7_0073 : oppositePartValid7_0073 oppositeHistoryChunk0073 := by
  unfold oppositePartValid7_0073 oppositeHistoryChunk0073
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
