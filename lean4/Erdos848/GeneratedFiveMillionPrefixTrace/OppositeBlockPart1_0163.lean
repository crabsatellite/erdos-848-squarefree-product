import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0163

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0163 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 167424
  | _ => True

theorem oppositePart4_0163 : oppositePartValid4_0163 oppositeHistoryChunk0163 := by
  unfold oppositePartValid4_0163 oppositeHistoryChunk0163
  decide

def oppositePartValid5_0163 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 167552
  | _ => True

theorem oppositePart5_0163 : oppositePartValid5_0163 oppositeHistoryChunk0163 := by
  unfold oppositePartValid5_0163 oppositeHistoryChunk0163
  decide

def oppositePartValid6_0163 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 167680
  | _ => True

theorem oppositePart6_0163 : oppositePartValid6_0163 oppositeHistoryChunk0163 := by
  unfold oppositePartValid6_0163 oppositeHistoryChunk0163
  decide

def oppositePartValid7_0163 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 167808
  | _ => True

theorem oppositePart7_0163 : oppositePartValid7_0163 oppositeHistoryChunk0163 := by
  unfold oppositePartValid7_0163 oppositeHistoryChunk0163
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
