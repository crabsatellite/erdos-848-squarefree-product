import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0078

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0078 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 79872
  | _ => True

theorem oppositePart0_0078 : oppositePartValid0_0078 oppositeHistoryChunk0078 := by
  unfold oppositePartValid0_0078 oppositeHistoryChunk0078
  decide

def oppositePartValid1_0078 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 80000
  | _ => True

theorem oppositePart1_0078 : oppositePartValid1_0078 oppositeHistoryChunk0078 := by
  unfold oppositePartValid1_0078 oppositeHistoryChunk0078
  decide

def oppositePartValid2_0078 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 80128
  | _ => True

theorem oppositePart2_0078 : oppositePartValid2_0078 oppositeHistoryChunk0078 := by
  unfold oppositePartValid2_0078 oppositeHistoryChunk0078
  decide

def oppositePartValid3_0078 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 80256
  | _ => True

theorem oppositePart3_0078 : oppositePartValid3_0078 oppositeHistoryChunk0078 := by
  unfold oppositePartValid3_0078 oppositeHistoryChunk0078
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
