import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0017

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0017 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 17920
  | _ => True

theorem oppositePart4_0017 : oppositePartValid4_0017 oppositeHistoryChunk0017 := by
  unfold oppositePartValid4_0017 oppositeHistoryChunk0017
  decide

def oppositePartValid5_0017 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 18048
  | _ => True

theorem oppositePart5_0017 : oppositePartValid5_0017 oppositeHistoryChunk0017 := by
  unfold oppositePartValid5_0017 oppositeHistoryChunk0017
  decide

def oppositePartValid6_0017 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 18176
  | _ => True

theorem oppositePart6_0017 : oppositePartValid6_0017 oppositeHistoryChunk0017 := by
  unfold oppositePartValid6_0017 oppositeHistoryChunk0017
  decide

def oppositePartValid7_0017 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 18304
  | _ => True

theorem oppositePart7_0017 : oppositePartValid7_0017 oppositeHistoryChunk0017 := by
  unfold oppositePartValid7_0017 oppositeHistoryChunk0017
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
