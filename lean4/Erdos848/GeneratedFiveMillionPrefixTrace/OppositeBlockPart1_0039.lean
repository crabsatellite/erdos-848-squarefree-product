import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0039

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0039 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 40448
  | _ => True

theorem oppositePart4_0039 : oppositePartValid4_0039 oppositeHistoryChunk0039 := by
  unfold oppositePartValid4_0039 oppositeHistoryChunk0039
  decide

def oppositePartValid5_0039 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 40576
  | _ => True

theorem oppositePart5_0039 : oppositePartValid5_0039 oppositeHistoryChunk0039 := by
  unfold oppositePartValid5_0039 oppositeHistoryChunk0039
  decide

def oppositePartValid6_0039 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 40704
  | _ => True

theorem oppositePart6_0039 : oppositePartValid6_0039 oppositeHistoryChunk0039 := by
  unfold oppositePartValid6_0039 oppositeHistoryChunk0039
  decide

def oppositePartValid7_0039 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 40832
  | _ => True

theorem oppositePart7_0039 : oppositePartValid7_0039 oppositeHistoryChunk0039 := by
  unfold oppositePartValid7_0039 oppositeHistoryChunk0039
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
