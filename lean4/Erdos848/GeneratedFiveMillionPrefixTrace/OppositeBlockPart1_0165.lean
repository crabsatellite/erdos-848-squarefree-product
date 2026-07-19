import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0165

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0165 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 169472
  | _ => True

theorem oppositePart4_0165 : oppositePartValid4_0165 oppositeHistoryChunk0165 := by
  unfold oppositePartValid4_0165 oppositeHistoryChunk0165
  decide

def oppositePartValid5_0165 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 169600
  | _ => True

theorem oppositePart5_0165 : oppositePartValid5_0165 oppositeHistoryChunk0165 := by
  unfold oppositePartValid5_0165 oppositeHistoryChunk0165
  decide

def oppositePartValid6_0165 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 169728
  | _ => True

theorem oppositePart6_0165 : oppositePartValid6_0165 oppositeHistoryChunk0165 := by
  unfold oppositePartValid6_0165 oppositeHistoryChunk0165
  decide

def oppositePartValid7_0165 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 169856
  | _ => True

theorem oppositePart7_0165 : oppositePartValid7_0165 oppositeHistoryChunk0165 := by
  unfold oppositePartValid7_0165 oppositeHistoryChunk0165
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
