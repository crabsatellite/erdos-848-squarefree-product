import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0105

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0105 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 108032
  | _ => True

theorem oppositePart4_0105 : oppositePartValid4_0105 oppositeHistoryChunk0105 := by
  unfold oppositePartValid4_0105 oppositeHistoryChunk0105
  decide

def oppositePartValid5_0105 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 108160
  | _ => True

theorem oppositePart5_0105 : oppositePartValid5_0105 oppositeHistoryChunk0105 := by
  unfold oppositePartValid5_0105 oppositeHistoryChunk0105
  decide

def oppositePartValid6_0105 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 108288
  | _ => True

theorem oppositePart6_0105 : oppositePartValid6_0105 oppositeHistoryChunk0105 := by
  unfold oppositePartValid6_0105 oppositeHistoryChunk0105
  decide

def oppositePartValid7_0105 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 108416
  | _ => True

theorem oppositePart7_0105 : oppositePartValid7_0105 oppositeHistoryChunk0105 := by
  unfold oppositePartValid7_0105 oppositeHistoryChunk0105
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
