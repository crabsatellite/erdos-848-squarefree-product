import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0065

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0065 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 66560
  | _ => True

theorem oppositePart0_0065 : oppositePartValid0_0065 oppositeHistoryChunk0065 := by
  unfold oppositePartValid0_0065 oppositeHistoryChunk0065
  decide

def oppositePartValid1_0065 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 66688
  | _ => True

theorem oppositePart1_0065 : oppositePartValid1_0065 oppositeHistoryChunk0065 := by
  unfold oppositePartValid1_0065 oppositeHistoryChunk0065
  decide

def oppositePartValid2_0065 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 66816
  | _ => True

theorem oppositePart2_0065 : oppositePartValid2_0065 oppositeHistoryChunk0065 := by
  unfold oppositePartValid2_0065 oppositeHistoryChunk0065
  decide

def oppositePartValid3_0065 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 66944
  | _ => True

theorem oppositePart3_0065 : oppositePartValid3_0065 oppositeHistoryChunk0065 := by
  unfold oppositePartValid3_0065 oppositeHistoryChunk0065
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
