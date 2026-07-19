import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0030

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0030 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 30720
  | _ => True

theorem oppositePart0_0030 : oppositePartValid0_0030 oppositeHistoryChunk0030 := by
  unfold oppositePartValid0_0030 oppositeHistoryChunk0030
  decide

def oppositePartValid1_0030 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 30848
  | _ => True

theorem oppositePart1_0030 : oppositePartValid1_0030 oppositeHistoryChunk0030 := by
  unfold oppositePartValid1_0030 oppositeHistoryChunk0030
  decide

def oppositePartValid2_0030 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 30976
  | _ => True

theorem oppositePart2_0030 : oppositePartValid2_0030 oppositeHistoryChunk0030 := by
  unfold oppositePartValid2_0030 oppositeHistoryChunk0030
  decide

def oppositePartValid3_0030 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 31104
  | _ => True

theorem oppositePart3_0030 : oppositePartValid3_0030 oppositeHistoryChunk0030 := by
  unfold oppositePartValid3_0030 oppositeHistoryChunk0030
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
