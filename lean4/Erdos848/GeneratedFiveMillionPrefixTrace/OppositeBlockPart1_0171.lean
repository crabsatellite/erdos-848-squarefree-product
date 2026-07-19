import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0171

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0171 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 175616
  | _ => True

theorem oppositePart4_0171 : oppositePartValid4_0171 oppositeHistoryChunk0171 := by
  unfold oppositePartValid4_0171 oppositeHistoryChunk0171
  decide

def oppositePartValid5_0171 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 175744
  | _ => True

theorem oppositePart5_0171 : oppositePartValid5_0171 oppositeHistoryChunk0171 := by
  unfold oppositePartValid5_0171 oppositeHistoryChunk0171
  decide

def oppositePartValid6_0171 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 175872
  | _ => True

theorem oppositePart6_0171 : oppositePartValid6_0171 oppositeHistoryChunk0171 := by
  unfold oppositePartValid6_0171 oppositeHistoryChunk0171
  decide

def oppositePartValid7_0171 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 176000
  | _ => True

theorem oppositePart7_0171 : oppositePartValid7_0171 oppositeHistoryChunk0171 := by
  unfold oppositePartValid7_0171 oppositeHistoryChunk0171
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
