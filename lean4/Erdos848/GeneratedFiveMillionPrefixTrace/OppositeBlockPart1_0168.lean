import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0168

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0168 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 172544
  | _ => True

theorem oppositePart4_0168 : oppositePartValid4_0168 oppositeHistoryChunk0168 := by
  unfold oppositePartValid4_0168 oppositeHistoryChunk0168
  decide

def oppositePartValid5_0168 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 172672
  | _ => True

theorem oppositePart5_0168 : oppositePartValid5_0168 oppositeHistoryChunk0168 := by
  unfold oppositePartValid5_0168 oppositeHistoryChunk0168
  decide

def oppositePartValid6_0168 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 172800
  | _ => True

theorem oppositePart6_0168 : oppositePartValid6_0168 oppositeHistoryChunk0168 := by
  unfold oppositePartValid6_0168 oppositeHistoryChunk0168
  decide

def oppositePartValid7_0168 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 172928
  | _ => True

theorem oppositePart7_0168 : oppositePartValid7_0168 oppositeHistoryChunk0168 := by
  unfold oppositePartValid7_0168 oppositeHistoryChunk0168
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
