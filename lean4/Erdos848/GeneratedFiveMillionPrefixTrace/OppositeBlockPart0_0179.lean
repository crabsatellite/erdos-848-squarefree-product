import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0179

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0179 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 183296
  | _ => True

theorem oppositePart0_0179 : oppositePartValid0_0179 oppositeHistoryChunk0179 := by
  unfold oppositePartValid0_0179 oppositeHistoryChunk0179
  decide

def oppositePartValid1_0179 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 183424
  | _ => True

theorem oppositePart1_0179 : oppositePartValid1_0179 oppositeHistoryChunk0179 := by
  unfold oppositePartValid1_0179 oppositeHistoryChunk0179
  decide

def oppositePartValid2_0179 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 183552
  | _ => True

theorem oppositePart2_0179 : oppositePartValid2_0179 oppositeHistoryChunk0179 := by
  unfold oppositePartValid2_0179 oppositeHistoryChunk0179
  decide

def oppositePartValid3_0179 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 183680
  | _ => True

theorem oppositePart3_0179 : oppositePartValid3_0179 oppositeHistoryChunk0179 := by
  unfold oppositePartValid3_0179 oppositeHistoryChunk0179
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
