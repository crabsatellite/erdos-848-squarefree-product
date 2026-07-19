import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0073

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0073 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 74752
  | _ => True

theorem oppositePart0_0073 : oppositePartValid0_0073 oppositeHistoryChunk0073 := by
  unfold oppositePartValid0_0073 oppositeHistoryChunk0073
  decide

def oppositePartValid1_0073 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 74880
  | _ => True

theorem oppositePart1_0073 : oppositePartValid1_0073 oppositeHistoryChunk0073 := by
  unfold oppositePartValid1_0073 oppositeHistoryChunk0073
  decide

def oppositePartValid2_0073 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 75008
  | _ => True

theorem oppositePart2_0073 : oppositePartValid2_0073 oppositeHistoryChunk0073 := by
  unfold oppositePartValid2_0073 oppositeHistoryChunk0073
  decide

def oppositePartValid3_0073 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 75136
  | _ => True

theorem oppositePart3_0073 : oppositePartValid3_0073 oppositeHistoryChunk0073 := by
  unfold oppositePartValid3_0073 oppositeHistoryChunk0073
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
