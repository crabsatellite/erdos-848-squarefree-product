import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0107

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0107 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 110080
  | _ => True

theorem oppositePart4_0107 : oppositePartValid4_0107 oppositeHistoryChunk0107 := by
  unfold oppositePartValid4_0107 oppositeHistoryChunk0107
  decide

def oppositePartValid5_0107 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 110208
  | _ => True

theorem oppositePart5_0107 : oppositePartValid5_0107 oppositeHistoryChunk0107 := by
  unfold oppositePartValid5_0107 oppositeHistoryChunk0107
  decide

def oppositePartValid6_0107 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 110336
  | _ => True

theorem oppositePart6_0107 : oppositePartValid6_0107 oppositeHistoryChunk0107 := by
  unfold oppositePartValid6_0107 oppositeHistoryChunk0107
  decide

def oppositePartValid7_0107 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 110464
  | _ => True

theorem oppositePart7_0107 : oppositePartValid7_0107 oppositeHistoryChunk0107 := by
  unfold oppositePartValid7_0107 oppositeHistoryChunk0107
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
