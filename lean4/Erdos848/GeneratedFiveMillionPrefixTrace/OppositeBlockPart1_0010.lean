import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0010

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0010 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 10752
  | _ => True

theorem oppositePart4_0010 : oppositePartValid4_0010 oppositeHistoryChunk0010 := by
  unfold oppositePartValid4_0010 oppositeHistoryChunk0010
  decide

def oppositePartValid5_0010 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 10880
  | _ => True

theorem oppositePart5_0010 : oppositePartValid5_0010 oppositeHistoryChunk0010 := by
  unfold oppositePartValid5_0010 oppositeHistoryChunk0010
  decide

def oppositePartValid6_0010 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 11008
  | _ => True

theorem oppositePart6_0010 : oppositePartValid6_0010 oppositeHistoryChunk0010 := by
  unfold oppositePartValid6_0010 oppositeHistoryChunk0010
  decide

def oppositePartValid7_0010 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 11136
  | _ => True

theorem oppositePart7_0010 : oppositePartValid7_0010 oppositeHistoryChunk0010 := by
  unfold oppositePartValid7_0010 oppositeHistoryChunk0010
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
