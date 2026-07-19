import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0076

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0076 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 78336
  | _ => True

theorem oppositePart4_0076 : oppositePartValid4_0076 oppositeHistoryChunk0076 := by
  unfold oppositePartValid4_0076 oppositeHistoryChunk0076
  decide

def oppositePartValid5_0076 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 78464
  | _ => True

theorem oppositePart5_0076 : oppositePartValid5_0076 oppositeHistoryChunk0076 := by
  unfold oppositePartValid5_0076 oppositeHistoryChunk0076
  decide

def oppositePartValid6_0076 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 78592
  | _ => True

theorem oppositePart6_0076 : oppositePartValid6_0076 oppositeHistoryChunk0076 := by
  unfold oppositePartValid6_0076 oppositeHistoryChunk0076
  decide

def oppositePartValid7_0076 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 78720
  | _ => True

theorem oppositePart7_0076 : oppositePartValid7_0076 oppositeHistoryChunk0076 := by
  unfold oppositePartValid7_0076 oppositeHistoryChunk0076
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
