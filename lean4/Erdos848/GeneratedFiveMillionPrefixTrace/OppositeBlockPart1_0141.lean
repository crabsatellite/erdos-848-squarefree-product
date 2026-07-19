import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0141

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0141 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 144896
  | _ => True

theorem oppositePart4_0141 : oppositePartValid4_0141 oppositeHistoryChunk0141 := by
  unfold oppositePartValid4_0141 oppositeHistoryChunk0141
  decide

def oppositePartValid5_0141 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 145024
  | _ => True

theorem oppositePart5_0141 : oppositePartValid5_0141 oppositeHistoryChunk0141 := by
  unfold oppositePartValid5_0141 oppositeHistoryChunk0141
  decide

def oppositePartValid6_0141 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 145152
  | _ => True

theorem oppositePart6_0141 : oppositePartValid6_0141 oppositeHistoryChunk0141 := by
  unfold oppositePartValid6_0141 oppositeHistoryChunk0141
  decide

def oppositePartValid7_0141 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 145280
  | _ => True

theorem oppositePart7_0141 : oppositePartValid7_0141 oppositeHistoryChunk0141 := by
  unfold oppositePartValid7_0141 oppositeHistoryChunk0141
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
