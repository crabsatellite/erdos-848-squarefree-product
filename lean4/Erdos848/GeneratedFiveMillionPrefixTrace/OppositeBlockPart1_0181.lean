import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0181

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0181 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 185856
  | _ => True

theorem oppositePart4_0181 : oppositePartValid4_0181 oppositeHistoryChunk0181 := by
  unfold oppositePartValid4_0181 oppositeHistoryChunk0181
  decide

def oppositePartValid5_0181 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 185984
  | _ => True

theorem oppositePart5_0181 : oppositePartValid5_0181 oppositeHistoryChunk0181 := by
  unfold oppositePartValid5_0181 oppositeHistoryChunk0181
  decide

def oppositePartValid6_0181 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 186112
  | _ => True

theorem oppositePart6_0181 : oppositePartValid6_0181 oppositeHistoryChunk0181 := by
  unfold oppositePartValid6_0181 oppositeHistoryChunk0181
  decide

def oppositePartValid7_0181 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 186240
  | _ => True

theorem oppositePart7_0181 : oppositePartValid7_0181 oppositeHistoryChunk0181 := by
  unfold oppositePartValid7_0181 oppositeHistoryChunk0181
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
