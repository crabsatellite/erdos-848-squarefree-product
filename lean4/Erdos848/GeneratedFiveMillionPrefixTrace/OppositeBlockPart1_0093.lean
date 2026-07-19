import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0093

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0093 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 95744
  | _ => True

theorem oppositePart4_0093 : oppositePartValid4_0093 oppositeHistoryChunk0093 := by
  unfold oppositePartValid4_0093 oppositeHistoryChunk0093
  decide

def oppositePartValid5_0093 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 95872
  | _ => True

theorem oppositePart5_0093 : oppositePartValid5_0093 oppositeHistoryChunk0093 := by
  unfold oppositePartValid5_0093 oppositeHistoryChunk0093
  decide

def oppositePartValid6_0093 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 96000
  | _ => True

theorem oppositePart6_0093 : oppositePartValid6_0093 oppositeHistoryChunk0093 := by
  unfold oppositePartValid6_0093 oppositeHistoryChunk0093
  decide

def oppositePartValid7_0093 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 96128
  | _ => True

theorem oppositePart7_0093 : oppositePartValid7_0093 oppositeHistoryChunk0093 := by
  unfold oppositePartValid7_0093 oppositeHistoryChunk0093
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
