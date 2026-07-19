import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0109

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0109 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 112128
  | _ => True

theorem oppositePart4_0109 : oppositePartValid4_0109 oppositeHistoryChunk0109 := by
  unfold oppositePartValid4_0109 oppositeHistoryChunk0109
  decide

def oppositePartValid5_0109 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 112256
  | _ => True

theorem oppositePart5_0109 : oppositePartValid5_0109 oppositeHistoryChunk0109 := by
  unfold oppositePartValid5_0109 oppositeHistoryChunk0109
  decide

def oppositePartValid6_0109 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 112384
  | _ => True

theorem oppositePart6_0109 : oppositePartValid6_0109 oppositeHistoryChunk0109 := by
  unfold oppositePartValid6_0109 oppositeHistoryChunk0109
  decide

def oppositePartValid7_0109 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 112512
  | _ => True

theorem oppositePart7_0109 : oppositePartValid7_0109 oppositeHistoryChunk0109 := by
  unfold oppositePartValid7_0109 oppositeHistoryChunk0109
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
