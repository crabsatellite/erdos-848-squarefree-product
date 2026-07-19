import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0108

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0108 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 111104
  | _ => True

theorem oppositePart4_0108 : oppositePartValid4_0108 oppositeHistoryChunk0108 := by
  unfold oppositePartValid4_0108 oppositeHistoryChunk0108
  decide

def oppositePartValid5_0108 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 111232
  | _ => True

theorem oppositePart5_0108 : oppositePartValid5_0108 oppositeHistoryChunk0108 := by
  unfold oppositePartValid5_0108 oppositeHistoryChunk0108
  decide

def oppositePartValid6_0108 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 111360
  | _ => True

theorem oppositePart6_0108 : oppositePartValid6_0108 oppositeHistoryChunk0108 := by
  unfold oppositePartValid6_0108 oppositeHistoryChunk0108
  decide

def oppositePartValid7_0108 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 111488
  | _ => True

theorem oppositePart7_0108 : oppositePartValid7_0108 oppositeHistoryChunk0108 := by
  unfold oppositePartValid7_0108 oppositeHistoryChunk0108
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
