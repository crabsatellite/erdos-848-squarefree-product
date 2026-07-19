import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0002

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0002 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 2560
  | _ => True

theorem oppositePart4_0002 : oppositePartValid4_0002 oppositeHistoryChunk0002 := by
  unfold oppositePartValid4_0002 oppositeHistoryChunk0002
  decide

def oppositePartValid5_0002 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 2688
  | _ => True

theorem oppositePart5_0002 : oppositePartValid5_0002 oppositeHistoryChunk0002 := by
  unfold oppositePartValid5_0002 oppositeHistoryChunk0002
  decide

def oppositePartValid6_0002 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 2816
  | _ => True

theorem oppositePart6_0002 : oppositePartValid6_0002 oppositeHistoryChunk0002 := by
  unfold oppositePartValid6_0002 oppositeHistoryChunk0002
  decide

def oppositePartValid7_0002 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 2944
  | _ => True

theorem oppositePart7_0002 : oppositePartValid7_0002 oppositeHistoryChunk0002 := by
  unfold oppositePartValid7_0002 oppositeHistoryChunk0002
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
