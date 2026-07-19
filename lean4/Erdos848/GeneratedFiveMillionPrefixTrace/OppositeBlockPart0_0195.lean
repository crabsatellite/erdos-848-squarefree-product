import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.LowRangePrefixTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OppositeDataChunk0195

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def oppositePartValid0_0195 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 199680
  | _ => True

theorem oppositePart0_0195 : oppositePartValid0_0195 oppositeHistoryChunk0195 := by
  unfold oppositePartValid0_0195 oppositeHistoryChunk0195
  decide

def oppositePartValid1_0195 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 199720
  | _ => True

theorem oppositePart1_0195 : oppositePartValid1_0195 oppositeHistoryChunk0195 := by
  unfold oppositePartValid1_0195 oppositeHistoryChunk0195
  decide

def oppositePartValid2_0195 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 199760
  | _ => True

theorem oppositePart2_0195 : oppositePartValid2_0195 oppositeHistoryChunk0195 := by
  unfold oppositePartValid2_0195 oppositeHistoryChunk0195
  decide

def oppositePartValid3_0195 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.ResidueIndexedValid anchorHistories 5000000 18 25 199800
  | _ => True

theorem oppositePart3_0195 : oppositePartValid3_0195 oppositeHistoryChunk0195 := by
  unfold oppositePartValid3_0195 oppositeHistoryChunk0195
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
