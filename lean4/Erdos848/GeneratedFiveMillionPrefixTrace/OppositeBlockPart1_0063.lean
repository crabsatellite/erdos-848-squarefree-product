import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0063

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0063 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 65024
  | _ => True

theorem oppositePart4_0063 : oppositePartValid4_0063 oppositeHistoryChunk0063 := by
  unfold oppositePartValid4_0063 oppositeHistoryChunk0063
  decide

def oppositePartValid5_0063 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 65152
  | _ => True

theorem oppositePart5_0063 : oppositePartValid5_0063 oppositeHistoryChunk0063 := by
  unfold oppositePartValid5_0063 oppositeHistoryChunk0063
  decide

def oppositePartValid6_0063 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 65280
  | _ => True

theorem oppositePart6_0063 : oppositePartValid6_0063 oppositeHistoryChunk0063 := by
  unfold oppositePartValid6_0063 oppositeHistoryChunk0063
  decide

def oppositePartValid7_0063 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 65408
  | _ => True

theorem oppositePart7_0063 : oppositePartValid7_0063 oppositeHistoryChunk0063 := by
  unfold oppositePartValid7_0063 oppositeHistoryChunk0063
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
