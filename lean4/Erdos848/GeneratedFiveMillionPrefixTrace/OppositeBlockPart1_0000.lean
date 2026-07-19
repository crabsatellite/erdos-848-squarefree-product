import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0000

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0000 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 512
  | _ => True

theorem oppositePart4_0000 : oppositePartValid4_0000 oppositeHistoryChunk0000 := by
  unfold oppositePartValid4_0000 oppositeHistoryChunk0000
  decide

def oppositePartValid5_0000 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 640
  | _ => True

theorem oppositePart5_0000 : oppositePartValid5_0000 oppositeHistoryChunk0000 := by
  unfold oppositePartValid5_0000 oppositeHistoryChunk0000
  decide

def oppositePartValid6_0000 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 768
  | _ => True

theorem oppositePart6_0000 : oppositePartValid6_0000 oppositeHistoryChunk0000 := by
  unfold oppositePartValid6_0000 oppositeHistoryChunk0000
  decide

def oppositePartValid7_0000 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 896
  | _ => True

theorem oppositePart7_0000 : oppositePartValid7_0000 oppositeHistoryChunk0000 := by
  unfold oppositePartValid7_0000 oppositeHistoryChunk0000
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
