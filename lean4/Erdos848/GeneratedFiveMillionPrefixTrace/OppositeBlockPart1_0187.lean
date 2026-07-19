import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0187

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0187 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 192000
  | _ => True

theorem oppositePart4_0187 : oppositePartValid4_0187 oppositeHistoryChunk0187 := by
  unfold oppositePartValid4_0187 oppositeHistoryChunk0187
  decide

def oppositePartValid5_0187 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 192128
  | _ => True

theorem oppositePart5_0187 : oppositePartValid5_0187 oppositeHistoryChunk0187 := by
  unfold oppositePartValid5_0187 oppositeHistoryChunk0187
  decide

def oppositePartValid6_0187 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 192256
  | _ => True

theorem oppositePart6_0187 : oppositePartValid6_0187 oppositeHistoryChunk0187 := by
  unfold oppositePartValid6_0187 oppositeHistoryChunk0187
  decide

def oppositePartValid7_0187 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 192384
  | _ => True

theorem oppositePart7_0187 : oppositePartValid7_0187 oppositeHistoryChunk0187 := by
  unfold oppositePartValid7_0187 oppositeHistoryChunk0187
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
