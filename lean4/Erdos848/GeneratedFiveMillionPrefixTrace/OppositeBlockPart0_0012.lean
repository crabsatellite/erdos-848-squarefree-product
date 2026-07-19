import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0012

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0012 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 12288
  | _ => True

theorem oppositePart0_0012 : oppositePartValid0_0012 oppositeHistoryChunk0012 := by
  unfold oppositePartValid0_0012 oppositeHistoryChunk0012
  decide

def oppositePartValid1_0012 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 12416
  | _ => True

theorem oppositePart1_0012 : oppositePartValid1_0012 oppositeHistoryChunk0012 := by
  unfold oppositePartValid1_0012 oppositeHistoryChunk0012
  decide

def oppositePartValid2_0012 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 12544
  | _ => True

theorem oppositePart2_0012 : oppositePartValid2_0012 oppositeHistoryChunk0012 := by
  unfold oppositePartValid2_0012 oppositeHistoryChunk0012
  decide

def oppositePartValid3_0012 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 12672
  | _ => True

theorem oppositePart3_0012 : oppositePartValid3_0012 oppositeHistoryChunk0012 := by
  unfold oppositePartValid3_0012 oppositeHistoryChunk0012
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
