import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0140

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0140 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 143872
  | _ => True

theorem oppositePart4_0140 : oppositePartValid4_0140 oppositeHistoryChunk0140 := by
  unfold oppositePartValid4_0140 oppositeHistoryChunk0140
  decide

def oppositePartValid5_0140 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 144000
  | _ => True

theorem oppositePart5_0140 : oppositePartValid5_0140 oppositeHistoryChunk0140 := by
  unfold oppositePartValid5_0140 oppositeHistoryChunk0140
  decide

def oppositePartValid6_0140 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 144128
  | _ => True

theorem oppositePart6_0140 : oppositePartValid6_0140 oppositeHistoryChunk0140 := by
  unfold oppositePartValid6_0140 oppositeHistoryChunk0140
  decide

def oppositePartValid7_0140 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 144256
  | _ => True

theorem oppositePart7_0140 : oppositePartValid7_0140 oppositeHistoryChunk0140 := by
  unfold oppositePartValid7_0140 oppositeHistoryChunk0140
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
