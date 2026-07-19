import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0026

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0026 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 27136
  | _ => True

theorem oppositePart4_0026 : oppositePartValid4_0026 oppositeHistoryChunk0026 := by
  unfold oppositePartValid4_0026 oppositeHistoryChunk0026
  decide

def oppositePartValid5_0026 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 27264
  | _ => True

theorem oppositePart5_0026 : oppositePartValid5_0026 oppositeHistoryChunk0026 := by
  unfold oppositePartValid5_0026 oppositeHistoryChunk0026
  decide

def oppositePartValid6_0026 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 27392
  | _ => True

theorem oppositePart6_0026 : oppositePartValid6_0026 oppositeHistoryChunk0026 := by
  unfold oppositePartValid6_0026 oppositeHistoryChunk0026
  decide

def oppositePartValid7_0026 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 27520
  | _ => True

theorem oppositePart7_0026 : oppositePartValid7_0026 oppositeHistoryChunk0026 := by
  unfold oppositePartValid7_0026 oppositeHistoryChunk0026
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
