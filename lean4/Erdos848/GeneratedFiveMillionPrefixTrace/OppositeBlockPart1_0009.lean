import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0009

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0009 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 9728
  | _ => True

theorem oppositePart4_0009 : oppositePartValid4_0009 oppositeHistoryChunk0009 := by
  unfold oppositePartValid4_0009 oppositeHistoryChunk0009
  decide

def oppositePartValid5_0009 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 9856
  | _ => True

theorem oppositePart5_0009 : oppositePartValid5_0009 oppositeHistoryChunk0009 := by
  unfold oppositePartValid5_0009 oppositeHistoryChunk0009
  decide

def oppositePartValid6_0009 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 9984
  | _ => True

theorem oppositePart6_0009 : oppositePartValid6_0009 oppositeHistoryChunk0009 := by
  unfold oppositePartValid6_0009 oppositeHistoryChunk0009
  decide

def oppositePartValid7_0009 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 10112
  | _ => True

theorem oppositePart7_0009 : oppositePartValid7_0009 oppositeHistoryChunk0009 := by
  unfold oppositePartValid7_0009 oppositeHistoryChunk0009
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
