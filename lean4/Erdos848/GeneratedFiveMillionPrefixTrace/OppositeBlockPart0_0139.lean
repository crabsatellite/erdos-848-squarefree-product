import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0139

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0139 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 142336
  | _ => True

theorem oppositePart0_0139 : oppositePartValid0_0139 oppositeHistoryChunk0139 := by
  unfold oppositePartValid0_0139 oppositeHistoryChunk0139
  decide

def oppositePartValid1_0139 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 142464
  | _ => True

theorem oppositePart1_0139 : oppositePartValid1_0139 oppositeHistoryChunk0139 := by
  unfold oppositePartValid1_0139 oppositeHistoryChunk0139
  decide

def oppositePartValid2_0139 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 142592
  | _ => True

theorem oppositePart2_0139 : oppositePartValid2_0139 oppositeHistoryChunk0139 := by
  unfold oppositePartValid2_0139 oppositeHistoryChunk0139
  decide

def oppositePartValid3_0139 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 142720
  | _ => True

theorem oppositePart3_0139 : oppositePartValid3_0139 oppositeHistoryChunk0139 := by
  unfold oppositePartValid3_0139 oppositeHistoryChunk0139
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
