import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0186

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0186 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 190464
  | _ => True

theorem oppositePart0_0186 : oppositePartValid0_0186 oppositeHistoryChunk0186 := by
  unfold oppositePartValid0_0186 oppositeHistoryChunk0186
  decide

def oppositePartValid1_0186 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 190592
  | _ => True

theorem oppositePart1_0186 : oppositePartValid1_0186 oppositeHistoryChunk0186 := by
  unfold oppositePartValid1_0186 oppositeHistoryChunk0186
  decide

def oppositePartValid2_0186 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 190720
  | _ => True

theorem oppositePart2_0186 : oppositePartValid2_0186 oppositeHistoryChunk0186 := by
  unfold oppositePartValid2_0186 oppositeHistoryChunk0186
  decide

def oppositePartValid3_0186 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 190848
  | _ => True

theorem oppositePart3_0186 : oppositePartValid3_0186 oppositeHistoryChunk0186 := by
  unfold oppositePartValid3_0186 oppositeHistoryChunk0186
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
