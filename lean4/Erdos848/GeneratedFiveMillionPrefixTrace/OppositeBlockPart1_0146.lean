import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0146

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0146 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 150016
  | _ => True

theorem oppositePart4_0146 : oppositePartValid4_0146 oppositeHistoryChunk0146 := by
  unfold oppositePartValid4_0146 oppositeHistoryChunk0146
  decide

def oppositePartValid5_0146 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 150144
  | _ => True

theorem oppositePart5_0146 : oppositePartValid5_0146 oppositeHistoryChunk0146 := by
  unfold oppositePartValid5_0146 oppositeHistoryChunk0146
  decide

def oppositePartValid6_0146 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 150272
  | _ => True

theorem oppositePart6_0146 : oppositePartValid6_0146 oppositeHistoryChunk0146 := by
  unfold oppositePartValid6_0146 oppositeHistoryChunk0146
  decide

def oppositePartValid7_0146 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 150400
  | _ => True

theorem oppositePart7_0146 : oppositePartValid7_0146 oppositeHistoryChunk0146 := by
  unfold oppositePartValid7_0146 oppositeHistoryChunk0146
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
