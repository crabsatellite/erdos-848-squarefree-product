import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0028

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0028 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 28672
  | _ => True

theorem oppositePart0_0028 : oppositePartValid0_0028 oppositeHistoryChunk0028 := by
  unfold oppositePartValid0_0028 oppositeHistoryChunk0028
  decide

def oppositePartValid1_0028 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 28800
  | _ => True

theorem oppositePart1_0028 : oppositePartValid1_0028 oppositeHistoryChunk0028 := by
  unfold oppositePartValid1_0028 oppositeHistoryChunk0028
  decide

def oppositePartValid2_0028 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 28928
  | _ => True

theorem oppositePart2_0028 : oppositePartValid2_0028 oppositeHistoryChunk0028 := by
  unfold oppositePartValid2_0028 oppositeHistoryChunk0028
  decide

def oppositePartValid3_0028 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 29056
  | _ => True

theorem oppositePart3_0028 : oppositePartValid3_0028 oppositeHistoryChunk0028 := by
  unfold oppositePartValid3_0028 oppositeHistoryChunk0028
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
