import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0159

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0159 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 163328
  | _ => True

theorem oppositePart4_0159 : oppositePartValid4_0159 oppositeHistoryChunk0159 := by
  unfold oppositePartValid4_0159 oppositeHistoryChunk0159
  decide

def oppositePartValid5_0159 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 163456
  | _ => True

theorem oppositePart5_0159 : oppositePartValid5_0159 oppositeHistoryChunk0159 := by
  unfold oppositePartValid5_0159 oppositeHistoryChunk0159
  decide

def oppositePartValid6_0159 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 163584
  | _ => True

theorem oppositePart6_0159 : oppositePartValid6_0159 oppositeHistoryChunk0159 := by
  unfold oppositePartValid6_0159 oppositeHistoryChunk0159
  decide

def oppositePartValid7_0159 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 163712
  | _ => True

theorem oppositePart7_0159 : oppositePartValid7_0159 oppositeHistoryChunk0159 := by
  unfold oppositePartValid7_0159 oppositeHistoryChunk0159
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
