import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0182

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0182 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 186368
  | _ => True

theorem oppositePart0_0182 : oppositePartValid0_0182 oppositeHistoryChunk0182 := by
  unfold oppositePartValid0_0182 oppositeHistoryChunk0182
  decide

def oppositePartValid1_0182 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 186496
  | _ => True

theorem oppositePart1_0182 : oppositePartValid1_0182 oppositeHistoryChunk0182 := by
  unfold oppositePartValid1_0182 oppositeHistoryChunk0182
  decide

def oppositePartValid2_0182 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 186624
  | _ => True

theorem oppositePart2_0182 : oppositePartValid2_0182 oppositeHistoryChunk0182 := by
  unfold oppositePartValid2_0182 oppositeHistoryChunk0182
  decide

def oppositePartValid3_0182 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 186752
  | _ => True

theorem oppositePart3_0182 : oppositePartValid3_0182 oppositeHistoryChunk0182 := by
  unfold oppositePartValid3_0182 oppositeHistoryChunk0182
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
