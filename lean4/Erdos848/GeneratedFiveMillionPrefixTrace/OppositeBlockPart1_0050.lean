import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0050

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0050 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 51712
  | _ => True

theorem oppositePart4_0050 : oppositePartValid4_0050 oppositeHistoryChunk0050 := by
  unfold oppositePartValid4_0050 oppositeHistoryChunk0050
  decide

def oppositePartValid5_0050 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 51840
  | _ => True

theorem oppositePart5_0050 : oppositePartValid5_0050 oppositeHistoryChunk0050 := by
  unfold oppositePartValid5_0050 oppositeHistoryChunk0050
  decide

def oppositePartValid6_0050 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 51968
  | _ => True

theorem oppositePart6_0050 : oppositePartValid6_0050 oppositeHistoryChunk0050 := by
  unfold oppositePartValid6_0050 oppositeHistoryChunk0050
  decide

def oppositePartValid7_0050 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 52096
  | _ => True

theorem oppositePart7_0050 : oppositePartValid7_0050 oppositeHistoryChunk0050 := by
  unfold oppositePartValid7_0050 oppositeHistoryChunk0050
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
