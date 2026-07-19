import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0074

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0074 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 76288
  | _ => True

theorem oppositePart4_0074 : oppositePartValid4_0074 oppositeHistoryChunk0074 := by
  unfold oppositePartValid4_0074 oppositeHistoryChunk0074
  decide

def oppositePartValid5_0074 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 76416
  | _ => True

theorem oppositePart5_0074 : oppositePartValid5_0074 oppositeHistoryChunk0074 := by
  unfold oppositePartValid5_0074 oppositeHistoryChunk0074
  decide

def oppositePartValid6_0074 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 76544
  | _ => True

theorem oppositePart6_0074 : oppositePartValid6_0074 oppositeHistoryChunk0074 := by
  unfold oppositePartValid6_0074 oppositeHistoryChunk0074
  decide

def oppositePartValid7_0074 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 76672
  | _ => True

theorem oppositePart7_0074 : oppositePartValid7_0074 oppositeHistoryChunk0074 := by
  unfold oppositePartValid7_0074 oppositeHistoryChunk0074
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
