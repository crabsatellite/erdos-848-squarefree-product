import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0126

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0126 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 129024
  | _ => True

theorem oppositePart0_0126 : oppositePartValid0_0126 oppositeHistoryChunk0126 := by
  unfold oppositePartValid0_0126 oppositeHistoryChunk0126
  decide

def oppositePartValid1_0126 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 129152
  | _ => True

theorem oppositePart1_0126 : oppositePartValid1_0126 oppositeHistoryChunk0126 := by
  unfold oppositePartValid1_0126 oppositeHistoryChunk0126
  decide

def oppositePartValid2_0126 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 129280
  | _ => True

theorem oppositePart2_0126 : oppositePartValid2_0126 oppositeHistoryChunk0126 := by
  unfold oppositePartValid2_0126 oppositeHistoryChunk0126
  decide

def oppositePartValid3_0126 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 129408
  | _ => True

theorem oppositePart3_0126 : oppositePartValid3_0126 oppositeHistoryChunk0126 := by
  unfold oppositePartValid3_0126 oppositeHistoryChunk0126
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
