import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0078

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0078 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 80384
  | _ => True

theorem oppositePart4_0078 : oppositePartValid4_0078 oppositeHistoryChunk0078 := by
  unfold oppositePartValid4_0078 oppositeHistoryChunk0078
  decide

def oppositePartValid5_0078 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 80512
  | _ => True

theorem oppositePart5_0078 : oppositePartValid5_0078 oppositeHistoryChunk0078 := by
  unfold oppositePartValid5_0078 oppositeHistoryChunk0078
  decide

def oppositePartValid6_0078 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 80640
  | _ => True

theorem oppositePart6_0078 : oppositePartValid6_0078 oppositeHistoryChunk0078 := by
  unfold oppositePartValid6_0078 oppositeHistoryChunk0078
  decide

def oppositePartValid7_0078 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 80768
  | _ => True

theorem oppositePart7_0078 : oppositePartValid7_0078 oppositeHistoryChunk0078 := by
  unfold oppositePartValid7_0078 oppositeHistoryChunk0078
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
