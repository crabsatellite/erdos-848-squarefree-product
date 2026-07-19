import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0128

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0128 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 131072
  | _ => True

theorem oppositePart0_0128 : oppositePartValid0_0128 oppositeHistoryChunk0128 := by
  unfold oppositePartValid0_0128 oppositeHistoryChunk0128
  decide

def oppositePartValid1_0128 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 131200
  | _ => True

theorem oppositePart1_0128 : oppositePartValid1_0128 oppositeHistoryChunk0128 := by
  unfold oppositePartValid1_0128 oppositeHistoryChunk0128
  decide

def oppositePartValid2_0128 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 131328
  | _ => True

theorem oppositePart2_0128 : oppositePartValid2_0128 oppositeHistoryChunk0128 := by
  unfold oppositePartValid2_0128 oppositeHistoryChunk0128
  decide

def oppositePartValid3_0128 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 131456
  | _ => True

theorem oppositePart3_0128 : oppositePartValid3_0128 oppositeHistoryChunk0128 := by
  unfold oppositePartValid3_0128 oppositeHistoryChunk0128
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
