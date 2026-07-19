import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0114

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0114 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 117248
  | _ => True

theorem oppositePart4_0114 : oppositePartValid4_0114 oppositeHistoryChunk0114 := by
  unfold oppositePartValid4_0114 oppositeHistoryChunk0114
  decide

def oppositePartValid5_0114 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 117376
  | _ => True

theorem oppositePart5_0114 : oppositePartValid5_0114 oppositeHistoryChunk0114 := by
  unfold oppositePartValid5_0114 oppositeHistoryChunk0114
  decide

def oppositePartValid6_0114 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 117504
  | _ => True

theorem oppositePart6_0114 : oppositePartValid6_0114 oppositeHistoryChunk0114 := by
  unfold oppositePartValid6_0114 oppositeHistoryChunk0114
  decide

def oppositePartValid7_0114 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 117632
  | _ => True

theorem oppositePart7_0114 : oppositePartValid7_0114 oppositeHistoryChunk0114 := by
  unfold oppositePartValid7_0114 oppositeHistoryChunk0114
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
