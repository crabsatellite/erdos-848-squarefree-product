import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0064

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0064 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 66048
  | _ => True

theorem oppositePart4_0064 : oppositePartValid4_0064 oppositeHistoryChunk0064 := by
  unfold oppositePartValid4_0064 oppositeHistoryChunk0064
  decide

def oppositePartValid5_0064 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 66176
  | _ => True

theorem oppositePart5_0064 : oppositePartValid5_0064 oppositeHistoryChunk0064 := by
  unfold oppositePartValid5_0064 oppositeHistoryChunk0064
  decide

def oppositePartValid6_0064 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 66304
  | _ => True

theorem oppositePart6_0064 : oppositePartValid6_0064 oppositeHistoryChunk0064 := by
  unfold oppositePartValid6_0064 oppositeHistoryChunk0064
  decide

def oppositePartValid7_0064 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 66432
  | _ => True

theorem oppositePart7_0064 : oppositePartValid7_0064 oppositeHistoryChunk0064 := by
  unfold oppositePartValid7_0064 oppositeHistoryChunk0064
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
