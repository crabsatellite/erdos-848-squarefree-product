import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0113

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0113 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 115712
  | _ => True

theorem oppositePart0_0113 : oppositePartValid0_0113 oppositeHistoryChunk0113 := by
  unfold oppositePartValid0_0113 oppositeHistoryChunk0113
  decide

def oppositePartValid1_0113 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 115840
  | _ => True

theorem oppositePart1_0113 : oppositePartValid1_0113 oppositeHistoryChunk0113 := by
  unfold oppositePartValid1_0113 oppositeHistoryChunk0113
  decide

def oppositePartValid2_0113 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 115968
  | _ => True

theorem oppositePart2_0113 : oppositePartValid2_0113 oppositeHistoryChunk0113 := by
  unfold oppositePartValid2_0113 oppositeHistoryChunk0113
  decide

def oppositePartValid3_0113 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 116096
  | _ => True

theorem oppositePart3_0113 : oppositePartValid3_0113 oppositeHistoryChunk0113 := by
  unfold oppositePartValid3_0113 oppositeHistoryChunk0113
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
