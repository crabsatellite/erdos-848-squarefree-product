import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0083

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0083 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 84992
  | _ => True

theorem oppositePart0_0083 : oppositePartValid0_0083 oppositeHistoryChunk0083 := by
  unfold oppositePartValid0_0083 oppositeHistoryChunk0083
  decide

def oppositePartValid1_0083 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 85120
  | _ => True

theorem oppositePart1_0083 : oppositePartValid1_0083 oppositeHistoryChunk0083 := by
  unfold oppositePartValid1_0083 oppositeHistoryChunk0083
  decide

def oppositePartValid2_0083 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 85248
  | _ => True

theorem oppositePart2_0083 : oppositePartValid2_0083 oppositeHistoryChunk0083 := by
  unfold oppositePartValid2_0083 oppositeHistoryChunk0083
  decide

def oppositePartValid3_0083 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 85376
  | _ => True

theorem oppositePart3_0083 : oppositePartValid3_0083 oppositeHistoryChunk0083 := by
  unfold oppositePartValid3_0083 oppositeHistoryChunk0083
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
