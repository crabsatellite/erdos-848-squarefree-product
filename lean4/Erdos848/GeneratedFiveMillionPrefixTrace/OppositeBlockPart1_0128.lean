import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0128

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0128 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 131584
  | _ => True

theorem oppositePart4_0128 : oppositePartValid4_0128 oppositeHistoryChunk0128 := by
  unfold oppositePartValid4_0128 oppositeHistoryChunk0128
  decide

def oppositePartValid5_0128 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 131712
  | _ => True

theorem oppositePart5_0128 : oppositePartValid5_0128 oppositeHistoryChunk0128 := by
  unfold oppositePartValid5_0128 oppositeHistoryChunk0128
  decide

def oppositePartValid6_0128 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 131840
  | _ => True

theorem oppositePart6_0128 : oppositePartValid6_0128 oppositeHistoryChunk0128 := by
  unfold oppositePartValid6_0128 oppositeHistoryChunk0128
  decide

def oppositePartValid7_0128 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 131968
  | _ => True

theorem oppositePart7_0128 : oppositePartValid7_0128 oppositeHistoryChunk0128 := by
  unfold oppositePartValid7_0128 oppositeHistoryChunk0128
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
