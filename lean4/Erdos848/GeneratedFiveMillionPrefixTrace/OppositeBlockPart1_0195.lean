import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0195

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0195 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 199840
  | _ => True

theorem oppositePart4_0195 : oppositePartValid4_0195 oppositeHistoryChunk0195 := by
  unfold oppositePartValid4_0195 oppositeHistoryChunk0195
  decide

def oppositePartValid5_0195 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 199880
  | _ => True

theorem oppositePart5_0195 : oppositePartValid5_0195 oppositeHistoryChunk0195 := by
  unfold oppositePartValid5_0195 oppositeHistoryChunk0195
  decide

def oppositePartValid6_0195 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 199920
  | _ => True

theorem oppositePart6_0195 : oppositePartValid6_0195 oppositeHistoryChunk0195 := by
  unfold oppositePartValid6_0195 oppositeHistoryChunk0195
  decide

def oppositePartValid7_0195 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 199960
  | _ => True

theorem oppositePart7_0195 : oppositePartValid7_0195 oppositeHistoryChunk0195 := by
  unfold oppositePartValid7_0195 oppositeHistoryChunk0195
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
