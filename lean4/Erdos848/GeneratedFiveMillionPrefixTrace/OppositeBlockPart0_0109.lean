import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0109

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0109 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 111616
  | _ => True

theorem oppositePart0_0109 : oppositePartValid0_0109 oppositeHistoryChunk0109 := by
  unfold oppositePartValid0_0109 oppositeHistoryChunk0109
  decide

def oppositePartValid1_0109 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 111744
  | _ => True

theorem oppositePart1_0109 : oppositePartValid1_0109 oppositeHistoryChunk0109 := by
  unfold oppositePartValid1_0109 oppositeHistoryChunk0109
  decide

def oppositePartValid2_0109 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 111872
  | _ => True

theorem oppositePart2_0109 : oppositePartValid2_0109 oppositeHistoryChunk0109 := by
  unfold oppositePartValid2_0109 oppositeHistoryChunk0109
  decide

def oppositePartValid3_0109 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 112000
  | _ => True

theorem oppositePart3_0109 : oppositePartValid3_0109 oppositeHistoryChunk0109 := by
  unfold oppositePartValid3_0109 oppositeHistoryChunk0109
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
