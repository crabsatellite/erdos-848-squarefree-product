import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0056

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0056 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 57856
  | _ => True

theorem oppositePart4_0056 : oppositePartValid4_0056 oppositeHistoryChunk0056 := by
  unfold oppositePartValid4_0056 oppositeHistoryChunk0056
  decide

def oppositePartValid5_0056 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 57984
  | _ => True

theorem oppositePart5_0056 : oppositePartValid5_0056 oppositeHistoryChunk0056 := by
  unfold oppositePartValid5_0056 oppositeHistoryChunk0056
  decide

def oppositePartValid6_0056 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 58112
  | _ => True

theorem oppositePart6_0056 : oppositePartValid6_0056 oppositeHistoryChunk0056 := by
  unfold oppositePartValid6_0056 oppositeHistoryChunk0056
  decide

def oppositePartValid7_0056 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 58240
  | _ => True

theorem oppositePart7_0056 : oppositePartValid7_0056 oppositeHistoryChunk0056 := by
  unfold oppositePartValid7_0056 oppositeHistoryChunk0056
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
