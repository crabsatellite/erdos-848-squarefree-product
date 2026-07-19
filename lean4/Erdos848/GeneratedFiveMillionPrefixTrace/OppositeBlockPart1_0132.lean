import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0132

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0132 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 135680
  | _ => True

theorem oppositePart4_0132 : oppositePartValid4_0132 oppositeHistoryChunk0132 := by
  unfold oppositePartValid4_0132 oppositeHistoryChunk0132
  decide

def oppositePartValid5_0132 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 135808
  | _ => True

theorem oppositePart5_0132 : oppositePartValid5_0132 oppositeHistoryChunk0132 := by
  unfold oppositePartValid5_0132 oppositeHistoryChunk0132
  decide

def oppositePartValid6_0132 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 135936
  | _ => True

theorem oppositePart6_0132 : oppositePartValid6_0132 oppositeHistoryChunk0132 := by
  unfold oppositePartValid6_0132 oppositeHistoryChunk0132
  decide

def oppositePartValid7_0132 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 136064
  | _ => True

theorem oppositePart7_0132 : oppositePartValid7_0132 oppositeHistoryChunk0132 := by
  unfold oppositePartValid7_0132 oppositeHistoryChunk0132
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
