import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0126

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0126 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 129536
  | _ => True

theorem oppositePart4_0126 : oppositePartValid4_0126 oppositeHistoryChunk0126 := by
  unfold oppositePartValid4_0126 oppositeHistoryChunk0126
  decide

def oppositePartValid5_0126 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 129664
  | _ => True

theorem oppositePart5_0126 : oppositePartValid5_0126 oppositeHistoryChunk0126 := by
  unfold oppositePartValid5_0126 oppositeHistoryChunk0126
  decide

def oppositePartValid6_0126 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 129792
  | _ => True

theorem oppositePart6_0126 : oppositePartValid6_0126 oppositeHistoryChunk0126 := by
  unfold oppositePartValid6_0126 oppositeHistoryChunk0126
  decide

def oppositePartValid7_0126 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 129920
  | _ => True

theorem oppositePart7_0126 : oppositePartValid7_0126 oppositeHistoryChunk0126 := by
  unfold oppositePartValid7_0126 oppositeHistoryChunk0126
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
