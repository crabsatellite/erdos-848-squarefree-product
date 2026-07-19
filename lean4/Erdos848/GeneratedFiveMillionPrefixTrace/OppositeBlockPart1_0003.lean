import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0003

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0003 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 3584
  | _ => True

theorem oppositePart4_0003 : oppositePartValid4_0003 oppositeHistoryChunk0003 := by
  unfold oppositePartValid4_0003 oppositeHistoryChunk0003
  decide

def oppositePartValid5_0003 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 3712
  | _ => True

theorem oppositePart5_0003 : oppositePartValid5_0003 oppositeHistoryChunk0003 := by
  unfold oppositePartValid5_0003 oppositeHistoryChunk0003
  decide

def oppositePartValid6_0003 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 3840
  | _ => True

theorem oppositePart6_0003 : oppositePartValid6_0003 oppositeHistoryChunk0003 := by
  unfold oppositePartValid6_0003 oppositeHistoryChunk0003
  decide

def oppositePartValid7_0003 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 3968
  | _ => True

theorem oppositePart7_0003 : oppositePartValid7_0003 oppositeHistoryChunk0003 := by
  unfold oppositePartValid7_0003 oppositeHistoryChunk0003
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
