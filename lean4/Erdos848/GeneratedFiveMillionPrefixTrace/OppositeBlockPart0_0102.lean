import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0102

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0102 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 104448
  | _ => True

theorem oppositePart0_0102 : oppositePartValid0_0102 oppositeHistoryChunk0102 := by
  unfold oppositePartValid0_0102 oppositeHistoryChunk0102
  decide

def oppositePartValid1_0102 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 104576
  | _ => True

theorem oppositePart1_0102 : oppositePartValid1_0102 oppositeHistoryChunk0102 := by
  unfold oppositePartValid1_0102 oppositeHistoryChunk0102
  decide

def oppositePartValid2_0102 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 104704
  | _ => True

theorem oppositePart2_0102 : oppositePartValid2_0102 oppositeHistoryChunk0102 := by
  unfold oppositePartValid2_0102 oppositeHistoryChunk0102
  decide

def oppositePartValid3_0102 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 104832
  | _ => True

theorem oppositePart3_0102 : oppositePartValid3_0102 oppositeHistoryChunk0102 := by
  unfold oppositePartValid3_0102 oppositeHistoryChunk0102
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
