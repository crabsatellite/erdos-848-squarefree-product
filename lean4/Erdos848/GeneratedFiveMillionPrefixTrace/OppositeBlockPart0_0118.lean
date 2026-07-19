import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0118

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0118 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 120832
  | _ => True

theorem oppositePart0_0118 : oppositePartValid0_0118 oppositeHistoryChunk0118 := by
  unfold oppositePartValid0_0118 oppositeHistoryChunk0118
  decide

def oppositePartValid1_0118 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 120960
  | _ => True

theorem oppositePart1_0118 : oppositePartValid1_0118 oppositeHistoryChunk0118 := by
  unfold oppositePartValid1_0118 oppositeHistoryChunk0118
  decide

def oppositePartValid2_0118 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 121088
  | _ => True

theorem oppositePart2_0118 : oppositePartValid2_0118 oppositeHistoryChunk0118 := by
  unfold oppositePartValid2_0118 oppositeHistoryChunk0118
  decide

def oppositePartValid3_0118 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 121216
  | _ => True

theorem oppositePart3_0118 : oppositePartValid3_0118 oppositeHistoryChunk0118 := by
  unfold oppositePartValid3_0118 oppositeHistoryChunk0118
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
