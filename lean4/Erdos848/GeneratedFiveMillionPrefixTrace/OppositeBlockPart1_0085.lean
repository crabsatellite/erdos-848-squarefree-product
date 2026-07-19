import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0085

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0085 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 87552
  | _ => True

theorem oppositePart4_0085 : oppositePartValid4_0085 oppositeHistoryChunk0085 := by
  unfold oppositePartValid4_0085 oppositeHistoryChunk0085
  decide

def oppositePartValid5_0085 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 87680
  | _ => True

theorem oppositePart5_0085 : oppositePartValid5_0085 oppositeHistoryChunk0085 := by
  unfold oppositePartValid5_0085 oppositeHistoryChunk0085
  decide

def oppositePartValid6_0085 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 87808
  | _ => True

theorem oppositePart6_0085 : oppositePartValid6_0085 oppositeHistoryChunk0085 := by
  unfold oppositePartValid6_0085 oppositeHistoryChunk0085
  decide

def oppositePartValid7_0085 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 87936
  | _ => True

theorem oppositePart7_0085 : oppositePartValid7_0085 oppositeHistoryChunk0085 := by
  unfold oppositePartValid7_0085 oppositeHistoryChunk0085
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
