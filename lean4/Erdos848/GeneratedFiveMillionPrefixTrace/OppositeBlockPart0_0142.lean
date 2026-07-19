import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0142

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0142 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 145408
  | _ => True

theorem oppositePart0_0142 : oppositePartValid0_0142 oppositeHistoryChunk0142 := by
  unfold oppositePartValid0_0142 oppositeHistoryChunk0142
  decide

def oppositePartValid1_0142 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 145536
  | _ => True

theorem oppositePart1_0142 : oppositePartValid1_0142 oppositeHistoryChunk0142 := by
  unfold oppositePartValid1_0142 oppositeHistoryChunk0142
  decide

def oppositePartValid2_0142 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 145664
  | _ => True

theorem oppositePart2_0142 : oppositePartValid2_0142 oppositeHistoryChunk0142 := by
  unfold oppositePartValid2_0142 oppositeHistoryChunk0142
  decide

def oppositePartValid3_0142 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 145792
  | _ => True

theorem oppositePart3_0142 : oppositePartValid3_0142 oppositeHistoryChunk0142 := by
  unfold oppositePartValid3_0142 oppositeHistoryChunk0142
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
