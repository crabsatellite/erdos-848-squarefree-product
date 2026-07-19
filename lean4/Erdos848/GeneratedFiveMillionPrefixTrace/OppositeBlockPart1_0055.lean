import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0055

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0055 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 56832
  | _ => True

theorem oppositePart4_0055 : oppositePartValid4_0055 oppositeHistoryChunk0055 := by
  unfold oppositePartValid4_0055 oppositeHistoryChunk0055
  decide

def oppositePartValid5_0055 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 56960
  | _ => True

theorem oppositePart5_0055 : oppositePartValid5_0055 oppositeHistoryChunk0055 := by
  unfold oppositePartValid5_0055 oppositeHistoryChunk0055
  decide

def oppositePartValid6_0055 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 57088
  | _ => True

theorem oppositePart6_0055 : oppositePartValid6_0055 oppositeHistoryChunk0055 := by
  unfold oppositePartValid6_0055 oppositeHistoryChunk0055
  decide

def oppositePartValid7_0055 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 57216
  | _ => True

theorem oppositePart7_0055 : oppositePartValid7_0055 oppositeHistoryChunk0055 := by
  unfold oppositePartValid7_0055 oppositeHistoryChunk0055
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
