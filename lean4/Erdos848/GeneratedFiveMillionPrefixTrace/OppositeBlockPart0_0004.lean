import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0004

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0004 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 4096
  | _ => True

theorem oppositePart0_0004 : oppositePartValid0_0004 oppositeHistoryChunk0004 := by
  unfold oppositePartValid0_0004 oppositeHistoryChunk0004
  decide

def oppositePartValid1_0004 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 4224
  | _ => True

theorem oppositePart1_0004 : oppositePartValid1_0004 oppositeHistoryChunk0004 := by
  unfold oppositePartValid1_0004 oppositeHistoryChunk0004
  decide

def oppositePartValid2_0004 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 4352
  | _ => True

theorem oppositePart2_0004 : oppositePartValid2_0004 oppositeHistoryChunk0004 := by
  unfold oppositePartValid2_0004 oppositeHistoryChunk0004
  decide

def oppositePartValid3_0004 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 4480
  | _ => True

theorem oppositePart3_0004 : oppositePartValid3_0004 oppositeHistoryChunk0004 := by
  unfold oppositePartValid3_0004 oppositeHistoryChunk0004
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
