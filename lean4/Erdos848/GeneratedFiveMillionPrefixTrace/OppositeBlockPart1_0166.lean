import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0166

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0166 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 170496
  | _ => True

theorem oppositePart4_0166 : oppositePartValid4_0166 oppositeHistoryChunk0166 := by
  unfold oppositePartValid4_0166 oppositeHistoryChunk0166
  decide

def oppositePartValid5_0166 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 170624
  | _ => True

theorem oppositePart5_0166 : oppositePartValid5_0166 oppositeHistoryChunk0166 := by
  unfold oppositePartValid5_0166 oppositeHistoryChunk0166
  decide

def oppositePartValid6_0166 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 170752
  | _ => True

theorem oppositePart6_0166 : oppositePartValid6_0166 oppositeHistoryChunk0166 := by
  unfold oppositePartValid6_0166 oppositeHistoryChunk0166
  decide

def oppositePartValid7_0166 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 170880
  | _ => True

theorem oppositePart7_0166 : oppositePartValid7_0166 oppositeHistoryChunk0166 := by
  unfold oppositePartValid7_0166 oppositeHistoryChunk0166
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
