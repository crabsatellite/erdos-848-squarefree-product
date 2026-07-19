import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0152

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0152 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 156160
  | _ => True

theorem oppositePart4_0152 : oppositePartValid4_0152 oppositeHistoryChunk0152 := by
  unfold oppositePartValid4_0152 oppositeHistoryChunk0152
  decide

def oppositePartValid5_0152 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 156288
  | _ => True

theorem oppositePart5_0152 : oppositePartValid5_0152 oppositeHistoryChunk0152 := by
  unfold oppositePartValid5_0152 oppositeHistoryChunk0152
  decide

def oppositePartValid6_0152 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 156416
  | _ => True

theorem oppositePart6_0152 : oppositePartValid6_0152 oppositeHistoryChunk0152 := by
  unfold oppositePartValid6_0152 oppositeHistoryChunk0152
  decide

def oppositePartValid7_0152 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 156544
  | _ => True

theorem oppositePart7_0152 : oppositePartValid7_0152 oppositeHistoryChunk0152 := by
  unfold oppositePartValid7_0152 oppositeHistoryChunk0152
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
