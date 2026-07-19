import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0034

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0034 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 35328
  | _ => True

theorem oppositePart4_0034 : oppositePartValid4_0034 oppositeHistoryChunk0034 := by
  unfold oppositePartValid4_0034 oppositeHistoryChunk0034
  decide

def oppositePartValid5_0034 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 35456
  | _ => True

theorem oppositePart5_0034 : oppositePartValid5_0034 oppositeHistoryChunk0034 := by
  unfold oppositePartValid5_0034 oppositeHistoryChunk0034
  decide

def oppositePartValid6_0034 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 35584
  | _ => True

theorem oppositePart6_0034 : oppositePartValid6_0034 oppositeHistoryChunk0034 := by
  unfold oppositePartValid6_0034 oppositeHistoryChunk0034
  decide

def oppositePartValid7_0034 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 35712
  | _ => True

theorem oppositePart7_0034 : oppositePartValid7_0034 oppositeHistoryChunk0034 := by
  unfold oppositePartValid7_0034 oppositeHistoryChunk0034
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
