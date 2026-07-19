import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0167

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0167 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 171520
  | _ => True

theorem oppositePart4_0167 : oppositePartValid4_0167 oppositeHistoryChunk0167 := by
  unfold oppositePartValid4_0167 oppositeHistoryChunk0167
  decide

def oppositePartValid5_0167 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 171648
  | _ => True

theorem oppositePart5_0167 : oppositePartValid5_0167 oppositeHistoryChunk0167 := by
  unfold oppositePartValid5_0167 oppositeHistoryChunk0167
  decide

def oppositePartValid6_0167 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 171776
  | _ => True

theorem oppositePart6_0167 : oppositePartValid6_0167 oppositeHistoryChunk0167 := by
  unfold oppositePartValid6_0167 oppositeHistoryChunk0167
  decide

def oppositePartValid7_0167 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 171904
  | _ => True

theorem oppositePart7_0167 : oppositePartValid7_0167 oppositeHistoryChunk0167 := by
  unfold oppositePartValid7_0167 oppositeHistoryChunk0167
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
