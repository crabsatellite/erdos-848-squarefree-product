import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0031

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0031 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 32256
  | _ => True

theorem oppositePart4_0031 : oppositePartValid4_0031 oppositeHistoryChunk0031 := by
  unfold oppositePartValid4_0031 oppositeHistoryChunk0031
  decide

def oppositePartValid5_0031 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 32384
  | _ => True

theorem oppositePart5_0031 : oppositePartValid5_0031 oppositeHistoryChunk0031 := by
  unfold oppositePartValid5_0031 oppositeHistoryChunk0031
  decide

def oppositePartValid6_0031 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 32512
  | _ => True

theorem oppositePart6_0031 : oppositePartValid6_0031 oppositeHistoryChunk0031 := by
  unfold oppositePartValid6_0031 oppositeHistoryChunk0031
  decide

def oppositePartValid7_0031 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 32640
  | _ => True

theorem oppositePart7_0031 : oppositePartValid7_0031 oppositeHistoryChunk0031 := by
  unfold oppositePartValid7_0031 oppositeHistoryChunk0031
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
