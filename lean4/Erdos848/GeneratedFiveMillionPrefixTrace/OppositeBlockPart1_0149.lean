import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0149

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0149 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 153088
  | _ => True

theorem oppositePart4_0149 : oppositePartValid4_0149 oppositeHistoryChunk0149 := by
  unfold oppositePartValid4_0149 oppositeHistoryChunk0149
  decide

def oppositePartValid5_0149 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 153216
  | _ => True

theorem oppositePart5_0149 : oppositePartValid5_0149 oppositeHistoryChunk0149 := by
  unfold oppositePartValid5_0149 oppositeHistoryChunk0149
  decide

def oppositePartValid6_0149 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 153344
  | _ => True

theorem oppositePart6_0149 : oppositePartValid6_0149 oppositeHistoryChunk0149 := by
  unfold oppositePartValid6_0149 oppositeHistoryChunk0149
  decide

def oppositePartValid7_0149 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 153472
  | _ => True

theorem oppositePart7_0149 : oppositePartValid7_0149 oppositeHistoryChunk0149 := by
  unfold oppositePartValid7_0149 oppositeHistoryChunk0149
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
