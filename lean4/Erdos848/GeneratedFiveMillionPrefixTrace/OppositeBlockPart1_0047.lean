import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0047

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0047 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 48640
  | _ => True

theorem oppositePart4_0047 : oppositePartValid4_0047 oppositeHistoryChunk0047 := by
  unfold oppositePartValid4_0047 oppositeHistoryChunk0047
  decide

def oppositePartValid5_0047 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 48768
  | _ => True

theorem oppositePart5_0047 : oppositePartValid5_0047 oppositeHistoryChunk0047 := by
  unfold oppositePartValid5_0047 oppositeHistoryChunk0047
  decide

def oppositePartValid6_0047 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 48896
  | _ => True

theorem oppositePart6_0047 : oppositePartValid6_0047 oppositeHistoryChunk0047 := by
  unfold oppositePartValid6_0047 oppositeHistoryChunk0047
  decide

def oppositePartValid7_0047 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 49024
  | _ => True

theorem oppositePart7_0047 : oppositePartValid7_0047 oppositeHistoryChunk0047 := by
  unfold oppositePartValid7_0047 oppositeHistoryChunk0047
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
