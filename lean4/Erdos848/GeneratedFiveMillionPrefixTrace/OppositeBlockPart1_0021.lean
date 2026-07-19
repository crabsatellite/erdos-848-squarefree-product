import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0021

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0021 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 22016
  | _ => True

theorem oppositePart4_0021 : oppositePartValid4_0021 oppositeHistoryChunk0021 := by
  unfold oppositePartValid4_0021 oppositeHistoryChunk0021
  decide

def oppositePartValid5_0021 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 22144
  | _ => True

theorem oppositePart5_0021 : oppositePartValid5_0021 oppositeHistoryChunk0021 := by
  unfold oppositePartValid5_0021 oppositeHistoryChunk0021
  decide

def oppositePartValid6_0021 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 22272
  | _ => True

theorem oppositePart6_0021 : oppositePartValid6_0021 oppositeHistoryChunk0021 := by
  unfold oppositePartValid6_0021 oppositeHistoryChunk0021
  decide

def oppositePartValid7_0021 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 22400
  | _ => True

theorem oppositePart7_0021 : oppositePartValid7_0021 oppositeHistoryChunk0021 := by
  unfold oppositePartValid7_0021 oppositeHistoryChunk0021
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
