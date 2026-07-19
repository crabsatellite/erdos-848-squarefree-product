import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0017

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0017 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 17408
  | _ => True

theorem oppositePart0_0017 : oppositePartValid0_0017 oppositeHistoryChunk0017 := by
  unfold oppositePartValid0_0017 oppositeHistoryChunk0017
  decide

def oppositePartValid1_0017 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 17536
  | _ => True

theorem oppositePart1_0017 : oppositePartValid1_0017 oppositeHistoryChunk0017 := by
  unfold oppositePartValid1_0017 oppositeHistoryChunk0017
  decide

def oppositePartValid2_0017 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 17664
  | _ => True

theorem oppositePart2_0017 : oppositePartValid2_0017 oppositeHistoryChunk0017 := by
  unfold oppositePartValid2_0017 oppositeHistoryChunk0017
  decide

def oppositePartValid3_0017 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 17792
  | _ => True

theorem oppositePart3_0017 : oppositePartValid3_0017 oppositeHistoryChunk0017 := by
  unfold oppositePartValid3_0017 oppositeHistoryChunk0017
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
