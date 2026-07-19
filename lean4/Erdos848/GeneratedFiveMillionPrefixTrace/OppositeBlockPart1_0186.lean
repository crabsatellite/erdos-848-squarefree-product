import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0186

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0186 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 190976
  | _ => True

theorem oppositePart4_0186 : oppositePartValid4_0186 oppositeHistoryChunk0186 := by
  unfold oppositePartValid4_0186 oppositeHistoryChunk0186
  decide

def oppositePartValid5_0186 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 191104
  | _ => True

theorem oppositePart5_0186 : oppositePartValid5_0186 oppositeHistoryChunk0186 := by
  unfold oppositePartValid5_0186 oppositeHistoryChunk0186
  decide

def oppositePartValid6_0186 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 191232
  | _ => True

theorem oppositePart6_0186 : oppositePartValid6_0186 oppositeHistoryChunk0186 := by
  unfold oppositePartValid6_0186 oppositeHistoryChunk0186
  decide

def oppositePartValid7_0186 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 191360
  | _ => True

theorem oppositePart7_0186 : oppositePartValid7_0186 oppositeHistoryChunk0186 := by
  unfold oppositePartValid7_0186 oppositeHistoryChunk0186
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
