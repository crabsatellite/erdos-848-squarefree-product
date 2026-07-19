import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0067

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0067 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 69120
  | _ => True

theorem oppositePart4_0067 : oppositePartValid4_0067 oppositeHistoryChunk0067 := by
  unfold oppositePartValid4_0067 oppositeHistoryChunk0067
  decide

def oppositePartValid5_0067 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 69248
  | _ => True

theorem oppositePart5_0067 : oppositePartValid5_0067 oppositeHistoryChunk0067 := by
  unfold oppositePartValid5_0067 oppositeHistoryChunk0067
  decide

def oppositePartValid6_0067 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 69376
  | _ => True

theorem oppositePart6_0067 : oppositePartValid6_0067 oppositeHistoryChunk0067 := by
  unfold oppositePartValid6_0067 oppositeHistoryChunk0067
  decide

def oppositePartValid7_0067 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 69504
  | _ => True

theorem oppositePart7_0067 : oppositePartValid7_0067 oppositeHistoryChunk0067 := by
  unfold oppositePartValid7_0067 oppositeHistoryChunk0067
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
