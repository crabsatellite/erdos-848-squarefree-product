import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0122

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0122 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 124928
  | _ => True

theorem oppositePart0_0122 : oppositePartValid0_0122 oppositeHistoryChunk0122 := by
  unfold oppositePartValid0_0122 oppositeHistoryChunk0122
  decide

def oppositePartValid1_0122 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 125056
  | _ => True

theorem oppositePart1_0122 : oppositePartValid1_0122 oppositeHistoryChunk0122 := by
  unfold oppositePartValid1_0122 oppositeHistoryChunk0122
  decide

def oppositePartValid2_0122 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 125184
  | _ => True

theorem oppositePart2_0122 : oppositePartValid2_0122 oppositeHistoryChunk0122 := by
  unfold oppositePartValid2_0122 oppositeHistoryChunk0122
  decide

def oppositePartValid3_0122 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 125312
  | _ => True

theorem oppositePart3_0122 : oppositePartValid3_0122 oppositeHistoryChunk0122 := by
  unfold oppositePartValid3_0122 oppositeHistoryChunk0122
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
