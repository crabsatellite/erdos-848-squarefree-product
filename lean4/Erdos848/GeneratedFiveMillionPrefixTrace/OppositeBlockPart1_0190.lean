import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0190

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0190 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 195072
  | _ => True

theorem oppositePart4_0190 : oppositePartValid4_0190 oppositeHistoryChunk0190 := by
  unfold oppositePartValid4_0190 oppositeHistoryChunk0190
  decide

def oppositePartValid5_0190 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 195200
  | _ => True

theorem oppositePart5_0190 : oppositePartValid5_0190 oppositeHistoryChunk0190 := by
  unfold oppositePartValid5_0190 oppositeHistoryChunk0190
  decide

def oppositePartValid6_0190 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 195328
  | _ => True

theorem oppositePart6_0190 : oppositePartValid6_0190 oppositeHistoryChunk0190 := by
  unfold oppositePartValid6_0190 oppositeHistoryChunk0190
  decide

def oppositePartValid7_0190 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 195456
  | _ => True

theorem oppositePart7_0190 : oppositePartValid7_0190 oppositeHistoryChunk0190 := by
  unfold oppositePartValid7_0190 oppositeHistoryChunk0190
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
