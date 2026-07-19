import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0090

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 92672
  | _ => True

theorem oppositePart4_0090 : oppositePartValid4_0090 oppositeHistoryChunk0090 := by
  unfold oppositePartValid4_0090 oppositeHistoryChunk0090
  decide

def oppositePartValid5_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 92800
  | _ => True

theorem oppositePart5_0090 : oppositePartValid5_0090 oppositeHistoryChunk0090 := by
  unfold oppositePartValid5_0090 oppositeHistoryChunk0090
  decide

def oppositePartValid6_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 92928
  | _ => True

theorem oppositePart6_0090 : oppositePartValid6_0090 oppositeHistoryChunk0090 := by
  unfold oppositePartValid6_0090 oppositeHistoryChunk0090
  decide

def oppositePartValid7_0090 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 93056
  | _ => True

theorem oppositePart7_0090 : oppositePartValid7_0090 oppositeHistoryChunk0090 := by
  unfold oppositePartValid7_0090 oppositeHistoryChunk0090
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
