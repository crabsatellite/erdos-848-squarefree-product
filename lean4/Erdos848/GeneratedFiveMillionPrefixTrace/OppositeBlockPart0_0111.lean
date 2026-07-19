import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0111

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0111 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 113664
  | _ => True

theorem oppositePart0_0111 : oppositePartValid0_0111 oppositeHistoryChunk0111 := by
  unfold oppositePartValid0_0111 oppositeHistoryChunk0111
  decide

def oppositePartValid1_0111 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 113792
  | _ => True

theorem oppositePart1_0111 : oppositePartValid1_0111 oppositeHistoryChunk0111 := by
  unfold oppositePartValid1_0111 oppositeHistoryChunk0111
  decide

def oppositePartValid2_0111 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 113920
  | _ => True

theorem oppositePart2_0111 : oppositePartValid2_0111 oppositeHistoryChunk0111 := by
  unfold oppositePartValid2_0111 oppositeHistoryChunk0111
  decide

def oppositePartValid3_0111 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 114048
  | _ => True

theorem oppositePart3_0111 : oppositePartValid3_0111 oppositeHistoryChunk0111 := by
  unfold oppositePartValid3_0111 oppositeHistoryChunk0111
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
