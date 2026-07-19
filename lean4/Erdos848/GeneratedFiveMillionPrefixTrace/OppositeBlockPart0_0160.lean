import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0160

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0160 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 163840
  | _ => True

theorem oppositePart0_0160 : oppositePartValid0_0160 oppositeHistoryChunk0160 := by
  unfold oppositePartValid0_0160 oppositeHistoryChunk0160
  decide

def oppositePartValid1_0160 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 163968
  | _ => True

theorem oppositePart1_0160 : oppositePartValid1_0160 oppositeHistoryChunk0160 := by
  unfold oppositePartValid1_0160 oppositeHistoryChunk0160
  decide

def oppositePartValid2_0160 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 164096
  | _ => True

theorem oppositePart2_0160 : oppositePartValid2_0160 oppositeHistoryChunk0160 := by
  unfold oppositePartValid2_0160 oppositeHistoryChunk0160
  decide

def oppositePartValid3_0160 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 164224
  | _ => True

theorem oppositePart3_0160 : oppositePartValid3_0160 oppositeHistoryChunk0160 := by
  unfold oppositePartValid3_0160 oppositeHistoryChunk0160
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
