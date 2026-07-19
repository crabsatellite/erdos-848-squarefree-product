import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0161

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0161 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 165376
  | _ => True

theorem oppositePart4_0161 : oppositePartValid4_0161 oppositeHistoryChunk0161 := by
  unfold oppositePartValid4_0161 oppositeHistoryChunk0161
  decide

def oppositePartValid5_0161 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 165504
  | _ => True

theorem oppositePart5_0161 : oppositePartValid5_0161 oppositeHistoryChunk0161 := by
  unfold oppositePartValid5_0161 oppositeHistoryChunk0161
  decide

def oppositePartValid6_0161 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 165632
  | _ => True

theorem oppositePart6_0161 : oppositePartValid6_0161 oppositeHistoryChunk0161 := by
  unfold oppositePartValid6_0161 oppositeHistoryChunk0161
  decide

def oppositePartValid7_0161 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 165760
  | _ => True

theorem oppositePart7_0161 : oppositePartValid7_0161 oppositeHistoryChunk0161 := by
  unfold oppositePartValid7_0161 oppositeHistoryChunk0161
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
