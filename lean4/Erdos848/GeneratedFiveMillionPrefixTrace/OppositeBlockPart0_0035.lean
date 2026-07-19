import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0035

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0035 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 35840
  | _ => True

theorem oppositePart0_0035 : oppositePartValid0_0035 oppositeHistoryChunk0035 := by
  unfold oppositePartValid0_0035 oppositeHistoryChunk0035
  decide

def oppositePartValid1_0035 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 35968
  | _ => True

theorem oppositePart1_0035 : oppositePartValid1_0035 oppositeHistoryChunk0035 := by
  unfold oppositePartValid1_0035 oppositeHistoryChunk0035
  decide

def oppositePartValid2_0035 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 36096
  | _ => True

theorem oppositePart2_0035 : oppositePartValid2_0035 oppositeHistoryChunk0035 := by
  unfold oppositePartValid2_0035 oppositeHistoryChunk0035
  decide

def oppositePartValid3_0035 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 36224
  | _ => True

theorem oppositePart3_0035 : oppositePartValid3_0035 oppositeHistoryChunk0035 := by
  unfold oppositePartValid3_0035 oppositeHistoryChunk0035
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
