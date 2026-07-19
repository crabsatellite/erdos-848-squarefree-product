import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0137

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0137 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 140288
  | _ => True

theorem oppositePart0_0137 : oppositePartValid0_0137 oppositeHistoryChunk0137 := by
  unfold oppositePartValid0_0137 oppositeHistoryChunk0137
  decide

def oppositePartValid1_0137 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 140416
  | _ => True

theorem oppositePart1_0137 : oppositePartValid1_0137 oppositeHistoryChunk0137 := by
  unfold oppositePartValid1_0137 oppositeHistoryChunk0137
  decide

def oppositePartValid2_0137 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 140544
  | _ => True

theorem oppositePart2_0137 : oppositePartValid2_0137 oppositeHistoryChunk0137 := by
  unfold oppositePartValid2_0137 oppositeHistoryChunk0137
  decide

def oppositePartValid3_0137 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 140672
  | _ => True

theorem oppositePart3_0137 : oppositePartValid3_0137 oppositeHistoryChunk0137 := by
  unfold oppositePartValid3_0137 oppositeHistoryChunk0137
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
