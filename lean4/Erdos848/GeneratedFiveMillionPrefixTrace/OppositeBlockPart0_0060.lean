import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0060

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0060 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 61440
  | _ => True

theorem oppositePart0_0060 : oppositePartValid0_0060 oppositeHistoryChunk0060 := by
  unfold oppositePartValid0_0060 oppositeHistoryChunk0060
  decide

def oppositePartValid1_0060 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 61568
  | _ => True

theorem oppositePart1_0060 : oppositePartValid1_0060 oppositeHistoryChunk0060 := by
  unfold oppositePartValid1_0060 oppositeHistoryChunk0060
  decide

def oppositePartValid2_0060 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 61696
  | _ => True

theorem oppositePart2_0060 : oppositePartValid2_0060 oppositeHistoryChunk0060 := by
  unfold oppositePartValid2_0060 oppositeHistoryChunk0060
  decide

def oppositePartValid3_0060 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 61824
  | _ => True

theorem oppositePart3_0060 : oppositePartValid3_0060 oppositeHistoryChunk0060 := by
  unfold oppositePartValid3_0060 oppositeHistoryChunk0060
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
