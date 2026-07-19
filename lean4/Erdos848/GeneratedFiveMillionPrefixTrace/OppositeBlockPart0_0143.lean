import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0143

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0143 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 146432
  | _ => True

theorem oppositePart0_0143 : oppositePartValid0_0143 oppositeHistoryChunk0143 := by
  unfold oppositePartValid0_0143 oppositeHistoryChunk0143
  decide

def oppositePartValid1_0143 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 146560
  | _ => True

theorem oppositePart1_0143 : oppositePartValid1_0143 oppositeHistoryChunk0143 := by
  unfold oppositePartValid1_0143 oppositeHistoryChunk0143
  decide

def oppositePartValid2_0143 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 146688
  | _ => True

theorem oppositePart2_0143 : oppositePartValid2_0143 oppositeHistoryChunk0143 := by
  unfold oppositePartValid2_0143 oppositeHistoryChunk0143
  decide

def oppositePartValid3_0143 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 146816
  | _ => True

theorem oppositePart3_0143 : oppositePartValid3_0143 oppositeHistoryChunk0143 := by
  unfold oppositePartValid3_0143 oppositeHistoryChunk0143
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
