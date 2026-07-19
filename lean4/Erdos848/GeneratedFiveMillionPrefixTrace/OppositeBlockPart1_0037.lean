import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0037

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0037 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 38400
  | _ => True

theorem oppositePart4_0037 : oppositePartValid4_0037 oppositeHistoryChunk0037 := by
  unfold oppositePartValid4_0037 oppositeHistoryChunk0037
  decide

def oppositePartValid5_0037 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 38528
  | _ => True

theorem oppositePart5_0037 : oppositePartValid5_0037 oppositeHistoryChunk0037 := by
  unfold oppositePartValid5_0037 oppositeHistoryChunk0037
  decide

def oppositePartValid6_0037 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 38656
  | _ => True

theorem oppositePart6_0037 : oppositePartValid6_0037 oppositeHistoryChunk0037 := by
  unfold oppositePartValid6_0037 oppositeHistoryChunk0037
  decide

def oppositePartValid7_0037 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 38784
  | _ => True

theorem oppositePart7_0037 : oppositePartValid7_0037 oppositeHistoryChunk0037 := by
  unfold oppositePartValid7_0037 oppositeHistoryChunk0037
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
