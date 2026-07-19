import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0174

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0174 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 178688
  | _ => True

theorem oppositePart4_0174 : oppositePartValid4_0174 oppositeHistoryChunk0174 := by
  unfold oppositePartValid4_0174 oppositeHistoryChunk0174
  decide

def oppositePartValid5_0174 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 178816
  | _ => True

theorem oppositePart5_0174 : oppositePartValid5_0174 oppositeHistoryChunk0174 := by
  unfold oppositePartValid5_0174 oppositeHistoryChunk0174
  decide

def oppositePartValid6_0174 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 178944
  | _ => True

theorem oppositePart6_0174 : oppositePartValid6_0174 oppositeHistoryChunk0174 := by
  unfold oppositePartValid6_0174 oppositeHistoryChunk0174
  decide

def oppositePartValid7_0174 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 179072
  | _ => True

theorem oppositePart7_0174 : oppositePartValid7_0174 oppositeHistoryChunk0174 := by
  unfold oppositePartValid7_0174 oppositeHistoryChunk0174
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
