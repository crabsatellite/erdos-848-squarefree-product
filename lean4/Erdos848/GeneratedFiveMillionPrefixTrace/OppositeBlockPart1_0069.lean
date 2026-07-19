import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0069

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0069 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 71168
  | _ => True

theorem oppositePart4_0069 : oppositePartValid4_0069 oppositeHistoryChunk0069 := by
  unfold oppositePartValid4_0069 oppositeHistoryChunk0069
  decide

def oppositePartValid5_0069 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 71296
  | _ => True

theorem oppositePart5_0069 : oppositePartValid5_0069 oppositeHistoryChunk0069 := by
  unfold oppositePartValid5_0069 oppositeHistoryChunk0069
  decide

def oppositePartValid6_0069 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 71424
  | _ => True

theorem oppositePart6_0069 : oppositePartValid6_0069 oppositeHistoryChunk0069 := by
  unfold oppositePartValid6_0069 oppositeHistoryChunk0069
  decide

def oppositePartValid7_0069 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 71552
  | _ => True

theorem oppositePart7_0069 : oppositePartValid7_0069 oppositeHistoryChunk0069 := by
  unfold oppositePartValid7_0069 oppositeHistoryChunk0069
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
