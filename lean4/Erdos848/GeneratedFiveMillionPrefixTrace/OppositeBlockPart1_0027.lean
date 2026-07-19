import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0027

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0027 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 28160
  | _ => True

theorem oppositePart4_0027 : oppositePartValid4_0027 oppositeHistoryChunk0027 := by
  unfold oppositePartValid4_0027 oppositeHistoryChunk0027
  decide

def oppositePartValid5_0027 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 28288
  | _ => True

theorem oppositePart5_0027 : oppositePartValid5_0027 oppositeHistoryChunk0027 := by
  unfold oppositePartValid5_0027 oppositeHistoryChunk0027
  decide

def oppositePartValid6_0027 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 28416
  | _ => True

theorem oppositePart6_0027 : oppositePartValid6_0027 oppositeHistoryChunk0027 := by
  unfold oppositePartValid6_0027 oppositeHistoryChunk0027
  decide

def oppositePartValid7_0027 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 28544
  | _ => True

theorem oppositePart7_0027 : oppositePartValid7_0027 oppositeHistoryChunk0027 := by
  unfold oppositePartValid7_0027 oppositeHistoryChunk0027
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
