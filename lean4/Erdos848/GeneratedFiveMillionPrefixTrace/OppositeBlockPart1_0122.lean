import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0122

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0122 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 125440
  | _ => True

theorem oppositePart4_0122 : oppositePartValid4_0122 oppositeHistoryChunk0122 := by
  unfold oppositePartValid4_0122 oppositeHistoryChunk0122
  decide

def oppositePartValid5_0122 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 125568
  | _ => True

theorem oppositePart5_0122 : oppositePartValid5_0122 oppositeHistoryChunk0122 := by
  unfold oppositePartValid5_0122 oppositeHistoryChunk0122
  decide

def oppositePartValid6_0122 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 125696
  | _ => True

theorem oppositePart6_0122 : oppositePartValid6_0122 oppositeHistoryChunk0122 := by
  unfold oppositePartValid6_0122 oppositeHistoryChunk0122
  decide

def oppositePartValid7_0122 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 125824
  | _ => True

theorem oppositePart7_0122 : oppositePartValid7_0122 oppositeHistoryChunk0122 := by
  unfold oppositePartValid7_0122 oppositeHistoryChunk0122
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
