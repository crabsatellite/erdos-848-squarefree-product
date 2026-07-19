import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0000

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0000 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 0
  | _ => True

theorem oppositePart0_0000 : oppositePartValid0_0000 oppositeHistoryChunk0000 := by
  unfold oppositePartValid0_0000 oppositeHistoryChunk0000
  decide

def oppositePartValid1_0000 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 128
  | _ => True

theorem oppositePart1_0000 : oppositePartValid1_0000 oppositeHistoryChunk0000 := by
  unfold oppositePartValid1_0000 oppositeHistoryChunk0000
  decide

def oppositePartValid2_0000 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 256
  | _ => True

theorem oppositePart2_0000 : oppositePartValid2_0000 oppositeHistoryChunk0000 := by
  unfold oppositePartValid2_0000 oppositeHistoryChunk0000
  decide

def oppositePartValid3_0000 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 384
  | _ => True

theorem oppositePart3_0000 : oppositePartValid3_0000 oppositeHistoryChunk0000 := by
  unfold oppositePartValid3_0000 oppositeHistoryChunk0000
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
