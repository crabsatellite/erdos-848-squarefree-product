import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0115

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0115 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 118272
  | _ => True

theorem oppositePart4_0115 : oppositePartValid4_0115 oppositeHistoryChunk0115 := by
  unfold oppositePartValid4_0115 oppositeHistoryChunk0115
  decide

def oppositePartValid5_0115 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 118400
  | _ => True

theorem oppositePart5_0115 : oppositePartValid5_0115 oppositeHistoryChunk0115 := by
  unfold oppositePartValid5_0115 oppositeHistoryChunk0115
  decide

def oppositePartValid6_0115 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 118528
  | _ => True

theorem oppositePart6_0115 : oppositePartValid6_0115 oppositeHistoryChunk0115 := by
  unfold oppositePartValid6_0115 oppositeHistoryChunk0115
  decide

def oppositePartValid7_0115 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 118656
  | _ => True

theorem oppositePart7_0115 : oppositePartValid7_0115 oppositeHistoryChunk0115 := by
  unfold oppositePartValid7_0115 oppositeHistoryChunk0115
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
