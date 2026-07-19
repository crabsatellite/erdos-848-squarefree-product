import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0191

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0191 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 196096
  | _ => True

theorem oppositePart4_0191 : oppositePartValid4_0191 oppositeHistoryChunk0191 := by
  unfold oppositePartValid4_0191 oppositeHistoryChunk0191
  decide

def oppositePartValid5_0191 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 196224
  | _ => True

theorem oppositePart5_0191 : oppositePartValid5_0191 oppositeHistoryChunk0191 := by
  unfold oppositePartValid5_0191 oppositeHistoryChunk0191
  decide

def oppositePartValid6_0191 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 196352
  | _ => True

theorem oppositePart6_0191 : oppositePartValid6_0191 oppositeHistoryChunk0191 := by
  unfold oppositePartValid6_0191 oppositeHistoryChunk0191
  decide

def oppositePartValid7_0191 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 196480
  | _ => True

theorem oppositePart7_0191 : oppositePartValid7_0191 oppositeHistoryChunk0191 := by
  unfold oppositePartValid7_0191 oppositeHistoryChunk0191
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
