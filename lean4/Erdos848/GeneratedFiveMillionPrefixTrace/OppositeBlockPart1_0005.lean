import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0005

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0005 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 5632
  | _ => True

theorem oppositePart4_0005 : oppositePartValid4_0005 oppositeHistoryChunk0005 := by
  unfold oppositePartValid4_0005 oppositeHistoryChunk0005
  decide

def oppositePartValid5_0005 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 5760
  | _ => True

theorem oppositePart5_0005 : oppositePartValid5_0005 oppositeHistoryChunk0005 := by
  unfold oppositePartValid5_0005 oppositeHistoryChunk0005
  decide

def oppositePartValid6_0005 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 5888
  | _ => True

theorem oppositePart6_0005 : oppositePartValid6_0005 oppositeHistoryChunk0005 := by
  unfold oppositePartValid6_0005 oppositeHistoryChunk0005
  decide

def oppositePartValid7_0005 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 6016
  | _ => True

theorem oppositePart7_0005 : oppositePartValid7_0005 oppositeHistoryChunk0005 := by
  unfold oppositePartValid7_0005 oppositeHistoryChunk0005
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
