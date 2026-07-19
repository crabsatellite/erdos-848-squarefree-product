import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0177

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0177 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 181760
  | _ => True

theorem oppositePart4_0177 : oppositePartValid4_0177 oppositeHistoryChunk0177 := by
  unfold oppositePartValid4_0177 oppositeHistoryChunk0177
  decide

def oppositePartValid5_0177 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 181888
  | _ => True

theorem oppositePart5_0177 : oppositePartValid5_0177 oppositeHistoryChunk0177 := by
  unfold oppositePartValid5_0177 oppositeHistoryChunk0177
  decide

def oppositePartValid6_0177 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 182016
  | _ => True

theorem oppositePart6_0177 : oppositePartValid6_0177 oppositeHistoryChunk0177 := by
  unfold oppositePartValid6_0177 oppositeHistoryChunk0177
  decide

def oppositePartValid7_0177 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 182144
  | _ => True

theorem oppositePart7_0177 : oppositePartValid7_0177 oppositeHistoryChunk0177 := by
  unfold oppositePartValid7_0177 oppositeHistoryChunk0177
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
