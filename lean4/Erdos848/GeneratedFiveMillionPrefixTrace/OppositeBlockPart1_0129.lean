import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0129

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0129 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 132608
  | _ => True

theorem oppositePart4_0129 : oppositePartValid4_0129 oppositeHistoryChunk0129 := by
  unfold oppositePartValid4_0129 oppositeHistoryChunk0129
  decide

def oppositePartValid5_0129 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 132736
  | _ => True

theorem oppositePart5_0129 : oppositePartValid5_0129 oppositeHistoryChunk0129 := by
  unfold oppositePartValid5_0129 oppositeHistoryChunk0129
  decide

def oppositePartValid6_0129 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 132864
  | _ => True

theorem oppositePart6_0129 : oppositePartValid6_0129 oppositeHistoryChunk0129 := by
  unfold oppositePartValid6_0129 oppositeHistoryChunk0129
  decide

def oppositePartValid7_0129 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 132992
  | _ => True

theorem oppositePart7_0129 : oppositePartValid7_0129 oppositeHistoryChunk0129 := by
  unfold oppositePartValid7_0129 oppositeHistoryChunk0129
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
