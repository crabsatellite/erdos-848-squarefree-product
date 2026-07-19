import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0054

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0054 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 55808
  | _ => True

theorem oppositePart4_0054 : oppositePartValid4_0054 oppositeHistoryChunk0054 := by
  unfold oppositePartValid4_0054 oppositeHistoryChunk0054
  decide

def oppositePartValid5_0054 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 55936
  | _ => True

theorem oppositePart5_0054 : oppositePartValid5_0054 oppositeHistoryChunk0054 := by
  unfold oppositePartValid5_0054 oppositeHistoryChunk0054
  decide

def oppositePartValid6_0054 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 56064
  | _ => True

theorem oppositePart6_0054 : oppositePartValid6_0054 oppositeHistoryChunk0054 := by
  unfold oppositePartValid6_0054 oppositeHistoryChunk0054
  decide

def oppositePartValid7_0054 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 56192
  | _ => True

theorem oppositePart7_0054 : oppositePartValid7_0054 oppositeHistoryChunk0054 := by
  unfold oppositePartValid7_0054 oppositeHistoryChunk0054
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
