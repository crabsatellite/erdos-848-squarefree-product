import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0184

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0184 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 188928
  | _ => True

theorem oppositePart4_0184 : oppositePartValid4_0184 oppositeHistoryChunk0184 := by
  unfold oppositePartValid4_0184 oppositeHistoryChunk0184
  decide

def oppositePartValid5_0184 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 189056
  | _ => True

theorem oppositePart5_0184 : oppositePartValid5_0184 oppositeHistoryChunk0184 := by
  unfold oppositePartValid5_0184 oppositeHistoryChunk0184
  decide

def oppositePartValid6_0184 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 189184
  | _ => True

theorem oppositePart6_0184 : oppositePartValid6_0184 oppositeHistoryChunk0184 := by
  unfold oppositePartValid6_0184 oppositeHistoryChunk0184
  decide

def oppositePartValid7_0184 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 189312
  | _ => True

theorem oppositePart7_0184 : oppositePartValid7_0184 oppositeHistoryChunk0184 := by
  unfold oppositePartValid7_0184 oppositeHistoryChunk0184
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
