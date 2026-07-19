import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0093

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0093 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 95232
  | _ => True

theorem oppositePart0_0093 : oppositePartValid0_0093 oppositeHistoryChunk0093 := by
  unfold oppositePartValid0_0093 oppositeHistoryChunk0093
  decide

def oppositePartValid1_0093 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 95360
  | _ => True

theorem oppositePart1_0093 : oppositePartValid1_0093 oppositeHistoryChunk0093 := by
  unfold oppositePartValid1_0093 oppositeHistoryChunk0093
  decide

def oppositePartValid2_0093 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 95488
  | _ => True

theorem oppositePart2_0093 : oppositePartValid2_0093 oppositeHistoryChunk0093 := by
  unfold oppositePartValid2_0093 oppositeHistoryChunk0093
  decide

def oppositePartValid3_0093 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 95616
  | _ => True

theorem oppositePart3_0093 : oppositePartValid3_0093 oppositeHistoryChunk0093 := by
  unfold oppositePartValid3_0093 oppositeHistoryChunk0093
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
