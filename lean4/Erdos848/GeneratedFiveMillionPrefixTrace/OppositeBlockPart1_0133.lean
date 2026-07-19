import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0133

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0133 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 136704
  | _ => True

theorem oppositePart4_0133 : oppositePartValid4_0133 oppositeHistoryChunk0133 := by
  unfold oppositePartValid4_0133 oppositeHistoryChunk0133
  decide

def oppositePartValid5_0133 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 136832
  | _ => True

theorem oppositePart5_0133 : oppositePartValid5_0133 oppositeHistoryChunk0133 := by
  unfold oppositePartValid5_0133 oppositeHistoryChunk0133
  decide

def oppositePartValid6_0133 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 136960
  | _ => True

theorem oppositePart6_0133 : oppositePartValid6_0133 oppositeHistoryChunk0133 := by
  unfold oppositePartValid6_0133 oppositeHistoryChunk0133
  decide

def oppositePartValid7_0133 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 137088
  | _ => True

theorem oppositePart7_0133 : oppositePartValid7_0133 oppositeHistoryChunk0133 := by
  unfold oppositePartValid7_0133 oppositeHistoryChunk0133
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
