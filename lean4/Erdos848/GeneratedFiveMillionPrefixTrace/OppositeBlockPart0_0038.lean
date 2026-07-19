import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0038

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0038 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 38912
  | _ => True

theorem oppositePart0_0038 : oppositePartValid0_0038 oppositeHistoryChunk0038 := by
  unfold oppositePartValid0_0038 oppositeHistoryChunk0038
  decide

def oppositePartValid1_0038 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 39040
  | _ => True

theorem oppositePart1_0038 : oppositePartValid1_0038 oppositeHistoryChunk0038 := by
  unfold oppositePartValid1_0038 oppositeHistoryChunk0038
  decide

def oppositePartValid2_0038 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 39168
  | _ => True

theorem oppositePart2_0038 : oppositePartValid2_0038 oppositeHistoryChunk0038 := by
  unfold oppositePartValid2_0038 oppositeHistoryChunk0038
  decide

def oppositePartValid3_0038 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 39296
  | _ => True

theorem oppositePart3_0038 : oppositePartValid3_0038 oppositeHistoryChunk0038 := by
  unfold oppositePartValid3_0038 oppositeHistoryChunk0038
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
