import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0001

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0001 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 1024
  | _ => True

theorem oppositePart0_0001 : oppositePartValid0_0001 oppositeHistoryChunk0001 := by
  unfold oppositePartValid0_0001 oppositeHistoryChunk0001
  decide

def oppositePartValid1_0001 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 1152
  | _ => True

theorem oppositePart1_0001 : oppositePartValid1_0001 oppositeHistoryChunk0001 := by
  unfold oppositePartValid1_0001 oppositeHistoryChunk0001
  decide

def oppositePartValid2_0001 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 1280
  | _ => True

theorem oppositePart2_0001 : oppositePartValid2_0001 oppositeHistoryChunk0001 := by
  unfold oppositePartValid2_0001 oppositeHistoryChunk0001
  decide

def oppositePartValid3_0001 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 1408
  | _ => True

theorem oppositePart3_0001 : oppositePartValid3_0001 oppositeHistoryChunk0001 := by
  unfold oppositePartValid3_0001 oppositeHistoryChunk0001
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
