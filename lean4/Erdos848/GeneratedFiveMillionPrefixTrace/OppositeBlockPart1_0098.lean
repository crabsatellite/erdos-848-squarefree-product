import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0098

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0098 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 100864
  | _ => True

theorem oppositePart4_0098 : oppositePartValid4_0098 oppositeHistoryChunk0098 := by
  unfold oppositePartValid4_0098 oppositeHistoryChunk0098
  decide

def oppositePartValid5_0098 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 100992
  | _ => True

theorem oppositePart5_0098 : oppositePartValid5_0098 oppositeHistoryChunk0098 := by
  unfold oppositePartValid5_0098 oppositeHistoryChunk0098
  decide

def oppositePartValid6_0098 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 101120
  | _ => True

theorem oppositePart6_0098 : oppositePartValid6_0098 oppositeHistoryChunk0098 := by
  unfold oppositePartValid6_0098 oppositeHistoryChunk0098
  decide

def oppositePartValid7_0098 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 101248
  | _ => True

theorem oppositePart7_0098 : oppositePartValid7_0098 oppositeHistoryChunk0098 := by
  unfold oppositePartValid7_0098 oppositeHistoryChunk0098
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
