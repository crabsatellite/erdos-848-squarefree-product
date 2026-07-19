import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0158

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0158 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 162304
  | _ => True

theorem oppositePart4_0158 : oppositePartValid4_0158 oppositeHistoryChunk0158 := by
  unfold oppositePartValid4_0158 oppositeHistoryChunk0158
  decide

def oppositePartValid5_0158 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 162432
  | _ => True

theorem oppositePart5_0158 : oppositePartValid5_0158 oppositeHistoryChunk0158 := by
  unfold oppositePartValid5_0158 oppositeHistoryChunk0158
  decide

def oppositePartValid6_0158 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 162560
  | _ => True

theorem oppositePart6_0158 : oppositePartValid6_0158 oppositeHistoryChunk0158 := by
  unfold oppositePartValid6_0158 oppositeHistoryChunk0158
  decide

def oppositePartValid7_0158 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 162688
  | _ => True

theorem oppositePart7_0158 : oppositePartValid7_0158 oppositeHistoryChunk0158 := by
  unfold oppositePartValid7_0158 oppositeHistoryChunk0158
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
