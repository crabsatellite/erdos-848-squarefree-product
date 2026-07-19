import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0133

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0133 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 136192
  | _ => True

theorem oppositePart0_0133 : oppositePartValid0_0133 oppositeHistoryChunk0133 := by
  unfold oppositePartValid0_0133 oppositeHistoryChunk0133
  decide

def oppositePartValid1_0133 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 136320
  | _ => True

theorem oppositePart1_0133 : oppositePartValid1_0133 oppositeHistoryChunk0133 := by
  unfold oppositePartValid1_0133 oppositeHistoryChunk0133
  decide

def oppositePartValid2_0133 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 136448
  | _ => True

theorem oppositePart2_0133 : oppositePartValid2_0133 oppositeHistoryChunk0133 := by
  unfold oppositePartValid2_0133 oppositeHistoryChunk0133
  decide

def oppositePartValid3_0133 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 136576
  | _ => True

theorem oppositePart3_0133 : oppositePartValid3_0133 oppositeHistoryChunk0133 := by
  unfold oppositePartValid3_0133 oppositeHistoryChunk0133
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
