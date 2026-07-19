import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0046

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0046 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 47616
  | _ => True

theorem oppositePart4_0046 : oppositePartValid4_0046 oppositeHistoryChunk0046 := by
  unfold oppositePartValid4_0046 oppositeHistoryChunk0046
  decide

def oppositePartValid5_0046 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 47744
  | _ => True

theorem oppositePart5_0046 : oppositePartValid5_0046 oppositeHistoryChunk0046 := by
  unfold oppositePartValid5_0046 oppositeHistoryChunk0046
  decide

def oppositePartValid6_0046 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 47872
  | _ => True

theorem oppositePart6_0046 : oppositePartValid6_0046 oppositeHistoryChunk0046 := by
  unfold oppositePartValid6_0046 oppositeHistoryChunk0046
  decide

def oppositePartValid7_0046 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 48000
  | _ => True

theorem oppositePart7_0046 : oppositePartValid7_0046 oppositeHistoryChunk0046 := by
  unfold oppositePartValid7_0046 oppositeHistoryChunk0046
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
