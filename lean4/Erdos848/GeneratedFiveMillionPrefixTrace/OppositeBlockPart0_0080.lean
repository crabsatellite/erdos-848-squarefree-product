import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0080

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0080 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 81920
  | _ => True

theorem oppositePart0_0080 : oppositePartValid0_0080 oppositeHistoryChunk0080 := by
  unfold oppositePartValid0_0080 oppositeHistoryChunk0080
  decide

def oppositePartValid1_0080 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 82048
  | _ => True

theorem oppositePart1_0080 : oppositePartValid1_0080 oppositeHistoryChunk0080 := by
  unfold oppositePartValid1_0080 oppositeHistoryChunk0080
  decide

def oppositePartValid2_0080 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 82176
  | _ => True

theorem oppositePart2_0080 : oppositePartValid2_0080 oppositeHistoryChunk0080 := by
  unfold oppositePartValid2_0080 oppositeHistoryChunk0080
  decide

def oppositePartValid3_0080 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 82304
  | _ => True

theorem oppositePart3_0080 : oppositePartValid3_0080 oppositeHistoryChunk0080 := by
  unfold oppositePartValid3_0080 oppositeHistoryChunk0080
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
