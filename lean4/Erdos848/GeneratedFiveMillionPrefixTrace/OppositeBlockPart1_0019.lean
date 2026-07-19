import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0019

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0019 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 19968
  | _ => True

theorem oppositePart4_0019 : oppositePartValid4_0019 oppositeHistoryChunk0019 := by
  unfold oppositePartValid4_0019 oppositeHistoryChunk0019
  decide

def oppositePartValid5_0019 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 20096
  | _ => True

theorem oppositePart5_0019 : oppositePartValid5_0019 oppositeHistoryChunk0019 := by
  unfold oppositePartValid5_0019 oppositeHistoryChunk0019
  decide

def oppositePartValid6_0019 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 20224
  | _ => True

theorem oppositePart6_0019 : oppositePartValid6_0019 oppositeHistoryChunk0019 := by
  unfold oppositePartValid6_0019 oppositeHistoryChunk0019
  decide

def oppositePartValid7_0019 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 20352
  | _ => True

theorem oppositePart7_0019 : oppositePartValid7_0019 oppositeHistoryChunk0019 := by
  unfold oppositePartValid7_0019 oppositeHistoryChunk0019
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
