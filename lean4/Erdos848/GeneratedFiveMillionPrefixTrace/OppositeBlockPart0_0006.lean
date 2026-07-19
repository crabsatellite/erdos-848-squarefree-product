import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0006

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0006 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 6144
  | _ => True

theorem oppositePart0_0006 : oppositePartValid0_0006 oppositeHistoryChunk0006 := by
  unfold oppositePartValid0_0006 oppositeHistoryChunk0006
  decide

def oppositePartValid1_0006 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 6272
  | _ => True

theorem oppositePart1_0006 : oppositePartValid1_0006 oppositeHistoryChunk0006 := by
  unfold oppositePartValid1_0006 oppositeHistoryChunk0006
  decide

def oppositePartValid2_0006 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 6400
  | _ => True

theorem oppositePart2_0006 : oppositePartValid2_0006 oppositeHistoryChunk0006 := by
  unfold oppositePartValid2_0006 oppositeHistoryChunk0006
  decide

def oppositePartValid3_0006 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 6528
  | _ => True

theorem oppositePart3_0006 : oppositePartValid3_0006 oppositeHistoryChunk0006 := by
  unfold oppositePartValid3_0006 oppositeHistoryChunk0006
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
