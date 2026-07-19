import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0012

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0012 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 12800
  | _ => True

theorem oppositePart4_0012 : oppositePartValid4_0012 oppositeHistoryChunk0012 := by
  unfold oppositePartValid4_0012 oppositeHistoryChunk0012
  decide

def oppositePartValid5_0012 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 12928
  | _ => True

theorem oppositePart5_0012 : oppositePartValid5_0012 oppositeHistoryChunk0012 := by
  unfold oppositePartValid5_0012 oppositeHistoryChunk0012
  decide

def oppositePartValid6_0012 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 13056
  | _ => True

theorem oppositePart6_0012 : oppositePartValid6_0012 oppositeHistoryChunk0012 := by
  unfold oppositePartValid6_0012 oppositeHistoryChunk0012
  decide

def oppositePartValid7_0012 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 13184
  | _ => True

theorem oppositePart7_0012 : oppositePartValid7_0012 oppositeHistoryChunk0012 := by
  unfold oppositePartValid7_0012 oppositeHistoryChunk0012
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
