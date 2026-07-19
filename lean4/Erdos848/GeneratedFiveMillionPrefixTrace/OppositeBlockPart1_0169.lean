import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0169

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0169 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 173568
  | _ => True

theorem oppositePart4_0169 : oppositePartValid4_0169 oppositeHistoryChunk0169 := by
  unfold oppositePartValid4_0169 oppositeHistoryChunk0169
  decide

def oppositePartValid5_0169 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 173696
  | _ => True

theorem oppositePart5_0169 : oppositePartValid5_0169 oppositeHistoryChunk0169 := by
  unfold oppositePartValid5_0169 oppositeHistoryChunk0169
  decide

def oppositePartValid6_0169 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 173824
  | _ => True

theorem oppositePart6_0169 : oppositePartValid6_0169 oppositeHistoryChunk0169 := by
  unfold oppositePartValid6_0169 oppositeHistoryChunk0169
  decide

def oppositePartValid7_0169 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 173952
  | _ => True

theorem oppositePart7_0169 : oppositePartValid7_0169 oppositeHistoryChunk0169 := by
  unfold oppositePartValid7_0169 oppositeHistoryChunk0169
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
