import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0031

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0031 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 31744
  | _ => True

theorem oppositePart0_0031 : oppositePartValid0_0031 oppositeHistoryChunk0031 := by
  unfold oppositePartValid0_0031 oppositeHistoryChunk0031
  decide

def oppositePartValid1_0031 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 31872
  | _ => True

theorem oppositePart1_0031 : oppositePartValid1_0031 oppositeHistoryChunk0031 := by
  unfold oppositePartValid1_0031 oppositeHistoryChunk0031
  decide

def oppositePartValid2_0031 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 32000
  | _ => True

theorem oppositePart2_0031 : oppositePartValid2_0031 oppositeHistoryChunk0031 := by
  unfold oppositePartValid2_0031 oppositeHistoryChunk0031
  decide

def oppositePartValid3_0031 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 32128
  | _ => True

theorem oppositePart3_0031 : oppositePartValid3_0031 oppositeHistoryChunk0031 := by
  unfold oppositePartValid3_0031 oppositeHistoryChunk0031
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
