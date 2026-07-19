import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0044

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0044 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 45568
  | _ => True

theorem oppositePart4_0044 : oppositePartValid4_0044 oppositeHistoryChunk0044 := by
  unfold oppositePartValid4_0044 oppositeHistoryChunk0044
  decide

def oppositePartValid5_0044 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 45696
  | _ => True

theorem oppositePart5_0044 : oppositePartValid5_0044 oppositeHistoryChunk0044 := by
  unfold oppositePartValid5_0044 oppositeHistoryChunk0044
  decide

def oppositePartValid6_0044 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 45824
  | _ => True

theorem oppositePart6_0044 : oppositePartValid6_0044 oppositeHistoryChunk0044 := by
  unfold oppositePartValid6_0044 oppositeHistoryChunk0044
  decide

def oppositePartValid7_0044 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 45952
  | _ => True

theorem oppositePart7_0044 : oppositePartValid7_0044 oppositeHistoryChunk0044 := by
  unfold oppositePartValid7_0044 oppositeHistoryChunk0044
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
