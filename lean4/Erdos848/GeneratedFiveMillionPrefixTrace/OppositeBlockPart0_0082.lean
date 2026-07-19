import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0082

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0082 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 83968
  | _ => True

theorem oppositePart0_0082 : oppositePartValid0_0082 oppositeHistoryChunk0082 := by
  unfold oppositePartValid0_0082 oppositeHistoryChunk0082
  decide

def oppositePartValid1_0082 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 84096
  | _ => True

theorem oppositePart1_0082 : oppositePartValid1_0082 oppositeHistoryChunk0082 := by
  unfold oppositePartValid1_0082 oppositeHistoryChunk0082
  decide

def oppositePartValid2_0082 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 84224
  | _ => True

theorem oppositePart2_0082 : oppositePartValid2_0082 oppositeHistoryChunk0082 := by
  unfold oppositePartValid2_0082 oppositeHistoryChunk0082
  decide

def oppositePartValid3_0082 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 84352
  | _ => True

theorem oppositePart3_0082 : oppositePartValid3_0082 oppositeHistoryChunk0082 := by
  unfold oppositePartValid3_0082 oppositeHistoryChunk0082
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
