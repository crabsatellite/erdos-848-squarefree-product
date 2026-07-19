import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0024

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0024 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 24576
  | _ => True

theorem oppositePart0_0024 : oppositePartValid0_0024 oppositeHistoryChunk0024 := by
  unfold oppositePartValid0_0024 oppositeHistoryChunk0024
  decide

def oppositePartValid1_0024 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 24704
  | _ => True

theorem oppositePart1_0024 : oppositePartValid1_0024 oppositeHistoryChunk0024 := by
  unfold oppositePartValid1_0024 oppositeHistoryChunk0024
  decide

def oppositePartValid2_0024 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 24832
  | _ => True

theorem oppositePart2_0024 : oppositePartValid2_0024 oppositeHistoryChunk0024 := by
  unfold oppositePartValid2_0024 oppositeHistoryChunk0024
  decide

def oppositePartValid3_0024 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 24960
  | _ => True

theorem oppositePart3_0024 : oppositePartValid3_0024 oppositeHistoryChunk0024 := by
  unfold oppositePartValid3_0024 oppositeHistoryChunk0024
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
