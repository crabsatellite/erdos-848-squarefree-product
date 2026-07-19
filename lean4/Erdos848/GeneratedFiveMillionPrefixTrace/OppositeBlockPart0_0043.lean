import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0043

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0043 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 44032
  | _ => True

theorem oppositePart0_0043 : oppositePartValid0_0043 oppositeHistoryChunk0043 := by
  unfold oppositePartValid0_0043 oppositeHistoryChunk0043
  decide

def oppositePartValid1_0043 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 44160
  | _ => True

theorem oppositePart1_0043 : oppositePartValid1_0043 oppositeHistoryChunk0043 := by
  unfold oppositePartValid1_0043 oppositeHistoryChunk0043
  decide

def oppositePartValid2_0043 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 44288
  | _ => True

theorem oppositePart2_0043 : oppositePartValid2_0043 oppositeHistoryChunk0043 := by
  unfold oppositePartValid2_0043 oppositeHistoryChunk0043
  decide

def oppositePartValid3_0043 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 44416
  | _ => True

theorem oppositePart3_0043 : oppositePartValid3_0043 oppositeHistoryChunk0043 := by
  unfold oppositePartValid3_0043 oppositeHistoryChunk0043
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
