import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0028

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0028 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 29184
  | _ => True

theorem oppositePart4_0028 : oppositePartValid4_0028 oppositeHistoryChunk0028 := by
  unfold oppositePartValid4_0028 oppositeHistoryChunk0028
  decide

def oppositePartValid5_0028 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 29312
  | _ => True

theorem oppositePart5_0028 : oppositePartValid5_0028 oppositeHistoryChunk0028 := by
  unfold oppositePartValid5_0028 oppositeHistoryChunk0028
  decide

def oppositePartValid6_0028 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 29440
  | _ => True

theorem oppositePart6_0028 : oppositePartValid6_0028 oppositeHistoryChunk0028 := by
  unfold oppositePartValid6_0028 oppositeHistoryChunk0028
  decide

def oppositePartValid7_0028 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 29568
  | _ => True

theorem oppositePart7_0028 : oppositePartValid7_0028 oppositeHistoryChunk0028 := by
  unfold oppositePartValid7_0028 oppositeHistoryChunk0028
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
