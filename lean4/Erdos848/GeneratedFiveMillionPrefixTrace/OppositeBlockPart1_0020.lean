import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0020

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0020 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 20992
  | _ => True

theorem oppositePart4_0020 : oppositePartValid4_0020 oppositeHistoryChunk0020 := by
  unfold oppositePartValid4_0020 oppositeHistoryChunk0020
  decide

def oppositePartValid5_0020 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 21120
  | _ => True

theorem oppositePart5_0020 : oppositePartValid5_0020 oppositeHistoryChunk0020 := by
  unfold oppositePartValid5_0020 oppositeHistoryChunk0020
  decide

def oppositePartValid6_0020 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 21248
  | _ => True

theorem oppositePart6_0020 : oppositePartValid6_0020 oppositeHistoryChunk0020 := by
  unfold oppositePartValid6_0020 oppositeHistoryChunk0020
  decide

def oppositePartValid7_0020 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 21376
  | _ => True

theorem oppositePart7_0020 : oppositePartValid7_0020 oppositeHistoryChunk0020 := by
  unfold oppositePartValid7_0020 oppositeHistoryChunk0020
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
