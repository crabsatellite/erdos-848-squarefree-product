import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0080

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0080 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 82432
  | _ => True

theorem oppositePart4_0080 : oppositePartValid4_0080 oppositeHistoryChunk0080 := by
  unfold oppositePartValid4_0080 oppositeHistoryChunk0080
  decide

def oppositePartValid5_0080 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 82560
  | _ => True

theorem oppositePart5_0080 : oppositePartValid5_0080 oppositeHistoryChunk0080 := by
  unfold oppositePartValid5_0080 oppositeHistoryChunk0080
  decide

def oppositePartValid6_0080 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 82688
  | _ => True

theorem oppositePart6_0080 : oppositePartValid6_0080 oppositeHistoryChunk0080 := by
  unfold oppositePartValid6_0080 oppositeHistoryChunk0080
  decide

def oppositePartValid7_0080 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 82816
  | _ => True

theorem oppositePart7_0080 : oppositePartValid7_0080 oppositeHistoryChunk0080 := by
  unfold oppositePartValid7_0080 oppositeHistoryChunk0080
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
