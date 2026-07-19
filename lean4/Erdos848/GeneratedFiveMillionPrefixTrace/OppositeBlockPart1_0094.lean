import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0094

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0094 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 96768
  | _ => True

theorem oppositePart4_0094 : oppositePartValid4_0094 oppositeHistoryChunk0094 := by
  unfold oppositePartValid4_0094 oppositeHistoryChunk0094
  decide

def oppositePartValid5_0094 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 96896
  | _ => True

theorem oppositePart5_0094 : oppositePartValid5_0094 oppositeHistoryChunk0094 := by
  unfold oppositePartValid5_0094 oppositeHistoryChunk0094
  decide

def oppositePartValid6_0094 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 97024
  | _ => True

theorem oppositePart6_0094 : oppositePartValid6_0094 oppositeHistoryChunk0094 := by
  unfold oppositePartValid6_0094 oppositeHistoryChunk0094
  decide

def oppositePartValid7_0094 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 97152
  | _ => True

theorem oppositePart7_0094 : oppositePartValid7_0094 oppositeHistoryChunk0094 := by
  unfold oppositePartValid7_0094 oppositeHistoryChunk0094
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
