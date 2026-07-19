import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0064

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0064 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 65536
  | _ => True

theorem oppositePart0_0064 : oppositePartValid0_0064 oppositeHistoryChunk0064 := by
  unfold oppositePartValid0_0064 oppositeHistoryChunk0064
  decide

def oppositePartValid1_0064 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 65664
  | _ => True

theorem oppositePart1_0064 : oppositePartValid1_0064 oppositeHistoryChunk0064 := by
  unfold oppositePartValid1_0064 oppositeHistoryChunk0064
  decide

def oppositePartValid2_0064 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 65792
  | _ => True

theorem oppositePart2_0064 : oppositePartValid2_0064 oppositeHistoryChunk0064 := by
  unfold oppositePartValid2_0064 oppositeHistoryChunk0064
  decide

def oppositePartValid3_0064 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 65920
  | _ => True

theorem oppositePart3_0064 : oppositePartValid3_0064 oppositeHistoryChunk0064 := by
  unfold oppositePartValid3_0064 oppositeHistoryChunk0064
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
