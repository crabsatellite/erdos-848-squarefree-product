import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0102

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0102 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 104960
  | _ => True

theorem oppositePart4_0102 : oppositePartValid4_0102 oppositeHistoryChunk0102 := by
  unfold oppositePartValid4_0102 oppositeHistoryChunk0102
  decide

def oppositePartValid5_0102 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 105088
  | _ => True

theorem oppositePart5_0102 : oppositePartValid5_0102 oppositeHistoryChunk0102 := by
  unfold oppositePartValid5_0102 oppositeHistoryChunk0102
  decide

def oppositePartValid6_0102 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 105216
  | _ => True

theorem oppositePart6_0102 : oppositePartValid6_0102 oppositeHistoryChunk0102 := by
  unfold oppositePartValid6_0102 oppositeHistoryChunk0102
  decide

def oppositePartValid7_0102 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 105344
  | _ => True

theorem oppositePart7_0102 : oppositePartValid7_0102 oppositeHistoryChunk0102 := by
  unfold oppositePartValid7_0102 oppositeHistoryChunk0102
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
