import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0007

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0007 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 7680
  | _ => True

theorem oppositePart4_0007 : oppositePartValid4_0007 oppositeHistoryChunk0007 := by
  unfold oppositePartValid4_0007 oppositeHistoryChunk0007
  decide

def oppositePartValid5_0007 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 7808
  | _ => True

theorem oppositePart5_0007 : oppositePartValid5_0007 oppositeHistoryChunk0007 := by
  unfold oppositePartValid5_0007 oppositeHistoryChunk0007
  decide

def oppositePartValid6_0007 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 7936
  | _ => True

theorem oppositePart6_0007 : oppositePartValid6_0007 oppositeHistoryChunk0007 := by
  unfold oppositePartValid6_0007 oppositeHistoryChunk0007
  decide

def oppositePartValid7_0007 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 8064
  | _ => True

theorem oppositePart7_0007 : oppositePartValid7_0007 oppositeHistoryChunk0007 := by
  unfold oppositePartValid7_0007 oppositeHistoryChunk0007
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
