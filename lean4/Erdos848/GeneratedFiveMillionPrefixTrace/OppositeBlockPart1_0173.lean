import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0173

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0173 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 177664
  | _ => True

theorem oppositePart4_0173 : oppositePartValid4_0173 oppositeHistoryChunk0173 := by
  unfold oppositePartValid4_0173 oppositeHistoryChunk0173
  decide

def oppositePartValid5_0173 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 177792
  | _ => True

theorem oppositePart5_0173 : oppositePartValid5_0173 oppositeHistoryChunk0173 := by
  unfold oppositePartValid5_0173 oppositeHistoryChunk0173
  decide

def oppositePartValid6_0173 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 177920
  | _ => True

theorem oppositePart6_0173 : oppositePartValid6_0173 oppositeHistoryChunk0173 := by
  unfold oppositePartValid6_0173 oppositeHistoryChunk0173
  decide

def oppositePartValid7_0173 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 178048
  | _ => True

theorem oppositePart7_0173 : oppositePartValid7_0173 oppositeHistoryChunk0173 := by
  unfold oppositePartValid7_0173 oppositeHistoryChunk0173
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
