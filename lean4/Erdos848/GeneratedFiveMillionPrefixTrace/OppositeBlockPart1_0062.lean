import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0062

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0062 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 64000
  | _ => True

theorem oppositePart4_0062 : oppositePartValid4_0062 oppositeHistoryChunk0062 := by
  unfold oppositePartValid4_0062 oppositeHistoryChunk0062
  decide

def oppositePartValid5_0062 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 64128
  | _ => True

theorem oppositePart5_0062 : oppositePartValid5_0062 oppositeHistoryChunk0062 := by
  unfold oppositePartValid5_0062 oppositeHistoryChunk0062
  decide

def oppositePartValid6_0062 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 64256
  | _ => True

theorem oppositePart6_0062 : oppositePartValid6_0062 oppositeHistoryChunk0062 := by
  unfold oppositePartValid6_0062 oppositeHistoryChunk0062
  decide

def oppositePartValid7_0062 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 64384
  | _ => True

theorem oppositePart7_0062 : oppositePartValid7_0062 oppositeHistoryChunk0062 := by
  unfold oppositePartValid7_0062 oppositeHistoryChunk0062
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
