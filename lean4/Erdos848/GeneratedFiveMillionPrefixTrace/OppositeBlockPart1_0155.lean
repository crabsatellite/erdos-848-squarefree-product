import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0155

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0155 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 159232
  | _ => True

theorem oppositePart4_0155 : oppositePartValid4_0155 oppositeHistoryChunk0155 := by
  unfold oppositePartValid4_0155 oppositeHistoryChunk0155
  decide

def oppositePartValid5_0155 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 159360
  | _ => True

theorem oppositePart5_0155 : oppositePartValid5_0155 oppositeHistoryChunk0155 := by
  unfold oppositePartValid5_0155 oppositeHistoryChunk0155
  decide

def oppositePartValid6_0155 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 159488
  | _ => True

theorem oppositePart6_0155 : oppositePartValid6_0155 oppositeHistoryChunk0155 := by
  unfold oppositePartValid6_0155 oppositeHistoryChunk0155
  decide

def oppositePartValid7_0155 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 159616
  | _ => True

theorem oppositePart7_0155 : oppositePartValid7_0155 oppositeHistoryChunk0155 := by
  unfold oppositePartValid7_0155 oppositeHistoryChunk0155
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
