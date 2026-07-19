import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0139

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid4_0139 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 142848
  | _ => True

theorem oppositePart4_0139 : oppositePartValid4_0139 oppositeHistoryChunk0139 := by
  unfold oppositePartValid4_0139 oppositeHistoryChunk0139
  decide

def oppositePartValid5_0139 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.ResidueIndexedValid anchorHistories 5000000 18 25 142976
  | _ => True

theorem oppositePart5_0139 : oppositePartValid5_0139 oppositeHistoryChunk0139 := by
  unfold oppositePartValid5_0139 oppositeHistoryChunk0139
  decide

def oppositePartValid6_0139 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 143104
  | _ => True

theorem oppositePart6_0139 : oppositePartValid6_0139 oppositeHistoryChunk0139 := by
  unfold oppositePartValid6_0139 oppositeHistoryChunk0139
  decide

def oppositePartValid7_0139 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.ResidueIndexedValid anchorHistories 5000000 18 25 143232
  | _ => True

theorem oppositePart7_0139 : oppositePartValid7_0139 oppositeHistoryChunk0139 := by
  unfold oppositePartValid7_0139 oppositeHistoryChunk0139
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
