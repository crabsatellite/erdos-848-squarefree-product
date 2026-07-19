import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0044

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0044 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 45056
  | _ => True

theorem oppositePart0_0044 : oppositePartValid0_0044 oppositeHistoryChunk0044 := by
  unfold oppositePartValid0_0044 oppositeHistoryChunk0044
  decide

def oppositePartValid1_0044 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 45184
  | _ => True

theorem oppositePart1_0044 : oppositePartValid1_0044 oppositeHistoryChunk0044 := by
  unfold oppositePartValid1_0044 oppositeHistoryChunk0044
  decide

def oppositePartValid2_0044 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 45312
  | _ => True

theorem oppositePart2_0044 : oppositePartValid2_0044 oppositeHistoryChunk0044 := by
  unfold oppositePartValid2_0044 oppositeHistoryChunk0044
  decide

def oppositePartValid3_0044 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 45440
  | _ => True

theorem oppositePart3_0044 : oppositePartValid3_0044 oppositeHistoryChunk0044 := by
  unfold oppositePartValid3_0044 oppositeHistoryChunk0044
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
