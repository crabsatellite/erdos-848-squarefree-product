import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0180

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0180 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 184320
  | _ => True

theorem oppositePart0_0180 : oppositePartValid0_0180 oppositeHistoryChunk0180 := by
  unfold oppositePartValid0_0180 oppositeHistoryChunk0180
  decide

def oppositePartValid1_0180 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 184448
  | _ => True

theorem oppositePart1_0180 : oppositePartValid1_0180 oppositeHistoryChunk0180 := by
  unfold oppositePartValid1_0180 oppositeHistoryChunk0180
  decide

def oppositePartValid2_0180 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 184576
  | _ => True

theorem oppositePart2_0180 : oppositePartValid2_0180 oppositeHistoryChunk0180 := by
  unfold oppositePartValid2_0180 oppositeHistoryChunk0180
  decide

def oppositePartValid3_0180 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 184704
  | _ => True

theorem oppositePart3_0180 : oppositePartValid3_0180 oppositeHistoryChunk0180 := by
  unfold oppositePartValid3_0180 oppositeHistoryChunk0180
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
