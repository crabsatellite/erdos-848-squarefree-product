import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0107

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0107 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 109568
  | _ => True

theorem oppositePart0_0107 : oppositePartValid0_0107 oppositeHistoryChunk0107 := by
  unfold oppositePartValid0_0107 oppositeHistoryChunk0107
  decide

def oppositePartValid1_0107 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 109696
  | _ => True

theorem oppositePart1_0107 : oppositePartValid1_0107 oppositeHistoryChunk0107 := by
  unfold oppositePartValid1_0107 oppositeHistoryChunk0107
  decide

def oppositePartValid2_0107 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 109824
  | _ => True

theorem oppositePart2_0107 : oppositePartValid2_0107 oppositeHistoryChunk0107 := by
  unfold oppositePartValid2_0107 oppositeHistoryChunk0107
  decide

def oppositePartValid3_0107 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 109952
  | _ => True

theorem oppositePart3_0107 : oppositePartValid3_0107 oppositeHistoryChunk0107 := by
  unfold oppositePartValid3_0107 oppositeHistoryChunk0107
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
