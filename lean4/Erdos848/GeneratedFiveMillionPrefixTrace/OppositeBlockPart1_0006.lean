import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0006

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0006 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 6656
  | _ => True

theorem oppositePart4_0006 : oppositePartValid4_0006 oppositeHistoryChunk0006 := by
  unfold oppositePartValid4_0006 oppositeHistoryChunk0006
  decide

def oppositePartValid5_0006 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 6784
  | _ => True

theorem oppositePart5_0006 : oppositePartValid5_0006 oppositeHistoryChunk0006 := by
  unfold oppositePartValid5_0006 oppositeHistoryChunk0006
  decide

def oppositePartValid6_0006 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 6912
  | _ => True

theorem oppositePart6_0006 : oppositePartValid6_0006 oppositeHistoryChunk0006 := by
  unfold oppositePartValid6_0006 oppositeHistoryChunk0006
  decide

def oppositePartValid7_0006 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 7040
  | _ => True

theorem oppositePart7_0006 : oppositePartValid7_0006 oppositeHistoryChunk0006 := by
  unfold oppositePartValid7_0006 oppositeHistoryChunk0006
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
