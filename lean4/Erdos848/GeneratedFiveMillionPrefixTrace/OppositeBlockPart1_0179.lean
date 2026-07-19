import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0179

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0179 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 183808
  | _ => True

theorem oppositePart4_0179 : oppositePartValid4_0179 oppositeHistoryChunk0179 := by
  unfold oppositePartValid4_0179 oppositeHistoryChunk0179
  decide

def oppositePartValid5_0179 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 183936
  | _ => True

theorem oppositePart5_0179 : oppositePartValid5_0179 oppositeHistoryChunk0179 := by
  unfold oppositePartValid5_0179 oppositeHistoryChunk0179
  decide

def oppositePartValid6_0179 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 184064
  | _ => True

theorem oppositePart6_0179 : oppositePartValid6_0179 oppositeHistoryChunk0179 := by
  unfold oppositePartValid6_0179 oppositeHistoryChunk0179
  decide

def oppositePartValid7_0179 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 184192
  | _ => True

theorem oppositePart7_0179 : oppositePartValid7_0179 oppositeHistoryChunk0179 := by
  unfold oppositePartValid7_0179 oppositeHistoryChunk0179
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
