import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0144

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0144 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 147968
  | _ => True

theorem oppositePart4_0144 : oppositePartValid4_0144 oppositeHistoryChunk0144 := by
  unfold oppositePartValid4_0144 oppositeHistoryChunk0144
  decide

def oppositePartValid5_0144 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 148096
  | _ => True

theorem oppositePart5_0144 : oppositePartValid5_0144 oppositeHistoryChunk0144 := by
  unfold oppositePartValid5_0144 oppositeHistoryChunk0144
  decide

def oppositePartValid6_0144 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 148224
  | _ => True

theorem oppositePart6_0144 : oppositePartValid6_0144 oppositeHistoryChunk0144 := by
  unfold oppositePartValid6_0144 oppositeHistoryChunk0144
  decide

def oppositePartValid7_0144 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 148352
  | _ => True

theorem oppositePart7_0144 : oppositePartValid7_0144 oppositeHistoryChunk0144 := by
  unfold oppositePartValid7_0144 oppositeHistoryChunk0144
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
