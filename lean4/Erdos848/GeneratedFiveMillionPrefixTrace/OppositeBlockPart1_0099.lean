import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0099

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0099 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 101888
  | _ => True

theorem oppositePart4_0099 : oppositePartValid4_0099 oppositeHistoryChunk0099 := by
  unfold oppositePartValid4_0099 oppositeHistoryChunk0099
  decide

def oppositePartValid5_0099 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 102016
  | _ => True

theorem oppositePart5_0099 : oppositePartValid5_0099 oppositeHistoryChunk0099 := by
  unfold oppositePartValid5_0099 oppositeHistoryChunk0099
  decide

def oppositePartValid6_0099 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 102144
  | _ => True

theorem oppositePart6_0099 : oppositePartValid6_0099 oppositeHistoryChunk0099 := by
  unfold oppositePartValid6_0099 oppositeHistoryChunk0099
  decide

def oppositePartValid7_0099 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 102272
  | _ => True

theorem oppositePart7_0099 : oppositePartValid7_0099 oppositeHistoryChunk0099 := by
  unfold oppositePartValid7_0099 oppositeHistoryChunk0099
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
