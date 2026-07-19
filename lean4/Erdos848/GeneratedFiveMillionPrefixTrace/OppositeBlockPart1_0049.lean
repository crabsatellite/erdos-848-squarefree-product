import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0049

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0049 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 50688
  | _ => True

theorem oppositePart4_0049 : oppositePartValid4_0049 oppositeHistoryChunk0049 := by
  unfold oppositePartValid4_0049 oppositeHistoryChunk0049
  decide

def oppositePartValid5_0049 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 50816
  | _ => True

theorem oppositePart5_0049 : oppositePartValid5_0049 oppositeHistoryChunk0049 := by
  unfold oppositePartValid5_0049 oppositeHistoryChunk0049
  decide

def oppositePartValid6_0049 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 50944
  | _ => True

theorem oppositePart6_0049 : oppositePartValid6_0049 oppositeHistoryChunk0049 := by
  unfold oppositePartValid6_0049 oppositeHistoryChunk0049
  decide

def oppositePartValid7_0049 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 51072
  | _ => True

theorem oppositePart7_0049 : oppositePartValid7_0049 oppositeHistoryChunk0049 := by
  unfold oppositePartValid7_0049 oppositeHistoryChunk0049
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
