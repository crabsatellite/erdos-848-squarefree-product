import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0137

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0137 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 140800
  | _ => True

theorem oppositePart4_0137 : oppositePartValid4_0137 oppositeHistoryChunk0137 := by
  unfold oppositePartValid4_0137 oppositeHistoryChunk0137
  decide

def oppositePartValid5_0137 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 140928
  | _ => True

theorem oppositePart5_0137 : oppositePartValid5_0137 oppositeHistoryChunk0137 := by
  unfold oppositePartValid5_0137 oppositeHistoryChunk0137
  decide

def oppositePartValid6_0137 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 141056
  | _ => True

theorem oppositePart6_0137 : oppositePartValid6_0137 oppositeHistoryChunk0137 := by
  unfold oppositePartValid6_0137 oppositeHistoryChunk0137
  decide

def oppositePartValid7_0137 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 141184
  | _ => True

theorem oppositePart7_0137 : oppositePartValid7_0137 oppositeHistoryChunk0137 := by
  unfold oppositePartValid7_0137 oppositeHistoryChunk0137
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
