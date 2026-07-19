import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0087

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0087 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 89088
  | _ => True

theorem oppositePart0_0087 : oppositePartValid0_0087 oppositeHistoryChunk0087 := by
  unfold oppositePartValid0_0087 oppositeHistoryChunk0087
  decide

def oppositePartValid1_0087 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 89216
  | _ => True

theorem oppositePart1_0087 : oppositePartValid1_0087 oppositeHistoryChunk0087 := by
  unfold oppositePartValid1_0087 oppositeHistoryChunk0087
  decide

def oppositePartValid2_0087 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 89344
  | _ => True

theorem oppositePart2_0087 : oppositePartValid2_0087 oppositeHistoryChunk0087 := by
  unfold oppositePartValid2_0087 oppositeHistoryChunk0087
  decide

def oppositePartValid3_0087 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 89472
  | _ => True

theorem oppositePart3_0087 : oppositePartValid3_0087 oppositeHistoryChunk0087 := by
  unfold oppositePartValid3_0087 oppositeHistoryChunk0087
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
