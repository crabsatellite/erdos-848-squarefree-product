import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0014

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0014 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 14336
  | _ => True

theorem oppositePart0_0014 : oppositePartValid0_0014 oppositeHistoryChunk0014 := by
  unfold oppositePartValid0_0014 oppositeHistoryChunk0014
  decide

def oppositePartValid1_0014 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 14464
  | _ => True

theorem oppositePart1_0014 : oppositePartValid1_0014 oppositeHistoryChunk0014 := by
  unfold oppositePartValid1_0014 oppositeHistoryChunk0014
  decide

def oppositePartValid2_0014 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 14592
  | _ => True

theorem oppositePart2_0014 : oppositePartValid2_0014 oppositeHistoryChunk0014 := by
  unfold oppositePartValid2_0014 oppositeHistoryChunk0014
  decide

def oppositePartValid3_0014 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 14720
  | _ => True

theorem oppositePart3_0014 : oppositePartValid3_0014 oppositeHistoryChunk0014 := by
  unfold oppositePartValid3_0014 oppositeHistoryChunk0014
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
